@interface OADCachedDrawableStyle
- (BOOL)isEqual:(id)a3;
- (OADCachedDrawableStyle)initWithFillCategory:(int)a3 mFillIndex:(unint64_t)a4 strokeIndex:(unint64_t)a5 shadowIndex:(unint64_t)a6 reflectionOpacity:(unsigned __int8)a7 textStyleIndex:(unint64_t)a8;
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

- (OADCachedDrawableStyle)initWithFillCategory:(int)a3 mFillIndex:(unint64_t)a4 strokeIndex:(unint64_t)a5 shadowIndex:(unint64_t)a6 reflectionOpacity:(unsigned __int8)a7 textStyleIndex:(unint64_t)a8
{
  v15.receiver = self;
  v15.super_class = OADCachedDrawableStyle;
  result = [(OADCachedDrawableStyle *)&v15 init];
  if (result)
  {
    result->mFillCategory = a3;
    result->mFillIndex = a4;
    result->mStrokeIndex = a5;
    result->mShadowIndex = a6;
    result->mReflectionOpacity = a7;
    result->mTextStyleIndex = a8;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v6 = self->mFillCategory == v7[2] && self->mFillIndex == *(v7 + 2) && self->mStrokeIndex == *(v7 + 3) && self->mShadowIndex == *(v7 + 4) && self->mReflectionOpacity == *(v7 + 40) && self->mTextStyleIndex == *(v7 + 6);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end