@interface GKDashboardSingleButtonReusableFooterView
- (void)awakeFromNib;
- (void)buttonTapped:(id)tapped;
- (void)setButtonTitle:(id)title forState:(unint64_t)state;
@end

@implementation GKDashboardSingleButtonReusableFooterView

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = GKDashboardSingleButtonReusableFooterView;
  [(GKDashboardSingleButtonReusableFooterView *)&v4 awakeFromNib];
  button = [(GKDashboardSingleButtonReusableFooterView *)self button];
  [button addTarget:self action:sel_buttonTapped_ forControlEvents:64];
}

- (void)setButtonTitle:(id)title forState:(unint64_t)state
{
  titleCopy = title;
  button = [(GKDashboardSingleButtonReusableFooterView *)self button];
  [button setTitle:titleCopy forState:state];
}

- (void)buttonTapped:(id)tapped
{
  buttonTapHandler = [(GKDashboardSingleButtonReusableFooterView *)self buttonTapHandler];

  if (buttonTapHandler)
  {
    buttonTapHandler2 = [(GKDashboardSingleButtonReusableFooterView *)self buttonTapHandler];
    buttonTapHandler2[2]();
  }
}

@end