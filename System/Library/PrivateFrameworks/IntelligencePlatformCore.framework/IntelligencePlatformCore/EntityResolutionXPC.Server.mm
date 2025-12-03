@interface EntityResolutionXPC.Server
- (void)requestAssetDownloadForAssetType:(NSString *)type localeIdentifier:(NSString *)identifier withCompletion:(id)completion;
- (void)warmupForMode:(int64_t)mode withCompletion:(id)completion;
@end

@implementation EntityResolutionXPC.Server

- (void)warmupForMode:(int64_t)mode withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = mode;
  v7[3] = v6;
  v7[4] = self;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F22E10, v7);
}

- (void)requestAssetDownloadForAssetType:(NSString *)type localeIdentifier:(NSString *)identifier withCompletion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  v9[2] = type;
  v9[3] = identifier;
  v9[4] = v8;
  v9[5] = self;
  typeCopy = type;
  identifierCopy = identifier;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F22DD0, v9);
}

@end