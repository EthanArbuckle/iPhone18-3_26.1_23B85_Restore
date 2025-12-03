@interface DBTodayViewSynchronizedAnimation
- (id)description;
@end

@implementation DBTodayViewSynchronizedAnimation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = DBTodayViewSynchronizedAnimation;
  v4 = [(DBTodayViewSynchronizedAnimation *)&v11 description];
  [(DBTodayViewSynchronizedAnimation *)self ready];
  v5 = NSStringFromBOOL();
  client = [(DBTodayViewSynchronizedAnimation *)self client];
  animationBlock = [(DBTodayViewSynchronizedAnimation *)self animationBlock];
  v8 = _Block_copy(animationBlock);
  v9 = [v3 stringWithFormat:@"%@ [ready: %@, client: %@, animation block: %@]", v4, v5, client, v8];

  return v9;
}

@end