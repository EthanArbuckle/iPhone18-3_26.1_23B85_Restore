@interface PinnedTabsOverflowButton
- (PinnedTabsOverflowButton)initWithFrame:(CGRect)frame;
- (void)_hover:(id)_hover;
- (void)_setHovering:(BOOL)hovering;
- (void)setTintStyle:(int64_t)style;
@end

@implementation PinnedTabsOverflowButton

- (PinnedTabsOverflowButton)initWithFrame:(CGRect)frame
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = PinnedTabsOverflowButton;
  v3 = [(PinnedTabsOverflowButton *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    borderlessButtonConfiguration = [MEMORY[0x277D75230] borderlessButtonConfiguration];
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward.2"];
    v29 = borderlessButtonConfiguration;
    [borderlessButtonConfiguration setImage:v5];

    v6 = [MEMORY[0x277D755D0] configurationWithScale:1];
    [borderlessButtonConfiguration setPreferredSymbolConfigurationForImage:v6];

    [(PinnedTabsOverflowButton *)v3 setConfiguration:borderlessButtonConfiguration];
    v7 = objc_alloc_init(MEMORY[0x277D75D68]);
    trailingSeparator = v3->_trailingSeparator;
    v3->_trailingSeparator = v7;

    blackColor = [MEMORY[0x277D75348] blackColor];
    contentView = [(UIVisualEffectView *)v3->_trailingSeparator contentView];
    [contentView setBackgroundColor:blackColor];

    [(UIVisualEffectView *)v3->_trailingSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PinnedTabsOverflowButton *)v3 addSubview:v3->_trailingSeparator];
    v25 = MEMORY[0x277CCAAD0];
    trailingAnchor = [(UIVisualEffectView *)v3->_trailingSeparator trailingAnchor];
    trailingAnchor2 = [(PinnedTabsOverflowButton *)v3 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31[0] = v26;
    topAnchor = [(UIVisualEffectView *)v3->_trailingSeparator topAnchor];
    topAnchor2 = [(PinnedTabsOverflowButton *)v3 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v31[1] = v13;
    widthAnchor = [(UIVisualEffectView *)v3->_trailingSeparator widthAnchor];
    _SFOnePixel();
    v15 = [widthAnchor constraintEqualToConstant:?];
    v31[2] = v15;
    heightAnchor = [(UIVisualEffectView *)v3->_trailingSeparator heightAnchor];
    heightAnchor2 = [(PinnedTabsOverflowButton *)v3 heightAnchor];
    v18 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v31[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [v25 activateConstraints:v19];

    v20 = *MEMORY[0x277D76838];
    [(PinnedTabsOverflowButton *)v3 setMinimumContentSizeCategory:*MEMORY[0x277D76838]];
    [(PinnedTabsOverflowButton *)v3 setMaximumContentSizeCategory:v20];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(PinnedTabsOverflowButton *)v3 setTintColor:secondaryLabelColor];

    [(PinnedTabsOverflowButton *)v3 setShowsMenuAsPrimaryAction:1];
    v22 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v3 action:sel__hover_];
    [(PinnedTabsOverflowButton *)v3 addGestureRecognizer:v22];

    v23 = v3;
  }

  return v3;
}

- (void)setTintStyle:(int64_t)style
{
  if (self->_tintStyle != style)
  {
    self->_tintStyle = style;
    if (style)
    {
      v4 = [MEMORY[0x277D75D00] _sf_effectWithStyle:6 forBarTintStyle:style];
      [(UIVisualEffectView *)self->_trailingSeparator setEffect:v4];
    }
  }
}

- (void)_hover:(id)_hover
{
  v4 = ([_hover state] - 1) < 2;

  [(PinnedTabsOverflowButton *)self _setHovering:v4];
}

- (void)_setHovering:(BOOL)hovering
{
  if (self->_hovering != hovering)
  {
    v7 = v3;
    v8 = v4;
    self->_hovering = hovering;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__PinnedTabsOverflowButton__setHovering___block_invoke;
    v5[3] = &unk_2781D51B8;
    v5[4] = self;
    hoveringCopy = hovering;
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