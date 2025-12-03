@interface LUILogViewerAssistiveTouch
- (LUILogViewerAssistiveTouch)initWithFrame:(CGRect)frame;
- (void)_setup;
- (void)layoutSubviews;
@end

@implementation LUILogViewerAssistiveTouch

- (LUILogViewerAssistiveTouch)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = LUILogViewerAssistiveTouch;
  v3 = [(LUILogViewerAssistiveTouch *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(LUILogViewerAssistiveTouch *)v3 _setup];
  }

  return v4;
}

- (void)_setup
{
  blackColor = [MEMORY[0x277D75348] blackColor];
  v4 = [blackColor colorWithAlphaComponent:0.8];
  [(LUILogViewerAssistiveTouch *)self setBackgroundColor:v4];

  [(LUILogViewerAssistiveTouch *)self setTitle:@"L" forState:0];
  v6 = [MEMORY[0x277D74300] boldSystemFontOfSize:25.0];
  titleLabel = [(LUILogViewerAssistiveTouch *)self titleLabel];
  [titleLabel setFont:v6];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = LUILogViewerAssistiveTouch;
  [(LUILogViewerAssistiveTouch *)&v5 layoutSubviews];
  [(LUILogViewerAssistiveTouch *)self frame];
  v3 = CGRectGetWidth(v6) * 0.5;
  layer = [(LUILogViewerAssistiveTouch *)self layer];
  [layer setCornerRadius:v3];
}

@end