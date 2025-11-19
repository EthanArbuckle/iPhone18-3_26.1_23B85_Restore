@interface CPUIButton
+ (id)buttonWithType:(int64_t)a3;
- (CPUIButtonDelegate)cpui_delegate;
- (void)_addGestureRecognizers;
- (void)_buttonPressed:(id)a3;
- (void)_buttonTapped:(id)a3;
- (void)didMoveToWindow;
- (void)setEnabled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
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

  v4 = [(CPUIButton *)self pressTapRecognizer];
  [v4 setAllowedPressTypes:&unk_2855D8470];

  v5 = [(CPUIButton *)self pressTapRecognizer];
  [v5 setEnabled:{-[CPUIButton isEnabled](self, "isEnabled")}];

  v6 = [(CPUIButton *)self pressTapRecognizer];
  [(CPUIButton *)self addGestureRecognizer:v6];

  v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__buttonTapped_];
  [(CPUIButton *)self setTouchTapRecognizer:v7];

  v8 = [(CPUIButton *)self touchTapRecognizer];
  [v8 setAllowedTouchTypes:&unk_2855D8488];

  v9 = [(CPUIButton *)self touchTapRecognizer];
  [v9 setEnabled:{-[CPUIButton isEnabled](self, "isEnabled")}];

  v10 = [(CPUIButton *)self touchTapRecognizer];
  [(CPUIButton *)self addGestureRecognizer:v10];
}

+ (id)buttonWithType:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CPUIButton;
  v3 = objc_msgSendSuper2(&v5, sel_buttonWithType_, a3);
  [v3 _addGestureRecognizers];

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = CPUIButton;
  [(CPUIButton *)&v6 traitCollectionDidChange:a3];
  v4 = [(CPUIButton *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 3)
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

- (void)_buttonPressed:(id)a3
{
  v4 = [(CPUIButton *)self cpui_delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CPUIButton *)self cpui_delegate];
    [v6 didSelectButton:self withInteractionModel:2];
  }
}

- (void)_buttonTapped:(id)a3
{
  v4 = [(CPUIButton *)self cpui_delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CPUIButton *)self cpui_delegate];
    [v6 didSelectButton:self withInteractionModel:1];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = CPUIButton;
  [(CPUIButton *)&v7 setEnabled:?];
  v5 = [(CPUIButton *)self pressTapRecognizer];
  [v5 setEnabled:v3];

  v6 = [(CPUIButton *)self touchTapRecognizer];
  [v6 setEnabled:v3];
}

@end