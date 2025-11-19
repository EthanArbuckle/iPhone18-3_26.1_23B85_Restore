@interface NBRemoteObjectClassC
- (NBRemoteObjectClassC)initWithDelegate:(id)a3 andQueue:(id)a4;
- (id)activelyPairingDevice;
- (id)backupFromProtobuf:(id)a3;
- (id)bytesFromClass:(id)a3;
- (id)class:(Class)a3 fromBytes:(id)a4;
- (id)dataFromUUID:(id)a3;
- (id)protobufFromBackup:(id)a3;
- (id)sha256FromData:(id)a3;
- (id)uuidFromData:(id)a3;
- (id)writeWatchFaceToFile:(id)a3;
- (void)idsHandleBackupListRequest:(id)a3;
- (void)idsHandleDeleteBackupRequest:(id)a3;
- (void)idsHandlePayloadRestoreRequest:(id)a3 context:(id)a4;
- (void)idsHandleRestoreRequest:(id)a3;
- (void)registerProtobufHandlers;
- (void)sendBackupListRequestWithResponseBlock:(id)a3;
- (void)sendBackupListResponse:(id)a3 error:(id)a4 withRequestIdentifier:(id)a5 withSentBlock:(id)a6;
- (void)sendBackupPayload:(id)a3 withResponseBlock:(id)a4;
- (void)sendCreateBackupRequestWithResponseBlock:(id)a3;
- (void)sendCreateBackupResponse:(id)a3 withRequestIdentifier:(id)a4 error:(id)a5 withSentBlock:(id)a6;
- (void)sendDeleteBackupRequest:(id)a3 withResponseBlock:(id)a4;
- (void)sendDeleteBackupResponse:(id)a3 withRequestIdentifier:(id)a4 withSentBlock:(id)a5;
- (void)sendRestoreRequest:(id)a3 withResponseBlock:(id)a4;
- (void)sendRestoreResponse:(id)a3 withRequestIdentifier:(id)a4 withSentBlock:(id)a5;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation NBRemoteObjectClassC

- (NBRemoteObjectClassC)initWithDelegate:(id)a3 andQueue:(id)a4
{
  v5.receiver = self;
  v5.super_class = NBRemoteObjectClassC;
  return [(NBRemoteObject *)&v5 initWithServiceName:@"com.apple.private.alloy.nanobackup" andDelegate:a3 andClientQueue:a4];
}

- (void)registerProtobufHandlers
{
  [(NBRemoteObject *)self setProtobufAction:"idsHandleBackupListRequest:" forIncomingRequestsOfType:0];
  [(NBRemoteObject *)self setProtobufAction:"idsHandleRestoreRequest:" forIncomingRequestsOfType:2];
  [(NBRemoteObject *)self setProtobufAction:"idsHandlePayloadRestoreRequest:context:" forIncomingRequestsOfType:8];
  [(NBRemoteObject *)self setProtobufAction:"idsHandleDeleteBackupRequest:" forIncomingRequestsOfType:6];
  [(NBRemoteObject *)self setProtobufAction:0 forIncomingResponsesOfType:1];
  [(NBRemoteObject *)self setProtobufAction:0 forIncomingResponsesOfType:3];

  [(NBRemoteObject *)self setProtobufAction:0 forIncomingResponsesOfType:7];
}

- (void)idsHandleBackupListRequest:(id)a3
{
  v4 = a3;
  v5 = [(NBRemoteObject *)self delegate];
  v6 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "idsHandleBackupListRequest called", buf, 2u);
  }

  v7 = [(NBRemoteObject *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CE18;
  block[3] = &unk_10002CE18;
  v11 = v5;
  v12 = self;
  v13 = v4;
  v8 = v4;
  v9 = v5;
  dispatch_async(v7, block);
}

- (void)idsHandleRestoreRequest:(id)a3
{
  v4 = a3;
  v5 = [(NBRemoteObject *)self delegate];
  v6 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "idsHandleRestoreRequest called", buf, 2u);
  }

  v7 = [NBPBRestoreRequest alloc];
  v8 = [v4 data];
  v9 = [(NBPBRestoreRequest *)v7 initWithData:v8];

  v10 = [(NBRemoteObject *)self clientQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000CF98;
  v14[3] = &unk_10002CE40;
  v15 = v5;
  v16 = self;
  v17 = v9;
  v18 = v4;
  v11 = v4;
  v12 = v9;
  v13 = v5;
  dispatch_async(v10, v14);
}

- (void)idsHandlePayloadRestoreRequest:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NBRemoteObject *)self delegate];
  v9 = [(NBRemoteObject *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D114;
  block[3] = &unk_10002CE18;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  dispatch_async(v9, block);
}

- (void)idsHandleDeleteBackupRequest:(id)a3
{
  v4 = a3;
  v5 = [(NBRemoteObject *)self delegate];
  v6 = [NBPBDeleteBackupRequest alloc];
  v7 = [v4 data];
  v8 = [(NBPBDeleteBackupRequest *)v6 initWithData:v7];

  v9 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsHandleDeleteBackupRequest called", buf, 2u);
  }

  v10 = [(NBRemoteObject *)self clientQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000D2E0;
  v14[3] = &unk_10002CE40;
  v15 = v5;
  v16 = self;
  v17 = v8;
  v18 = v4;
  v11 = v4;
  v12 = v8;
  v13 = v5;
  dispatch_async(v10, v14);
}

- (id)uuidFromData:(id)a3
{
  v5[0] = 0;
  v5[1] = 0;
  [a3 getBytes:v5 length:16];
  v3 = [[NSUUID alloc] initWithUUIDBytes:v5];

  return v3;
}

- (id)dataFromUUID:(id)a3
{
  v5[0] = 0;
  v5[1] = 0;
  [a3 getUUIDBytes:v5];
  v3 = [NSData dataWithBytes:v5 length:16];

  return v3;
}

- (id)sha256FromData:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];

  CC_SHA256(v4, v5, md);
  v6 = [NSData dataWithBytes:md length:32];

  return v6;
}

- (id)writeWatchFaceToFile:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = NSTemporaryDirectory();
    v6 = [v5 stringByAppendingPathComponent:@"NanoBackup"];
    v7 = [v5 stringByAppendingPathComponent:@"WatchFaceImages"];
    v8 = +[NSFileManager defaultManager];
    v17 = 0;
    [v8 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v17];
    v9 = v17;

    if (v9)
    {
      v10 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "[NBRemoteObjectClassC writeWatchFaceToFile:]";
        v20 = 2114;
        v21 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Failed to create directory %{public}@", buf, 0x16u);
      }

      v11 = 0;
    }

    else
    {
      v13 = [(NBRemoteObjectClassC *)self sha256FromData:v4];
      v14 = [v13 base64EncodedStringWithOptions:0];
      v15 = [v5 stringByAppendingPathComponent:v14];
      [v4 writeToFile:v5 atomically:1];
      v11 = [NSURL fileURLWithPath:v5];
    }
  }

  else
  {
    v12 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[NBRemoteObjectClassC writeWatchFaceToFile:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: No face image", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (id)bytesFromClass:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v12 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v12];
    v5 = v12;
    if (v5)
    {
      v6 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138543618;
        v14 = v5;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got error (%{public}@) archiving (%@)", buf, 0x16u);
      }
    }

    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)class:(Class)a3 fromBytes:(id)a4
{
  v5 = a4;
  v15 = 0;
  v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:&v15];
  v7 = v15;
  v8 = [NSSet setWithObject:a3];
  v9 = [v6 decodeObjectOfClasses:v8 forKey:NSKeyedArchiveRootObjectKey];

  [v6 finishDecoding];
  if (v7)
  {
    v10 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = NSStringFromClass(a3);
      *buf = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to unarchive data of type %{public}@ with error %{public}@", buf, 0x16u);
    }
  }

  v13 = v9;

  return v13;
}

- (id)backupFromProtobuf:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NBBackup);
  v6 = [v4 uuid];
  v7 = [(NBRemoteObjectClassC *)self uuidFromData:v6];
  [v5 setUuid:v7];

  [v5 setBackupType:{objc_msgSend(v4, "backupType")}];
  v8 = [v4 name];
  [v5 setName:v8];

  v9 = [v4 productType];
  [v5 setProductType:v9];

  v10 = [v4 productName];
  [v5 setProductName:v10];

  v11 = [v4 systemVersion];
  [v5 setSystemVersion:v11];

  v12 = [v4 systemBuildVersion];
  [v5 setSystemBuildVersion:v12];

  v13 = [v4 marketingVersion];
  [v5 setMarketingVersion:v13];

  v14 = [v4 deviceColor];
  [v5 setDeviceColor:v14];

  v15 = [v4 deviceEnclosureColor];
  [v5 setDeviceEnclosureColor:v15];

  v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 bottomEnclosureMaterial]);
  [v5 setBottomEnclosureMaterial:v16];

  v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 topEnclosureMaterial]);
  [v5 setTopEnclosureMaterial:v17];

  v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 fcmMaterial]);
  [v5 setFcmMaterial:v18];

  v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 bcmWindowMaterial]);
  [v5 setBcmWindowMaterial:v19];

  v20 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 coverGlassColor]);
  [v5 setCoverGlassColor:v20];

  v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 housingColor]);
  [v5 setHousingColor:v21];

  v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 backingColor]);
  [v5 setBackingColor:v22];

  v23 = [v4 watchFace];
  [v5 setWatchFace:v23];

  v24 = [v4 watchFaceColor];
  [v5 setWatchFaceColor:v24];

  [v5 setLocationOptInEnabled:{objc_msgSend(v4, "locationOptInEnabled")}];
  [v5 setDiagnosticsOptInEnabled:{objc_msgSend(v4, "diagnosticsOptInEnabled")}];
  [v4 lastModificationDate];
  v25 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  [v5 setLastModificationDate:v25];

  v26 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 sizeInBytes]);
  [v5 setSizeInBytes:v26];

  v27 = [v4 activeWatchFaceFileContents];
  v28 = [(NBRemoteObjectClassC *)self writeWatchFaceToFile:v27];
  [v5 setActiveWatchFaceFileURL:v28];

  v29 = [v4 deviceCSN];
  [v5 setDeviceCSN:v29];

  v30 = [v4 watchFaceData];

  [v5 setWatchFaceData:v30];

  return v5;
}

- (id)protobufFromBackup:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 uuid];
  v7 = [(NBRemoteObjectClassC *)self dataFromUUID:v6];
  [v5 setUuid:v7];

  [v5 setBackupType:{objc_msgSend(v4, "backupType")}];
  v8 = [v4 name];
  [v5 setName:v8];

  v9 = [v4 productType];
  [v5 setProductType:v9];

  v10 = [v4 productName];
  [v5 setProductName:v10];

  v11 = [v4 systemVersion];
  [v5 setSystemVersion:v11];

  v12 = [v4 systemBuildVersion];
  [v5 setSystemBuildVersion:v12];

  v13 = [v4 marketingVersion];
  [v5 setMarketingVersion:v13];

  v14 = [v4 deviceColor];
  [v5 setDeviceColor:v14];

  v15 = [v4 deviceEnclosureColor];
  [v5 setDeviceEnclosureColor:v15];

  v16 = [v4 bottomEnclosureMaterial];
  [v5 setBottomEnclosureMaterial:{objc_msgSend(v16, "integerValue")}];

  v17 = [v4 topEnclosureMaterial];
  [v5 setTopEnclosureMaterial:{objc_msgSend(v17, "integerValue")}];

  v18 = [v4 fcmMaterial];
  [v5 setFcmMaterial:{objc_msgSend(v18, "integerValue")}];

  v19 = [v4 bcmWindowMaterial];
  [v5 setBcmWindowMaterial:{objc_msgSend(v19, "integerValue")}];

  v20 = [v4 coverGlassColor];
  [v5 setCoverGlassColor:{objc_msgSend(v20, "integerValue")}];

  v21 = [v4 housingColor];
  [v5 setHousingColor:{objc_msgSend(v21, "integerValue")}];

  v22 = [v4 backingColor];
  [v5 setBackingColor:{objc_msgSend(v22, "integerValue")}];

  v23 = [v4 watchFace];
  [v5 setWatchFace:v23];

  v24 = [v4 watchFaceColor];
  [v5 setWatchFaceColor:v24];

  [v5 setLocationOptInEnabled:{objc_msgSend(v4, "isLocationOptInEnabled")}];
  [v5 setDiagnosticsOptInEnabled:{objc_msgSend(v4, "isDiagnosticsOptInEnabled")}];
  v25 = [v4 lastModificationDate];
  [v25 timeIntervalSinceReferenceDate];
  [v5 setLastModificationDate:?];

  v26 = [v4 sizeInBytes];
  [v5 setSizeInBytes:{objc_msgSend(v26, "longLongValue")}];

  v27 = [v4 activeWatchFaceFileURL];
  v28 = [(NBRemoteObjectClassC *)self readWatchFaceFromFile:v27];
  [v5 setActiveWatchFaceFileContents:v28];

  v29 = [v4 deviceCSN];
  [v5 setDeviceCSN:v29];

  v30 = [v4 watchFaceData];

  [v5 setWatchFaceData:v30];

  return v5;
}

- (void)sendBackupListRequestWithResponseBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E514;
  v9[3] = &unk_10002C960;
  v10 = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E5FC;
  v7[3] = &unk_10002CE68;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(NBRemoteObject *)self sendRequest:v5 type:0 withTimeout:&off_10002E828 withResponseTimeout:&off_10002E828 withDescription:@"NanoBackup Backup Metadata Request" onlyOneFor:0 didSend:v9 andResponse:v7];
}

- (void)sendBackupListResponse:(id)a3 error:(id)a4 withRequestIdentifier:(id)a5 withSentBlock:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(NBRemoteObjectClassC *)self protobufFromBackup:*(*(&v22 + 1) + 8 * v17)];
        [v12 addBackups:v18];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000EA38;
  v20[3] = &unk_10002C960;
  v21 = v11;
  v19 = v11;
  [(NBRemoteObject *)self sendResponse:v12 type:1 withRequest:v10 withTimeout:&off_10002E828 withDescription:@"NanoBackup Backup Metadata Response" onlyOneFor:0 didSend:v20];
}

- (void)sendRestoreRequest:(id)a3 withResponseBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(NBRemoteObjectClassC *)self dataFromUUID:v7];

  [v8 setBackupID:v9];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000EC84;
  v13[3] = &unk_10002C960;
  v14 = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000ED68;
  v11[3] = &unk_10002CE68;
  v11[4] = self;
  v12 = v14;
  v10 = v14;
  [(NBRemoteObject *)self sendRequest:v8 type:2 withTimeout:&off_10002E840 withResponseTimeout:&off_10002E840 withDescription:@"NanoBackup Restore Request" onlyOneFor:0 didSend:v13 andResponse:v11];
}

- (id)activelyPairingDevice
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_10002CEA8];

  if ([v3 count] <= 1)
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)sendBackupPayload:(id)a3 withResponseBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NBRemoteObject *)self service];
  v9 = [v8 nb_defaultPairedDeviceIDIncludingTinkerDevices];

  if (v9)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000F280;
    v22[3] = &unk_10002C960;
    v23 = v7;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000F364;
    v20[3] = &unk_10002CE68;
    v20[4] = self;
    v21 = v23;
    [(NBRemoteObject *)self sendFileRequest:v6 type:8 withTimeout:&off_10002E840 withResponseTimeout:&off_10002E840 withDescription:@"NanoBackup Restore Request From Payload" onlyOneFor:0 didSend:v22 andResponse:v20];

    v10 = v23;
  }

  else
  {
    v11 = [(NBRemoteObject *)self delayedRestoreMessages];

    if (!v11)
    {
      v12 = objc_opt_new();
      [(NBRemoteObject *)self setDelayedRestoreMessages:v12];
    }

    v10 = [(NBRemoteObjectClassC *)self activelyPairingDevice];
    if (v10)
    {
      v13 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device is: %@", buf, 0xCu);
      }

      v14 = objc_opt_new();
      [v14 setValue:v6 forKey:@"NBMessagePathKey"];
      v15 = objc_retainBlock(v7);
      [v14 setValue:v15 forKey:@"NBMessageBlockKey"];

      v16 = [(NBRemoteObject *)self delayedRestoreMessages];
      v17 = [v10 valueForProperty:NRDevicePropertyPairingID];
      [v16 setValue:v14 forKey:v17];

      v18 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not sending backup payload, no default paired device", buf, 2u);
      }
    }

    else
    {
      v19 = NBError();
      (*(v7 + 2))(v7, v19);
    }
  }
}

- (void)sendRestoreResponse:(id)a3 withRequestIdentifier:(id)a4 withSentBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [(NBRemoteObjectClassC *)self bytesFromClass:v10];

  [v11 setError:v12];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000F588;
  v14[3] = &unk_10002C960;
  v15 = v8;
  v13 = v8;
  [(NBRemoteObject *)self sendResponse:v11 type:3 requestUUID:v9 withTimeout:&off_10002E840 withDescription:@"NanoBackup Restore Response" onlyOneFor:0 didSend:v14];
}

- (void)sendCreateBackupRequestWithResponseBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000F79C;
  v9[3] = &unk_10002C960;
  v10 = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F884;
  v7[3] = &unk_10002CE68;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(NBRemoteObject *)self sendRequest:v5 type:4 withTimeout:&off_10002E840 withResponseTimeout:&off_10002E840 withDescription:@"NanoBackup Create Backup Request" onlyOneFor:0 didSend:v9 andResponse:v7];
}

- (void)sendCreateBackupResponse:(id)a3 withRequestIdentifier:(id)a4 error:(id)a5 withSentBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  v15 = [(NBRemoteObjectClassC *)self protobufFromBackup:v13];

  [v14 setBackup:v15];
  v16 = [(NBRemoteObjectClassC *)self bytesFromClass:v11];

  [v14 setError:v16];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000FB44;
  v18[3] = &unk_10002C960;
  v19 = v10;
  v17 = v10;
  [(NBRemoteObject *)self sendResponse:v14 type:5 withRequest:v12 withTimeout:&off_10002E840 withDescription:@"NanoBackup Create Backup Response" onlyOneFor:0 didSend:v18];
}

- (void)sendDeleteBackupRequest:(id)a3 withResponseBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(NBRemoteObjectClassC *)self dataFromUUID:v7];

  [v8 setBackupID:v9];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000FD90;
  v13[3] = &unk_10002C960;
  v14 = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000FE74;
  v11[3] = &unk_10002CE68;
  v11[4] = self;
  v12 = v14;
  v10 = v14;
  [(NBRemoteObject *)self sendRequest:v8 type:6 withTimeout:&off_10002E840 withResponseTimeout:&off_10002E840 withDescription:@"NanoBackup Delete Backup Request" onlyOneFor:0 didSend:v13 andResponse:v11];
}

- (void)sendDeleteBackupResponse:(id)a3 withRequestIdentifier:(id)a4 withSentBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [(NBRemoteObjectClassC *)self bytesFromClass:v10];

  [v11 setError:v12];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000100EC;
  v14[3] = &unk_10002C960;
  v15 = v8;
  v13 = v8;
  [(NBRemoteObject *)self sendResponse:v11 type:7 withRequest:v9 withTimeout:&off_10002E840 withDescription:@"NanoBackup Delete Backup Response" onlyOneFor:0 didSend:v14];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v5 = a3;
  v6 = [(NBRemoteObjectClassC *)self activelyPairingDevice];
  v7 = [(NBRemoteObject *)self delayedRestoreMessages];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 nb_defaultPairedDeviceIDIncludingTinkerDevices];

    if (v9)
    {
      v10 = [v6 valueForProperty:NRDevicePropertyPairingID];
      if (v10)
      {
        v11 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found delayed message with the same pairing id as watch being paired, sending", v14, 2u);
        }

        v12 = [v10 objectForKey:@"NBMessagePathKey"];
        v13 = [v10 objectForKey:@"NBMessageBlockKey"];
        [(NBRemoteObjectClassC *)self sendBackupPayload:v12 withResponseBlock:v13];
      }

      [(NBRemoteObject *)self setDelayedRestoreMessages:0];
    }
  }
}

@end