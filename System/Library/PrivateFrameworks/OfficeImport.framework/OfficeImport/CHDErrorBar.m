@interface CHDErrorBar
+ (CHDErrorBar)errorBarWithChart:(id)a3;
- (CHDErrorBar)initWithChart:(id)a3;
- (id)description;
- (void)setGraphicProperties:(id)a3;
- (void)setMinusValues:(id)a3;
- (void)setPlusValues:(id)a3;
@end

@implementation CHDErrorBar

- (CHDErrorBar)initWithChart:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHDErrorBar;
  v6 = [(CHDErrorBar *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mChart, a3);
    v7->mValue = 0.0;
    *&v7->mType = 0x200000000;
    v7->mDirection = 1;
    v7->mNoEndCap = 0;
  }

  return v7;
}

+ (CHDErrorBar)errorBarWithChart:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithChart:v3];

  return v4;
}

- (void)setMinusValues:(id)a3
{
  v5 = a3;
  if (self->mMinusValues != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->mMinusValues, a3);
    v6 = [(CHDChart *)self->mChart processors];
    [v6 markObject:v7 processor:objc_opt_class()];

    v5 = v7;
  }
}

- (void)setPlusValues:(id)a3
{
  v5 = a3;
  if (self->mPlusValues != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->mPlusValues, a3);
    v6 = [(CHDChart *)self->mChart processors];
    [v6 markObject:v7 processor:objc_opt_class()];

    v5 = v7;
  }
}

- (void)setGraphicProperties:(id)a3
{
  v5 = a3;
  mGraphicProperties = self->mGraphicProperties;
  p_mGraphicProperties = &self->mGraphicProperties;
  if (mGraphicProperties != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mGraphicProperties, a3);
    v5 = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDErrorBar;
  v2 = [(CHDErrorBar *)&v4 description];

  return v2;
}

@end