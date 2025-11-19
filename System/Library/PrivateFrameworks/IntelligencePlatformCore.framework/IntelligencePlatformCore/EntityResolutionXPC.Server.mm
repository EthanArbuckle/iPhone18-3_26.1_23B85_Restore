@interface EntityResolutionXPC.Server
- (void)requestAssetDownloadForAssetType:(NSString *)a3 localeIdentifier:(NSString *)a4 withCompletion:(id)a5;
- (void)warmupForMode:(int64_t)a3 withCompletion:(id)a4;
@end

@implementation EntityResolutionXPC.Server

- (void)warmupForMode:(int64_t)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = self;

  sub_1C446D134(&unk_1C4F22E10, v7);
}

- (void)requestAssetDownloadForAssetType:(NSString *)a3 localeIdentifier:(NSString *)a4 withCompletion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1C446D134(&unk_1C4F22DD0, v9);
}

@end