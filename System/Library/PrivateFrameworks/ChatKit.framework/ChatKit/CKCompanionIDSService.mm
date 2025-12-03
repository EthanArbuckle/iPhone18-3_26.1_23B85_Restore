@interface CKCompanionIDSService
- (CKCompanionIDSService)init;
- (void)requestDynamicDictionariesRemoval;
- (void)sendDeviceSalt:(id)salt;
- (void)sendResponseKitData:(id)data;
@end

@implementation CKCompanionIDSService

- (CKCompanionIDSService)init
{
  v7.receiver = self;
  v7.super_class = CKCompanionIDSService;
  v2 = [(CKIDSService *)&v7 init];
  v3 = v2;
  if (v2)
  {
    classCService = [(CKIDSService *)v2 classCService];
    queue = [(CKIDSService *)v3 queue];
    [classCService addDelegate:v3 queue:queue];
  }

  return v3;
}

- (void)sendDeviceSalt:(id)salt
{
  saltCopy = salt;
  v7 = objc_alloc_init(NanoMessagesProtoSyncDeviceSalt);
  [(NanoMessagesProtoSyncDeviceSalt *)v7 setDeviceSalt:saltCopy];

  data = [(NanoMessagesProtoSyncDeviceSalt *)v7 data];
  classAService = [(CKIDSService *)self classAService];
  [(CKIDSService *)self sendProtobufData:data type:0 service:classAService fireAndForget:1 includeInactiveDevices:0];
}

- (void)sendResponseKitData:(id)data
{
  dataCopy = data;
  classCService = [(CKIDSService *)self classCService];
  [(CKIDSService *)self sendFile:dataCopy onService:classCService];
}

- (void)requestDynamicDictionariesRemoval
{
  v5 = objc_alloc_init(NanoMessagesProtoRemoveDynamicDictionaries);
  data = [(NanoMessagesProtoRemoveDynamicDictionaries *)v5 data];
  classCService = [(CKIDSService *)self classCService];
  [(CKIDSService *)self sendProtobufData:data type:3 service:classCService fireAndForget:0 includeInactiveDevices:1];
}

@end