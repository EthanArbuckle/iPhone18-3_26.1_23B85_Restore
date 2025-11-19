@interface EDHyperlink
+ (id)hyperlink;
- (id)description;
- (void)setDescriptionText:(id)a3;
- (void)setDosPath:(id)a3;
- (void)setPath:(id)a3;
- (void)setReference:(id)a3;
- (void)setTextMark:(id)a3;
- (void)setToolTip:(id)a3;
@end

@implementation EDHyperlink

+ (id)hyperlink
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)setPath:(id)a3
{
  v5 = a3;
  mPath = self->mPath;
  p_mPath = &self->mPath;
  if (mPath != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mPath, a3);
    v5 = v8;
  }
}

- (void)setDosPath:(id)a3
{
  v5 = a3;
  mDosPath = self->mDosPath;
  p_mDosPath = &self->mDosPath;
  if (mDosPath != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mDosPath, a3);
    v5 = v8;
  }
}

- (void)setDescriptionText:(id)a3
{
  v5 = a3;
  mDescriptionText = self->mDescriptionText;
  p_mDescriptionText = &self->mDescriptionText;
  if (mDescriptionText != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mDescriptionText, a3);
    v5 = v8;
  }
}

- (void)setTextMark:(id)a3
{
  v5 = a3;
  mTextMark = self->mTextMark;
  p_mTextMark = &self->mTextMark;
  if (mTextMark != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mTextMark, a3);
    v5 = v8;
  }
}

- (void)setToolTip:(id)a3
{
  v5 = a3;
  mToolTip = self->mToolTip;
  p_mToolTip = &self->mToolTip;
  if (mToolTip != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mToolTip, a3);
    v5 = v8;
  }
}

- (void)setReference:(id)a3
{
  v5 = a3;
  mReference = self->mReference;
  p_mReference = &self->mReference;
  if (mReference != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mReference, a3);
    v5 = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDHyperlink;
  v2 = [(EDHyperlink *)&v4 description];

  return v2;
}

@end