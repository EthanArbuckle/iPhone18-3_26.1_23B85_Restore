@interface GKDashboardSingleButtonReusableFooterView
- (void)awakeFromNib;
- (void)buttonTapped:(id)a3;
- (void)setButtonTitle:(id)a3 forState:(unint64_t)a4;
@end

@implementation GKDashboardSingleButtonReusableFooterView

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = GKDashboardSingleButtonReusableFooterView;
  [(GKDashboardSingleButtonReusableFooterView *)&v4 awakeFromNib];
  v3 = [(GKDashboardSingleButtonReusableFooterView *)self button];
  [v3 addTarget:self action:sel_buttonTapped_ forControlEvents:64];
}

- (void)setButtonTitle:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(GKDashboardSingleButtonReusableFooterView *)self button];
  [v7 setTitle:v6 forState:a4];
}

- (void)buttonTapped:(id)a3
{
  v4 = [(GKDashboardSingleButtonReusableFooterView *)self buttonTapHandler];

  if (v4)
  {
    v5 = [(GKDashboardSingleButtonReusableFooterView *)self buttonTapHandler];
    v5[2]();
  }
}

@end