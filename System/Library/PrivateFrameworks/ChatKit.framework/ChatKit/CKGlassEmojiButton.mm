@interface CKGlassEmojiButton
+ (CGSize)buttonSize;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKGlassEmojiButton)initWithCoder:(id)coder;
- (void)animateBlurTo:(double)to;
- (void)layoutSubviews;
@end

@implementation CKGlassEmojiButton

- (CKGlassEmojiButton)initWithCoder:(id)coder
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for GlassEmojiButton();
  v2 = v4.receiver;
  [(CKGlassEmojiButton *)&v4 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius_];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 40.0;
  v4 = 40.0;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)buttonSize
{
  v2 = 40.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_190C8DCB0(v4, v6);

  return v8 & 1;
}

- (void)animateBlurTo:(double)to
{
  selfCopy = self;
  layer = [(CKGlassEmojiButton *)selfCopy layer];
  v4 = sub_190D51C70();
  v5 = sub_190D56ED0();
  [layer setValue:v4 forKeyPath:v5];

  [(CKGlassEmojiButton *)selfCopy setNeedsUpdateConfiguration];
}

@end