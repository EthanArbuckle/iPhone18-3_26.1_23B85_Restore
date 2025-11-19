@interface CKGlassCancelAudioRecordingButton
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKGlassCancelAudioRecordingButton)initWithCoder:(id)a3;
- (void)animateBlurTo:(double)a3;
- (void)layoutSubviews;
@end

@implementation CKGlassCancelAudioRecordingButton

- (CKGlassCancelAudioRecordingButton)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR___CKGlassCancelAudioRecordingButton_foregroundColor;
  *(&self->super.super.super.super.super.isa + v3) = [objc_opt_self() labelColor];
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for GlassCancelAudioRecordingButton();
  v2 = v4.receiver;
  [(CKGlassCancelAudioRecordingButton *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GlassCancelAudioRecordingButton();
  [(CKGlassCancelAudioRecordingButton *)&v8 sizeThatFits:width, height];
  if (v5 <= v6)
  {
    v5 = v6;
  }

  v7 = v5;
  result.height = v7;
  result.width = v5;
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
  v8 = sub_1909517A4(v4, v6);

  return v8 & 1;
}

- (void)animateBlurTo:(double)a3
{
  v6 = self;
  v3 = [(CKGlassCancelAudioRecordingButton *)v6 layer];
  v4 = sub_190D51C70();
  v5 = sub_190D56ED0();
  [v3 setValue:v4 forKeyPath:v5];

  [(CKGlassCancelAudioRecordingButton *)v6 setNeedsUpdateConfiguration];
}

@end