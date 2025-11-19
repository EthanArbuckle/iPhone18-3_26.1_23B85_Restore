@interface EDAlignmentInfo
+ (id)alignmentInfo;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAlignmentInfo:(id)a3;
- (EDAlignmentInfo)init;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setHorizontalAlignment:(int)a3;
- (void)setIndent:(int)a3;
- (void)setTextRotation:(int)a3;
- (void)setTextWrapped:(BOOL)a3;
- (void)setVerticalAlignment:(int)a3;
@end

@implementation EDAlignmentInfo

+ (id)alignmentInfo
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (EDAlignmentInfo)init
{
  v3.receiver = self;
  v3.super_class = EDAlignmentInfo;
  result = [(EDAlignmentInfo *)&v3 init];
  if (result)
  {
    *&result->mHorizontalAlignOverridden = 0;
    *&result->mHorizontalAlignment = 0x200000000;
    result->mDoNotModify = 0;
    *&result->mIndent = 0;
    result->mTextWrapped = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    *(v4 + 1) = *&self->mHorizontalAlignment;
    *(v4 + 4) = self->mIndent;
    *(v4 + 5) = self->mTextRotation;
    *(v4 + 24) = self->mTextWrapped;
    *(v4 + 25) = self->mHorizontalAlignOverridden;
    *(v4 + 26) = self->mVerticalAlignOverridden;
    *(v4 + 27) = self->mIndentOverridden;
    *(v4 + 28) = self->mTextWrappedOveridden;
    *(v4 + 29) = 0;
    v6 = v4;
  }

  return v5;
}

- (BOOL)isEqualToAlignmentInfo:(id)a3
{
  v4 = a3;
  v5 = self->mHorizontalAlignOverridden == *(v4 + 25) && self->mHorizontalAlignment == v4[2] && self->mVerticalAlignOverridden == *(v4 + 26) && self->mVerticalAlignment == v4[3] && self->mIndentOverridden == *(v4 + 27) && self->mIndent == v4[4] && self->mTextWrappedOveridden == *(v4 + 28) && self->mTextWrapped == *(v4 + 24) && self->mTextRotation == v4[5];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDAlignmentInfo *)self isEqualToAlignmentInfo:v5];
  }

  return v6;
}

- (void)setHorizontalAlignment:(int)a3
{
  if (!self->mDoNotModify)
  {
    self->mHorizontalAlignOverridden = 1;
    self->mHorizontalAlignment = a3;
  }
}

- (void)setVerticalAlignment:(int)a3
{
  if (!self->mDoNotModify)
  {
    self->mVerticalAlignOverridden = 1;
    self->mVerticalAlignment = a3;
  }
}

- (void)setIndent:(int)a3
{
  if (!self->mDoNotModify)
  {
    self->mIndentOverridden = 1;
    self->mIndent = a3;
  }
}

- (void)setTextWrapped:(BOOL)a3
{
  if (!self->mDoNotModify)
  {
    self->mTextWrappedOveridden = 1;
    self->mTextWrapped = a3;
  }
}

- (void)setTextRotation:(int)a3
{
  if (!self->mDoNotModify)
  {
    self->mTextRotation = a3;
  }
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDAlignmentInfo;
  v2 = [(EDAlignmentInfo *)&v4 description];

  return v2;
}

@end