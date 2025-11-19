@interface GKTextField
+ (void)initialize;
- (GKTextField)initWithFrame:(CGRect)a3;
- (void)applyTextStyle:(id)a3;
- (void)replayAndApplyStyleWithSystemContentChange:(BOOL)a3;
- (void)setBaseStyle:(id)a3;
@end

@implementation GKTextField

- (void)replayAndApplyStyleWithSystemContentChange:(BOOL)a3
{
  v3 = a3;
  v5 = self->_baseStyle;
  appliedStyle = self->_appliedStyle;
  if (appliedStyle)
  {
    v8 = v5;
    v7 = [(GKTextStyle *)appliedStyle replayOnBaseStyle:self->_baseStyle systemContentSizeDidChange:v3];

    v5 = v7;
  }

  if (v5)
  {
    [(GKTextStyle *)v5 applyToEditField:self];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setBaseStyle:(id)a3
{
  v5 = a3;
  if (self->_baseStyle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_baseStyle, a3);
    [(GKTextField *)self replayAndApplyStyleWithSystemContentChange:0];
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

- (GKTextField)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = GKTextField;
  v3 = [(GKTextField *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 != 1 || (v6 = 0x277D0C8B8, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
    {
      v6 = 0x277D0C8C0;
    }

    v7 = objc_alloc_init(*v6);
    baseStyle = v3->_baseStyle;
    v3->_baseStyle = v7;
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
    [(GKTextField *)self replayAndApplyStyleWithSystemContentChange:0];
  }
}

@end