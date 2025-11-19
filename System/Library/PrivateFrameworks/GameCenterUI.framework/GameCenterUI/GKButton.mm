@interface GKButton
+ (void)initialize;
- (CGSize)intrinsicContentSize;
- (GKButton)initWithFrame:(CGRect)a3;
- (void)applyButtonStyle:(id)a3;
- (void)applyTextStyle:(id)a3;
- (void)replayAndApplyStyleWithSystemContentChange:(BOOL)a3;
- (void)setAttributedTitle:(id)a3 forState:(unint64_t)a4;
- (void)setBaseStyle:(id)a3;
@end

@implementation GKButton

- (void)replayAndApplyStyleWithSystemContentChange:(BOOL)a3
{
  if (self->_baseStyle)
  {
    v3 = a3;
    for (i = 0; i != 4; ++i)
    {
      v6 = replayAndApplyStyleWithSystemContentChange__states[i];
      v7 = MEMORY[0x277D0C8B0];
      v8 = [(GKButton *)self attributedTitleForState:v6];
      v9 = [v7 attributedString:v8 byReplayingFromBaseStyle:self->_baseStyle systemContentSizeDidChange:v3];

      v14.receiver = self;
      v14.super_class = GKButton;
      [(GKButton *)&v14 setAttributedTitle:v9 forState:v6];
    }

    v10 = self->_baseStyle;
    appliedStyle = self->_appliedStyle;
    if (appliedStyle)
    {
      v12 = [(GKTextStyle *)appliedStyle replayOnBaseStyle:self->_baseStyle systemContentSizeDidChange:v3];

      v10 = v12;
    }

    if (v10)
    {
      v13 = [(GKButton *)self titleLabel];
      [(GKTextStyle *)v10 applyToLabel:v13];
    }
  }
}

- (void)setBaseStyle:(id)a3
{
  v5 = a3;
  if (self->_baseStyle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_baseStyle, a3);
    [(GKButton *)self replayAndApplyStyleWithSystemContentChange:0];
    v5 = v6;
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

- (GKButton)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = GKButton;
  v3 = [(GKButton *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 != 1 || (v6 = 0x277D0C8B8, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
    {
      v6 = 0x277D0C8C0;
    }

    v7 = objc_alloc_init(*v6);
    objc_storeStrong(&v3->_baseStyle, v7);
  }

  return v3;
}

- (void)applyTextStyle:(id)a3
{
  appliedStyle = a3;
  v6 = appliedStyle;
  if (self->_appliedStyle != appliedStyle)
  {
    objc_storeStrong(&self->_appliedStyle, a3);
    appliedStyle = self->_appliedStyle;
  }

  if (appliedStyle)
  {
    [(GKButton *)self replayAndApplyStyleWithSystemContentChange:0];
  }
}

- (void)setAttributedTitle:(id)a3 forState:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = GKButton;
  [(GKButton *)&v5 setAttributedTitle:a3 forState:a4];
  [(GKButton *)self replayAndApplyStyleWithSystemContentChange:0];
}

- (void)applyButtonStyle:(id)a3
{
  objc_storeStrong(&self->_appliedButtonStyle, a3);
  v5 = a3;
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