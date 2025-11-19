@interface GKDashboardButtonSectionHeaderView
+ (CGSize)platformSizeForTitle:(id)a3;
+ (CGSize)platformSizeForTitle:(id)a3 buttonTitle:(id)a4;
+ (double)defaultHeight;
+ (double)widthForTitle:(id)a3 buttonTitle:(id)a4;
- (CGSize)intrinsicContentSize;
- (UIMenu)buttonMenu;
- (void)awakeFromNib;
- (void)buttonPressed:(id)a3;
- (void)prepareForReuse;
- (void)setAttributedButtonTitle:(id)a3;
- (void)setButtonHidden:(BOOL)a3;
- (void)setButtonMenu:(id)a3;
- (void)setButtonTitle:(id)a3;
@end

@implementation GKDashboardButtonSectionHeaderView

+ (double)defaultHeight
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___GKDashboardButtonSectionHeaderView;
  objc_msgSendSuper2(&v8, sel_defaultHeight);
  v3 = v2;
  v4 = [MEMORY[0x277D75C80] currentTraitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v5))
  {
    if ([v5 isEqualToString:*MEMORY[0x277D767E8]])
    {
      v6 = 3.1;
LABEL_10:
      v3 = v3 * v6;
      goto LABEL_11;
    }

    if ([v5 isEqualToString:*MEMORY[0x277D767F0]])
    {
      v6 = 2.75;
      goto LABEL_10;
    }

    if ([v5 isEqualToString:*MEMORY[0x277D767F8]])
    {
      v6 = 2.35;
      goto LABEL_10;
    }

    if ([v5 isEqualToString:*MEMORY[0x277D76800]])
    {
      v6 = 1.9;
      goto LABEL_10;
    }

    if ([v5 isEqualToString:*MEMORY[0x277D76808]])
    {
      v3 = v3 * 1.6;
    }
  }

LABEL_11:

  return v3;
}

+ (CGSize)platformSizeForTitle:(id)a3
{
  [a1 platformSizeForTitle:a3 buttonTitle:0];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (double)widthForTitle:(id)a3 buttonTitle:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__GKDashboardButtonSectionHeaderView_widthForTitle_buttonTitle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v5 = widthForTitle_buttonTitle__onceToken;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    dispatch_once(&widthForTitle_buttonTitle__onceToken, block);
  }

  [widthForTitle_buttonTitle__sSectionHeaderView setTitle:v7];

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_28612D290;
  }

  [widthForTitle_buttonTitle__sSectionHeaderView setButtonTitle:v8];

  [widthForTitle_buttonTitle__sSectionHeaderView intrinsicContentSize];
  return result;
}

uint64_t __64__GKDashboardButtonSectionHeaderView_widthForTitle_buttonTitle___block_invoke(uint64_t a1)
{
  widthForTitle_buttonTitle__sSectionHeaderView = [*(a1 + 32) _gkViewFromNib];

  return MEMORY[0x2821F96F8]();
}

+ (CGSize)platformSizeForTitle:(id)a3 buttonTitle:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  [a1 defaultHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)awakeFromNib
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = GKDashboardButtonSectionHeaderView;
  [(GKDashboardSectionHeaderView *)&v10 awakeFromNib];
  [(UIButton *)self->_button addTarget:self action:sel_buttonPressed_ forControlEvents:0x2000];
  v3 = objc_alloc_init(MEMORY[0x277D75500]);
  [(GKDashboardButtonSectionHeaderView *)self setFocusGuide:v3];

  v4 = [(GKDashboardButtonSectionHeaderView *)self focusGuide];
  [(GKDashboardButtonSectionHeaderView *)self addLayoutGuide:v4];

  v5 = [(GKDashboardButtonSectionHeaderView *)self button];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [(GKDashboardButtonSectionHeaderView *)self focusGuide];
  [v7 setPreferredFocusEnvironments:v6];

  v8 = MEMORY[0x277CCAAD0];
  v9 = [(GKDashboardButtonSectionHeaderView *)self focusGuide];
  [v8 _gkInstallEdgeConstraintsForLayoutGuide:v9 containedWithinParentView:self];
}

- (void)setButtonHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(GKDashboardButtonSectionHeaderView *)self button];
  [v4 setHidden:v3];
}

- (void)setButtonTitle:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__GKDashboardButtonSectionHeaderView_setButtonTitle___block_invoke;
  v7[3] = &unk_279669E48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWithoutAnimation:v7];
}

void __53__GKDashboardButtonSectionHeaderView_setButtonTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) button];
  [v2 setTitle:*(a1 + 40) forState:0];

  v3 = [*(a1 + 32) button];
  [v3 layoutIfNeeded];
}

- (void)setAttributedButtonTitle:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75D18];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __63__GKDashboardButtonSectionHeaderView_setAttributedButtonTitle___block_invoke;
  v11 = &unk_279669E48;
  v12 = self;
  v13 = v4;
  v6 = v4;
  [v5 performWithoutAnimation:&v8];
  v7 = [(GKDashboardButtonSectionHeaderView *)self button:v8];
  [v7 setAccessibilityIdentifier:@"GKDashBoardButtonSectionHeaderView.ButtonTitle"];
}

void __63__GKDashboardButtonSectionHeaderView_setAttributedButtonTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) button];
  [v2 setAttributedTitle:*(a1 + 40) forState:0];

  v3 = [*(a1 + 32) button];
  [v3 layoutIfNeeded];
}

- (void)setButtonMenu:(id)a3
{
  v4 = a3;
  v5 = [(GKDashboardButtonSectionHeaderView *)self button];
  [v5 setMenu:v4];

  v6 = [(GKDashboardButtonSectionHeaderView *)self button];
  [v6 setContextMenuIsPrimary:v4 != 0];
}

- (UIMenu)buttonMenu
{
  v2 = [(GKDashboardButtonSectionHeaderView *)self button];
  v3 = [v2 menu];

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v18.receiver = self;
  v18.super_class = GKDashboardButtonSectionHeaderView;
  [(GKDashboardSectionHeaderView *)&v18 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(UIButton *)self->_button intrinsicContentSize];
  v8 = v7;
  v10 = v9;
  v11 = [(GKDashboardButtonSectionHeaderView *)self stackView];
  [v11 spacing];
  v13 = v8 + v12;
  [(NSLayoutConstraint *)self->_rightMarginConstraint constant];
  v15 = v4 + v13 + v14;

  if (v6 >= v10)
  {
    v16 = v6;
  }

  else
  {
    v16 = v10;
  }

  v17 = v15;
  result.height = v16;
  result.width = v17;
  return result;
}

- (void)buttonPressed:(id)a3
{
  v4 = a3;
  buttonTarget = self->_buttonTarget;
  if (buttonTarget)
  {
    buttonAction = self->_buttonAction;
    if (buttonAction)
    {
      [buttonTarget performSelector:buttonAction withObject:v4];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = GKDashboardButtonSectionHeaderView;
  [(GKDashboardButtonSectionHeaderView *)&v3 prepareForReuse];
  [(GKDashboardButtonSectionHeaderView *)self setButtonTarget:0];
  [(GKDashboardButtonSectionHeaderView *)self setButtonAction:0];
  [(GKDashboardButtonSectionHeaderView *)self setButtonMenu:0];
}

@end