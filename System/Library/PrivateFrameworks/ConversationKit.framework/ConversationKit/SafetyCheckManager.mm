@interface SafetyCheckManager
- (void)fetchSharing;
@end

@implementation SafetyCheckManager

- (void)fetchSharing
{
  selfCopy = self;
  SafetyCheckManager.fetchSharing()();
}

@end