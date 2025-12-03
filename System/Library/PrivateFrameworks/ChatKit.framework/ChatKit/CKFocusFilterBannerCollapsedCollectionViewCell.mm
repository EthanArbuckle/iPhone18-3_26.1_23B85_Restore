@interface CKFocusFilterBannerCollapsedCollectionViewCell
- (CKFocusFilterBannerCollapsedCollectionViewCell)initWithFrame:(CGRect)frame;
- (CKFocusFilterBannerDelegate)focusFilterBannerDelegate;
- (void)_focusFilterToggleButtonSelected:(id)selected;
- (void)_updateFocusFilterToggleButton;
- (void)setIsFocusFilterEnabled:(BOOL)enabled;
@end

@implementation CKFocusFilterBannerCollapsedCollectionViewCell

- (CKFocusFilterBannerCollapsedCollectionViewCell)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = CKFocusFilterBannerCollapsedCollectionViewCell;
  v3 = [(CKFocusFilterBannerCollapsedCollectionViewCell *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(CKFocusFilterBannerCollapsedCollectionViewCell *)v3 contentView];
    [(CKFocusFilterBannerCollapsedCollectionViewCell *)v4 setPreservesSuperviewLayoutMargins:1];
    [contentView setPreservesSuperviewLayoutMargins:1];
    v6 = [MEMORY[0x1E69DC738] buttonWithType:0];
    focusFilterToggleButton = v4->_focusFilterToggleButton;
    v4->_focusFilterToggleButton = v6;

    v8 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v4];
    [(UIButton *)v4->_focusFilterToggleButton addInteraction:v8];
    [(UIButton *)v4->_focusFilterToggleButton addTarget:v4 action:sel__focusFilterToggleButtonSelected_ forControlEvents:0x2000];
    [(UIButton *)v4->_focusFilterToggleButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v4->_focusFilterToggleButton];
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 conversationListFocusFilterBannerTopPadding];
    v11 = v10;

    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 conversationListFocusFilterBannerBottomPadding];
    v14 = v13;

    topAnchor = [(UIButton *)v4->_focusFilterToggleButton topAnchor];
    topAnchor2 = [contentView topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v11];
    [v17 setActive:1];

    bottomAnchor = [contentView bottomAnchor];
    bottomAnchor2 = [(UIButton *)v4->_focusFilterToggleButton bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v14];
    [v20 setActive:1];

    centerXAnchor = [(UIButton *)v4->_focusFilterToggleButton centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v23 setActive:1];

    LODWORD(v24) = 1148846080;
    [(UIButton *)v4->_focusFilterToggleButton setContentCompressionResistancePriority:0 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [(UIButton *)v4->_focusFilterToggleButton setContentHuggingPriority:0 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [(UIButton *)v4->_focusFilterToggleButton setContentCompressionResistancePriority:1 forAxis:v26];
    LODWORD(v27) = 1148846080;
    [(UIButton *)v4->_focusFilterToggleButton setContentHuggingPriority:1 forAxis:v27];
    [(CKFocusFilterBannerCollapsedCollectionViewCell *)v4 _updateFocusFilterToggleButton];
  }

  return v4;
}

- (void)setIsFocusFilterEnabled:(BOOL)enabled
{
  if (self->_isFocusFilterEnabled != enabled)
  {
    self->_isFocusFilterEnabled = enabled;
    [(CKFocusFilterBannerCollapsedCollectionViewCell *)self _updateFocusFilterToggleButton];
  }
}

- (void)_updateFocusFilterToggleButton
{
  isFocusFilterEnabled = self->_isFocusFilterEnabled;
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = v4;
  if (isFocusFilterEnabled)
  {
    [v4 conversationListFocusFilterBannerCollapsedEnabledIcon];
  }

  else
  {
    [v4 conversationListFocusFilterBannerCollapsedDisabledIcon];
  }
  v6 = ;

  [(UIButton *)self->_focusFilterToggleButton setImage:v6 forState:0];
}

- (void)_focusFilterToggleButtonSelected:(id)selected
{
  isFocusFilterEnabled = self->_isFocusFilterEnabled;
  focusFilterBannerDelegate = [(CKFocusFilterBannerCollapsedCollectionViewCell *)self focusFilterBannerDelegate];
  [focusFilterBannerDelegate focusFilterBannerEnabledStateDidChange:!isFocusFilterEnabled];
}

- (CKFocusFilterBannerDelegate)focusFilterBannerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_focusFilterBannerDelegate);

  return WeakRetained;
}

@end