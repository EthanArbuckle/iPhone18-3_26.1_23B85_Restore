@interface IXSRemoteInstaller
+ (BOOL)_configurePlaceholderPromiseForCoordinator:(id)a3 remoteInstallOptions:(id)a4;
+ (BOOL)_setInstallOptions:(id)a3 forCoordinator:(id)a4;
+ (BOOL)isInstallProhibited;
+ (id)_coordinatorForEmbeddedAppWithRemoteInstallConfiguration:(id)a3 error:(id *)a4;
+ (id)_coordinatorWithIdentity:(id)a3 forUpdate:(BOOL)a4 created:(BOOL *)a5 error:(id *)a6;
+ (int)_readAssetFromXPCAssetStream:(id)a3 error:(id *)a4;
+ (unint64_t)_autoInstallOverrideForRemoteOverride:(unsigned __int8)a3;
+ (unint64_t)_importanceFromRemoteInstallImportance:(unsigned __int8)a3;
+ (unint64_t)_stashModeForRemoteStashMode:(unsigned __int8)a3;
+ (unsigned)_remoteProgressPhaseForPhase:(unint64_t)a3;
+ (void)_cancelAppAssetPromise:(id)a3 withUnderlyingError:(id)a4;
+ (void)_completeStreamingForExtractor:(id)a3 forReadFD:(int)a4 isMultiUser:(BOOL)a5 completion:(id)a6;
- (IXSRemoteInstaller)initWithRemoteInstallOptions:(id)a3 xpcAssetStream:(id)a4 assetSize:(unint64_t)a5 error:(id *)a6;
- (IXSRemoteInstallerDelegate)delegate;
- (void)_beginTransferAndInstallEmbeddedApp;
- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)coordinator:(id)a3 didUpdateProgress:(double)a4 forPhase:(unint64_t)a5 overallProgress:(double)a6;
- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4;
- (void)coordinatorDidInstallPlaceholder:(id)a3 forApplicationRecord:(id)a4;
@end

@implementation IXSRemoteInstaller

+ (id)_coordinatorWithIdentity:(id)a3 forUpdate:(BOOL)a4 created:(BOOL *)a5 error:(id *)a6
{
  v8 = a4;
  v9 = a3;
  v10 = sub_10000C504(off_100026A70);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      v15 = 136315394;
      v16 = "+[IXSRemoteInstaller _coordinatorWithIdentity:forUpdate:created:error:]";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Found an existing app with %@, creating an updating coordinator", &v15, 0x16u);
    }

    v12 = IXUpdatingAppInstallCoordinator_ptr;
  }

  else
  {
    if (v11)
    {
      v15 = 136315394;
      v16 = "+[IXSRemoteInstaller _coordinatorWithIdentity:forUpdate:created:error:]";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Could not find an existing app with %@, creating an initiating coordinator", &v15, 0x16u);
    }

    v12 = IXInitiatingAppInstallCoordinator_ptr;
  }

  v13 = [*v12 processScopedCoordinatorForAppWithIdentity:v9 withClientID:20 createIfNotExisting:1 created:a5 error:a6];

  return v13;
}

+ (id)_coordinatorForEmbeddedAppWithRemoteInstallConfiguration:(id)a3 error:(id *)a4
{
  v26 = 0;
  v5 = [a3 bundleID];
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];
  v7 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v5 personaUniqueString:@"PersonalPersonaPlaceholderString" location:0];
  v25 = 0;
  v8 = [objc_opt_class() _coordinatorWithIdentity:v7 forUpdate:v6 != 0 created:&v26 error:&v25];
  v9 = v25;
  if (!v8)
  {
    goto LABEL_9;
  }

  if ((v26 & 1) == 0 && [v8 creatorIdentifier]== 20)
  {
    v11 = sub_100006524("+[IXSRemoteInstaller _coordinatorForEmbeddedAppWithRemoteInstallConfiguration:error:]", 144, @"IXRemoteErrorDomain", 5, 0, 0, @"Cancel orphaned coordinator", v10, v22);
    [v8 cancelForReason:v11 client:20 error:0];
    v24 = v9;
    v12 = [objc_opt_class() _coordinatorWithIdentity:v7 forUpdate:v6 != 0 created:&v26 error:&v24];
    v13 = v24;

    v9 = v13;
    v8 = v12;
    if (!v12)
    {
LABEL_9:
      v8 = sub_10000C504(off_100026A70);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100012540();
      }

      goto LABEL_14;
    }
  }

  if ((v26 & 1) == 0)
  {
    v16 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100012454();
    }

    v18 = sub_100006524("+[IXSRemoteInstaller _coordinatorForEmbeddedAppWithRemoteInstallConfiguration:error:]", 155, @"IXRemoteErrorDomain", 5, 0, 0, @"Failed to create a new coordinator as one already existed : %@", v17, v8);

    v9 = v18;
LABEL_14:

    if (a4)
    {
      v19 = v9;
      v8 = 0;
      *a4 = v9;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_17;
  }

  if (!v6)
  {
    v23 = v9;
    v14 = [v8 setPlaceholderDisposition:2 error:&v23];
    v15 = v23;

    if (v14)
    {
      v9 = v15;
    }

    else
    {
      v21 = sub_10000C504(off_100026A70);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000124C8();
      }

      v9 = 0;
    }
  }

LABEL_17:

  return v8;
}

- (IXSRemoteInstaller)initWithRemoteInstallOptions:(id)a3 xpcAssetStream:(id)a4 assetSize:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v35.receiver = self;
  v35.super_class = IXSRemoteInstaller;
  v12 = [(IXSRemoteInstaller *)&v35 init];
  v13 = v12;
  if (!v12)
  {
    v24 = 0;
LABEL_19:
    v26 = v13;
    goto LABEL_20;
  }

  [(IXSRemoteInstaller *)v12 setRemoteInstallOptions:v10];
  [(IXSRemoteInstaller *)v13 setXpcAssetStream:v11];
  [(IXSRemoteInstaller *)v13 setAssetSize:a5];
  v14 = [v10 bundleID];
  [(IXSRemoteInstaller *)v13 setBundleID:v14];

  if ([objc_opt_class() isInstallProhibited])
  {
    v15 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100012628(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    v24 = sub_100006524("[IXSRemoteInstaller initWithRemoteInstallOptions:xpcAssetStream:assetSize:error:]", 195, @"IXRemoteErrorDomain", 9, 0, 0, @"Installation on this device is prohibited by ManagedConfiguration", v23, v33);
    goto LABEL_6;
  }

  if ([v10 installableType])
  {
    v24 = 0;
LABEL_18:
    v31 = +[UMUserManager sharedManager];
    -[IXSRemoteInstaller setIsMultiUser:](v13, "setIsMultiUser:", [v31 isMultiUser]);

    goto LABEL_19;
  }

  v34 = 0;
  v27 = [objc_opt_class() _coordinatorForEmbeddedAppWithRemoteInstallConfiguration:v10 error:&v34];
  v24 = v34;
  if (v27)
  {
    [v27 setObserver:v13];
    [(IXSRemoteInstaller *)v13 setCoordinator:v27];
    v33 = 0;
    v28 = [v27 setImportance:objc_msgSend(objc_opt_class() error:{"_importanceFromRemoteInstallImportance:", objc_msgSend(v10, "importance")), &v33}];
    v29 = v33;
    if ((v28 & 1) == 0)
    {
      v30 = sub_10000C504(off_100026A70);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1000125B4();
      }
    }

    goto LABEL_18;
  }

LABEL_6:
  if (a6)
  {
    v25 = v24;
    v26 = 0;
    *a6 = v24;
  }

  else
  {
    v26 = 0;
  }

LABEL_20:

  return v26;
}

+ (unint64_t)_importanceFromRemoteInstallImportance:(unsigned __int8)a3
{
  v3 = 1;
  if (a3 == 1)
  {
    v3 = 2;
  }

  if (a3 == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (unsigned)_remoteProgressPhaseForPhase:(unint64_t)a3
{
  if (a3)
  {
    return 2 * (a3 == 1);
  }

  else
  {
    return 1;
  }
}

+ (unint64_t)_autoInstallOverrideForRemoteOverride:(unsigned __int8)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

+ (unint64_t)_stashModeForRemoteStashMode:(unsigned __int8)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

+ (BOOL)_configurePlaceholderPromiseForCoordinator:(id)a3 remoteInstallOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 identity];
  v8 = [v7 bundleID];

  v9 = +[IXFileManager defaultManager];
  v10 = [v5 identity];
  v11 = [v10 location];

  v12 = [IXPlaceholderSpecification alloc];
  v13 = [v6 localizedName];
  v14 = [v12 initWithLocalizedBundleName:v13 bundleID:v8 type:1 client:20 location:v11];

  [v14 setInstallType:1];
  v68 = 0;
  v15 = [[IXPlaceholder alloc] initWithSpecification:v14 error:&v68];
  v16 = v68;
  v17 = v16;
  if (!v15)
  {
    v25 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100012B9C();
    }

    [v5 cancelForReason:v17 client:20 error:0];
    goto LABEL_10;
  }

  v60 = v9;
  v67 = v16;
  v18 = [v5 setPlaceholderPromise:v15 error:&v67];
  v19 = v67;

  if ((v18 & 1) == 0)
  {
    v28 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1000126A0();
    }

    [v5 cancelForReason:v19 client:20 error:0];
    v26 = 0;
    v27 = 0;
    v17 = v19;
    goto LABEL_50;
  }

  v20 = [v6 iconData];

  if (v20)
  {
    v21 = [IXPromisedInMemoryData alloc];
    v22 = [v6 iconData];
    v23 = [v21 initWithName:@"Placeholder icon data" client:20 data:v22 location:v11];

    if (v23)
    {
      v66 = v19;
      v24 = [v15 setIconPromise:v23 error:&v66];
      v17 = v66;

      if ((v24 & 1) == 0)
      {
        v33 = sub_10000C504(off_100026A70);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_100012718();
        }

        goto LABEL_47;
      }

      v19 = v17;
    }

    else
    {
      v29 = sub_10000C504(off_100026A70);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10001278C(v6);
      }
    }
  }

  v30 = [v6 storeMetadata];

  if (!v30)
  {
    goto LABEL_29;
  }

  v31 = [v6 storeMetadata];
  v23 = [MIStoreMetadata metadataFromDictionary:v31];

  if (!v23)
  {
    v34 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_100012898(v6);
    }

    goto LABEL_28;
  }

  v65 = v19;
  v32 = [v15 setMetadata:v23 error:&v65];
  v17 = v65;

  if ((v32 & 1) == 0)
  {
    v33 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100012824();
    }

LABEL_47:

    [v15 cancelForReason:v17 client:20 error:0];
LABEL_48:
    v26 = 0;
LABEL_49:
    v27 = 0;
LABEL_50:
    v9 = v60;
    goto LABEL_51;
  }

  v19 = v17;
LABEL_28:

LABEL_29:
  v35 = [v6 sinfData];

  if (!v35)
  {
    goto LABEL_32;
  }

  v36 = [v6 sinfData];
  v64 = v19;
  v37 = [v15 setSinfData:v36 error:&v64];
  v17 = v64;

  if ((v37 & 1) == 0)
  {
    v41 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_100012930();
    }

    [v15 cancelForReason:v17 client:20 error:0];
    goto LABEL_48;
  }

  v19 = v17;
LABEL_32:
  v38 = [v6 bundleVersion];

  if (!v38)
  {
    v17 = v19;
    goto LABEL_39;
  }

  v39 = objc_opt_new();
  v40 = [v6 bundleVersion];
  [v39 setBundleVersion:v40];

  v63 = v19;
  LODWORD(v40) = [v15 setPlaceholderAttributes:v39 error:&v63];
  v17 = v63;

  if (!v40)
  {
    v52 = sub_10000C504(off_100026A70);
    v9 = v60;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_1000129A4();
    }

    [v15 cancelForReason:v17 client:20 error:0];
LABEL_10:
    v26 = 0;
    goto LABEL_11;
  }

LABEL_39:
  v42 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v8 error:0];
  v26 = v42;
  if (!v42 || ![v42 isPlaceholder])
  {
    goto LABEL_58;
  }

  v43 = [v26 URL];
  v44 = [v43 URLByAppendingPathComponent:@"PlaceholderEntitlements.plist" isDirectory:0];

  v45 = v44;
  if (![v60 itemExistsAtURL:v44])
  {
    v50 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_100012A18(v45);
    }

    goto LABEL_57;
  }

  [v60 diskUsageForURL:v44];
  v46 = [IXPromisedTransferToPath alloc];
  v47 = [NSString stringWithFormat:@"Entitlements Promise for %@", v8];
  v48 = v45;
  v49 = v47;
  v62[1] = v17;
  v59 = v48;
  v50 = [v46 initWithName:v47 client:20 transferPath:? diskSpaceNeeded:? location:? error:?];
  v58 = v17;

  if (!v50)
  {
    v17 = v58;
LABEL_67:
    [v15 cancelForReason:v17 client:20 error:0];

    goto LABEL_49;
  }

  [v50 setShouldCopy:1];
  [v50 setComplete:1];
  v62[0] = v58;
  v57 = [v15 setEntitlementsPromise:v50 error:v62];
  v17 = v62[0];

  if ((v57 & 1) == 0)
  {
    v56 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_100012AB0();
    }

    goto LABEL_67;
  }

  v45 = v59;
LABEL_57:

LABEL_58:
  v53 = v17;
  v61 = v17;
  v54 = [v15 setConfigurationCompleteWithError:&v61];
  v17 = v61;

  if (v54)
  {
    v27 = 1;
    goto LABEL_50;
  }

  v55 = sub_10000C504(off_100026A70);
  v9 = v60;
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    sub_100012B28();
  }

  [v15 cancelForReason:v17 client:20 error:0];
LABEL_11:
  v27 = 0;
LABEL_51:

  return v27;
}

+ (void)_cancelAppAssetPromise:(id)a3 withUnderlyingError:(id)a4
{
  v5 = off_100026A70;
  v6 = a4;
  v7 = a3;
  v8 = sub_10000C504(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100012C14(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v17 = sub_100006524("+[IXSRemoteInstaller _cancelAppAssetPromise:withUnderlyingError:]", 452, @"IXRemoteErrorDomain", 7, v6, 0, @"Failed to stream the app asset from remote device", v16, v21);

  v22 = 0;
  v18 = [v7 cancelForReason:v17 client:20 error:&v22];

  v19 = v22;
  if ((v18 & 1) == 0)
  {
    v20 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100012C8C();
    }
  }
}

+ (BOOL)_setInstallOptions:(id)a3 forCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(MIInstallOptions);
  [v8 setInstallTargetType:1];
  [v8 setLsInstallType:1];
  v9 = [v7 provisioningProfileDatas];
  [v8 setProvisioningProfiles:v9];

  [v8 setAutoInstallOverride:{objc_msgSend(a1, "_autoInstallOverrideForRemoteOverride:", objc_msgSend(v7, "pairedAutoInstallOverride"))}];
  [v8 setProvisioningProfileInstallFailureIsFatal:{objc_msgSend(v7, "provisioningProfileInstallFailureIsFatal")}];
  [v8 setStashMode:{objc_msgSend(a1, "_stashModeForRemoteStashMode:", objc_msgSend(v7, "stashMode"))}];
  [v8 setAllowLocalProvisioned:1];
  v10 = [v7 geoJSONData];
  [v8 setGeoJSONData:v10];

  LODWORD(v10) = [v7 installMode];
  if (v10 == 1)
  {
    [v8 setDeveloperInstall:1];
  }

  v14 = 0;
  v11 = [v6 setInstallOptions:v8 error:&v14];
  v12 = v14;
  if ((v11 & 1) == 0)
  {
    [v6 cancelForReason:v12 client:20 error:0];
  }

  return v11;
}

+ (void)_completeStreamingForExtractor:(id)a3 forReadFD:(int)a4 isMultiUser:(BOOL)a5 completion:(id)a6
{
  v9 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_10000DD30;
  v18[4] = sub_10000DD5C;
  v19 = objc_retainBlock(a6);
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("com.apple.RemoteInstallerAssetStreamingWrite", v10);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DD64;
  block[3] = &unk_1000209C8;
  v16 = a4;
  v14 = v9;
  v15 = v18;
  v17 = a5;
  v12 = v9;
  dispatch_async(v11, block);

  _Block_object_dispose(v18, 8);
}

+ (int)_readAssetFromXPCAssetStream:(id)a3 error:(id *)a4
{
  v5 = a3;
  *v29 = -1;
  if (pipe(v29))
  {
    v6 = *__error();
    v7 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100012E88(v6);
    }

    v25 = strerror(v6);
    v9 = @"Failed to create a pipe() to stream the app asset : %s (%d)";
    v10 = 591;
  }

  else
  {
    v12 = v29[0];
    if (v29[0] != -1)
    {
      v13 = v29[1];
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = dispatch_queue_create("com.apple.RemoteInstallerAssetStreamingRead", v14);

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000E8A8;
      block[3] = &unk_100020A30;
      v27 = v5;
      v28 = v13;
      dispatch_async(v15, block);

      v11 = 0;
      goto LABEL_10;
    }

    v17 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100012F18(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    v9 = @"pipe() did not set a valid fd at index 0 in fds array";
    v10 = 598;
  }

  v11 = sub_100006524("+[IXSRemoteInstaller _readAssetFromXPCAssetStream:error:]", v10, @"IXRemoteErrorDomain", 5, 0, 0, v9, v8, v25);
  if (a4)
  {
    v11 = v11;
    *a4 = v11;
  }

  v12 = -1;
LABEL_10:

  return v12;
}

- (void)_beginTransferAndInstallEmbeddedApp
{
  v3 = [(IXSRemoteInstaller *)self remoteInstallOptions];
  v4 = [v3 localizedName];
  v33[0] = SZExtractorOptionsDenyInvalidSymlinks;
  v33[1] = SZExtractorOptionsPerformCachedWrites;
  v34[0] = &__kCFBooleanTrue;
  v34[1] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
  v6 = [(IXSRemoteInstaller *)self coordinator];
  if (![objc_opt_class() _configurePlaceholderPromiseForCoordinator:v6 remoteInstallOptions:v3])
  {
    v17 = 0;
    v8 = 0;
LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

  v32 = 0;
  v7 = [v6 setInitialODRAssetPromises:&__NSArray0__struct error:&v32];
  v8 = v32;
  if ((v7 & 1) == 0)
  {
    v21 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100013020();
    }

    goto LABEL_14;
  }

  if (![objc_opt_class() _setInstallOptions:v3 forCoordinator:v6])
  {
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v9 = objc_opt_class();
  v10 = [(IXSRemoteInstaller *)self xpcAssetStream];
  v31 = v8;
  v11 = [v9 _readAssetFromXPCAssetStream:v10 error:&v31];
  v12 = v31;

  if ((v11 & 0x80000000) != 0)
  {
    [v6 cancelForReason:v12 client:20 error:0];
    v17 = 0;
    v18 = 0;
    v8 = v12;
    goto LABEL_16;
  }

  v25 = v11;
  v13 = [IXPromisedStreamingZipTransfer alloc];
  v14 = [(IXSRemoteInstaller *)self assetSize];
  v15 = [v6 identity];
  v16 = [v15 location];
  v17 = [v13 initWithName:v4 client:20 streamingZipOptions:v5 archiveSize:0 diskSpaceNeeded:v14 location:v16];

  v18 = [v3 targetLastPathComponent];
  if (!v18)
  {
    v8 = v12;
LABEL_19:
    v22 = v8;
    v29 = v8;
    v23 = [v6 setAppAssetPromise:v17 error:&v29];
    v8 = v29;

    if (v23)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000ECFC;
      v26[3] = &unk_100020AA8;
      v26[4] = self;
      v17 = v17;
      v27 = v17;
      v28 = v25;
      [v17 preflightWithCompletion:v26];
    }

    else
    {
      v24 = sub_10000C504(off_100026A70);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100013114();
      }
    }

    goto LABEL_16;
  }

  v19 = sub_10000C504(off_100026A70);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_100013094();
  }

  v30 = v12;
  v20 = [v17 setTargetLastPathComponent:v18 error:&v30];
  v8 = v30;

  if (v20)
  {
    goto LABEL_19;
  }

LABEL_16:
}

- (void)coordinatorDidInstallPlaceholder:(id)a3 forApplicationRecord:(id)a4
{
  v4 = a3;
  v5 = sub_10000C504(off_100026A70);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100013270();
  }
}

- (void)coordinator:(id)a3 didUpdateProgress:(double)a4 forPhase:(unint64_t)a5 overallProgress:(double)a6
{
  v10 = [(IXSRemoteInstaller *)self delegate];
  if (v10)
  {
    v11 = v10;
    [v10 remoteInstaller:self didUpdateProgress:objc_msgSend(objc_opt_class() forPhase:"_remoteProgressPhaseForPhase:" overallProgress:{a5), a4, a6}];
    v10 = v11;
  }
}

- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000C504(off_100026A70);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[IXSRemoteInstaller coordinatorDidCompleteSuccessfully:forApplicationRecord:]";
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Coordinator completed successfully %@", buf, 0x16u);
  }

  if ([(IXSRemoteInstaller *)self isMultiUser])
  {
    v9 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 bundleID];
      *buf = 136315394;
      v28 = "[IXSRemoteInstaller coordinatorDidCompleteSuccessfully:forApplicationRecord:]";
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Resuming sync bubble because the coordinator for %@ completed successfully", buf, 0x16u);
    }

    v11 = +[UMUserManager sharedManager];
    [v11 resumeSync];
  }

  v12 = [(IXSRemoteInstaller *)self delegate];
  if (v12)
  {
    if (v7)
    {
      v13 = 0;
    }

    else
    {
      v14 = [LSApplicationRecord alloc];
      v15 = [v6 bundleID];
      v26 = 0;
      v7 = [v14 initWithBundleIdentifier:v15 allowPlaceholder:0 error:&v26];
      v13 = v26;

      if (!v7)
      {
        v22 = sub_10000C504(off_100026A70);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1000132F0(v6);
        }

        v23 = [v6 bundleID];
        v25 = sub_100006524("[IXSRemoteInstaller coordinatorDidCompleteSuccessfully:forApplicationRecord:]", 926, @"IXRemoteErrorDomain", 5, v13, 0, @"Install for %@ completed successfully, but LaunchServices did not have a record for it", v24, v23);

        [v12 remoteInstaller:self canceledWithReason:v25];
        v7 = 0;
        v13 = v25;
        goto LABEL_12;
      }
    }

    v16 = [IXRemoteInstallResult alloc];
    v17 = [v7 databaseUUID];
    v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v7 sequenceNumber]);
    v19 = [v7 URL];
    v20 = [v7 persistentIdentifier];
    v21 = [(IXRemoteInstallResult *)v16 initWithDBUUID:v17 dbSequenceNumber:v18 URLOfInstalledApp:v19 persistentIdentifier:v20];

    [v12 remoteInstaller:self completedWithInstallResult:v21];
LABEL_12:
  }
}

- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([(IXSRemoteInstaller *)self isMultiUser])
  {
    v9 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 bundleID];
      v13 = 136315394;
      v14 = "[IXSRemoteInstaller coordinator:canceledWithReason:client:]";
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Resuming sync bubble because the coordinator for %@ was canceled", &v13, 0x16u);
    }

    v11 = +[UMUserManager sharedManager];
    [v11 resumeSync];
  }

  v12 = [(IXSRemoteInstaller *)self delegate];
  [v12 remoteInstaller:self canceledWithReason:v8];
}

+ (BOOL)isInstallProhibited
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:MCFeatureAppInstallationAllowed] == 2;

  return v3;
}

- (IXSRemoteInstallerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end