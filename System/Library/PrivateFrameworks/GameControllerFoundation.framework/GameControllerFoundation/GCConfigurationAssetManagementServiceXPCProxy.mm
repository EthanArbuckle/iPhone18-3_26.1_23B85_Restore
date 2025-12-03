@interface GCConfigurationAssetManagementServiceXPCProxy
- (GCConfigurationAssetManagementServiceXPCProxy)init;
- (GCConfigurationAssetManagementServiceXPCProxy)initWithService:(id)service;
- (void)assetsWithReply:(id)reply;
- (void)lastUpdateDateWithReply:(id)reply;
@end

@implementation GCConfigurationAssetManagementServiceXPCProxy

- (GCConfigurationAssetManagementServiceXPCProxy)initWithService:(id)service
{
  serviceCopy = service;
  if (!serviceCopy)
  {
    [(GCConfigurationAssetManagementServiceXPCProxy *)a2 initWithService:?];
  }

  v9.receiver = self;
  v9.super_class = GCConfigurationAssetManagementServiceXPCProxy;
  v6 = [(GCConfigurationAssetManagementServiceXPCProxy *)&v9 init];
  service = v6->_service;
  v6->_service = serviceCopy;

  return v6;
}

- (GCConfigurationAssetManagementServiceXPCProxy)init
{
  [(GCConfigurationAssetManagementServiceXPCProxy *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)assetsWithReply:(id)reply
{
  service = self->_service;
  replyCopy = reply;
  assets = [(GCConfigurationAssetManagementService *)service assets];
  v10 = 0;
  v11 = 0;
  [assets waitForResult:&v11 error:&v10];
  v6 = v11;
  v7 = v10;
  v8 = v6;

  v9 = [v8 gc_arrayByTransformingElementsUsingBlock:&__block_literal_global_6];

  replyCopy[2](replyCopy, v9, v7);
}

GCConfigurationAssetXPCProxy *__65__GCConfigurationAssetManagementServiceXPCProxy_assetsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GCConfigurationAssetXPCProxy alloc] initWithAsset:v2];

  return v3;
}

- (void)lastUpdateDateWithReply:(id)reply
{
  service = self->_service;
  replyCopy = reply;
  lastUpdateDate = [(GCConfigurationAssetManagementService *)service lastUpdateDate];
  v9 = 0;
  v10 = 0;
  [lastUpdateDate waitForResult:&v10 error:&v9];
  v6 = v10;
  v7 = v9;
  v8 = v6;

  replyCopy[2](replyCopy, v8, v7);
}

- (void)initWithService:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCConfigurationAssetManagementServiceXPCProxy.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %s", "service != nil"}];
}

@end