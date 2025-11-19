@interface CSProudLockComponent
- (BOOL)prefersInlineCoaching;
- (BOOL)shouldResideInALowerSubview;
- (BOOL)supportsMaterialBackground;
- (CSProudLockComponent)init;
- (void)_setUnsignedIntegerValue:(void *)a1;
- (void)setOptOutOfAlphaFadesForPageScroll:(int64_t)a3;
- (void)setPrefersInlineCoaching:(BOOL)a3;
- (void)setShouldResideInALowerSubview:(BOOL)a3;
- (void)setSupportsMaterialBackground:(BOOL)a3;
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
  v2 = [(CSComponent *)self value];
  v3 = ([v2 unsignedIntegerValue] >> 2) & 1;

  return v3;
}

- (BOOL)shouldResideInALowerSubview
{
  v2 = [(CSComponent *)self value];
  v3 = [v2 unsignedIntegerValue];

  return v3 & 1;
}

- (void)setOptOutOfAlphaFadesForPageScroll:(int64_t)a3
{
  if ([(CSComponent *)self flag]!= a3)
  {

    [(CSComponent *)self setFlag:a3];
  }
}

- (BOOL)prefersInlineCoaching
{
  v2 = [(CSComponent *)self value];
  v3 = ([v2 unsignedIntegerValue] >> 1) & 1;

  return v3;
}

- (void)_setUnsignedIntegerValue:(void *)a1
{
  if (a1)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    [a1 setValue:v3];
  }
}

- (void)setShouldResideInALowerSubview:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSComponent *)self value];
  v6 = [v5 unsignedIntegerValue];

  [(CSProudLockComponent *)self _setUnsignedIntegerValue:?];
}

- (void)setPrefersInlineCoaching:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSComponent *)self value];
  v6 = [v5 unsignedIntegerValue];

  v7 = 2;
  if (!v3)
  {
    v7 = 0;
  }

  [(CSProudLockComponent *)self _setUnsignedIntegerValue:?];
}

- (void)setSupportsMaterialBackground:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSComponent *)self value];
  v6 = [v5 unsignedIntegerValue];

  v7 = 4;
  if (!v3)
  {
    v7 = 0;
  }

  [(CSProudLockComponent *)self _setUnsignedIntegerValue:?];
}

@end