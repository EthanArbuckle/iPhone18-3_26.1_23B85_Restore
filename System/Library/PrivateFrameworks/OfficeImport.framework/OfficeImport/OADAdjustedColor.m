@interface OADAdjustedColor
- (BOOL)isEqual:(id)a3;
- (OADAdjustedColor)initWithBaseColor:(id)a3 adjustmentType:(int)a4 adjustmentParam:(unsigned __int8)a5 invert:(BOOL)a6 invert128:(BOOL)a7 gray:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation OADAdjustedColor

- (unint64_t)hash
{
  v3 = [(OADColor *)self->mBaseColor hash]^ self->mAdjustmentType ^ self->mAdjustmentParam ^ self->mInvert ^ self->mInvert128 ^ self->mGray;
  v5.receiver = self;
  v5.super_class = OADAdjustedColor;
  return v3 ^ [(OADColor *)&v5 hash];
}

- (OADAdjustedColor)initWithBaseColor:(id)a3 adjustmentType:(int)a4 adjustmentParam:(unsigned __int8)a5 invert:(BOOL)a6 invert128:(BOOL)a7 gray:(BOOL)a8
{
  v15 = a3;
  v19.receiver = self;
  v19.super_class = OADAdjustedColor;
  v16 = [(OADAdjustedColor *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->mBaseColor, a3);
    v17->mAdjustmentType = a4;
    v17->mAdjustmentParam = a5;
    v17->mInvert = a6;
    v17->mInvert128 = a7;
    v17->mGray = a8;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(OADColor *)self->mBaseColor copyWithZone:?];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithBaseColor:adjustmentType:adjustmentParam:invert:invert128:gray:", v5, self->mAdjustmentType, self->mAdjustmentParam, self->mInvert, self->mInvert128, self->mGray}];
  v7 = [(OADColor *)self transforms];
  v8 = [v7 copyWithZone:a3];

  [v6 setTransforms:v8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    mBaseColor = self->mBaseColor;
    v7 = [v5 baseColor];
    if (-[OADColor isEqual:](mBaseColor, "isEqual:", v7) && (mAdjustmentType = self->mAdjustmentType, mAdjustmentType == [v5 adjustmentType]) && (mAdjustmentParam = self->mAdjustmentParam, mAdjustmentParam == objc_msgSend(v5, "adjustmentParam")) && (mInvert = self->mInvert, mInvert == objc_msgSend(v5, "invert")) && (mInvert128 = self->mInvert128, mInvert128 == objc_msgSend(v5, "invert128")) && (mGray = self->mGray, mGray == objc_msgSend(v5, "gray")))
    {
      v15.receiver = self;
      v15.super_class = OADAdjustedColor;
      v13 = [(OADColor *)&v15 isEqual:v5];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end