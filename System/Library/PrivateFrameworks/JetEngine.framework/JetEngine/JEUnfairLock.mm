@interface JEUnfairLock
+ (void)initialize;
- (JEUnfairLock)init;
@end

@implementation JEUnfairLock

+ (void)initialize
{
  if (objc_opt_class() != self)
  {
    v2 = MEMORY[0x1E695DF30];
    v3 = *MEMORY[0x1E695D930];

    [v2 raise:v3 format:@"JEUnfairLock (aka UnfairLock) does not allow subclassing."];
  }
}

- (JEUnfairLock)init
{
  v3.receiver = self;
  v3.super_class = JEUnfairLock;
  result = [(JEUnfairLock *)&v3 init];
  if (result)
  {
    result->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end