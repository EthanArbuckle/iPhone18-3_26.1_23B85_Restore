@interface NSUndoManager(IC)
+ (id)shared;
- (uint64_t)ic_isUndoingOrRedoing;
@end

@implementation NSUndoManager(IC)

+ (id)shared
{
  if (shared_token != -1)
  {
    +[NSUndoManager(IC) shared];
  }

  v1 = shared_sharedUndoManager;

  return v1;
}

- (uint64_t)ic_isUndoingOrRedoing
{
  if ([a1 isUndoing])
  {
    return 1;
  }

  return [a1 isRedoing];
}

@end