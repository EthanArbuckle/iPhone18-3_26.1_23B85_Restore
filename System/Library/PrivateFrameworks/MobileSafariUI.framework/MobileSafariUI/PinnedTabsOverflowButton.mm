@interface PinnedTabsOverflowButton
- (PinnedTabsOverflowButton)initWithFrame:(CGRect)a3;
- (void)_hover:(id)a3;
- (void)_setHovering:(BOOL)a3;
- (void)setTintStyle:(int64_t)a3;
@end

@implementation PinnedTabsOverflowButton

- (PinnedTabsOverflowButton)initWithFrame:(CGRect)a3
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = PinnedTabsOverflowButton;
  v3 = [(PinnedTabsOverflowButton *)&v30 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75230] borderlessButtonConfiguration];
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward.2"];
    v29 = v4;
    [v4 setImage:v5];

    v6 = [MEMORY[0x277D755D0] configurationWithScale:1];
    [v4 setPreferredSymbolConfigurationForImage:v6];

    [(PinnedTabsOverflowButton *)v3 setConfiguration:v4];
    v7 = objc_alloc_init(MEMORY[0x277D75D68]);
    trailingSeparator = v3->_trailingSeparator;
    v3->_trailingSeparator = v7;

    v9 = [MEMORY[0x277D75348] blackColor];
    v10 = [(UIVisualEffectView *)v3->_trailingSeparator contentView];
    [v10 setBackgroundColor:v9];

    [(UIVisualEffectView *)v3->_trailingSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PinnedTabsOverflowButton *)v3 addSubview:v3->_trailingSeparator];
    v25 = MEMORY[0x277CCAAD0];
    v28 = [(UIVisualEffectView *)v3->_trailingSeparator trailingAnchor];
    v27 = [(PinnedTabsOverflowButton *)v3 trailingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v31[0] = v26;
    v11 = [(UIVisualEffectView *)v3->_trailingSeparator topAnchor];
    v12 = [(PinnedTabsOverflowButton *)v3 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v31[1] = v13;
    v14 = [(UIVisualEffectView *)v3->_trailingSeparator widthAnchor];
    _SFOnePixel();
    v15 = [v14 constraintEqualToConstant:?];
    v31[2] = v15;
    v16 = [(UIVisualEffectView *)v3->_trailingSeparator heightAnchor];
    v17 = [(PinnedTabsOverflowButton *)v3 heightAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v31[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [v25 activateConstraints:v19];

    v20 = *MEMORY[0x277D76838];
    [(PinnedTabsOverflowButton *)v3 setMinimumContentSizeCategory:*MEMORY[0x277D76838]];
    [(PinnedTabsOverflowButton *)v3 setMaximumContentSizeCategory:v20];
    v21 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(PinnedTabsOverflowButton *)v3 setTintColor:v21];

    [(PinnedTabsOverflowButton *)v3 setShowsMenuAsPrimaryAction:1];
    v22 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v3 action:sel__hover_];
    [(PinnedTabsOverflowButton *)v3 addGestureRecognizer:v22];

    v23 = v3;
  }

  return v3;
}

- (void)setTintStyle:(int64_t)a3
{
  if (self->_tintStyle != a3)
  {
    self->_tintStyle = a3;
    if (a3)
    {
      v4 = [MEMORY[0x277D75D00] _sf_effectWithStyle:6 forBarTintStyle:a3];
      [(UIVisualEffectView *)self->_trailingSeparator setEffect:v4];
    }
  }
}

- (void)_hover:(id)a3
{
  v4 = ([a3 state] - 1) < 2;

  [(PinnedTabsOverflowButton *)self _setHovering:v4];
}

- (void)_setHovering:(BOOL)a3
{
  if (self->_hovering != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_hovering = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__PinnedTabsOverflowButton__setHovering___block_invoke;
    v5[3] = &unk_2781D51B8;
    v5[4] = self;
    v6 = a3;
    [MEMORY[0x277D75D18] animateWithDuration:2 delay:v5 options:0 animations:0.2 completion:0.0];
  }
}

void __41__PinnedTabsOverflowButton__setHovering___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    [MEMORY[0x277D75348] sf_separateTabBarHighlightColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v2 = ;
  [*(a1 + 32) setBackgroundColor:v2];
}

@end