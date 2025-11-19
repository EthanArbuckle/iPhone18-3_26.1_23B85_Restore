@interface HUControlPanelCell
- (NSSet)allControlViews;
- (void)updateConstraints;
@end

@implementation HUControlPanelCell

- (NSSet)allControlViews
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUControlPanelCell.m" lineNumber:26 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUControlPanelCell allControlViews]", objc_opt_class()}];

  v5 = MEMORY[0x277CBEB98];

  return [v5 set];
}

- (void)updateConstraints
{
  v3 = [(HUControlPanelCell *)self minHeightConstraint];

  if (!v3)
  {
    v4 = [MEMORY[0x277D756E0] cellConfiguration];
    v5 = [(HUControlPanelCell *)self traitCollection];
    [v4 _minimumHeightForTraitCollection:v5];
    v7 = v6;

    v8 = [(HUControlPanelCell *)self contentView];
    v9 = [v8 heightAnchor];
    v10 = [v9 constraintGreaterThanOrEqualToConstant:v7];
    [(HUControlPanelCell *)self setMinHeightConstraint:v10];

    v11 = [(HUControlPanelCell *)self minHeightConstraint];
    LODWORD(v12) = 1148829696;
    [v11 setPriority:v12];

    v13 = [(HUControlPanelCell *)self minHeightConstraint];
    [v13 setActive:1];
  }

  v14.receiver = self;
  v14.super_class = HUControlPanelCell;
  [(HUControlPanelCell *)&v14 updateConstraints];
}

@end