@interface EDAlignmentInfo
+ (id)alignmentInfo;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAlignmentInfo:(id)info;
- (EDAlignmentInfo)init;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setHorizontalAlignment:(int)alignment;
- (void)setIndent:(int)indent;
- (void)setTextRotation:(int)rotation;
- (void)setTextWrapped:(BOOL)wrapped;
- (void)setVerticalAlignment:(int)alignment;
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

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqualToAlignmentInfo:(id)info
{
  infoCopy = info;
  v5 = self->mHorizontalAlignOverridden == *(infoCopy + 25) && self->mHorizontalAlignment == infoCopy[2] && self->mVerticalAlignOverridden == *(infoCopy + 26) && self->mVerticalAlignment == infoCopy[3] && self->mIndentOverridden == *(infoCopy + 27) && self->mIndent == infoCopy[4] && self->mTextWrappedOveridden == *(infoCopy + 28) && self->mTextWrapped == *(infoCopy + 24) && self->mTextRotation == infoCopy[5];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDAlignmentInfo *)self isEqualToAlignmentInfo:v5];
  }

  return v6;
}

- (void)setHorizontalAlignment:(int)alignment
{
  if (!self->mDoNotModify)
  {
    self->mHorizontalAlignOverridden = 1;
    self->mHorizontalAlignment = alignment;
  }
}

- (void)setVerticalAlignment:(int)alignment
{
  if (!self->mDoNotModify)
  {
    self->mVerticalAlignOverridden = 1;
    self->mVerticalAlignment = alignment;
  }
}

- (void)setIndent:(int)indent
{
  if (!self->mDoNotModify)
  {
    self->mIndentOverridden = 1;
    self->mIndent = indent;
  }
}

- (void)setTextWrapped:(BOOL)wrapped
{
  if (!self->mDoNotModify)
  {
    self->mTextWrappedOveridden = 1;
    self->mTextWrapped = wrapped;
  }
}

- (void)setTextRotation:(int)rotation
{
  if (!self->mDoNotModify)
  {
    self->mTextRotation = rotation;
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