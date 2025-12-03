@interface SUUIStandardInteractiveDividerView
- (SUUIStandardInteractiveDividerView)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation SUUIStandardInteractiveDividerView

- (SUUIStandardInteractiveDividerView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SUUIStandardInteractiveDividerView;
  v3 = [(SUUIStandardInteractiveDividerView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    tintColor = [(SUUIStandardInteractiveDividerView *)v3 tintColor];
    [(SUUIStandardInteractiveDividerView *)v4 setBackgroundColor:tintColor];
  }

  return v4;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = SUUIStandardInteractiveDividerView;
  [(SUUIStandardInteractiveDividerView *)&v4 tintColorDidChange];
  tintColor = [(SUUIStandardInteractiveDividerView *)self tintColor];
  [(SUUIStandardInteractiveDividerView *)self setBackgroundColor:tintColor];
}

@end