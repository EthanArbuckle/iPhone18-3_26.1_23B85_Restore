@interface OITSUBasicProgress
- (OITSUBasicProgress)initWithMaxValue:(double)value;
- (void)dealloc;
- (void)setIndeterminate:(BOOL)indeterminate;
- (void)setValue:(double)value;
@end

@implementation OITSUBasicProgress

- (OITSUBasicProgress)initWithMaxValue:(double)value
{
  v7.receiver = self;
  v7.super_class = OITSUBasicProgress;
  v4 = [(OITSUProgress *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(OITSUBasicProgressStorage);
    v4->mStorage = v5;
    [(OITSUBasicProgressStorage *)v5 setMaxValue:value];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OITSUBasicProgress;
  [(OITSUProgress *)&v3 dealloc];
}

- (void)setValue:(double)value
{
  [(OITSUBasicProgressStorage *)self->mStorage setValue:value];

  [(OITSUProgress *)self protected_progressDidChange];
}

- (void)setIndeterminate:(BOOL)indeterminate
{
  [(OITSUBasicProgressStorage *)self->mStorage setIndeterminate:indeterminate];

  [(OITSUProgress *)self protected_progressDidChange];
}

@end