@interface FMBlurView
- (FMBlurView)initWithFrame:(CGRect)frame autosizesToFitSuperview:(BOOL)superview;
- (void)didMoveToSuperview;
@end

@implementation FMBlurView

- (FMBlurView)initWithFrame:(CGRect)frame autosizesToFitSuperview:(BOOL)superview
{
  superviewCopy = superview;
  v9.receiver = self;
  v9.super_class = FMBlurView;
  v5 = [(FMBlurView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(FMBlurView *)v5 setAutosizesToFitSuperview:superviewCopy];
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.9686 alpha:0.96];
    [(FMBlurView *)v6 setBackgroundColor:v7];

    if ([(FMBlurView *)v6 autosizesToFitSuperview])
    {
      [(FMBlurView *)v6 setAutoresizingMask:18];
    }
  }

  return v6;
}

- (void)didMoveToSuperview
{
  if ([(FMBlurView *)self autosizesToFitSuperview])
  {
    superview = [(FMBlurView *)self superview];
    [superview frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v14.origin.x = v5;
    v14.origin.y = v7;
    v14.size.width = v9;
    v14.size.height = v11;
    Width = CGRectGetWidth(v14);
    v15.origin.x = v5;
    v15.origin.y = v7;
    v15.size.width = v9;
    v15.size.height = v11;
    [(FMBlurView *)self setFrame:0.0, 0.0, Width, CGRectGetHeight(v15)];
  }

  [(FMBlurView *)self setNeedsLayout];
}

@end