@interface TapbackPickerButtonView
- (void)interfaceStyleChanged;
- (void)longPressRecognized:(id)a3;
@end

@implementation TapbackPickerButtonView

- (void)longPressRecognized:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190C7EE64(v4);
}

- (void)interfaceStyleChanged
{
  v3 = self;
  v2 = [(TapbackPickerButtonView *)v3 traitCollection];
  (*((*MEMORY[0x1E69E7D40] & v3->super.super.super.super.super.isa) + 0xF0))();
}

@end