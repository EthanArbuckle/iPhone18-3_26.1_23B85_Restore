@interface CPUIButton
+ (id)buttonWithType:(int64_t)type;
- (CPUIButtonDelegate)cpui_delegate;
- (void)_addGestureRecognizers;
- (void)_buttonPressed:(id)pressed;
- (void)_buttonTapped:(id)tapped;
- (void)didMoveToWindow;
- (void)setEnabled:(BOOL)enabled;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPUIButton

- (CPUIButtonDelegate)cpui_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cpui_delegate);

  return WeakRetained;
}

- (void)_addGestureRecognizers
{
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__buttonPressed_];
  [(CPUIButton *)self setPressTapRecognizer:v3];

  pressTapRecognizer = [(CPUIButton *)self pressTapRecognizer];
  [pressTapRecognizer setAllowedPressTypes:&unk_2855D8470];

  pressTapRecognizer2 = [(CPUIButton *)self pressTapRecognizer];
  [pressTapRecognizer2 setEnabled:{-[CPUIButton isEnabled](self, "isEnabled")}];

  pressTapRecognizer3 = [(CPUIButton *)self pressTapRecognizer];
  [(CPUIButton *)self addGestureRecognizer:pressTapRecognizer3];

  v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__buttonTapped_];
  [(CPUIButton *)self setTouchTapRecognizer:v7];

  touchTapRecognizer = [(CPUIButton *)self touchTapRecognizer];
  [touchTapRecognizer setAllowedTouchTypes:&unk_2855D8488];

  touchTapRecognizer2 = [(CPUIButton *)self touchTapRecognizer];
  [touchTapRecognizer2 setEnabled:{-[CPUIButton isEnabled](self, "isEnabled")}];

  touchTapRecognizer3 = [(CPUIButton *)self touchTapRecognizer];
  [(CPUIButton *)self addGestureRecognizer:touchTapRecognizer3];
}

+ (id)buttonWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CPUIButton;
  v3 = objc_msgSendSuper2(&v5, sel_buttonWithType_, type);
  [v3 _addGestureRecognizers];

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = CPUIButton;
  [(CPUIButton *)&v6 traitCollectionDidChange:change];
  traitCollection = [(CPUIButton *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    [(CPUIButton *)self removeAllGestureRecognizers];
    [(CPUIButton *)self _addGestureRecognizers];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CPUIButton;
  [(CPUIButton *)&v3 didMoveToWindow];
  [(CPUIButton *)self removeAllGestureRecognizers];
  [(CPUIButton *)self _addGestureRecognizers];
}

- (void)_buttonPressed:(id)pressed
{
  cpui_delegate = [(CPUIButton *)self cpui_delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    cpui_delegate2 = [(CPUIButton *)self cpui_delegate];
    [cpui_delegate2 didSelectButton:self withInteractionModel:2];
  }
}

- (void)_buttonTapped:(id)tapped
{
  cpui_delegate = [(CPUIButton *)self cpui_delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    cpui_delegate2 = [(CPUIButton *)self cpui_delegate];
    [cpui_delegate2 didSelectButton:self withInteractionModel:1];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = CPUIButton;
  [(CPUIButton *)&v7 setEnabled:?];
  pressTapRecognizer = [(CPUIButton *)self pressTapRecognizer];
  [pressTapRecognizer setEnabled:enabledCopy];

  touchTapRecognizer = [(CPUIButton *)self touchTapRecognizer];
  [touchTapRecognizer setEnabled:enabledCopy];
}

@end