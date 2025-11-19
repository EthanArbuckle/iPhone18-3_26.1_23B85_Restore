@interface CPUIModernBarButtonItem
- (CPUIButtonDelegate)cpui_delegate;
- (CPUIModernBarButtonItem)initWithTitle:(id)a3 image:(id)a4 type:(unint64_t)a5;
- (void)_addGestureRecognizers;
- (void)_buttonPressed:(id)a3;
- (void)_buttonTapped:(id)a3;
- (void)_updatePrefersSeparatePlatter;
- (void)setEnabled:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation CPUIModernBarButtonItem

- (CPUIModernBarButtonItem)initWithTitle:(id)a3 image:(id)a4 type:(unint64_t)a5
{
  v28[5] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  switch(a5)
  {
    case 1uLL:
      v19 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1024];
      v20 = [MEMORY[0x277D755D0] configurationWithFont:v19 scale:2];
      v21 = MEMORY[0x277D755B8];
      v22 = @"chevron.backward";
      goto LABEL_7;
    case 2uLL:
      v19 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1024];
      v20 = [MEMORY[0x277D755D0] configurationWithFont:v19 scale:2];
      v21 = MEMORY[0x277D755B8];
      v22 = @"xmark.circle.fill";
LABEL_7:
      v23 = [v21 systemImageNamed:v22];
      v12 = [v23 imageWithSymbolConfiguration:v20];

      goto LABEL_9;
    case 3uLL:
      v11 = [MEMORY[0x277D75C80] _currentTraitCollection];
      v12 = CPUIMessageComposeGlyph(v11, 17.0);

      v13 = CPUILocalizedStringForKey(@"COMPOSE");
      v28[0] = v13;
      v14 = CPUILocalizedStringForKey(@"NEW_MESSAGE");
      v28[1] = v14;
      v15 = CPUILocalizedStringForKey(@"CREATE");
      v28[2] = v15;
      v16 = CPUILocalizedStringForKey(@"WRITE");
      v28[3] = v16;
      v17 = CPUILocalizedStringForKey(@"SQUARE_AND_PENCIL");
      v28[4] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:5];

      goto LABEL_10;
  }

  v12 = [v9 imageWithRenderingMode:2];
LABEL_9:
  v18 = MEMORY[0x277CBEBF8];
LABEL_10:
  v27.receiver = self;
  v27.super_class = CPUIModernBarButtonItem;
  v24 = [(CPUIModernBarButtonItem *)&v27 initWithTitle:v8 image:v12 target:0 action:0 menu:0];
  v25 = v24;
  if (v24)
  {
    [(CPUIModernBarButtonItem *)v24 _addGestureRecognizers];
    [(CPUIModernBarButtonItem *)v25 setAccessibilityUserInputLabels:v18];
  }

  return v25;
}

- (void)setTitle:(id)a3
{
  v4.receiver = self;
  v4.super_class = CPUIModernBarButtonItem;
  [(CPUIModernBarButtonItem *)&v4 setTitle:a3];
  [(CPUIModernBarButtonItem *)self _updatePrefersSeparatePlatter];
}

- (void)setImage:(id)a3
{
  v4.receiver = self;
  v4.super_class = CPUIModernBarButtonItem;
  [(CPUIModernBarButtonItem *)&v4 setImage:a3];
  [(CPUIModernBarButtonItem *)self _updatePrefersSeparatePlatter];
}

- (void)_updatePrefersSeparatePlatter
{
  v3 = [(CPUIModernBarButtonItem *)self title];
  if ([v3 length])
  {
    v4 = [(CPUIModernBarButtonItem *)self image];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  [(CPUIModernBarButtonItem *)self _setPrefersSeparatePlatter:v5];
}

- (void)_addGestureRecognizers
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__buttonPressed_];
  [(CPUIModernBarButtonItem *)self setPressTapRecognizer:v3];

  v4 = [(CPUIModernBarButtonItem *)self pressTapRecognizer];
  [v4 setAllowedPressTypes:&unk_2855D84D0];

  v5 = [(CPUIModernBarButtonItem *)self pressTapRecognizer];
  [v5 setEnabled:{-[CPUIModernBarButtonItem isEnabled](self, "isEnabled")}];

  v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__buttonTapped_];
  [(CPUIModernBarButtonItem *)self setTouchTapRecognizer:v6];

  v7 = [(CPUIModernBarButtonItem *)self touchTapRecognizer];
  [v7 setAllowedTouchTypes:&unk_2855D84E8];

  v8 = [(CPUIModernBarButtonItem *)self touchTapRecognizer];
  [v8 setEnabled:{-[CPUIModernBarButtonItem isEnabled](self, "isEnabled")}];

  v9 = [(CPUIModernBarButtonItem *)self pressTapRecognizer];
  v12[0] = v9;
  v10 = [(CPUIModernBarButtonItem *)self touchTapRecognizer];
  v12[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  [(CPUIModernBarButtonItem *)self _setGestureRecognizers:v11];
}

- (void)_buttonPressed:(id)a3
{
  v4 = [(CPUIModernBarButtonItem *)self cpui_delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CPUIModernBarButtonItem *)self cpui_delegate];
    [v6 didSelectButton:self withInteractionModel:2];
  }
}

- (void)_buttonTapped:(id)a3
{
  v4 = [(CPUIModernBarButtonItem *)self cpui_delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CPUIModernBarButtonItem *)self cpui_delegate];
    [v6 didSelectButton:self withInteractionModel:1];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = CPUIModernBarButtonItem;
  [(CPUIModernBarButtonItem *)&v7 setEnabled:?];
  v5 = [(CPUIModernBarButtonItem *)self pressTapRecognizer];
  [v5 setEnabled:v3];

  v6 = [(CPUIModernBarButtonItem *)self touchTapRecognizer];
  [v6 setEnabled:v3];
}

- (CPUIButtonDelegate)cpui_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cpui_delegate);

  return WeakRetained;
}

@end