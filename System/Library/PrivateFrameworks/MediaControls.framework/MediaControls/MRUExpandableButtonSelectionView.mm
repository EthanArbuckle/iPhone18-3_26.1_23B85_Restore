@interface MRUExpandableButtonSelectionView
- (MRUExpandableButtonSelectionView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setExpanded:(BOOL)expanded;
- (void)setOption:(id)option;
- (void)updateVisibility;
@end

@implementation MRUExpandableButtonSelectionView

- (void)updateVisibility
{
  if (self->_enabled)
  {
    if ([(MediaControlsExpandableButtonOption *)self->_option selectedBackground]== 1)
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(MRUExpandableButtonSelectionView *)self setBackgroundColor:clearColor];
      v4 = 1.0;
      goto LABEL_8;
    }

    if ([(MediaControlsExpandableButtonOption *)self->_option selectedBackground]== 2)
    {
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      goto LABEL_6;
    }

    selectedBackgroundColor = [(MediaControlsExpandableButtonOption *)self->_option selectedBackgroundColor];

    if (selectedBackgroundColor)
    {
      systemBlueColor = [(MediaControlsExpandableButtonOption *)self->_option selectedBackgroundColor];
      goto LABEL_6;
    }

    v5 = MEMORY[0x1E69DC888];
    if (self->_expanded)
    {
      clearColor = [MEMORY[0x1E69DC888] whiteColor];
      v8 = [clearColor colorWithAlphaComponent:0.2];
      [(MRUExpandableButtonSelectionView *)self setBackgroundColor:v8];

      goto LABEL_7;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69DC888];
  }

  systemBlueColor = [v5 clearColor];
LABEL_6:
  clearColor = systemBlueColor;
  [(MRUExpandableButtonSelectionView *)self setBackgroundColor:systemBlueColor];
LABEL_7:
  v4 = 0.0;
LABEL_8:

  packageView = [(MRUExpandableButtonSelectionView *)self packageView];
  [packageView setAlpha:v4];
}

- (MRUExpandableButtonSelectionView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = MRUExpandableButtonSelectionView;
  v3 = [(MRUExpandableButtonSelectionView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MRUExpandableButtonSelectionView *)v3 setUserInteractionEnabled:0];
    [(MRUExpandableButtonSelectionView *)v4 setClipsToBounds:1];
    v4->_enabled = 1;
    v5 = objc_alloc_init(MRUCAPackageView);
    packageView = v4->_packageView;
    v4->_packageView = v5;

    v7 = [MRUCAPackageAsset packageNamed:@"RainbowSelection"];
    [(MRUCAPackageView *)v4->_packageView setAsset:v7];

    [(MRUExpandableButtonSelectionView *)v4 addSubview:v4->_packageView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = MRUExpandableButtonSelectionView;
  [(MRUExpandableButtonSelectionView *)&v12 layoutSubviews];
  [(MRUExpandableButtonSelectionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MRUCAPackageView *)self->_packageView setFrame:?];
  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  v11 = CGRectGetHeight(v13) * 0.5;
  [(MRUExpandableButtonSelectionView *)self _setCornerRadius:v11];
  [(MRUCAPackageView *)self->_packageView _setCornerRadius:v11];
}

- (void)setOption:(id)option
{
  objc_storeStrong(&self->_option, option);
  optionCopy = option;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__MRUExpandableButtonSelectionView_setOption___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(MRUExpandableButtonSelectionView *)self updateVisibility];
  }
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    self->_expanded = expanded;
    [(MRUExpandableButtonSelectionView *)self updateVisibility];
  }
}

@end