@interface WatchFaceSettingsManager
- (void)faceCollectionDidLoad:(id)load;
@end

@implementation WatchFaceSettingsManager

- (void)faceCollectionDidLoad:(id)load
{
  loadCopy = load;
  selfCopy = self;
  sub_24B9ECB50();
}

@end