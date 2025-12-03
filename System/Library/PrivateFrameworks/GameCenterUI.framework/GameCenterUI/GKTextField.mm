@interface GKTextField
+ (void)initialize;
- (GKTextField)initWithFrame:(CGRect)frame;
- (void)applyTextStyle:(id)style;
- (void)replayAndApplyStyleWithSystemContentChange:(BOOL)change;
- (void)setBaseStyle:(id)style;
@end

@implementation GKTextField

- (void)replayAndApplyStyleWithSystemContentChange:(BOOL)change
{
  changeCopy = change;
  v5 = self->_baseStyle;
  appliedStyle = self->_appliedStyle;
  if (appliedStyle)
  {
    v8 = v5;
    v7 = [(GKTextStyle *)appliedStyle replayOnBaseStyle:self->_baseStyle systemContentSizeDidChange:changeCopy];

    v5 = v7;
  }

  if (v5)
  {
    [(GKTextStyle *)v5 applyToEditField:self];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setBaseStyle:(id)style
{
  styleCopy = style;
  if (self->_baseStyle != styleCopy)
  {
    v6 = styleCopy;
    objc_storeStrong(&self->_baseStyle, style);
    [(GKTextField *)self replayAndApplyStyleWithSystemContentChange:0];
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

- (GKTextField)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = GKTextField;
  v3 = [(GKTextField *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1 || (v6 = 0x277D0C8B8, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
    {
      v6 = 0x277D0C8C0;
    }

    v7 = objc_alloc_init(*v6);
    baseStyle = v3->_baseStyle;
    v3->_baseStyle = v7;
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
    [(GKTextField *)self replayAndApplyStyleWithSystemContentChange:0];
  }
}

@end