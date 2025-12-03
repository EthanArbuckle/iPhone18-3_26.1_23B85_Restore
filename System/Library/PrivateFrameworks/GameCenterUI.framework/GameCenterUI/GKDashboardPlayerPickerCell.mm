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
- (void)setPlayer:(id)player;
- (void)setSelectable:(BOOL)selectable;
- (void)setSelected:(BOOL)selected;
- (void)setShowsMessagesHandleInStatusText:(BOOL)text;
- (void)setShowsPlayerSubtitle:(BOOL)subtitle;
- (void)setStatusText:(id)text;
- (void)setStatusWithAchievementEarnedPoints:(int64_t)points andDate:(id)date;
@end

@implementation GKDashboardPlayerPickerCell

+ (CGSize)defaultSize
{
  v4.receiver = self;
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

- (void)setPlayer:(id)player
{
  v5.receiver = self;
  v5.super_class = GKDashboardPlayerPickerCell;
  [(GKDashboardPlayerCell *)&v5 setPlayer:player];
  [(GKDashboardPlayerPickerCell *)self setStatusText:&stru_28612D290];
  WeakRetained = objc_loadWeakRetained(&self->_statusHeightConstraint);
  [WeakRetained setConstant:0.0];
}

- (void)setStatusWithAchievementEarnedPoints:(int64_t)points andDate:(id)date
{
  v13 = [date _gkFormattedWhenStringWithOptions:0];
  v6 = MEMORY[0x277CCACA8];
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  v9 = GKFormattedStringWithGroupingFromInteger();
  v10 = [v6 localizedStringWithFormat:v8, points, v9, v13];

  [(GKDashboardPlayerPickerCell *)self setStatusText:v10];
  statusInitialConstant = self->_statusInitialConstant;
  WeakRetained = objc_loadWeakRetained(&self->_statusHeightConstraint);
  [WeakRetained setConstant:statusInitialConstant];
}

- (void)setSelectable:(BOOL)selectable
{
  selectableCopy = selectable;
  self->_selectable = selectable;
  selectionButton = [(GKDashboardPlayerPickerCell *)self selectionButton];
  [selectionButton setEnabled:selectableCopy];

  if (selectableCopy)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.3;
  }

  selectionView = [(GKDashboardPlayerPickerCell *)self selectionView];
  [selectionView setAlpha:v6];

  selectionButton2 = [(GKDashboardPlayerPickerCell *)self selectionButton];
  [selectionButton2 setAlpha:v6];

  nameLabel = [(GKDashboardPlayerCell *)self nameLabel];
  [nameLabel setAlpha:v6];

  statusLabel = [(GKDashboardPlayerCell *)self statusLabel];
  [statusLabel setAlpha:v6];
}

- (void)setStatusText:(id)text
{
  v3.receiver = self;
  v3.super_class = GKDashboardPlayerPickerCell;
  [(GKDashboardPlayerCell *)&v3 setStatusText:text];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v11.receiver = self;
  v11.super_class = GKDashboardPlayerPickerCell;
  [(GKDashboardPlayerCell *)&v11 setSelected:?];
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  v6 = mEMORY[0x277D0C8C8];
  if (selectedCopy)
  {
    [mEMORY[0x277D0C8C8] playerPickerSelectedImage];
  }

  else
  {
    [mEMORY[0x277D0C8C8] playerPickerUnselectedImage];
  }
  v7 = ;
  WeakRetained = objc_loadWeakRetained(&self->_selectionView);
  [WeakRetained setImage:v7];

  v9 = objc_loadWeakRetained(&self->_selectionButton);
  [v9 setSelected:selectedCopy];

  contentView = [(GKDashboardPlayerPickerCell *)self contentView];
  [contentView setBackgroundColor:0];
}

- (void)setShowsPlayerSubtitle:(BOOL)subtitle
{
  subtitleCopy = subtitle;
  self->_showsPlayerSubtitle = subtitle;
  statusLabel = [(GKDashboardPlayerCell *)self statusLabel];
  [statusLabel setHidden:!subtitleCopy];

  player = [(GKDashboardPlayerCell *)self player];
  internal = [player internal];
  contact = [internal contact];
  _gkCompositeName = [contact _gkCompositeName];

  if (_gkCompositeName)
  {
    [(GKDashboardPlayerPickerCell *)self setStatusText:_gkCompositeName];
  }

  statusInitialConstant = 0.0;
  if (subtitleCopy)
  {
    statusInitialConstant = self->_statusInitialConstant;
  }

  WeakRetained = objc_loadWeakRetained(&self->_statusHeightConstraint);
  [WeakRetained setConstant:statusInitialConstant];
}

- (void)setShowsMessagesHandleInStatusText:(BOOL)text
{
  textCopy = text;
  self->_showsMessagesHandleInStatusText = text;
  statusLabel = [(GKDashboardPlayerCell *)self statusLabel];
  [statusLabel setHidden:!textCopy];

  player = [(GKDashboardPlayerCell *)self player];
  internal = [player internal];
  messagesID = [internal messagesID];

  [(GKDashboardPlayerPickerCell *)self setStatusText:messagesID];
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
  selectionButton = [(GKDashboardPlayerPickerCell *)self selectionButton];
  isSelected = [selectionButton isSelected];
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  v5 = mEMORY[0x277D0C8C8];
  if (isSelected)
  {
    [mEMORY[0x277D0C8C8] playerPickerSelectedImage];
  }

  else
  {
    [mEMORY[0x277D0C8C8] playerPickerUnselectedImage];
  }
  v6 = ;
  selectionView = [(GKDashboardPlayerPickerCell *)self selectionView];
  [selectionView setImage:v6];
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