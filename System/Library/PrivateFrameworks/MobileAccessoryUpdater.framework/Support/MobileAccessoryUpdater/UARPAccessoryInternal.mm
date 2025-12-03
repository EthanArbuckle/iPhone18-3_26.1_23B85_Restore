@interface UARPAccessoryInternal
+ (id)encodedClasses;
- (BOOL)isEqual:(id)equal;
- (UARPAccessoryInternal)initWithAccessoryID:(id)d assetID:(id)iD;
- (UARPAccessoryInternal)initWithCoder:(id)coder;
- (id)analyticsUpdateStateForAssetID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createUpdateFirmwareEvent;
- (unint64_t)hash;
- (void)analyticsSendUpdateFirmwareEventForAssetID:(id)d frameworkParams:(id)params;
- (void)analyticsSetDownloadAvailableForAssetID:(id)d;
- (void)analyticsSetDownloadCompleteForAssetID:(id)d status:(int64_t)status;
- (void)analyticsSetDownloadConsentRequestedForAssetID:(id)d;
- (void)checkDropbox;
- (void)dealloc;
- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string;
- (void)encodeWithCoder:(id)coder;
- (void)removeUpdateState:(id)state;
- (void)sendUpdateFirmwareEventForState:(id)state;
@end

@implementation UARPAccessoryInternal

+ (id)encodedClasses
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_10003BF10;
  v16 = sub_10003BF20;
  v17 = qword_100099870;
  if (!qword_100099870)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10003BF2C;
    v10 = &unk_100081BF8;
    v11 = &v12;
    sub_10003BF2C(&v7);
    v3 = v13[5];
  }

  _Block_object_dispose(&v12, 8);
  [v2 addObject:objc_opt_class()];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_10003BF10;
  v16 = sub_10003BF20;
  v17 = qword_100099880;
  if (!qword_100099880)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10003C0F4;
    v10 = &unk_100081BF8;
    v11 = &v12;
    sub_10003C0F4(&v7);
    v4 = v13[5];
  }

  _Block_object_dispose(&v12, 8);
  [v2 addObject:objc_opt_class()];
  v5 = [NSSet setWithArray:v2];

  return v5;
}

- (UARPAccessoryInternal)initWithAccessoryID:(id)d assetID:(id)iD
{
  v11.receiver = self;
  v11.super_class = UARPAccessoryInternal;
  v6 = [(UARPAccessoryInternal *)&v11 init];
  if (v6)
  {
    v6->_accessoryID = [d copy];
    v6->_assetID = iD;
    if ([(UARPAccessoryID *)v6->_accessoryID productGroup]&& [(UARPAccessoryID *)v6->_accessoryID productNumber])
    {
      v7 = [[NSString alloc] initWithFormat:@"%@-%@", -[UARPAccessoryID productGroup](v6->_accessoryID, "productGroup"), -[UARPAccessoryID productNumber](v6->_accessoryID, "productNumber")];
    }

    else
    {
      if (![(UARPAccessoryID *)v6->_accessoryID modelNumber])
      {
LABEL_9:
        v6->_analyticsUpdateStates = objc_alloc_init(NSMutableArray);
        v6->_analyticsLog = os_log_create("com.apple.accessoryupdater.uarp", "analytics");
        v6->_assetManagerLog = os_log_create("com.apple.accessoryupdater.uarp", "assetManager");
        return v6;
      }

      v8 = [-[UARPAccessoryID modelNumber](v6->_accessoryID "modelNumber")];
      v6->_identifier = v8;
      v9 = [UARPSupportedAccessory findByAppleModelNumber:v8];
      if (!v9)
      {
        return 0;
      }

      v7 = [objc_msgSend(v9 "mobileAssetAppleModelNumber")];
    }

    v6->_identifier = v7;
    goto LABEL_9;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPAccessoryInternal;
  [(UARPAccessoryInternal *)&v3 dealloc];
}

- (void)analyticsSetDownloadAvailableForAssetID:(id)d
{
  analyticsLog = self->_analyticsLog;
  if (os_log_type_enabled(analyticsLog, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[UARPAccessoryInternal analyticsSetDownloadAvailableForAssetID:]";
    v9 = 2112;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, analyticsLog, OS_LOG_TYPE_INFO, "%s: %@", &v7, 0x16u);
  }

  v6 = [(UARPAccessoryInternal *)self analyticsUpdateStateForAssetID:d];
  if (!v6)
  {
    v6 = [[UARPAnalyticsAUDUpdateFirmwareState alloc] initWithAccessoryID:self->_accessoryID assetID:self->_assetID];
    [(NSMutableArray *)self->_analyticsUpdateStates addObject:v6];
  }

  [(UARPAnalyticsAUDUpdateFirmwareState *)v6 setAssetAvailableForDownload];
}

- (void)analyticsSetDownloadConsentRequestedForAssetID:(id)d
{
  analyticsLog = self->_analyticsLog;
  if (os_log_type_enabled(analyticsLog, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[UARPAccessoryInternal analyticsSetDownloadConsentRequestedForAssetID:]";
    v9 = 2112;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, analyticsLog, OS_LOG_TYPE_INFO, "%s: %@", &v7, 0x16u);
  }

  v6 = [(UARPAccessoryInternal *)self analyticsUpdateStateForAssetID:d];
  if (v6)
  {
    [v6 setDownloadConsentRequested];
  }

  else if (os_log_type_enabled(self->_analyticsLog, OS_LOG_TYPE_ERROR))
  {
    sub_100053F5C();
  }
}

- (void)analyticsSetDownloadCompleteForAssetID:(id)d status:(int64_t)status
{
  analyticsLog = self->_analyticsLog;
  if (os_log_type_enabled(analyticsLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[UARPAccessoryInternal analyticsSetDownloadCompleteForAssetID:status:]";
    v12 = 2112;
    dCopy = d;
    v14 = 2080;
    v15 = sub_100019FF4(status);
    _os_log_impl(&_mh_execute_header, analyticsLog, OS_LOG_TYPE_INFO, "%s: %@ status=%s", &v10, 0x20u);
  }

  v8 = [(UARPAccessoryInternal *)self analyticsUpdateStateForAssetID:d];
  if (v8)
  {
    v9 = v8;
    [v8 setDownloadComplete:status];
    if ((status - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      [(UARPAccessoryInternal *)self sendUpdateFirmwareEventForState:v9];
      [(UARPAccessoryInternal *)self removeUpdateState:v9];
    }
  }

  else if (os_log_type_enabled(self->_analyticsLog, OS_LOG_TYPE_ERROR))
  {
    sub_100054064();
  }
}

- (void)analyticsSendUpdateFirmwareEventForAssetID:(id)d frameworkParams:(id)params
{
  analyticsLog = self->_analyticsLog;
  if (os_log_type_enabled(analyticsLog, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[UARPAccessoryInternal analyticsSendUpdateFirmwareEventForAssetID:frameworkParams:]";
    v13 = 2112;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, analyticsLog, OS_LOG_TYPE_INFO, "%s: %@", &v11, 0x16u);
  }

  v8 = [(UARPAccessoryInternal *)self analyticsUpdateStateForAssetID:d];
  if (v8)
  {
    v9 = v8;
    createUpdateFirmwareEvent = [(UARPAccessoryInternal *)self createUpdateFirmwareEvent];
    [createUpdateFirmwareEvent setDownloadConsentDuration:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(v9, "downloadConsentDuration"))}];
    [createUpdateFirmwareEvent setDownloadUserInitiated:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", objc_msgSend(v9, "downloadUserIntent"))}];
    [createUpdateFirmwareEvent setDownloadStatus:{objc_msgSend(v9, "downloadStatus")}];
    [createUpdateFirmwareEvent updateWithFrameworkParams:params];
    [createUpdateFirmwareEvent send];

    [(UARPAccessoryInternal *)self removeUpdateState:v9];
  }

  else if (os_log_type_enabled(self->_analyticsLog, OS_LOG_TYPE_ERROR))
  {
    sub_1000540E8();
  }
}

- (id)analyticsUpdateStateForAssetID:(id)d
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  analyticsUpdateStates = self->_analyticsUpdateStates;
  v5 = [(NSMutableArray *)analyticsUpdateStates countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(analyticsUpdateStates);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    v10 = [objc_msgSend(v9 "assetID")];
    if (v10 == [d type] && objc_msgSend(objc_msgSend(objc_msgSend(v9, "assetID"), "remoteURL"), "isEqual:", objc_msgSend(d, "remoteURL")) && (objc_msgSend(objc_msgSend(objc_msgSend(v9, "assetID"), "assetVersion"), "isEqual:", objc_msgSend(d, "assetVersion")) & 1) != 0)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)analyticsUpdateStates countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)sendUpdateFirmwareEventForState:(id)state
{
  createUpdateFirmwareEvent = [(UARPAccessoryInternal *)self createUpdateFirmwareEvent];
  [createUpdateFirmwareEvent setDownloadConsentDuration:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(state, "downloadConsentDuration"))}];
  [createUpdateFirmwareEvent setDownloadUserInitiated:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", objc_msgSend(state, "downloadUserIntent"))}];
  [createUpdateFirmwareEvent setDownloadStatus:{objc_msgSend(state, "downloadStatus")}];
  [createUpdateFirmwareEvent send];
}

- (id)createUpdateFirmwareEvent
{
  v3 = objc_alloc_init(UARPUpdateFirmwareAnalyticsEvent);
  [(UARPUpdateFirmwareAnalyticsEvent *)v3 updateWithAccessoryID:self->_accessoryID assetID:self->_assetID];
  return v3;
}

- (void)removeUpdateState:(id)state
{
  analyticsLog = self->_analyticsLog;
  if (os_log_type_enabled(analyticsLog, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, analyticsLog, OS_LOG_TYPE_INFO, "%@ tracking complete", &v6, 0xCu);
  }

  [(NSMutableArray *)self->_analyticsUpdateStates removeObject:state];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[UARPAccessoryInternal alloc] initWithAccessoryID:self->_accessoryID assetID:self->_assetID];
  v4->_record = [self->_record copy];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_identifier forKey:@"identifier"];
  [coder encodeObject:self->_accessoryID forKey:@"accessoryID"];
  [coder encodeObject:self->_assetID forKey:@"assetID"];
  [coder encodeObject:self->_dropboxFirmwarePath forKey:@"dropboxFirmwarePath"];
  [coder encodeObject:self->_dropboxReleaseNotesPath forKey:@"dropboxReleaseNotesPath"];
  analyticsUpdateStates = self->_analyticsUpdateStates;

  [coder encodeObject:analyticsUpdateStates forKey:@"analyticsUpdateStates"];
}

- (UARPAccessoryInternal)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"accessoryID"];
  v6 = -[UARPAccessoryInternal initWithAccessoryID:assetID:](self, "initWithAccessoryID:assetID:", v5, [coder decodeObjectOfClass:objc_opt_class() forKey:@"assetID"]);
  if (v6)
  {
    v6->_identifier = [coder decodeObjectForKey:@"identifier"];
    v6->_dropboxFirmwarePath = [coder decodeObjectForKey:@"dropboxFirmwarePath"];
    v6->_dropboxReleaseNotesPath = [coder decodeObjectForKey:@"dropboxReleaseNotesPath"];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v7 = [NSArray arrayWithObjects:&v11 count:5];
    v8 = [NSSet setWithArray:v7, v11, v12, v13, v14];
    analyticsUpdateStates = v6->_analyticsUpdateStates;
    if (analyticsUpdateStates)
    {

      v6->_analyticsUpdateStates = 0;
    }

    v6->_analyticsUpdateStates = [objc_msgSend(coder decodeObjectOfClasses:v8 forKey:{@"analyticsUpdateStates", "mutableCopy"}];
  }

  return v6;
}

- (unint64_t)hash
{
  identifier = [(UARPAccessoryInternal *)self identifier];

  return [(NSString *)identifier hash];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equal)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      [(UARPAccessoryInternal *)self identifier];
      [equal identifier];
      v5 = nullableObjectsEqual();
      if (v5)
      {
        [(UARPAccessoryInternal *)self accessoryID];
        [equal accessoryID];
        v5 = nullableObjectsEqual();
        if (v5)
        {
          [(UARPAccessoryInternal *)self assetID];
          [equal assetID];
          v5 = nullableObjectsEqual();
          if (v5)
          {
            [(UARPAccessoryInternal *)self dropboxFirmwarePath];
            [equal dropboxFirmwarePath];
            v5 = nullableObjectsEqual();
            if (v5)
            {
              [(UARPAccessoryInternal *)self dropboxReleaseNotesPath];
              [equal dropboxReleaseNotesPath];

              LOBYTE(v5) = nullableObjectsEqual();
            }
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)checkDropbox
{
  assetManagerLog = self->_assetManagerLog;
  if (os_log_type_enabled(assetManagerLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[UARPAccessoryInternal checkDropbox]";
    _os_log_impl(&_mh_execute_header, assetManagerLog, OS_LOG_TYPE_INFO, "%s:", buf, 0xCu);
  }

  identifier = self->_identifier;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003BBD0;
  v9[3] = &unk_100081FE0;
  v9[4] = self;
  sub_1000380F0(identifier, v9);
  dropboxFirmwarePath = self->_dropboxFirmwarePath;
  if (dropboxFirmwarePath)
  {
    v6 = self->_assetManagerLog;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      dropboxReleaseNotesPath = self->_dropboxReleaseNotesPath;
      v8 = self->_identifier;
      *buf = 138412802;
      v11 = dropboxFirmwarePath;
      v12 = 2112;
      v13 = dropboxReleaseNotesPath;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Found superbinary %@, release notes %@ in dropbox for %@", buf, 0x20u);
    }
  }
}

- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string
{
  [string appendWithTabDepth:depth format:{@"%@\n", self->_accessoryID}];
  if (self->_identifier)
  {
    [string appendWithTabDepth:depth + 1 format:{@"Identifier: %@\n", self->_identifier}];
  }

  [(UARPAssetID *)self->_assetID dumpWithTabDepth:depth + 1 dumpString:string];
  if (self->_dropboxFirmwarePath)
  {
    [string appendWithTabDepth:depth + 1 format:{@"Dropbox Firmware Path: %@\n", self->_dropboxFirmwarePath}];
  }

  [string appendWithTabDepth:depth + 1 format:{@"Remote Check Status: %s\n", -[UARPAccessoryInternal remoteCheckStatusString](self, "remoteCheckStatusString")}];
  if (self->_dropboxReleaseNotesPath)
  {
    [string appendWithTabDepth:depth + 1 format:{@"Dropbox Release Notes Path: %@\n", self->_dropboxReleaseNotesPath}];
  }

  if ([(NSMutableArray *)self->_analyticsUpdateStates count])
  {
    [string appendWithTabDepth:depth + 1 format:@"Analytics Firmware Update States:\n"];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    analyticsUpdateStates = self->_analyticsUpdateStates;
    v8 = [(NSMutableArray *)analyticsUpdateStates countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(analyticsUpdateStates);
          }

          [*(*(&v13 + 1) + 8 * i) dumpWithTabDepth:depth + 2 dumpString:string];
        }

        v9 = [(NSMutableArray *)analyticsUpdateStates countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  record = self->_record;
  if (objc_opt_respondsToSelector())
  {
    [self->_record dumpWithTabDepth:depth + 1 dumpString:string];
  }
}

@end