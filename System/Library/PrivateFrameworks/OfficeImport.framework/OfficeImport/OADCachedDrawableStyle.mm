@interface OADCachedDrawableStyle
- (BOOL)isEqual:(id)equal;
- (OADCachedDrawableStyle)initWithFillCategory:(int)category mFillIndex:(unint64_t)index strokeIndex:(unint64_t)strokeIndex shadowIndex:(unint64_t)shadowIndex reflectionOpacity:(unsigned __int8)opacity textStyleIndex:(unint64_t)styleIndex;
- (unint64_t)hash;
@end

@implementation OADCachedDrawableStyle

- (unint64_t)hash
{
  *v2.i8 = vmovn_s64(*&self->mFillIndex);
  LODWORD(v3) = self->mShadowIndex;
  HIDWORD(v3) = self->mTextStyleIndex;
  v2.i64[1] = v3;
  v4 = vandq_s8(vshlq_u32(v2, xmmword_25D6FBE00), xmmword_25D6FBE10);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  return (v4.i32[0] | v4.i32[1]) | ((self->mReflectionOpacity & 7) << 21) | self->mFillCategory & 3;
}

- (OADCachedDrawableStyle)initWithFillCategory:(int)category mFillIndex:(unint64_t)index strokeIndex:(unint64_t)strokeIndex shadowIndex:(unint64_t)shadowIndex reflectionOpacity:(unsigned __int8)opacity textStyleIndex:(unint64_t)styleIndex
{
  v15.receiver = self;
  v15.super_class = OADCachedDrawableStyle;
  result = [(OADCachedDrawableStyle *)&v15 init];
  if (result)
  {
    result->mFillCategory = category;
    result->mFillIndex = index;
    result->mStrokeIndex = strokeIndex;
    result->mShadowIndex = shadowIndex;
    result->mReflectionOpacity = opacity;
    result->mTextStyleIndex = styleIndex;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    v6 = self->mFillCategory == v7[2] && self->mFillIndex == *(v7 + 2) && self->mStrokeIndex == *(v7 + 3) && self->mShadowIndex == *(v7 + 4) && self->mReflectionOpacity == *(v7 + 40) && self->mTextStyleIndex == *(v7 + 6);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end