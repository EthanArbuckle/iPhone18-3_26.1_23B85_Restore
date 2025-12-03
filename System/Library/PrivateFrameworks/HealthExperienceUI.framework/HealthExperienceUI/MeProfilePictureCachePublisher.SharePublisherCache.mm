@interface MeProfilePictureCachePublisher.SharePublisherCache
- (void)didReceiveMemoryWarning:(id)warning;
@end

@implementation MeProfilePictureCachePublisher.SharePublisherCache

- (void)didReceiveMemoryWarning:(id)warning
{
  v4 = sub_1BA4A1018();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0FC8();

  sub_1BA4A1BE8();
  swift_beginAccess();
  *self->sharePublisherForRenderConfiguration = MEMORY[0x1E69E7CC8];

  sub_1BA4A1BF8();
  (*(v5 + 8))(v7, v4);
}

@end