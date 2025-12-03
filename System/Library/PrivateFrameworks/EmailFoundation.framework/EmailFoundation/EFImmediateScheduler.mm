@interface EFImmediateScheduler
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)performWithObject:(id)object;
@end

@implementation EFImmediateScheduler

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  [MEMORY[0x1E696AF00] sleepForTimeInterval:delay];
  blockCopy[2](blockCopy);

  return 0;
}

- (id)performWithObject:(id)object
{
  objectCopy = object;
  v5 = [objc_opt_class() onScheduler:self performWithObject:objectCopy];

  return v5;
}

@end