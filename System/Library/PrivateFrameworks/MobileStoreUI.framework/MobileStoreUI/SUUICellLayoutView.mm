@interface SUUICellLayoutView
- (void)setBackgroundColor:(id)a3;
@end

@implementation SUUICellLayoutView

- (void)setBackgroundColor:(id)a3
{
  layout = self->_layout;
  v5 = a3;
  [(SUUICellLayout *)layout setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUICellLayoutView;
  [(SUUICellLayoutView *)&v6 setBackgroundColor:v5];
}

@end