@interface UARPAccessoryInternal
+ (id)encodedClasses;
- (BOOL)isEqual:(id)a3;
- (UARPAccessoryInternal)initWithAccessoryID:(id)a3 assetID:(id)a4;
- (UARPAccessoryInternal)initWithCoder:(id)a3;
- (id)analyticsUpdateStateForAssetID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createUpdateFirmwareEvent;
- (unint64_t)hash;
- (void)analyticsSendUpdateFirmwareEventForAssetID:(id)a3 frameworkParams:(id)a4;
- (void)analyticsSetDownloadAvailableForAssetID:(id)a3;
- (void)analyticsSetDownloadCompleteForAssetID:(id)a3 status:(int64_t)a4;
- (void)analyticsSetDownloadConsentRequestedForAssetID:(id)a3;
- (void)checkDropbox;
- (void)dealloc;
- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)removeUpdateState:(id)a3;
- (void)sendUpdateFirmwareEventForState:(id)a3;
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

- (UARPAccessoryInternal)initWithAccessoryID:(id)a3 assetID:(id)a4
{
  v11.receiver = self;
  v11.super_class = UARPAccessoryInternal;
  v6 = [(UARPAccessoryInternal *)&v11 init];
  if (v6)
  {
    v6->_accessoryID = [a3 copy];
    v6->_assetID = a4;
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

- (void)analyticsSetDownloadAvailableForAssetID:(id)a3
{
  analyticsLog = self->_analyticsLog;
  if (os_log_type_enabled(analyticsLog, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[UARPAccessoryInternal analyticsSetDownloadAvailableForAssetID:]";
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, analyticsLog, OS_LOG_TYPE_INFO, "%s: %@", &v7, 0x16u);
  }

  v6 = [(UARPAccessoryInternal *)self analyticsUpdateStateForAssetID:a3];
  if (!v6)
  {
    v6 = [[UARPAnalyticsAUDUpdateFirmwareState alloc] initWithAccessoryID:self->_accessoryID assetID:self->_assetID];
    [(NSMutableArray *)self->_analyticsUpdateStates addObject:v6];
  }

  [(UARPAnalyticsAUDUpdateFirmwareState *)v6 setAssetAvailableForDownload];
}

- (void)analyticsSetDownloadConsentRequestedForAssetID:(id)a3
{
  analyticsLog = self->_analyticsLog;
  if (os_log_type_enabled(analyticsLog, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[UARPAccessoryInternal analyticsSetDownloadConsentRequestedForAssetID:]";
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, analyticsLog, OS_LOG_TYPE_INFO, "%s: %@", &v7, 0x16u);
  }

  v6 = [(UARPAccessoryInternal *)self analyticsUpdateStateForAssetID:a3];
  if (v6)
  {
    [v6 setDownloadConsentRequested];
  }

  else if (os_log_type_enabled(self->_analyticsLog, OS_LOG_TYPE_ERROR))
  {
    sub_100053F5C();
  }
}

- (void)analyticsSetDownloadCompleteForAssetID:(id)a3 status:(int64_t)a4
{
  analyticsLog = self->_analyticsLog;
  if (os_log_type_enabled(analyticsLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[UARPAccessoryInternal analyticsSetDownloadCompleteForAssetID:status:]";
    v12 = 2112;
    v13 = a3;
    v14 = 2080;
    v15 = sub_100019FF4(a4);
    _os_log_impl(&_mh_execute_header, analyticsLog, OS_LOG_TYPE_INFO, "%s: %@ status=%s", &v10, 0x20u);
  }

  v8 = [(UARPAccessoryInternal *)self analyticsUpdateStateForAssetID:a3];
  if (v8)
  {
    v9 = v8;
    [v8 setDownloadComplete:a4];
    if ((a4 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
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

- (void)analyticsSendUpdateFirmwareEventForAssetID:(id)a3 frameworkParams:(id)a4
{
  analyticsLog = self->_analyticsLog;
  if (os_log_type_enabled(analyticsLog, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[UARPAccessoryInternal analyticsSendUpdateFirmwareEventForAssetID:frameworkParams:]";
    v13 = 2112;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, analyticsLog, OS_LOG_TYPE_INFO, "%s: %@", &v11, 0x16u);
  }

  v8 = [(UARPAccessoryInternal *)self analyticsUpdateStateForAssetID:a3];
  if (v8)
  {
    v9 = v8;
    v10 = [(UARPAccessoryInternal *)self createUpdateFirmwareEvent];
    [v10 setDownloadConsentDuration:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(v9, "downloadConsentDuration"))}];
    [v10 setDownloadUserInitiated:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", objc_msgSend(v9, "downloadUserIntent"))}];
    [v10 setDownloadStatus:{objc_msgSend(v9, "downloadStatus")}];
    [v10 updateWithFrameworkParams:a4];
    [v10 send];

    [(UARPAccessoryInternal *)self removeUpdateState:v9];
  }

  else if (os_log_type_enabled(self->_analyticsLog, OS_LOG_TYPE_ERROR))
  {
    sub_1000540E8();
  }
}

- (id)analyticsUpdateStateForAssetID:(id)a3
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
    if (v10 == [a3 type] && objc_msgSend(objc_msgSend(objc_msgSend(v9, "assetID"), "remoteURL"), "isEqual:", objc_msgSend(a3, "remoteURL")) && (objc_msgSend(objc_msgSend(objc_msgSend(v9, "assetID"), "assetVersion"), "isEqual:", objc_msgSend(a3, "assetVersion")) & 1) != 0)
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

- (void)sendUpdateFirmwareEventForState:(id)a3
{
  v4 = [(UARPAccessoryInternal *)self createUpdateFirmwareEvent];
  [v4 setDownloadConsentDuration:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(a3, "downloadConsentDuration"))}];
  [v4 setDownloadUserInitiated:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", objc_msgSend(a3, "downloadUserIntent"))}];
  [v4 setDownloadStatus:{objc_msgSend(a3, "downloadStatus")}];
  [v4 send];
}

- (id)createUpdateFirmwareEvent
{
  v3 = objc_alloc_init(UARPUpdateFirmwareAnalyticsEvent);
  [(UARPUpdateFirmwareAnalyticsEvent *)v3 updateWithAccessoryID:self->_accessoryID assetID:self->_assetID];
  return v3;
}

- (void)removeUpdateState:(id)a3
{
  analyticsLog = self->_analyticsLog;
  if (os_log_type_enabled(analyticsLog, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = a3;
    _os_log_impl(&_mh_execute_header, analyticsLog, OS_LOG_TYPE_INFO, "%@ tracking complete", &v6, 0xCu);
  }

  [(NSMutableArray *)self->_analyticsUpdateStates removeObject:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UARPAccessoryInternal alloc] initWithAccessoryID:self->_accessoryID assetID:self->_assetID];
  v4->_record = [self->_record copy];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_identifier forKey:@"identifier"];
  [a3 encodeObject:self->_accessoryID forKey:@"accessoryID"];
  [a3 encodeObject:self->_assetID forKey:@"assetID"];
  [a3 encodeObject:self->_dropboxFirmwarePath forKey:@"dropboxFirmwarePath"];
  [a3 encodeObject:self->_dropboxReleaseNotesPath forKey:@"dropboxReleaseNotesPath"];
  analyticsUpdateStates = self->_analyticsUpdateStates;

  [a3 encodeObject:analyticsUpdateStates forKey:@"analyticsUpdateStates"];
}

- (UARPAccessoryInternal)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryID"];
  v6 = -[UARPAccessoryInternal initWithAccessoryID:assetID:](self, "initWithAccessoryID:assetID:", v5, [a3 decodeObjectOfClass:objc_opt_class() forKey:@"assetID"]);
  if (v6)
  {
    v6->_identifier = [a3 decodeObjectForKey:@"identifier"];
    v6->_dropboxFirmwarePath = [a3 decodeObjectForKey:@"dropboxFirmwarePath"];
    v6->_dropboxReleaseNotesPath = [a3 decodeObjectForKey:@"dropboxReleaseNotesPath"];
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

    v6->_analyticsUpdateStates = [objc_msgSend(a3 decodeObjectOfClasses:v8 forKey:{@"analyticsUpdateStates", "mutableCopy"}];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(UARPAccessoryInternal *)self identifier];

  return [(NSString *)v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == a3)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      [(UARPAccessoryInternal *)self identifier];
      [a3 identifier];
      v5 = nullableObjectsEqual();
      if (v5)
      {
        [(UARPAccessoryInternal *)self accessoryID];
        [a3 accessoryID];
        v5 = nullableObjectsEqual();
        if (v5)
        {
          [(UARPAccessoryInternal *)self assetID];
          [a3 assetID];
          v5 = nullableObjectsEqual();
          if (v5)
          {
            [(UARPAccessoryInternal *)self dropboxFirmwarePath];
            [a3 dropboxFirmwarePath];
            v5 = nullableObjectsEqual();
            if (v5)
            {
              [(UARPAccessoryInternal *)self dropboxReleaseNotesPath];
              [a3 dropboxReleaseNotesPath];

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

- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4
{
  [a4 appendWithTabDepth:a3 format:{@"%@\n", self->_accessoryID}];
  if (self->_identifier)
  {
    [a4 appendWithTabDepth:a3 + 1 format:{@"Identifier: %@\n", self->_identifier}];
  }

  [(UARPAssetID *)self->_assetID dumpWithTabDepth:a3 + 1 dumpString:a4];
  if (self->_dropboxFirmwarePath)
  {
    [a4 appendWithTabDepth:a3 + 1 format:{@"Dropbox Firmware Path: %@\n", self->_dropboxFirmwarePath}];
  }

  [a4 appendWithTabDepth:a3 + 1 format:{@"Remote Check Status: %s\n", -[UARPAccessoryInternal remoteCheckStatusString](self, "remoteCheckStatusString")}];
  if (self->_dropboxReleaseNotesPath)
  {
    [a4 appendWithTabDepth:a3 + 1 format:{@"Dropbox Release Notes Path: %@\n", self->_dropboxReleaseNotesPath}];
  }

  if ([(NSMutableArray *)self->_analyticsUpdateStates count])
  {
    [a4 appendWithTabDepth:a3 + 1 format:@"Analytics Firmware Update States:\n"];
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

          [*(*(&v13 + 1) + 8 * i) dumpWithTabDepth:a3 + 2 dumpString:a4];
        }

        v9 = [(NSMutableArray *)analyticsUpdateStates countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  record = self->_record;
  if (objc_opt_respondsToSelector())
  {
    [self->_record dumpWithTabDepth:a3 + 1 dumpString:a4];
  }
}

@end