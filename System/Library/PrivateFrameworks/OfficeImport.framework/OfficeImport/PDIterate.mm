@interface PDIterate
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation PDIterate

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);
  v7 = v6;
  if (v6 && (mType = self->mType, mType == [v6 type]) && (mIsBackwards = self->mIsBackwards, mIsBackwards == objc_msgSend(v7, "isBackwards")) && (mIsPercentage = self->mIsPercentage, mIsPercentage == objc_msgSend(v7, "isValuePercentage")))
  {
    mValue = self->mValue;
    [v7 value];
    v13 = mValue == v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = (self->mValue << 8) + (self->mType << 16);
  v4.receiver = self;
  v4.super_class = PDIterate;
  return [(PDIterate *)&v4 hash]+ v2;
}

@end