@interface Haywire
- (BOOL)filterAsset:(id)a3 osBuild:(id)a4 osVersion:(id)a5;
- (BOOL)findRemoteAsset;
- (BOOL)hasNetworkAccess;
- (Haywire)initWithCoder:(id)a3;
- (Haywire)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6;
- (NSString)bootArgs;
- (NSString)bundlePath;
- (NSString)variant;
- (id)assetWithMaxVersion:(id)a3 remote:(BOOL)a4;
- (id)filterFoundAssets:(id)a3;
- (id)getUpdateRequired;
- (void)applyFirmwareWithOptions:(id)a3;
- (void)bootstrapWithOptions:(id)a3;
- (void)cleanupAssets;
- (void)dealloc;
- (void)dfuDeviceConnected:(__AMDFUModeDevice *)a3;
- (void)doBootstrapWithOptions:(id)a3;
- (void)downloadFirmwareWithOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)finishWithOptions:(id)a3;
- (void)prepareFirmwareWithOptions:(id)a3;
- (void)recoveryDeviceConnected:(__AMRecoveryModeDevice *)a3;
- (void)runQuery:(BOOL)a3 completion:(id)a4;
@end

@implementation Haywire

- (BOOL)hasNetworkAccess
{
  v2 = SCNetworkReachabilityCreateWithName(0, [@"mesu.apple.com" UTF8String]);
  flags = 0;
  v3 = SCNetworkReachabilityGetFlags(v2, &flags);
  if (v3)
  {
    v4 = (flags & 4) == 0;
    if ((flags & 0x28) != 0)
    {
      v4 = (~flags & 0x14) != 0;
    }

    v5 = v4 | ((flags & 0x40000) >> 18);
    LOBYTE(v3) = v5;
    if (v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
    if (v2)
    {
LABEL_5:
      CFRelease(v2);
      LOBYTE(v3) = v5;
    }
  }

  return v3;
}

- (BOOL)findRemoteAsset
{
  [(Haywire *)self _findAsset:1];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(MAAsset *)[(Haywire *)self firmwareAsset] state]!= 2)
  {
    v3 = dispatch_semaphore_create(0);
    v4 = objc_opt_new();
    [v4 setDiscretionary:0];
    [v4 setAllowsCellularAccess:1];
    [v4 setAllowsExpensiveAccess:1];
    [v4 setRequiresPowerPluggedIn:0];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100001664;
    v7[3] = &unk_1000A9050;
    v7[5] = v3;
    v7[6] = &v8;
    v7[4] = self;
    [(MAAsset *)[(Haywire *)self firmwareAsset] startDownload:v4 then:v7];
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v3);
  }

  v5 = v9[3] == 0;
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)recoveryDeviceConnected:(__AMRecoveryModeDevice *)a3
{
  [(FudPluginDelegate *)self->_delegate log:6 format:@"recovery mode device %p connected\n", a3];
  ChipID = AMRecoveryModeDeviceGetChipID(a3);
  BoardID = AMRecoveryModeDeviceGetBoardID(a3);
  [(Haywire *)self setAPFusingsWithChipID:ChipID boardID:BoardID productionFused:AMRecoveryModeDeviceGetProductionMode(a3) != 0];
  if (![(Haywire *)self findLocalAsset]&& (![(Haywire *)self hasNetworkAccess]|| ![(Haywire *)self findRemoteAsset]))
  {
    [(Haywire *)self setError:sub_10000195C(4001, @"chipID=0x%X, boardID=%d: Recovery mode options failed to find local asset.", v35, v36, v37, v38, v39, v40, ChipID)];
    v41 = [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"Accessory not Supported or failed to download accessory firmware." table:&stru_1000ABB18, 0];
    v42 = [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"Accessory" table:&stru_1000ABB18, 0];

    [(Haywire *)self notifyUserWithMessage:v41 title:v42];
    return;
  }

  v7 = [(Haywire *)self bundlePath];
  v8 = [(Haywire *)self variant];
  v9 = [(Haywire *)self bootArgs];
  v13 = sub_100001A14(v7, v8, v9, ChipID, BoardID, v10, v11, v12);
  if (v13)
  {
    v20 = v13;
    if (AMRecoveryModeDeviceIsBootstrapOnly(a3, v13))
    {
      [(FudPluginDelegate *)self->_delegate log:5 format:@"chipID=0x%X, boardID=%d: Recovery mode bootstrap.\n", ChipID, BoardID];
      v27 = AMRestorePerformRecoveryModeRestore(a3, v20, sub_100001E44, self);
      if (!v27)
      {
        v44 = 0;
        self->_success = 1;
        goto LABEL_17;
      }

      v34 = sub_10000195C(v27, @"AMRestorePerformRecoveryModeRestore(%ps) returned %d.\n", v28, v29, v30, v31, v32, v33, a3);
    }

    else
    {
      v34 = sub_10000195C(4006, @"chipID=0x%X, boardID=%d not configured to bootstrap, ignoring.\n", v21, v22, v23, v24, v25, v26, ChipID);
    }

    v44 = v34;
LABEL_17:
    [(Haywire *)self setError:v44];

    CFRelease(v20);
    return;
  }

  v43 = sub_10000195C(4005, @"chipID=0x%X, boardID=%d: Recovery mode options creation failed.\n", v14, v15, v16, v17, v18, v19, ChipID);

  [(Haywire *)self setError:v43];
}

- (NSString)bundlePath
{
  if ([(Haywire *)self firmwareAsset])
  {
    v9 = [-[MAAsset getLocalUrl](-[Haywire firmwareAsset](self "firmwareAsset")];
    AMRLog(3, @"FirmwareAsset is %@", v10, v11, v12, v13, v14, v15, v9);
  }

  else
  {
    AMRLog(3, @"FirmwareAsset is nil", v3, v4, v5, v6, v7, v8, v17);
    return 0;
  }

  return v9;
}

- (NSString)variant
{
  if (self->_productionFused)
  {
    v3 = @"Accessory - Customer Boot";
  }

  else
  {
    v3 = @"Accessory - Development Boot";
  }

  v4 = CFPreferencesCopyAppValue(@"AuthInstallVariant", kCFPreferencesCurrentApplication);
  if ([(Haywire *)self firmwareAsset]&& !v4)
  {
    v4 = [-[MAAsset attributes](-[Haywire firmwareAsset](self "firmwareAsset")];
    v5 = v4;
  }

  if (!v4)
  {
    return &v3->isa;
  }

  return v4;
}

- (NSString)bootArgs
{
  result = [(Haywire *)self firmwareAsset];
  if (result)
  {
    v4 = [(MAAsset *)[(Haywire *)self firmwareAsset] attributes];

    return [v4 objectForKey:@"BootArgs"];
  }

  return result;
}

- (id)getUpdateRequired
{
  v3 = [NSNumber numberWithBool:1];
  result = [(Haywire *)self firmwareAsset];
  if (result)
  {
    result = [-[MAAsset attributes](-[Haywire firmwareAsset](self "firmwareAsset")];
  }

  if (!result)
  {
    return v3;
  }

  return result;
}

- (Haywire)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6
{
  v15.receiver = self;
  v15.super_class = Haywire;
  v9 = [(Haywire *)&v15 init:a3];
  v10 = v9;
  if (v9)
  {
    v9->_delegate = a4;
    [(Haywire *)v9 setOptions:a6];
    [(Haywire *)v10 setOutOptions:+[NSMutableDictionary dictionary]];
    delegate = v10->_delegate;
    v12 = objc_opt_class();
    [(FudPluginDelegate *)delegate log:5 format:@"Initializing Plugin %@ for DeviceClass %@", NSStringFromClass(v12), a3];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    if (DarwinNotifyCenter)
    {
      CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, @"com.apple.private.restrict-post.HaywireAccessoryAttached", @"com.apple.MobileAsset.MobileAccessoryUpdate.haywire", [NSDictionary dictionaryWithObject:a3 forKey:@"DeviceClass"], 4uLL);
    }

    else
    {
      [(FudPluginDelegate *)v10->_delegate log:4 format:@"Failed to get darwin notification center, can't post connection notification...continuing"];
    }
  }

  return v10;
}

- (void)doBootstrapWithOptions:(id)a3
{
  [(FudPluginDelegate *)self->_delegate log:5 format:@"%s", "[Haywire doBootstrapWithOptions:]"];
  [(Haywire *)self setError:0];
  AMRestoreUnregisterForDeviceNotifications();
  v4 = AMRestoreRegisterForDeviceNotifications(sub_100054CD8, sub_100054CEC, sub_100054D00, sub_100054D14, sub_100002364, self);
  if (v4)
  {
    v11 = v4;
    [(Haywire *)self setError:sub_10000195C(v4, @"%s: unable to register for device notifications (err: %d)\n", v5, v6, v7, v8, v9, v10, "[Haywire doBootstrapWithOptions:]")];
  }

  if (self->_success)
  {
LABEL_6:
    if (!self->_error)
    {
      [(FudPluginDelegate *)self->_delegate log:5 format:@"%s: successfully bootstrapped device.\n", "[Haywire doBootstrapWithOptions:]"];
    }
  }

  else
  {
    while (!self->_error)
    {
      CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.79769313e308, 1u);
      if (self->_success)
      {
        goto LABEL_6;
      }
    }
  }

  [(FudPluginDelegate *)self->_delegate log:5 format:@"%s: unregistering for libusbrestore device notifications", "[Haywire doBootstrapWithOptions:]", v11];

  AMRestoreUnregisterForDeviceNotifications();
}

- (void)bootstrapWithOptions:(id)a3
{
  [(FudPluginDelegate *)self->_delegate log:6 format:@"%s", "[Haywire bootstrapWithOptions:]"];
  [(Haywire *)self doBootstrapWithOptions:a3];
  if (self->_success)
  {
    v5 = [NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"%@-%@-%@" forKey:[(Haywire *)self chipID], [(Haywire *)self boardID], [(Haywire *)self variant]], @"DeviceClassRevision"];
    success = self->_success;
  }

  else
  {
    success = 0;
    v5 = 0;
  }

  delegate = self->_delegate;
  error = self->_error;

  [(FudPluginDelegate *)delegate didBootstrap:success info:v5 error:error];
}

- (void)downloadFirmwareWithOptions:(id)a3
{
  v4 = objc_alloc_init(MADownloadOptions);
  if (![(Haywire *)self firmwareAsset])
  {
    v15 = @"No Asset";
LABEL_11:
    sub_100055404(self, v15, v5, v6, v7, v8, v9, v10);
    return;
  }

  [(FudPluginDelegate *)self->_delegate log:5 format:@"%s asset state = %d", "[Haywire downloadFirmwareWithOptions:]", [(MAAsset *)[(Haywire *)self firmwareAsset] state]];
  if (!v4)
  {
    v15 = @"downloadOptions allocation failed";
    goto LABEL_11;
  }

  [v4 setRequiresPowerPluggedIn:0];
  [v4 setAllowsCellularAccess:1];
  [v4 setAllowsExpensiveAccess:1];
  [v4 setDiscretionary:0];
  v11 = [(MAAsset *)[(Haywire *)self firmwareAsset] wasLocal];
  delegate = self->_delegate;
  if (v11)
  {
    [(FudPluginDelegate *)delegate log:5 format:@"%s calling didDownload", "[Haywire downloadFirmwareWithOptions:]"];
    v13 = self->_delegate;
    outOptions = self->_outOptions;

    [(FudPluginDelegate *)v13 didDownload:1 info:outOptions error:0];
  }

  else
  {
    [(FudPluginDelegate *)delegate log:5 format:@"%s calling beginDownloadWithOptions", "[Haywire downloadFirmwareWithOptions:]"];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100002890;
    v16[3] = &unk_1000A90C8;
    v16[4] = self;
    [(MAAsset *)[(Haywire *)self firmwareAsset] startDownload:v4 completionWithError:v16];
  }
}

- (void)prepareFirmwareWithOptions:(id)a3
{
  [(Haywire *)self setOptions:a3];
  delegate = self->_delegate;
  outOptions = self->_outOptions;

  [(FudPluginDelegate *)delegate didPrepare:1 info:outOptions error:0];
}

- (void)applyFirmwareWithOptions:(id)a3
{
  [(Haywire *)self setOptions:a3];
  [(FudPluginDelegate *)self->_delegate log:5 format:@"%s - Applying update. old version(%@) new version (%@)", "[Haywire applyFirmwareWithOptions:]", self->_maxLocalBuildNumber, self->_maxRemoteBuildNumber];
  [(Haywire *)self setMaxLocalBuildNumber:self->_maxRemoteBuildNumber];
  if (self->_retryBootstrap)
  {
    [(FudPluginDelegate *)self->_delegate log:5 format:@"%s:About to trigger bootstrap", "[Haywire applyFirmwareWithOptions:]"];
    [(Haywire *)self doBootstrapWithOptions:0];
    if (!self->_error)
    {
      -[Haywire notifyUserWithMessage:title:](self, "notifyUserWithMessage:title:", [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"Downloading accessory firmware complete. Your accessory should now be ready for use." table:&stru_1000ABB18, 0], [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"Accessory" table:&stru_1000ABB18, 0]);
      self->_retryBootstrap = 0;
    }
  }

  [(Haywire *)self cleanupAssets];
  delegate = self->_delegate;
  outOptions = self->_outOptions;

  [(FudPluginDelegate *)delegate didApply:1 info:outOptions error:0];
}

- (void)finishWithOptions:(id)a3
{
  [(Haywire *)self setOptions:a3];
  delegate = self->_delegate;
  outOptions = self->_outOptions;

  [(FudPluginDelegate *)delegate didFinish:1 info:outOptions error:0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = Haywire;
  [(Haywire *)&v3 dealloc];
}

- (Haywire)initWithCoder:(id)a3
{
  AMRLog(7, @"%s", a3, v3, v4, v5, v6, v7, "[Haywire initWithCoder:]");
  v13.receiver = self;
  v13.super_class = Haywire;
  v10 = [(Haywire *)&v13 init];
  if (v10)
  {
    v11 = [a3 decodeObjectForKey:@"OutOptions"];
    v10->_outOptions = v11;
    if (!v11)
    {
      [(Haywire *)v10 setOutOptions:+[NSMutableDictionary dictionary]];
    }

    v10->_maxLocalBuildNumber = [a3 decodeObjectForKey:@"InstalledBuildNumber"];
    v10->_maxRemoteBuildNumber = [a3 decodeObjectForKey:@"MaxBuildNumber"];
    v10->_chipID = [a3 decodeObjectForKey:@"ApChipID"];
    v10->_boardID = [a3 decodeObjectForKey:@"ApBoardID"];
    v10->_firmwareAsset = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  [(FudPluginDelegate *)self->_delegate log:7 format:@"%s", "[Haywire encodeWithCoder:]"];
  outOptions = self->_outOptions;
  if (outOptions)
  {
    [a3 encodeObject:outOptions forKey:@"OutOptions"];
  }

  maxLocalBuildNumber = self->_maxLocalBuildNumber;
  if (maxLocalBuildNumber)
  {
    [a3 encodeObject:maxLocalBuildNumber forKey:@"InstalledBuildNumber"];
  }

  maxRemoteBuildNumber = self->_maxRemoteBuildNumber;
  if (maxRemoteBuildNumber)
  {
    [a3 encodeObject:maxRemoteBuildNumber forKey:@"MaxBuildNumber"];
  }

  chipID = self->_chipID;
  if (chipID)
  {
    [a3 encodeObject:chipID forKey:@"ApChipID"];
  }

  if (self->_boardID)
  {

    [a3 encodeObject:? forKey:?];
  }
}

- (void)runQuery:(BOOL)a3 completion:(id)a4
{
  v5 = a3;
  v7 = [(Haywire *)self variant];
  v8 = "Local";
  if (v5)
  {
    v8 = "Remote";
  }

  [(FudPluginDelegate *)self->_delegate log:7 format:@"%s:(%s)", "[Haywire runQuery:completion:]", v8];
  v9 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.MobileAccessoryUpdate.haywire"];
  if (!v9)
  {
    v22 = @"Couldn't allocate MAAssetQuery";
LABEL_17:
    sub_100055488(a4, v22, v10, chipID, v12, v13, v14, v15);
    return;
  }

  if (!v7)
  {
    v22 = @"variant is nil";
    goto LABEL_17;
  }

  chipID = self->_chipID;
  if (!chipID)
  {
    v22 = @"_chipID is nil";
    goto LABEL_17;
  }

  if (!self->_boardID)
  {
    v22 = @"_boardID is nil";
    goto LABEL_17;
  }

  v16 = v9;
  [v9 addKeyValuePair:@"ApChipID" with:?];
  [v16 addKeyValuePair:@"ApBoardID" with:self->_boardID];
  [v16 addKeyValuePair:@"Variant" with:v7];
  [v16 addKeyValuePair:@"PackageVersion" with:@"1.0"];
  delegate = self->_delegate;
  v18 = self->_chipID;
  boardID = self->_boardID;
  if (self->_productionFused)
  {
    [(FudPluginDelegate *)delegate log:5 format:@"%s - query for prod. variant = %@, _chipID = %@, _boardID = %@ ", "[Haywire runQuery:completion:]", v7, self->_chipID, boardID];
    [v16 addKeyValuePair:@"ProductionSigned" with:{objc_msgSend(&__kCFBooleanTrue, "stringValue")}];
  }

  else
  {
    [(FudPluginDelegate *)delegate log:5 format:@"%s - query for dev. variant = %@, _chipID = %@, _boardID = %@ ", "[Haywire runQuery:completion:]", v7, self->_chipID, boardID];
  }

  v20 = v16;
  if (v5)
  {
    v21 = objc_alloc_init(MADownloadOptions);
    [v21 setRequiresPowerPluggedIn:0];
    [v21 setDiscretionary:0];
    [v21 setAllowsCellularAccess:1];
    [v21 setAllowsExpensiveAccess:1];
    [v21 setTimeoutIntervalForResource:120];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100002FC8;
    v25[3] = &unk_1000A90F0;
    v25[4] = v16;
    v25[5] = self;
    v26 = v5;
    v25[6] = a4;
    [MAAsset startCatalogDownload:@"com.apple.MobileAsset.MobileAccessoryUpdate.haywire" options:v21 completionWithError:v25];
  }

  else
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000030B0;
    v23[3] = &unk_1000A90F0;
    v23[4] = self;
    v23[5] = v16;
    v24 = 0;
    v23[6] = a4;
    [v16 queryMetaDataWithError:v23];
  }
}

- (void)cleanupAssets
{
  v3 = [(Haywire *)self findLocalAsset];
  assetResults = self->_assetResults;
  if (assetResults)
  {
    if (v3)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v12 = [(NSArray *)assetResults countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v42;
        v38 = v40;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v42 != v14)
            {
              objc_enumerationMutation(assetResults);
            }

            v16 = *(*(&v41 + 1) + 8 * i);
            if ([v16 wasPurgeable])
            {
              v17 = [v16 attributes];
              if (!v17)
              {
                sub_100055550(self, v18, v19, v20, v21, v22, v23, v24);
                return;
              }

              v25 = [v17 objectForKey:@"BuildNumber"];
              if (!v25)
              {
                sub_100055518(self, v26, v27, v28, v29, v30, v31, v32);
                return;
              }

              maxLocalBuildNumber = self->_maxLocalBuildNumber;
              if (!maxLocalBuildNumber)
              {
                sub_1000554E0(self, v26, 0, v28, v29, v30, v31, v32);
                return;
              }

              v34 = v25;
              if ([v25 compare:maxLocalBuildNumber options:64] == -1)
              {
                v39[0] = _NSConcreteStackBlock;
                v39[1] = 3221225472;
                v40[0] = sub_100003370;
                v40[1] = &unk_1000A9140;
                v40[2] = self;
                v40[3] = v34;
                [v16 purgeWithError:v39];
              }

              else
              {
                delegate = self->_delegate;
                v36 = self->_maxLocalBuildNumber;
                v37 = [v16 state];
                [v16 state];
                [(FudPluginDelegate *)delegate log:5 format:@"%s: not purging current=%@, max=%@ state=%d %@.", "[Haywire cleanupAssets]", v34, v36, v37, MAStringForMAAssetState(), v38];
              }
            }
          }

          v13 = [(NSArray *)assetResults countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      [(FudPluginDelegate *)self->_delegate log:5 format:@"%s: no local assets found.", "[Haywire cleanupAssets]"];
    }
  }

  else
  {
    sub_100055588(self, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)dfuDeviceConnected:(__AMDFUModeDevice *)a3
{
  delegate = self->_delegate;
  [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
  [(FudPluginDelegate *)delegate log:7 format:@"[%f] dfu mode %p detected.\n", v6, a3];
  if (!a3)
  {
    sub_1000034D8();
    return;
  }

  ChipID = AMGenericDeviceGetChipID(a3);
  BoardID = AMGenericDeviceGetBoardID(a3);
  [(Haywire *)self setAPFusingsWithChipID:ChipID boardID:BoardID productionFused:AMGenericDeviceGetProductionMode(a3) != 0];
  if (![(Haywire *)self findLocalAsset]&& (![(Haywire *)self hasNetworkAccess]|| ![(Haywire *)self findRemoteAsset]))
  {
    sub_10000195C(4001, @"chipID=0x%X, boardID=%d: DFU mode options failed to find local asset.", v38, v39, v40, v41, v42, v43, ChipID);
    [sub_1000034C0() setError:?];
    [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"Accessory not Supported or failed to download accessory firmware." table:&stru_1000ABB18, 0];
    [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"Accessory" table:&stru_1000ABB18, 0];
    sub_1000034D8();

    [v44 notifyUserWithMessage:? title:?];
    return;
  }

  v9 = [(Haywire *)self bundlePath];
  v10 = [(Haywire *)self variant];
  v11 = [(Haywire *)self bootArgs];
  v15 = sub_100001A14(v9, v10, v11, ChipID, BoardID, v12, v13, v14);
  if (v15)
  {
    v22 = v15;
    if (AMGenericDeviceIsBootstrapOnly(a3, v15))
    {
      [(FudPluginDelegate *)self->_delegate log:5 format:@"chipID=0x%X, boardID=%d: DFU mode bootstrap.\n", ChipID, BoardID];
      v29 = self->_delegate;
      [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
      [(FudPluginDelegate *)v29 log:7 format:@"[%f] %s - starting restore\n", v30, "[Haywire dfuDeviceConnected:]"];
      v31 = AMRestorePerformGenericDFURestore(a3, v22, sub_100001B68, self);
      if (!v31)
      {
LABEL_17:
        sub_1000034D8();

        CFRelease(v48);
        return;
      }

      sub_10000195C(v31, @"AMRestorePerformDFURestore(%p) returned %d.\n", v32, v33, v34, v35, v36, v37, a3);
    }

    else
    {
      sub_10000195C(4006, @"chipID=0x%X, boardID=%d not configured to bootstrap, ignoring.\n", v23, v24, v25, v26, v27, v28, ChipID);
    }

    [sub_1000034C0() setError:?];
    goto LABEL_17;
  }

  sub_10000195C(4005, @"chipID=0x%X, boardID=%d: DFU mode options creation failed.\n", v16, v17, v18, v19, v20, v21, ChipID);
  sub_1000034C0();
  sub_1000034D8();

  [v46 setError:?];
}

- (id)filterFoundAssets:(id)a3
{
  v3 = a3;
  if (!a3)
  {
    return v3;
  }

  v5 = MGCopyAnswer();
  v6 = MGCopyAnswer();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003110;
  v9[3] = &unk_1000A9118;
  v9[4] = self;
  v9[5] = v5;
  v9[6] = v6;
  v7 = [v3 indexesOfObjectsWithOptions:1 passingTest:v9];
  if (v7)
  {
    v3 = [v3 objectsAtIndexes:v7];
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = 0;
  if (v5)
  {
LABEL_4:
  }

LABEL_5:
  if (v6)
  {
  }

  return v3;
}

- (BOOL)filterAsset:(id)a3 osBuild:(id)a4 osVersion:(id)a5
{
  if (!a3)
  {
    LOBYTE(v8) = 0;
    return v8;
  }

  v8 = [a3 attributes];
  if (!v8)
  {
    return v8;
  }

  v9 = v8;
  v10 = [v8 objectForKey:@"MinimumRequiredOSBuild"];
  if (v10)
  {
    if (!a4)
    {
      goto LABEL_20;
    }

    v11 = v10;
    if ([a4 compare:v10] == -1)
    {
      [(FudPluginDelegate *)self->_delegate log:7 format:@"%s: OS build %@ doesn't meet minimum build requirement %@\n", "[Haywire filterAsset:osBuild:osVersion:]", a4, v11];
      goto LABEL_20;
    }
  }

  v12 = [v9 objectForKey:@"MaximumAllowedOSBuild"];
  if (v12)
  {
    if (a4)
    {
      v13 = v12;
      if ([a4 compare:v12] == 1)
      {
        [(FudPluginDelegate *)self->_delegate log:7 format:@"%s: OS build %@ doesn't meet maximum allowed build requirement %@\n", "[Haywire filterAsset:osBuild:osVersion:]", a4, v13];
        goto LABEL_20;
      }

      goto LABEL_10;
    }

LABEL_20:
    LOBYTE(v8) = 0;
    return v8;
  }

LABEL_10:
  v14 = [v9 objectForKey:@"MinimumRequiredOSVersion"];
  if (v14)
  {
    if (!a5)
    {
      goto LABEL_20;
    }

    v15 = v14;
    if ([a5 compare:v14] == -1)
    {
      [(FudPluginDelegate *)self->_delegate log:7 format:@"%s: OS build %@ doesn't meet minimum version requirement %@\n", "[Haywire filterAsset:osBuild:osVersion:]", a5, v15];
      goto LABEL_20;
    }
  }

  v16 = [v9 objectForKey:@"MaximumAllowedOSVersion"];
  if (v16)
  {
    if (!a5)
    {
      goto LABEL_20;
    }

    v17 = v16;
    if ([a5 compare:v16] == 1)
    {
      [(FudPluginDelegate *)self->_delegate log:7 format:@"%s: OS build %@ doesn't meet maximum allowed version requirement %@\n", "[Haywire filterAsset:osBuild:osVersion:]", a5, v17];
      goto LABEL_20;
    }
  }

  LOBYTE(v8) = 1;
  return v8;
}

- (id)assetWithMaxVersion:(id)a3 remote:(BOOL)a4
{
  v31 = a4;
  if (!a3)
  {
    return 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v33 objects:v37 count:16];
  v7 = "[Haywire assetWithMaxVersion:remote:]";
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    v11 = *v34;
    obj = a3;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [v13 attributes];
        if (v14)
        {
          v15 = [v14 objectForKey:@"BuildNumber"];
          if (v15)
          {
            v16 = v15;
            if (!v10 || [v15 compare:v10 options:64] != -1)
            {
              if (v31 || ([v13 wasLocal] & 1) != 0)
              {
                delegate = self->_delegate;
                v18 = [v13 state];
                [v13 state];
                [(FudPluginDelegate *)delegate log:5 format:@"%s: found Asset. state=%d %@", v7, v18, MAStringForMAAssetState()];
                v9 = v13;
                v10 = v16;
              }

              else
              {
                v29 = self->_delegate;
                v30 = v10;
                v19 = self;
                v20 = v7;
                v21 = v9;
                v22 = [v13 state];
                [v13 state];
                v27 = v22;
                v9 = v21;
                v7 = v20;
                self = v19;
                v10 = v30;
                [(FudPluginDelegate *)v29 log:7 format:@"%s: skipping asset %@ because it is not installed (state = %d %@)", v7, v16, v27, MAStringForMAAssetState()];
              }
            }
          }

          else
          {
            [(FudPluginDelegate *)self->_delegate log:4 format:@"%s: Asset has no %@ key: %@", v7, v13, @"BuildNumber", v28];
          }
        }

        else
        {
          [(FudPluginDelegate *)self->_delegate log:4 format:@"%s: Asset has no attributes: %@", v7, v13, v26, v28];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (v31)
  {
    [(FudPluginDelegate *)self->_delegate log:5 format:@"%s: _maxRemoteBuildNumber was '%@' is now '%@'", v7, self->_maxRemoteBuildNumber, v10];
    [(Haywire *)self setMaxRemoteBuildNumber:v10];
  }

  else
  {
    v23 = [v9 state];
    v24 = self->_delegate;
    if (v23 == 2)
    {
      [(FudPluginDelegate *)v24 log:5 format:@"%s: _maxLocalBuildNumber was '%@' is now '%@'", v7, self->_maxLocalBuildNumber, v10];
      [(Haywire *)self setMaxLocalBuildNumber:v10];
    }

    else
    {
      -[FudPluginDelegate log:format:](v24, "log:format:", 3, @"%s: _maxLocalBuildNumber was '%@' unchanged because '%@' is not installed. maxAsset.state = %d:\n%@", v7, self->_maxLocalBuildNumber, v10, [v9 state], v9);
    }
  }

  return v9;
}

@end