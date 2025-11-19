@interface CHDTrendline
+ (id)trendline;
- (CHDTrendline)init;
- (id)defaultNameWithSeriesName:(id)a3;
- (id)description;
- (void)setGraphicProperties:(id)a3;
- (void)setLabel:(id)a3;
- (void)setName:(id)a3;
@end

@implementation CHDTrendline

- (CHDTrendline)init
{
  v8.receiver = self;
  v8.super_class = CHDTrendline;
  v2 = [(CHDTrendline *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->mDisplayEquation = 0;
    v2->mForward = 0.0;
    v2->mInterceptYAxis = 0.0;
    v2->mBackward = 0.0;
    v2->mPolynomialOrder = 2;
    v2->mMovingAveragePeriod = 0;
    v2->mType = 1;
    mGraphicProperties = v2->mGraphicProperties;
    v2->mGraphicProperties = 0;

    mLabel = v3->mLabel;
    v3->mLabel = 0;

    mName = v3->mName;
    v3->mName = 0;
  }

  return v3;
}

+ (id)trendline
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)setLabel:(id)a3
{
  v5 = a3;
  mLabel = self->mLabel;
  p_mLabel = &self->mLabel;
  if (mLabel != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mLabel, a3);
    v5 = v8;
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

- (void)setName:(id)a3
{
  v5 = a3;
  mName = self->mName;
  p_mName = &self->mName;
  if (mName != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mName, a3);
    v5 = v8;
  }
}

- (id)defaultNameWithSeriesName:(id)a3
{
  v4 = a3;
  mType = self->mType;
  v6 = &stru_286EE1130;
  if (mType > 2)
  {
    if (mType == 3)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld per. Mov. Avg.", self->mMovingAveragePeriod];
      goto LABEL_14;
    }

    v7 = @"Poly.";
    if (mType == 5)
    {
      v6 = @"Power.";
    }

    v8 = mType == 4;
  }

  else
  {
    v7 = @"Expon.";
    if (mType == 2)
    {
      v6 = @"Log.";
    }

    if (mType == 1)
    {
      v6 = @"Linear.";
    }

    v8 = mType == 0;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

LABEL_14:
  v10 = MEMORY[0x277CCACA8];
  v11 = [v4 string];
  v12 = [v10 stringWithFormat:@"%@(%@)", v9, v11];
  v13 = [EDString edStringWithString:v12];

  return v13;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDTrendline;
  v2 = [(CHDTrendline *)&v4 description];

  return v2;
}

@end