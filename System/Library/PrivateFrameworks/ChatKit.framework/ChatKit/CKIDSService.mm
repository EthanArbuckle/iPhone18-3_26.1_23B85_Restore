@interface CKIDSService
- (BOOL)sendFile:(id)file onService:(id)service;
- (BOOL)sendProtobufData:(id)data type:(unint64_t)type service:(id)service fireAndForget:(BOOL)forget includeInactiveDevices:(BOOL)devices;
- (CKIDSService)init;
@end

@implementation CKIDSService

- (CKIDSService)init
{
  v15.receiver = self;
  v15.super_class = CKIDSService;
  v2 = [(CKIDSService *)&v15 init];
  if (v2)
  {
    v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.quickboard.classa"];
    classAService = v2->_classAService;
    v2->_classAService = v3;

    v5 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.messages"];
    classCService = v2->_classCService;
    v2->_classCService = v5;

    v7 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.tinker.messages"];
    tinkerMessagesActivationService = v2->_tinkerMessagesActivationService;
    v2->_tinkerMessagesActivationService = v7;

    v9 = +[NSProcessInfo processInfo];
    processName = [v9 processName];
    v11 = [NSString stringWithFormat:@"%@ - IDS queue", processName];

    v12 = dispatch_queue_create([v11 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v12;
  }

  return v2;
}

- (BOOL)sendProtobufData:(id)data type:(unint64_t)type service:(id)service fireAndForget:(BOOL)forget includeInactiveDevices:(BOOL)devices
{
  devicesCopy = devices;
  forgetCopy = forget;
  typeCopy = type;
  dataCopy = data;
  serviceCopy = service;
  v43 = [[IDSProtobuf alloc] initWithProtobufData:dataCopy type:typeCopy isResponse:0];
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = v12;
  if (forgetCopy)
  {
    [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
  }

  v14 = &NSLog_ptr;
  if (devicesCopy)
  {
    v15 = dataCopy;
    devices = [serviceCopy devices];
    v17 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(devices, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v18 = devices;
    v19 = [v18 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v52;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v52 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v51 + 1) + 8 * i);
          v24 = IDSCopyIDForDevice();
          [v17 addObject:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v20);
    }

    dataCopy = v15;
  }

  else
  {
    v17 = [NSSet setWithObject:IDSDefaultPairedDevice];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v25 = v17;
  v26 = [v25 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v26)
  {
    v27 = v26;
    v40 = v13;
    v41 = dataCopy;
    v28 = 0;
    v29 = 0;
    v30 = *v48;
    obj = v25;
    while (2)
    {
      v31 = 0;
      v32 = v28;
      v33 = v29;
      do
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v14;
        v35 = [v14[96] setWithObject:*(*(&v47 + 1) + 8 * v31)];
        v45 = v33;
        v46 = v32;
        v36 = [serviceCopy sendProtobuf:v43 toDestinations:v35 priority:200 options:0 identifier:&v46 error:&v45];
        v28 = v46;

        v29 = v45;
        if (!v36)
        {
          v25 = obj;

          localizedDescription = [v29 localizedDescription];
          NSLog(@"sendProtobufData failed - %@", localizedDescription);
          v37 = 0;
          goto LABEL_23;
        }

        v31 = v31 + 1;
        v32 = v28;
        v33 = v29;
        v14 = v34;
      }

      while (v27 != v31);
      v25 = obj;
      v27 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }

    v37 = 1;
    localizedDescription = obj;
LABEL_23:
    v13 = v40;
    dataCopy = v41;
  }

  else
  {
    v29 = 0;
    v28 = 0;
    v37 = 1;
    localizedDescription = v25;
  }

  return v37;
}

- (BOOL)sendFile:(id)file onService:(id)service
{
  v5 = IDSDefaultPairedDevice;
  serviceCopy = service;
  fileCopy = file;
  v8 = [NSSet setWithObject:v5];
  v12 = 0;
  v13 = 0;
  LOBYTE(v5) = [serviceCopy sendResourceAtURL:fileCopy metadata:&__NSDictionary0__struct toDestinations:v8 priority:200 options:0 identifier:&v13 error:&v12];

  v9 = v13;
  v10 = v12;

  return v5;
}

@end