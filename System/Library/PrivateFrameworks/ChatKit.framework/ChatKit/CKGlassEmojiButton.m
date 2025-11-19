@interface CKGlassEmojiButton
+ (CGSize)buttonSize;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKGlassEmojiButton)initWithCoder:(id)a3;
- (void)animateBlurTo:(double)a3;
- (void)layoutSubviews;
@end

@implementation CKGlassEmojiButton

- (CKGlassEmojiButton)initWithCoder:(id)a3
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
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

- (CGSize)sizeThatFits:(CGSize)a3
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

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_190C8DCB0(v4, v6);

  return v8 & 1;
}

- (void)animateBlurTo:(double)a3
{
  v6 = self;
  v3 = [(CKGlassEmojiButton *)v6 layer];
  v4 = sub_190D51C70();
  v5 = sub_190D56ED0();
  [v3 setValue:v4 forKeyPath:v5];

  [(CKGlassEmojiButton *)v6 setNeedsUpdateConfiguration];
}

@end