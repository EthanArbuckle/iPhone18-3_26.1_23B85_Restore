@interface CPUIModernBarButtonItem
- (CPUIButtonDelegate)cpui_delegate;
- (CPUIModernBarButtonItem)initWithTitle:(id)title image:(id)image type:(unint64_t)type;
- (void)_addGestureRecognizers;
- (void)_buttonPressed:(id)pressed;
- (void)_buttonTapped:(id)tapped;
- (void)_updatePrefersSeparatePlatter;
- (void)setEnabled:(BOOL)enabled;
- (void)setImage:(id)image;
- (void)setTitle:(id)title;
@end

@implementation CPUIModernBarButtonItem

- (CPUIModernBarButtonItem)initWithTitle:(id)title image:(id)image type:(unint64_t)type
{
  v28[5] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  imageCopy = image;
  v10 = imageCopy;
  switch(type)
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
      _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
      v12 = CPUIMessageComposeGlyph(_currentTraitCollection, 17.0);

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

  v12 = [imageCopy imageWithRenderingMode:2];
LABEL_9:
  v18 = MEMORY[0x277CBEBF8];
LABEL_10:
  v27.receiver = self;
  v27.super_class = CPUIModernBarButtonItem;
  v24 = [(CPUIModernBarButtonItem *)&v27 initWithTitle:titleCopy image:v12 target:0 action:0 menu:0];
  v25 = v24;
  if (v24)
  {
    [(CPUIModernBarButtonItem *)v24 _addGestureRecognizers];
    [(CPUIModernBarButtonItem *)v25 setAccessibilityUserInputLabels:v18];
  }

  return v25;
}

- (void)setTitle:(id)title
{
  v4.receiver = self;
  v4.super_class = CPUIModernBarButtonItem;
  [(CPUIModernBarButtonItem *)&v4 setTitle:title];
  [(CPUIModernBarButtonItem *)self _updatePrefersSeparatePlatter];
}

- (void)setImage:(id)image
{
  v4.receiver = self;
  v4.super_class = CPUIModernBarButtonItem;
  [(CPUIModernBarButtonItem *)&v4 setImage:image];
  [(CPUIModernBarButtonItem *)self _updatePrefersSeparatePlatter];
}

- (void)_updatePrefersSeparatePlatter
{
  title = [(CPUIModernBarButtonItem *)self title];
  if ([title length])
  {
    image = [(CPUIModernBarButtonItem *)self image];
    v5 = image == 0;
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

  pressTapRecognizer = [(CPUIModernBarButtonItem *)self pressTapRecognizer];
  [pressTapRecognizer setAllowedPressTypes:&unk_2855D84D0];

  pressTapRecognizer2 = [(CPUIModernBarButtonItem *)self pressTapRecognizer];
  [pressTapRecognizer2 setEnabled:{-[CPUIModernBarButtonItem isEnabled](self, "isEnabled")}];

  v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__buttonTapped_];
  [(CPUIModernBarButtonItem *)self setTouchTapRecognizer:v6];

  touchTapRecognizer = [(CPUIModernBarButtonItem *)self touchTapRecognizer];
  [touchTapRecognizer setAllowedTouchTypes:&unk_2855D84E8];

  touchTapRecognizer2 = [(CPUIModernBarButtonItem *)self touchTapRecognizer];
  [touchTapRecognizer2 setEnabled:{-[CPUIModernBarButtonItem isEnabled](self, "isEnabled")}];

  pressTapRecognizer3 = [(CPUIModernBarButtonItem *)self pressTapRecognizer];
  v12[0] = pressTapRecognizer3;
  touchTapRecognizer3 = [(CPUIModernBarButtonItem *)self touchTapRecognizer];
  v12[1] = touchTapRecognizer3;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  [(CPUIModernBarButtonItem *)self _setGestureRecognizers:v11];
}

- (void)_buttonPressed:(id)pressed
{
  cpui_delegate = [(CPUIModernBarButtonItem *)self cpui_delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    cpui_delegate2 = [(CPUIModernBarButtonItem *)self cpui_delegate];
    [cpui_delegate2 didSelectButton:self withInteractionModel:2];
  }
}

- (void)_buttonTapped:(id)tapped
{
  cpui_delegate = [(CPUIModernBarButtonItem *)self cpui_delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    cpui_delegate2 = [(CPUIModernBarButtonItem *)self cpui_delegate];
    [cpui_delegate2 didSelectButton:self withInteractionModel:1];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = CPUIModernBarButtonItem;
  [(CPUIModernBarButtonItem *)&v7 setEnabled:?];
  pressTapRecognizer = [(CPUIModernBarButtonItem *)self pressTapRecognizer];
  [pressTapRecognizer setEnabled:enabledCopy];

  touchTapRecognizer = [(CPUIModernBarButtonItem *)self touchTapRecognizer];
  [touchTapRecognizer setEnabled:enabledCopy];
}

- (CPUIButtonDelegate)cpui_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cpui_delegate);

  return WeakRetained;
}

@end