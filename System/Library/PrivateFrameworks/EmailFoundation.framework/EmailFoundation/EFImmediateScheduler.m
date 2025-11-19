@interface EFImmediateScheduler
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)performWithObject:(id)a3;
@end

@implementation EFImmediateScheduler

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v5 = a4;
  [MEMORY[0x1E696AF00] sleepForTimeInterval:a3];
  v5[2](v5);

  return 0;
}

- (id)performWithObject:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() onScheduler:self performWithObject:v4];

  return v5;
}

@end