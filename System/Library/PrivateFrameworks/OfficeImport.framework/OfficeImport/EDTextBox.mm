@interface EDTextBox
+ (id)textBox;
- (id)description;
- (void)setAlignmentInfo:(id)info;
- (void)setProtection:(id)protection;
- (void)setText:(id)text;
@end

@implementation EDTextBox

+ (id)textBox
{
  v2 = objc_alloc_init(EDTextBox);

  return v2;
}

- (void)setText:(id)text
{
  textCopy = text;
  mText = self->mText;
  p_mText = &self->mText;
  if (mText != textCopy)
  {
    v8 = textCopy;
    objc_storeStrong(p_mText, text);
    textCopy = v8;
  }
}

- (void)setAlignmentInfo:(id)info
{
  infoCopy = info;
  mAlignmentInfo = self->mAlignmentInfo;
  p_mAlignmentInfo = &self->mAlignmentInfo;
  if (mAlignmentInfo != infoCopy)
  {
    v8 = infoCopy;
    objc_storeStrong(p_mAlignmentInfo, info);
    infoCopy = v8;
  }
}

- (void)setProtection:(id)protection
{
  protectionCopy = protection;
  mProtection = self->mProtection;
  p_mProtection = &self->mProtection;
  if (mProtection != protectionCopy)
  {
    v8 = protectionCopy;
    objc_storeStrong(p_mProtection, protection);
    protectionCopy = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDTextBox;
  v2 = [(EDTextBox *)&v4 description];

  return v2;
}

@end