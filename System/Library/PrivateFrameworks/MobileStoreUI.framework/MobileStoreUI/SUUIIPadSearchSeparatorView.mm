@interface SUUIIPadSearchSeparatorView
- (SUUIIPadSearchSeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation SUUIIPadSearchSeparatorView

- (SUUIIPadSearchSeparatorView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUUIIPadSearchSeparatorView;
  v3 = [(SUUIIPadSearchSeparatorView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
    [(SUUIIPadSearchSeparatorView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

@end