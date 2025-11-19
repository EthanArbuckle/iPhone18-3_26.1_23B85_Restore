@interface DDRTaskRemoveBulletinBoardSettings
- (void)run;
@end

@implementation DDRTaskRemoveBulletinBoardSettings

- (void)run
{
  v5 = NSHomeDirectory();
  v2 = [v5 stringByAppendingPathComponent:@"Library"];
  v3 = [v2 stringByAppendingPathComponent:@"BulletinBoard"];
  v4 = [NSArray arrayWithObject:@"ClearedSections.plist"];
  removeSubFiles(v3, v4);
}

@end