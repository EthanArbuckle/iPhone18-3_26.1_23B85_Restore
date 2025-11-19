@interface OITSUBasicProgress
- (OITSUBasicProgress)initWithMaxValue:(double)a3;
- (void)dealloc;
- (void)setIndeterminate:(BOOL)a3;
- (void)setValue:(double)a3;
@end

@implementation OITSUBasicProgress

- (OITSUBasicProgress)initWithMaxValue:(double)a3
{
  v7.receiver = self;
  v7.super_class = OITSUBasicProgress;
  v4 = [(OITSUProgress *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(OITSUBasicProgressStorage);
    v4->mStorage = v5;
    [(OITSUBasicProgressStorage *)v5 setMaxValue:a3];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OITSUBasicProgress;
  [(OITSUProgress *)&v3 dealloc];
}

- (void)setValue:(double)a3
{
  [(OITSUBasicProgressStorage *)self->mStorage setValue:a3];

  [(OITSUProgress *)self protected_progressDidChange];
}

- (void)setIndeterminate:(BOOL)a3
{
  [(OITSUBasicProgressStorage *)self->mStorage setIndeterminate:a3];

  [(OITSUProgress *)self protected_progressDidChange];
}

@end