@interface OADAdjustedColor
- (BOOL)isEqual:(id)equal;
- (OADAdjustedColor)initWithBaseColor:(id)color adjustmentType:(int)type adjustmentParam:(unsigned __int8)param invert:(BOOL)invert invert128:(BOOL)invert128 gray:(BOOL)gray;
- (id)copyWithZone:(_NSZone *)zone;
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

- (OADAdjustedColor)initWithBaseColor:(id)color adjustmentType:(int)type adjustmentParam:(unsigned __int8)param invert:(BOOL)invert invert128:(BOOL)invert128 gray:(BOOL)gray
{
  colorCopy = color;
  v19.receiver = self;
  v19.super_class = OADAdjustedColor;
  v16 = [(OADAdjustedColor *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->mBaseColor, color);
    v17->mAdjustmentType = type;
    v17->mAdjustmentParam = param;
    v17->mInvert = invert;
    v17->mInvert128 = invert128;
    v17->mGray = gray;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(OADColor *)self->mBaseColor copyWithZone:?];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithBaseColor:adjustmentType:adjustmentParam:invert:invert128:gray:", v5, self->mAdjustmentType, self->mAdjustmentParam, self->mInvert, self->mInvert128, self->mGray}];
  transforms = [(OADColor *)self transforms];
  v8 = [transforms copyWithZone:zone];

  [v6 setTransforms:v8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    mBaseColor = self->mBaseColor;
    baseColor = [v5 baseColor];
    if (-[OADColor isEqual:](mBaseColor, "isEqual:", baseColor) && (mAdjustmentType = self->mAdjustmentType, mAdjustmentType == [v5 adjustmentType]) && (mAdjustmentParam = self->mAdjustmentParam, mAdjustmentParam == objc_msgSend(v5, "adjustmentParam")) && (mInvert = self->mInvert, mInvert == objc_msgSend(v5, "invert")) && (mInvert128 = self->mInvert128, mInvert128 == objc_msgSend(v5, "invert128")) && (mGray = self->mGray, mGray == objc_msgSend(v5, "gray")))
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