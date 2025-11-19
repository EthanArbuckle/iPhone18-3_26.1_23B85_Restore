@interface ContactCardDetailsViewModel
- (void)handleKeyTransparencyDatabaseChangedNotification;
@end

@implementation ContactCardDetailsViewModel

- (void)handleKeyTransparencyDatabaseChangedNotification
{
  v2 = qword_1EB0C4A00;
  sub_1A34C9010();
  if (v2 != -1)
  {
    swift_once();
  }

  [qword_1EB0C9D98 removeAllObjects];
  sub_1A33B1394();
}

@end