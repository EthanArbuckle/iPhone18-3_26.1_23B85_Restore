@interface GKDashboardPlayerPickerCell
+ (CGSize)defaultSize;
- (NSLayoutConstraint)nameConstraint;
- (NSLayoutConstraint)selectionHorizontalConstraint;
- (NSLayoutConstraint)selectionVerticalConstraint;
- (NSLayoutConstraint)statusHeightConstraint;
- (UIButton)selectionButton;
- (UIImageView)selectionView;
- (UIView)ringView;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)awakeFromNib;
- (void)setPlayer:(id)a3;
- (void)setSelectable:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShowsMessagesHandleInStatusText:(BOOL)a3;
- (void)setShowsPlayerSubtitle:(BOOL)a3;
- (void)setStatusText:(id)a3;
- (void)setStatusWithAchievementEarnedPoints:(int64_t)a3 andDate:(id)a4;
@end

@implementation GKDashboardPlayerPickerCell

+ (CGSize)defaultSize
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___GKDashboardPlayerPickerCell;
  objc_msgSendSuper2(&v4, sel_defaultSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)awakeFromNib
{
  v11.receiver = self;
  v11.super_class = GKDashboardPlayerPickerCell;
  [(GKDashboardPlayerCell *)&v11 awakeFromNib];
  [(GKDashboardPlayerPickerCell *)self setClipsToBounds:0];
  WeakRetained = objc_loadWeakRetained(&self->_nameConstraint);
  [WeakRetained constant];
  self->_nameInitialConstant = v4;

  v5 = objc_loadWeakRetained(&self->_selectionHorizontalConstraint);
  [v5 constant];
  self->_selectionInitialHorizontalConstant = v6;

  v7 = objc_loadWeakRetained(&self->_selectionVerticalConstraint);
  [v7 constant];
  self->_selectionInitialVerticalConstant = v8;

  v9 = objc_loadWeakRetained(&self->_statusHeightConstraint);
  [v9 constant];
  self->_statusInitialConstant = v10;
}

- (void)setPlayer:(id)a3
{
  v5.receiver = self;
  v5.super_class = GKDashboardPlayerPickerCell;
  [(GKDashboardPlayerCell *)&v5 setPlayer:a3];
  [(GKDashboardPlayerPickerCell *)self setStatusText:&stru_28612D290];
  WeakRetained = objc_loadWeakRetained(&self->_statusHeightConstraint);
  [WeakRetained setConstant:0.0];
}

- (void)setStatusWithAchievementEarnedPoints:(int64_t)a3 andDate:(id)a4
{
  v13 = [a4 _gkFormattedWhenStringWithOptions:0];
  v6 = MEMORY[0x277CCACA8];
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  v9 = GKFormattedStringWithGroupingFromInteger();
  v10 = [v6 localizedStringWithFormat:v8, a3, v9, v13];

  [(GKDashboardPlayerPickerCell *)self setStatusText:v10];
  statusInitialConstant = self->_statusInitialConstant;
  WeakRetained = objc_loadWeakRetained(&self->_statusHeightConstraint);
  [WeakRetained setConstant:statusInitialConstant];
}

- (void)setSelectable:(BOOL)a3
{
  v3 = a3;
  self->_selectable = a3;
  v5 = [(GKDashboardPlayerPickerCell *)self selectionButton];
  [v5 setEnabled:v3];

  if (v3)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.3;
  }

  v7 = [(GKDashboardPlayerPickerCell *)self selectionView];
  [v7 setAlpha:v6];

  v8 = [(GKDashboardPlayerPickerCell *)self selectionButton];
  [v8 setAlpha:v6];

  v9 = [(GKDashboardPlayerCell *)self nameLabel];
  [v9 setAlpha:v6];

  v10 = [(GKDashboardPlayerCell *)self statusLabel];
  [v10 setAlpha:v6];
}

- (void)setStatusText:(id)a3
{
  v3.receiver = self;
  v3.super_class = GKDashboardPlayerPickerCell;
  [(GKDashboardPlayerCell *)&v3 setStatusText:a3];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = GKDashboardPlayerPickerCell;
  [(GKDashboardPlayerCell *)&v11 setSelected:?];
  v5 = [MEMORY[0x277D0C8C8] sharedTheme];
  v6 = v5;
  if (v3)
  {
    [v5 playerPickerSelectedImage];
  }

  else
  {
    [v5 playerPickerUnselectedImage];
  }
  v7 = ;
  WeakRetained = objc_loadWeakRetained(&self->_selectionView);
  [WeakRetained setImage:v7];

  v9 = objc_loadWeakRetained(&self->_selectionButton);
  [v9 setSelected:v3];

  v10 = [(GKDashboardPlayerPickerCell *)self contentView];
  [v10 setBackgroundColor:0];
}

- (void)setShowsPlayerSubtitle:(BOOL)a3
{
  v3 = a3;
  self->_showsPlayerSubtitle = a3;
  v5 = [(GKDashboardPlayerCell *)self statusLabel];
  [v5 setHidden:!v3];

  v6 = [(GKDashboardPlayerCell *)self player];
  v7 = [v6 internal];
  v8 = [v7 contact];
  v11 = [v8 _gkCompositeName];

  if (v11)
  {
    [(GKDashboardPlayerPickerCell *)self setStatusText:v11];
  }

  statusInitialConstant = 0.0;
  if (v3)
  {
    statusInitialConstant = self->_statusInitialConstant;
  }

  WeakRetained = objc_loadWeakRetained(&self->_statusHeightConstraint);
  [WeakRetained setConstant:statusInitialConstant];
}

- (void)setShowsMessagesHandleInStatusText:(BOOL)a3
{
  v3 = a3;
  self->_showsMessagesHandleInStatusText = a3;
  v5 = [(GKDashboardPlayerCell *)self statusLabel];
  [v5 setHidden:!v3];

  v6 = [(GKDashboardPlayerCell *)self player];
  v7 = [v6 internal];
  v10 = [v7 messagesID];

  [(GKDashboardPlayerPickerCell *)self setStatusText:v10];
  statusInitialConstant = 0.0;
  if (self->_showsMessagesHandleInStatusText)
  {
    statusInitialConstant = self->_statusInitialConstant;
  }

  WeakRetained = objc_loadWeakRetained(&self->_statusHeightConstraint);
  [WeakRetained setConstant:statusInitialConstant];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v8 = [(GKDashboardPlayerPickerCell *)self selectionButton];
  v3 = [v8 isSelected];
  v4 = [MEMORY[0x277D0C8C8] sharedTheme];
  v5 = v4;
  if (v3)
  {
    [v4 playerPickerSelectedImage];
  }

  else
  {
    [v4 playerPickerUnselectedImage];
  }
  v6 = ;
  v7 = [(GKDashboardPlayerPickerCell *)self selectionView];
  [v7 setImage:v6];
}

- (UIImageView)selectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionView);

  return WeakRetained;
}

- (UIView)ringView
{
  WeakRetained = objc_loadWeakRetained(&self->_ringView);

  return WeakRetained;
}

- (UIButton)selectionButton
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionButton);

  return WeakRetained;
}

- (NSLayoutConstraint)nameConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_nameConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)selectionHorizontalConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionHorizontalConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)selectionVerticalConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionVerticalConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)statusHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_statusHeightConstraint);

  return WeakRetained;
}

@end