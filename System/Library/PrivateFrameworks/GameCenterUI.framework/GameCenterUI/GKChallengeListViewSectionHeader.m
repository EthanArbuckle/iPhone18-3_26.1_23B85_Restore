@interface GKChallengeListViewSectionHeader
- (NSLayoutConstraint)leadingConstraint;
- (NSLayoutConstraint)trailingConstraint;
- (void)awakeFromNib;
- (void)secondaryLabelTapped:(id)a3;
@end

@implementation GKChallengeListViewSectionHeader

- (void)awakeFromNib
{
  v5.receiver = self;
  v5.super_class = GKChallengeListViewSectionHeader;
  [(GKChallengeListViewSectionHeader *)&v5 awakeFromNib];
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_secondaryLabelTapped_];
  [(GKChallengeListViewSectionHeader *)self setSecondaryLabelTapGesture:v3];
  v4 = [(GKChallengeListViewSectionHeader *)self secondaryLabel];
  [v4 addGestureRecognizer:v3];
}

- (void)secondaryLabelTapped:(id)a3
{
  v3 = [(GKChallengeListViewSectionHeader *)self secondaryLabelTapHandler];
  v3[2]();
}

- (NSLayoutConstraint)trailingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_trailingConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)leadingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_leadingConstraint);

  return WeakRetained;
}

@end