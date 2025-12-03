@interface AssetRegistryXPC.Server
- (void)assetEntryResultDataForAssetId:(id)id inDomainId:(id)domainId remoteOptionsData:(id)data completion:(id)completion;
@end

@implementation AssetRegistryXPC.Server

- (void)assetEntryResultDataForAssetId:(id)id inDomainId:(id)domainId remoteOptionsData:(id)data completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = sub_1C4F01138();
  v11 = v10;
  v12 = sub_1C4F01138();
  v14 = v13;
  dataCopy = data;
  selfCopy = self;
  v17 = sub_1C4EF9A68();
  v19 = v18;

  _Block_copy(v8);
  sub_1C45A575C(v9, v11, v12, v14, v17, v19, selfCopy, v8);
  _Block_release(v8);
  sub_1C4434000(v17, v19);
}

@end