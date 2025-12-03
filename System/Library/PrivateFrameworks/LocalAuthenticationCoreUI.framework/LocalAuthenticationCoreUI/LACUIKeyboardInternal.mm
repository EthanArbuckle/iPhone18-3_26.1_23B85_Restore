@interface LACUIKeyboardInternal
- (CGSize)intrinsicContentSize;
- (LACUIKeyboardInternal)initWithDefaultSize;
- (void)_setup;
- (void)setRenderInProcess:(BOOL)process;
@end

@implementation LACUIKeyboardInternal

- (LACUIKeyboardInternal)initWithDefaultSize
{
  v5.receiver = self;
  v5.super_class = LACUIKeyboardInternal;
  initWithDefaultSize = [(UIKeyboard *)&v5 initWithDefaultSize];
  v3 = initWithDefaultSize;
  if (initWithDefaultSize)
  {
    [(LACUIKeyboardInternal *)initWithDefaultSize _setup];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = MEMORY[0x277D75658];
  interfaceOrientation = [(UIKeyboard *)self interfaceOrientation];

  [v2 keyboardSizeForInterfaceOrientation:interfaceOrientation];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setRenderInProcess:(BOOL)process
{
  if (process)
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

  self->_renderedInProcess = process;
}

- (void)_setup
{
  layer = [(LACUIKeyboardInternal *)self layer];
  [layer setDisableUpdateMask:16];

  defaultTextInputTraits = [(UIKeyboard *)self defaultTextInputTraits];
  v5 = defaultTextInputTraits;
  if (defaultTextInputTraits)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__LACUIKeyboardInternal__setup__block_invoke;
    v7[3] = &unk_27981EA48;
    v8 = defaultTextInputTraits;
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