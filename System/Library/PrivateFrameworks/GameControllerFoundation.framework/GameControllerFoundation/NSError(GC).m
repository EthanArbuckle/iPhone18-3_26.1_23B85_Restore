@interface NSError(GC)
- (id)gc_failingKeyPath;
@end

@implementation NSError(GC)

- (id)gc_failingKeyPath
{
  v1 = [a1 userInfo];
  v2 = [v1 gc_objectForKey:@"GCFailingKeyPathErrorKey" ofClass:objc_opt_class() error:0];

  return v2;
}

@end