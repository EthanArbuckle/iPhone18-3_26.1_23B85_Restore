@interface NBRemoteObjectClassC
- (NBRemoteObjectClassC)initWithDelegate:(id)delegate andQueue:(id)queue;
- (id)activelyPairingDevice;
- (id)backupFromProtobuf:(id)protobuf;
- (id)bytesFromClass:(id)class;
- (id)class:(Class)class fromBytes:(id)bytes;
- (id)dataFromUUID:(id)d;
- (id)protobufFromBackup:(id)backup;
- (id)sha256FromData:(id)data;
- (id)uuidFromData:(id)data;
- (id)writeWatchFaceToFile:(id)file;
- (void)idsHandleBackupListRequest:(id)request;
- (void)idsHandleDeleteBackupRequest:(id)request;
- (void)idsHandlePayloadRestoreRequest:(id)request context:(id)context;
- (void)idsHandleRestoreRequest:(id)request;
- (void)registerProtobufHandlers;
- (void)sendBackupListRequestWithResponseBlock:(id)block;
- (void)sendBackupListResponse:(id)response error:(id)error withRequestIdentifier:(id)identifier withSentBlock:(id)block;
- (void)sendBackupPayload:(id)payload withResponseBlock:(id)block;
- (void)sendCreateBackupRequestWithResponseBlock:(id)block;
- (void)sendCreateBackupResponse:(id)response withRequestIdentifier:(id)identifier error:(id)error withSentBlock:(id)block;
- (void)sendDeleteBackupRequest:(id)request withResponseBlock:(id)block;
- (void)sendDeleteBackupResponse:(id)response withRequestIdentifier:(id)identifier withSentBlock:(id)block;
- (void)sendRestoreRequest:(id)request withResponseBlock:(id)block;
- (void)sendRestoreResponse:(id)response withRequestIdentifier:(id)identifier withSentBlock:(id)block;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation NBRemoteObjectClassC

- (NBRemoteObjectClassC)initWithDelegate:(id)delegate andQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = NBRemoteObjectClassC;
  return [(NBRemoteObject *)&v5 initWithServiceName:@"com.apple.private.alloy.nanobackup" andDelegate:delegate andClientQueue:queue];
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

- (void)idsHandleBackupListRequest:(id)request
{
  requestCopy = request;
  delegate = [(NBRemoteObject *)self delegate];
  v6 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "idsHandleBackupListRequest called", buf, 2u);
  }

  clientQueue = [(NBRemoteObject *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CE18;
  block[3] = &unk_10002CE18;
  v11 = delegate;
  selfCopy = self;
  v13 = requestCopy;
  v8 = requestCopy;
  v9 = delegate;
  dispatch_async(clientQueue, block);
}

- (void)idsHandleRestoreRequest:(id)request
{
  requestCopy = request;
  delegate = [(NBRemoteObject *)self delegate];
  v6 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "idsHandleRestoreRequest called", buf, 2u);
  }

  v7 = [NBPBRestoreRequest alloc];
  data = [requestCopy data];
  v9 = [(NBPBRestoreRequest *)v7 initWithData:data];

  clientQueue = [(NBRemoteObject *)self clientQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000CF98;
  v14[3] = &unk_10002CE40;
  v15 = delegate;
  selfCopy = self;
  v17 = v9;
  v18 = requestCopy;
  v11 = requestCopy;
  v12 = v9;
  v13 = delegate;
  dispatch_async(clientQueue, v14);
}

- (void)idsHandlePayloadRestoreRequest:(id)request context:(id)context
{
  requestCopy = request;
  contextCopy = context;
  delegate = [(NBRemoteObject *)self delegate];
  clientQueue = [(NBRemoteObject *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D114;
  block[3] = &unk_10002CE18;
  v14 = delegate;
  v15 = requestCopy;
  v16 = contextCopy;
  v10 = contextCopy;
  v11 = requestCopy;
  v12 = delegate;
  dispatch_async(clientQueue, block);
}

- (void)idsHandleDeleteBackupRequest:(id)request
{
  requestCopy = request;
  delegate = [(NBRemoteObject *)self delegate];
  v6 = [NBPBDeleteBackupRequest alloc];
  data = [requestCopy data];
  v8 = [(NBPBDeleteBackupRequest *)v6 initWithData:data];

  v9 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsHandleDeleteBackupRequest called", buf, 2u);
  }

  clientQueue = [(NBRemoteObject *)self clientQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000D2E0;
  v14[3] = &unk_10002CE40;
  v15 = delegate;
  selfCopy = self;
  v17 = v8;
  v18 = requestCopy;
  v11 = requestCopy;
  v12 = v8;
  v13 = delegate;
  dispatch_async(clientQueue, v14);
}

- (id)uuidFromData:(id)data
{
  v5[0] = 0;
  v5[1] = 0;
  [data getBytes:v5 length:16];
  v3 = [[NSUUID alloc] initWithUUIDBytes:v5];

  return v3;
}

- (id)dataFromUUID:(id)d
{
  v5[0] = 0;
  v5[1] = 0;
  [d getUUIDBytes:v5];
  v3 = [NSData dataWithBytes:v5 length:16];

  return v3;
}

- (id)sha256FromData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = [dataCopy length];

  CC_SHA256(bytes, v5, md);
  v6 = [NSData dataWithBytes:md length:32];

  return v6;
}

- (id)writeWatchFaceToFile:(id)file
{
  fileCopy = file;
  if ([fileCopy length])
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
      v13 = [(NBRemoteObjectClassC *)self sha256FromData:fileCopy];
      v14 = [v13 base64EncodedStringWithOptions:0];
      v15 = [v5 stringByAppendingPathComponent:v14];
      [fileCopy writeToFile:v5 atomically:1];
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

- (id)bytesFromClass:(id)class
{
  classCopy = class;
  if (classCopy)
  {
    v12 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:classCopy requiringSecureCoding:1 error:&v12];
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

- (id)class:(Class)class fromBytes:(id)bytes
{
  bytesCopy = bytes;
  v15 = 0;
  v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:bytesCopy error:&v15];
  v7 = v15;
  v8 = [NSSet setWithObject:class];
  v9 = [v6 decodeObjectOfClasses:v8 forKey:NSKeyedArchiveRootObjectKey];

  [v6 finishDecoding];
  if (v7)
  {
    v10 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = NSStringFromClass(class);
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

- (id)backupFromProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = objc_alloc_init(NBBackup);
  uuid = [protobufCopy uuid];
  v7 = [(NBRemoteObjectClassC *)self uuidFromData:uuid];
  [v5 setUuid:v7];

  [v5 setBackupType:{objc_msgSend(protobufCopy, "backupType")}];
  name = [protobufCopy name];
  [v5 setName:name];

  productType = [protobufCopy productType];
  [v5 setProductType:productType];

  productName = [protobufCopy productName];
  [v5 setProductName:productName];

  systemVersion = [protobufCopy systemVersion];
  [v5 setSystemVersion:systemVersion];

  systemBuildVersion = [protobufCopy systemBuildVersion];
  [v5 setSystemBuildVersion:systemBuildVersion];

  marketingVersion = [protobufCopy marketingVersion];
  [v5 setMarketingVersion:marketingVersion];

  deviceColor = [protobufCopy deviceColor];
  [v5 setDeviceColor:deviceColor];

  deviceEnclosureColor = [protobufCopy deviceEnclosureColor];
  [v5 setDeviceEnclosureColor:deviceEnclosureColor];

  v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [protobufCopy bottomEnclosureMaterial]);
  [v5 setBottomEnclosureMaterial:v16];

  v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [protobufCopy topEnclosureMaterial]);
  [v5 setTopEnclosureMaterial:v17];

  v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [protobufCopy fcmMaterial]);
  [v5 setFcmMaterial:v18];

  v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [protobufCopy bcmWindowMaterial]);
  [v5 setBcmWindowMaterial:v19];

  v20 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [protobufCopy coverGlassColor]);
  [v5 setCoverGlassColor:v20];

  v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [protobufCopy housingColor]);
  [v5 setHousingColor:v21];

  v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [protobufCopy backingColor]);
  [v5 setBackingColor:v22];

  watchFace = [protobufCopy watchFace];
  [v5 setWatchFace:watchFace];

  watchFaceColor = [protobufCopy watchFaceColor];
  [v5 setWatchFaceColor:watchFaceColor];

  [v5 setLocationOptInEnabled:{objc_msgSend(protobufCopy, "locationOptInEnabled")}];
  [v5 setDiagnosticsOptInEnabled:{objc_msgSend(protobufCopy, "diagnosticsOptInEnabled")}];
  [protobufCopy lastModificationDate];
  v25 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  [v5 setLastModificationDate:v25];

  v26 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [protobufCopy sizeInBytes]);
  [v5 setSizeInBytes:v26];

  activeWatchFaceFileContents = [protobufCopy activeWatchFaceFileContents];
  v28 = [(NBRemoteObjectClassC *)self writeWatchFaceToFile:activeWatchFaceFileContents];
  [v5 setActiveWatchFaceFileURL:v28];

  deviceCSN = [protobufCopy deviceCSN];
  [v5 setDeviceCSN:deviceCSN];

  watchFaceData = [protobufCopy watchFaceData];

  [v5 setWatchFaceData:watchFaceData];

  return v5;
}

- (id)protobufFromBackup:(id)backup
{
  backupCopy = backup;
  v5 = objc_opt_new();
  uuid = [backupCopy uuid];
  v7 = [(NBRemoteObjectClassC *)self dataFromUUID:uuid];
  [v5 setUuid:v7];

  [v5 setBackupType:{objc_msgSend(backupCopy, "backupType")}];
  name = [backupCopy name];
  [v5 setName:name];

  productType = [backupCopy productType];
  [v5 setProductType:productType];

  productName = [backupCopy productName];
  [v5 setProductName:productName];

  systemVersion = [backupCopy systemVersion];
  [v5 setSystemVersion:systemVersion];

  systemBuildVersion = [backupCopy systemBuildVersion];
  [v5 setSystemBuildVersion:systemBuildVersion];

  marketingVersion = [backupCopy marketingVersion];
  [v5 setMarketingVersion:marketingVersion];

  deviceColor = [backupCopy deviceColor];
  [v5 setDeviceColor:deviceColor];

  deviceEnclosureColor = [backupCopy deviceEnclosureColor];
  [v5 setDeviceEnclosureColor:deviceEnclosureColor];

  bottomEnclosureMaterial = [backupCopy bottomEnclosureMaterial];
  [v5 setBottomEnclosureMaterial:{objc_msgSend(bottomEnclosureMaterial, "integerValue")}];

  topEnclosureMaterial = [backupCopy topEnclosureMaterial];
  [v5 setTopEnclosureMaterial:{objc_msgSend(topEnclosureMaterial, "integerValue")}];

  fcmMaterial = [backupCopy fcmMaterial];
  [v5 setFcmMaterial:{objc_msgSend(fcmMaterial, "integerValue")}];

  bcmWindowMaterial = [backupCopy bcmWindowMaterial];
  [v5 setBcmWindowMaterial:{objc_msgSend(bcmWindowMaterial, "integerValue")}];

  coverGlassColor = [backupCopy coverGlassColor];
  [v5 setCoverGlassColor:{objc_msgSend(coverGlassColor, "integerValue")}];

  housingColor = [backupCopy housingColor];
  [v5 setHousingColor:{objc_msgSend(housingColor, "integerValue")}];

  backingColor = [backupCopy backingColor];
  [v5 setBackingColor:{objc_msgSend(backingColor, "integerValue")}];

  watchFace = [backupCopy watchFace];
  [v5 setWatchFace:watchFace];

  watchFaceColor = [backupCopy watchFaceColor];
  [v5 setWatchFaceColor:watchFaceColor];

  [v5 setLocationOptInEnabled:{objc_msgSend(backupCopy, "isLocationOptInEnabled")}];
  [v5 setDiagnosticsOptInEnabled:{objc_msgSend(backupCopy, "isDiagnosticsOptInEnabled")}];
  lastModificationDate = [backupCopy lastModificationDate];
  [lastModificationDate timeIntervalSinceReferenceDate];
  [v5 setLastModificationDate:?];

  sizeInBytes = [backupCopy sizeInBytes];
  [v5 setSizeInBytes:{objc_msgSend(sizeInBytes, "longLongValue")}];

  activeWatchFaceFileURL = [backupCopy activeWatchFaceFileURL];
  v28 = [(NBRemoteObjectClassC *)self readWatchFaceFromFile:activeWatchFaceFileURL];
  [v5 setActiveWatchFaceFileContents:v28];

  deviceCSN = [backupCopy deviceCSN];
  [v5 setDeviceCSN:deviceCSN];

  watchFaceData = [backupCopy watchFaceData];

  [v5 setWatchFaceData:watchFaceData];

  return v5;
}

- (void)sendBackupListRequestWithResponseBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_new();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E514;
  v9[3] = &unk_10002C960;
  v10 = blockCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E5FC;
  v7[3] = &unk_10002CE68;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(NBRemoteObject *)self sendRequest:v5 type:0 withTimeout:&off_10002E828 withResponseTimeout:&off_10002E828 withDescription:@"NanoBackup Backup Metadata Request" onlyOneFor:0 didSend:v9 andResponse:v7];
}

- (void)sendBackupListResponse:(id)response error:(id)error withRequestIdentifier:(id)identifier withSentBlock:(id)block
{
  responseCopy = response;
  identifierCopy = identifier;
  blockCopy = block;
  v12 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = responseCopy;
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
  v21 = blockCopy;
  v19 = blockCopy;
  [(NBRemoteObject *)self sendResponse:v12 type:1 withRequest:identifierCopy withTimeout:&off_10002E828 withDescription:@"NanoBackup Backup Metadata Response" onlyOneFor:0 didSend:v20];
}

- (void)sendRestoreRequest:(id)request withResponseBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v8 = objc_opt_new();
  v9 = [(NBRemoteObjectClassC *)self dataFromUUID:requestCopy];

  [v8 setBackupID:v9];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000EC84;
  v13[3] = &unk_10002C960;
  v14 = blockCopy;
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
    firstObject = [v3 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)sendBackupPayload:(id)payload withResponseBlock:(id)block
{
  payloadCopy = payload;
  blockCopy = block;
  service = [(NBRemoteObject *)self service];
  nb_defaultPairedDeviceIDIncludingTinkerDevices = [service nb_defaultPairedDeviceIDIncludingTinkerDevices];

  if (nb_defaultPairedDeviceIDIncludingTinkerDevices)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000F280;
    v22[3] = &unk_10002C960;
    v23 = blockCopy;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000F364;
    v20[3] = &unk_10002CE68;
    v20[4] = self;
    v21 = v23;
    [(NBRemoteObject *)self sendFileRequest:payloadCopy type:8 withTimeout:&off_10002E840 withResponseTimeout:&off_10002E840 withDescription:@"NanoBackup Restore Request From Payload" onlyOneFor:0 didSend:v22 andResponse:v20];

    activelyPairingDevice = v23;
  }

  else
  {
    delayedRestoreMessages = [(NBRemoteObject *)self delayedRestoreMessages];

    if (!delayedRestoreMessages)
    {
      v12 = objc_opt_new();
      [(NBRemoteObject *)self setDelayedRestoreMessages:v12];
    }

    activelyPairingDevice = [(NBRemoteObjectClassC *)self activelyPairingDevice];
    if (activelyPairingDevice)
    {
      v13 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = activelyPairingDevice;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device is: %@", buf, 0xCu);
      }

      v14 = objc_opt_new();
      [v14 setValue:payloadCopy forKey:@"NBMessagePathKey"];
      v15 = objc_retainBlock(blockCopy);
      [v14 setValue:v15 forKey:@"NBMessageBlockKey"];

      delayedRestoreMessages2 = [(NBRemoteObject *)self delayedRestoreMessages];
      v17 = [activelyPairingDevice valueForProperty:NRDevicePropertyPairingID];
      [delayedRestoreMessages2 setValue:v14 forKey:v17];

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
      (*(blockCopy + 2))(blockCopy, v19);
    }
  }
}

- (void)sendRestoreResponse:(id)response withRequestIdentifier:(id)identifier withSentBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  responseCopy = response;
  v11 = objc_opt_new();
  v12 = [(NBRemoteObjectClassC *)self bytesFromClass:responseCopy];

  [v11 setError:v12];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000F588;
  v14[3] = &unk_10002C960;
  v15 = blockCopy;
  v13 = blockCopy;
  [(NBRemoteObject *)self sendResponse:v11 type:3 requestUUID:identifierCopy withTimeout:&off_10002E840 withDescription:@"NanoBackup Restore Response" onlyOneFor:0 didSend:v14];
}

- (void)sendCreateBackupRequestWithResponseBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_new();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000F79C;
  v9[3] = &unk_10002C960;
  v10 = blockCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F884;
  v7[3] = &unk_10002CE68;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(NBRemoteObject *)self sendRequest:v5 type:4 withTimeout:&off_10002E840 withResponseTimeout:&off_10002E840 withDescription:@"NanoBackup Create Backup Request" onlyOneFor:0 didSend:v9 andResponse:v7];
}

- (void)sendCreateBackupResponse:(id)response withRequestIdentifier:(id)identifier error:(id)error withSentBlock:(id)block
{
  blockCopy = block;
  errorCopy = error;
  identifierCopy = identifier;
  responseCopy = response;
  v14 = objc_opt_new();
  v15 = [(NBRemoteObjectClassC *)self protobufFromBackup:responseCopy];

  [v14 setBackup:v15];
  v16 = [(NBRemoteObjectClassC *)self bytesFromClass:errorCopy];

  [v14 setError:v16];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000FB44;
  v18[3] = &unk_10002C960;
  v19 = blockCopy;
  v17 = blockCopy;
  [(NBRemoteObject *)self sendResponse:v14 type:5 withRequest:identifierCopy withTimeout:&off_10002E840 withDescription:@"NanoBackup Create Backup Response" onlyOneFor:0 didSend:v18];
}

- (void)sendDeleteBackupRequest:(id)request withResponseBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v8 = objc_opt_new();
  v9 = [(NBRemoteObjectClassC *)self dataFromUUID:requestCopy];

  [v8 setBackupID:v9];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000FD90;
  v13[3] = &unk_10002C960;
  v14 = blockCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000FE74;
  v11[3] = &unk_10002CE68;
  v11[4] = self;
  v12 = v14;
  v10 = v14;
  [(NBRemoteObject *)self sendRequest:v8 type:6 withTimeout:&off_10002E840 withResponseTimeout:&off_10002E840 withDescription:@"NanoBackup Delete Backup Request" onlyOneFor:0 didSend:v13 andResponse:v11];
}

- (void)sendDeleteBackupResponse:(id)response withRequestIdentifier:(id)identifier withSentBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  responseCopy = response;
  v11 = objc_opt_new();
  v12 = [(NBRemoteObjectClassC *)self bytesFromClass:responseCopy];

  [v11 setError:v12];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000100EC;
  v14[3] = &unk_10002C960;
  v15 = blockCopy;
  v13 = blockCopy;
  [(NBRemoteObject *)self sendResponse:v11 type:7 withRequest:identifierCopy withTimeout:&off_10002E840 withDescription:@"NanoBackup Delete Backup Response" onlyOneFor:0 didSend:v14];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  serviceCopy = service;
  activelyPairingDevice = [(NBRemoteObjectClassC *)self activelyPairingDevice];
  delayedRestoreMessages = [(NBRemoteObject *)self delayedRestoreMessages];
  if (delayedRestoreMessages)
  {
    v8 = delayedRestoreMessages;
    nb_defaultPairedDeviceIDIncludingTinkerDevices = [serviceCopy nb_defaultPairedDeviceIDIncludingTinkerDevices];

    if (nb_defaultPairedDeviceIDIncludingTinkerDevices)
    {
      v10 = [activelyPairingDevice valueForProperty:NRDevicePropertyPairingID];
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