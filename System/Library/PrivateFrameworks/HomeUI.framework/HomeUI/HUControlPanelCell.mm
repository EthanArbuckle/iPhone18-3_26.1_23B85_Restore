@interface HUControlPanelCell
- (NSSet)allControlViews;
- (void)updateConstraints;
@end

@implementation HUControlPanelCell

- (NSSet)allControlViews
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUControlPanelCell.m" lineNumber:26 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUControlPanelCell allControlViews]", objc_opt_class()}];

  v5 = MEMORY[0x277CBEB98];

  return [v5 set];
}

- (void)updateConstraints
{
  minHeightConstraint = [(HUControlPanelCell *)self minHeightConstraint];

  if (!minHeightConstraint)
  {
    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    traitCollection = [(HUControlPanelCell *)self traitCollection];
    [cellConfiguration _minimumHeightForTraitCollection:traitCollection];
    v7 = v6;

    contentView = [(HUControlPanelCell *)self contentView];
    heightAnchor = [contentView heightAnchor];
    v10 = [heightAnchor constraintGreaterThanOrEqualToConstant:v7];
    [(HUControlPanelCell *)self setMinHeightConstraint:v10];

    minHeightConstraint2 = [(HUControlPanelCell *)self minHeightConstraint];
    LODWORD(v12) = 1148829696;
    [minHeightConstraint2 setPriority:v12];

    minHeightConstraint3 = [(HUControlPanelCell *)self minHeightConstraint];
    [minHeightConstraint3 setActive:1];
  }

  v14.receiver = self;
  v14.super_class = HUControlPanelCell;
  [(HUControlPanelCell *)&v14 updateConstraints];
}

@end