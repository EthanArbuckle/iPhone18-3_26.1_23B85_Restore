@interface EDHyperlink
+ (id)hyperlink;
- (id)description;
- (void)setDescriptionText:(id)text;
- (void)setDosPath:(id)path;
- (void)setPath:(id)path;
- (void)setReference:(id)reference;
- (void)setTextMark:(id)mark;
- (void)setToolTip:(id)tip;
@end

@implementation EDHyperlink

+ (id)hyperlink
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)setPath:(id)path
{
  pathCopy = path;
  mPath = self->mPath;
  p_mPath = &self->mPath;
  if (mPath != pathCopy)
  {
    v8 = pathCopy;
    objc_storeStrong(p_mPath, path);
    pathCopy = v8;
  }
}

- (void)setDosPath:(id)path
{
  pathCopy = path;
  mDosPath = self->mDosPath;
  p_mDosPath = &self->mDosPath;
  if (mDosPath != pathCopy)
  {
    v8 = pathCopy;
    objc_storeStrong(p_mDosPath, path);
    pathCopy = v8;
  }
}

- (void)setDescriptionText:(id)text
{
  textCopy = text;
  mDescriptionText = self->mDescriptionText;
  p_mDescriptionText = &self->mDescriptionText;
  if (mDescriptionText != textCopy)
  {
    v8 = textCopy;
    objc_storeStrong(p_mDescriptionText, text);
    textCopy = v8;
  }
}

- (void)setTextMark:(id)mark
{
  markCopy = mark;
  mTextMark = self->mTextMark;
  p_mTextMark = &self->mTextMark;
  if (mTextMark != markCopy)
  {
    v8 = markCopy;
    objc_storeStrong(p_mTextMark, mark);
    markCopy = v8;
  }
}

- (void)setToolTip:(id)tip
{
  tipCopy = tip;
  mToolTip = self->mToolTip;
  p_mToolTip = &self->mToolTip;
  if (mToolTip != tipCopy)
  {
    v8 = tipCopy;
    objc_storeStrong(p_mToolTip, tip);
    tipCopy = v8;
  }
}

- (void)setReference:(id)reference
{
  referenceCopy = reference;
  mReference = self->mReference;
  p_mReference = &self->mReference;
  if (mReference != referenceCopy)
  {
    v8 = referenceCopy;
    objc_storeStrong(p_mReference, reference);
    referenceCopy = v8;
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