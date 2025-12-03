@interface SUUICellLayoutView
- (void)setBackgroundColor:(id)color;
@end

@implementation SUUICellLayoutView

- (void)setBackgroundColor:(id)color
{
  layout = self->_layout;
  colorCopy = color;
  [(SUUICellLayout *)layout setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUICellLayoutView;
  [(SUUICellLayoutView *)&v6 setBackgroundColor:colorCopy];
}

@end