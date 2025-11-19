@interface InferenceSupportXPC.Server
- (void)assetEntryResultDataForAssetId:(id)a3 inDomainId:(id)a4 remoteOptionsData:(id)a5 completion:(id)a6;
@end

@implementation InferenceSupportXPC.Server

- (void)assetEntryResultDataForAssetId:(id)a3 inDomainId:(id)a4 remoteOptionsData:(id)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_1C4F01138();
  v11 = v10;
  v12 = sub_1C4F01138();
  v14 = v13;
  v15 = a5;
  v16 = self;
  v17 = sub_1C4EF9A68();
  v19 = v18;

  _Block_copy(v8);
  sub_1C49339A8(v9, v11, v12, v14, v17, v19, v16, v8);
  _Block_release(v8);
  sub_1C4434000(v17, v19);
}

@end