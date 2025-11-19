@interface EDTextBox
+ (id)textBox;
- (id)description;
- (void)setAlignmentInfo:(id)a3;
- (void)setProtection:(id)a3;
- (void)setText:(id)a3;
@end

@implementation EDTextBox

+ (id)textBox
{
  v2 = objc_alloc_init(EDTextBox);

  return v2;
}

- (void)setText:(id)a3
{
  v5 = a3;
  mText = self->mText;
  p_mText = &self->mText;
  if (mText != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mText, a3);
    v5 = v8;
  }
}

- (void)setAlignmentInfo:(id)a3
{
  v5 = a3;
  mAlignmentInfo = self->mAlignmentInfo;
  p_mAlignmentInfo = &self->mAlignmentInfo;
  if (mAlignmentInfo != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mAlignmentInfo, a3);
    v5 = v8;
  }
}

- (void)setProtection:(id)a3
{
  v5 = a3;
  mProtection = self->mProtection;
  p_mProtection = &self->mProtection;
  if (mProtection != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mProtection, a3);
    v5 = v8;
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