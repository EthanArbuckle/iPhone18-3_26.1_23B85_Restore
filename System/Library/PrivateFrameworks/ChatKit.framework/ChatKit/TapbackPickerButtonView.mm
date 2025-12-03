@interface TapbackPickerButtonView
- (void)interfaceStyleChanged;
- (void)longPressRecognized:(id)recognized;
@end

@implementation TapbackPickerButtonView

- (void)longPressRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  sub_190C7EE64(recognizedCopy);
}

- (void)interfaceStyleChanged
{
  selfCopy = self;
  traitCollection = [(TapbackPickerButtonView *)selfCopy traitCollection];
  (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.super.super.super.isa) + 0xF0))();
}

@end