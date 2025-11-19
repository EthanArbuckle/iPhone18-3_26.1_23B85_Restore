@interface DDRTaskRemoveAllWebDatabase
- (void)run;
@end

@implementation DDRTaskRemoveAllWebDatabase

- (void)run
{
  v6 = NSHomeDirectory();
  v2 = [v6 stringByAppendingPathComponent:@"Library"];
  v3 = [v2 stringByAppendingPathComponent:@"WebKit"];
  v4 = [v3 stringByAppendingPathComponent:@"Databases"];
  v5 = +[NSArray array];
  removeSubFiles(v4, v5);
}

@end