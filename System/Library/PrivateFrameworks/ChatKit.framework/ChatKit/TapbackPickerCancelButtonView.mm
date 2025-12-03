@interface TapbackPickerCancelButtonView
- (void)setHoverRecognizer:(id)recognizer;
@end

@implementation TapbackPickerCancelButtonView

- (void)setHoverRecognizer:(id)recognizer
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit29TapbackPickerCancelButtonView_hoverRecognizer);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit29TapbackPickerCancelButtonView_hoverRecognizer) = recognizer;
  recognizerCopy = recognizer;
}

@end