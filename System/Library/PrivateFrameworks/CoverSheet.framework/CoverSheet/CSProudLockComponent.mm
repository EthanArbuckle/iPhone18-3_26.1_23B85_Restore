@interface CSProudLockComponent
- (BOOL)prefersInlineCoaching;
- (BOOL)shouldResideInALowerSubview;
- (BOOL)supportsMaterialBackground;
- (CSProudLockComponent)init;
- (void)_setUnsignedIntegerValue:(void *)value;
- (void)setOptOutOfAlphaFadesForPageScroll:(int64_t)scroll;
- (void)setPrefersInlineCoaching:(BOOL)coaching;
- (void)setShouldResideInALowerSubview:(BOOL)subview;
- (void)setSupportsMaterialBackground:(BOOL)background;
@end

@implementation CSProudLockComponent

- (CSProudLockComponent)init
{
  v5.receiver = self;
  v5.super_class = CSProudLockComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:11];
    [(CSProudLockComponent *)v3 _setUnsignedIntegerValue:?];
  }

  return v3;
}

- (BOOL)supportsMaterialBackground
{
  value = [(CSComponent *)self value];
  v3 = ([value unsignedIntegerValue] >> 2) & 1;

  return v3;
}

- (BOOL)shouldResideInALowerSubview
{
  value = [(CSComponent *)self value];
  unsignedIntegerValue = [value unsignedIntegerValue];

  return unsignedIntegerValue & 1;
}

- (void)setOptOutOfAlphaFadesForPageScroll:(int64_t)scroll
{
  if ([(CSComponent *)self flag]!= scroll)
  {

    [(CSComponent *)self setFlag:scroll];
  }
}

- (BOOL)prefersInlineCoaching
{
  value = [(CSComponent *)self value];
  v3 = ([value unsignedIntegerValue] >> 1) & 1;

  return v3;
}

- (void)_setUnsignedIntegerValue:(void *)value
{
  if (value)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    [value setValue:v3];
  }
}

- (void)setShouldResideInALowerSubview:(BOOL)subview
{
  subviewCopy = subview;
  value = [(CSComponent *)self value];
  unsignedIntegerValue = [value unsignedIntegerValue];

  [(CSProudLockComponent *)self _setUnsignedIntegerValue:?];
}

- (void)setPrefersInlineCoaching:(BOOL)coaching
{
  coachingCopy = coaching;
  value = [(CSComponent *)self value];
  unsignedIntegerValue = [value unsignedIntegerValue];

  v7 = 2;
  if (!coachingCopy)
  {
    v7 = 0;
  }

  [(CSProudLockComponent *)self _setUnsignedIntegerValue:?];
}

- (void)setSupportsMaterialBackground:(BOOL)background
{
  backgroundCopy = background;
  value = [(CSComponent *)self value];
  unsignedIntegerValue = [value unsignedIntegerValue];

  v7 = 4;
  if (!backgroundCopy)
  {
    v7 = 0;
  }

  [(CSProudLockComponent *)self _setUnsignedIntegerValue:?];
}

@end