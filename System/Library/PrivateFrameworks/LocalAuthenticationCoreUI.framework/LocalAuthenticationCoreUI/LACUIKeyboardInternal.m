@interface LACUIKeyboardInternal
- (CGSize)intrinsicContentSize;
- (LACUIKeyboardInternal)initWithDefaultSize;
- (void)_setup;
- (void)setRenderInProcess:(BOOL)a3;
@end

@implementation LACUIKeyboardInternal

- (LACUIKeyboardInternal)initWithDefaultSize
{
  v5.receiver = self;
  v5.super_class = LACUIKeyboardInternal;
  v2 = [(UIKeyboard *)&v5 initWithDefaultSize];
  v3 = v2;
  if (v2)
  {
    [(LACUIKeyboardInternal *)v2 _setup];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = MEMORY[0x277D75658];
  v3 = [(UIKeyboard *)self interfaceOrientation];

  [v2 keyboardSizeForInterfaceOrientation:v3];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setRenderInProcess:(BOOL)a3
{
  if (a3)
  {
    UIKeyboardDisableAutomaticAppearance();
    [(UIKeyboard *)self activate];
  }

  else if (self->_renderedInProcess)
  {
    [(UIKeyboard *)self deactivate];
    UIKeyboardEnableAutomaticAppearance();
    [(UIKeyboard *)self activate];
  }

  self->_renderedInProcess = a3;
}

- (void)_setup
{
  v3 = [(LACUIKeyboardInternal *)self layer];
  [v3 setDisableUpdateMask:16];

  v4 = [(UIKeyboard *)self defaultTextInputTraits];
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__LACUIKeyboardInternal__setup__block_invoke;
    v7[3] = &unk_27981EA48;
    v8 = v4;
    v6 = __31__LACUIKeyboardInternal__setup__block_invoke(v7);
    [(UIKeyboard *)self setDefaultTextInputTraits:v6];
  }
}

id __31__LACUIKeyboardInternal__setup__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setKeyboardType:127];
  [*(a1 + 32) setKeyboardAppearance:127];
  [*(a1 + 32) setReturnKeyType:4];
  [*(a1 + 32) setAutocapitalizationType:0];
  [*(a1 + 32) setAutocorrectionType:1];
  [*(a1 + 32) setSpellCheckingType:1];
  [*(a1 + 32) setSmartQuotesType:1];
  [*(a1 + 32) setSmartDashesType:1];
  [*(a1 + 32) setSmartInsertDeleteType:1];
  [*(a1 + 32) setAcceptsEmoji:0];
  [*(a1 + 32) setHidePrediction:1];
  [*(a1 + 32) setDisablePrediction:1];
  [*(a1 + 32) setDevicePasscodeEntry:1];
  v2 = *(a1 + 32);

  return v2;
}

@end