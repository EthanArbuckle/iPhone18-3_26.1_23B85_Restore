@interface NSError(GC)
- (id)gc_failingKeyPath;
@end

@implementation NSError(GC)

- (id)gc_failingKeyPath
{
  userInfo = [self userInfo];
  v2 = [userInfo gc_objectForKey:@"GCFailingKeyPathErrorKey" ofClass:objc_opt_class() error:0];

  return v2;
}

@end