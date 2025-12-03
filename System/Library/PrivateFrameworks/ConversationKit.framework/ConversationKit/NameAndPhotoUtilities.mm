@interface NameAndPhotoUtilities
- (void)handleIdsStatusChanged;
- (void)handlePersonalNicknameChanged:(id)changed;
@end

@implementation NameAndPhotoUtilities

- (void)handleIdsStatusChanged
{
  selfCopy = self;
  NameAndPhotoUtilities.handleIdsStatusChanged()();
}

- (void)handlePersonalNicknameChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  NameAndPhotoUtilities.handlePersonalNicknameChanged(_:)(changedCopy);
}

@end