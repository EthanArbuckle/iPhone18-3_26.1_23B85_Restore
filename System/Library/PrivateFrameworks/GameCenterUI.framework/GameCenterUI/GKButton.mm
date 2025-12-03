@interface GKButton
+ (void)initialize;
- (CGSize)intrinsicContentSize;
- (GKButton)initWithFrame:(CGRect)frame;
- (void)applyButtonStyle:(id)style;
- (void)applyTextStyle:(id)style;
- (void)replayAndApplyStyleWithSystemContentChange:(BOOL)change;
- (void)setAttributedTitle:(id)title forState:(unint64_t)state;
- (void)setBaseStyle:(id)style;
@end

@implementation GKButton

- (void)replayAndApplyStyleWithSystemContentChange:(BOOL)change
{
  if (self->_baseStyle)
  {
    changeCopy = change;
    for (i = 0; i != 4; ++i)
    {
      v6 = replayAndApplyStyleWithSystemContentChange__states[i];
      v7 = MEMORY[0x277D0C8B0];
      v8 = [(GKButton *)self attributedTitleForState:v6];
      v9 = [v7 attributedString:v8 byReplayingFromBaseStyle:self->_baseStyle systemContentSizeDidChange:changeCopy];

      v14.receiver = self;
      v14.super_class = GKButton;
      [(GKButton *)&v14 setAttributedTitle:v9 forState:v6];
    }

    v10 = self->_baseStyle;
    appliedStyle = self->_appliedStyle;
    if (appliedStyle)
    {
      v12 = [(GKTextStyle *)appliedStyle replayOnBaseStyle:self->_baseStyle systemContentSizeDidChange:changeCopy];

      v10 = v12;
    }

    if (v10)
    {
      titleLabel = [(GKButton *)self titleLabel];
      [(GKTextStyle *)v10 applyToLabel:titleLabel];
    }
  }
}

- (void)setBaseStyle:(id)style
{
  styleCopy = style;
  if (self->_baseStyle != styleCopy)
  {
    v6 = styleCopy;
    objc_storeStrong(&self->_baseStyle, style);
    [(GKButton *)self replayAndApplyStyleWithSystemContentChange:0];
    styleCopy = v6;
  }
}

+ (void)initialize
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v6[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 appearanceWhenContainedInInstancesOfClasses:v3];

  v5 = objc_alloc_init(MEMORY[0x277D0C8C0]);
  [v4 setBaseStyle:v5];
}

- (GKButton)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = GKButton;
  v3 = [(GKButton *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1 || (v6 = 0x277D0C8B8, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
    {
      v6 = 0x277D0C8C0;
    }

    v7 = objc_alloc_init(*v6);
    objc_storeStrong(&v3->_baseStyle, v7);
  }

  return v3;
}

- (void)applyTextStyle:(id)style
{
  appliedStyle = style;
  v6 = appliedStyle;
  if (self->_appliedStyle != appliedStyle)
  {
    objc_storeStrong(&self->_appliedStyle, style);
    appliedStyle = self->_appliedStyle;
  }

  if (appliedStyle)
  {
    [(GKButton *)self replayAndApplyStyleWithSystemContentChange:0];
  }
}

- (void)setAttributedTitle:(id)title forState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = GKButton;
  [(GKButton *)&v5 setAttributedTitle:title forState:state];
  [(GKButton *)self replayAndApplyStyleWithSystemContentChange:0];
}

- (void)applyButtonStyle:(id)style
{
  objc_storeStrong(&self->_appliedButtonStyle, style);
  styleCopy = style;
  [(GKButtonStyle *)self->_appliedButtonStyle applyToButton:self];
}

- (CGSize)intrinsicContentSize
{
  v16.receiver = self;
  v16.super_class = GKButton;
  [(GKButton *)&v16 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(GKButton *)self titleEdgeInsets];
  v8 = v7;
  [(GKButton *)self titleEdgeInsets];
  v10 = v4 + v8 + v9;
  [(GKButton *)self titleEdgeInsets];
  v12 = v11;
  [(GKButton *)self titleEdgeInsets];
  v14 = v6 + v12 + v13;
  v15 = v10;
  result.height = v14;
  result.width = v15;
  return result;
}

@end