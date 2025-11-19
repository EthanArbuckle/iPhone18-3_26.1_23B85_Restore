@interface LUILogViewerAssistiveTouch
- (LUILogViewerAssistiveTouch)initWithFrame:(CGRect)a3;
- (void)_setup;
- (void)layoutSubviews;
@end

@implementation LUILogViewerAssistiveTouch

- (LUILogViewerAssistiveTouch)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = LUILogViewerAssistiveTouch;
  v3 = [(LUILogViewerAssistiveTouch *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(LUILogViewerAssistiveTouch *)v3 _setup];
  }

  return v4;
}

- (void)_setup
{
  v3 = [MEMORY[0x277D75348] blackColor];
  v4 = [v3 colorWithAlphaComponent:0.8];
  [(LUILogViewerAssistiveTouch *)self setBackgroundColor:v4];

  [(LUILogViewerAssistiveTouch *)self setTitle:@"L" forState:0];
  v6 = [MEMORY[0x277D74300] boldSystemFontOfSize:25.0];
  v5 = [(LUILogViewerAssistiveTouch *)self titleLabel];
  [v5 setFont:v6];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = LUILogViewerAssistiveTouch;
  [(LUILogViewerAssistiveTouch *)&v5 layoutSubviews];
  [(LUILogViewerAssistiveTouch *)self frame];
  v3 = CGRectGetWidth(v6) * 0.5;
  v4 = [(LUILogViewerAssistiveTouch *)self layer];
  [v4 setCornerRadius:v3];
}

@end