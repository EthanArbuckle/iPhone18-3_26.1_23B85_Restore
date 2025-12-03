@interface HUAvailableTriggerItemSwitchCell
- (void)setSwitchHidden:(BOOL)hidden;
- (void)updateConstraints;
@end

@implementation HUAvailableTriggerItemSwitchCell

- (void)setSwitchHidden:(BOOL)hidden
{
  if (self->_switchHidden != hidden)
  {
    self->_switchHidden = hidden;
    [(HUAvailableTriggerItemSwitchCell *)self frame];
    Width = CGRectGetWidth(v15);
    containerView = [(HUIconCell *)self containerView];
    [containerView frame];
    MaxX = CGRectGetMaxX(v16);

    if (hidden)
    {
      v9 = vabdd_f64(Width, MaxX);
      [(HUAvailableTriggerItemSwitchCell *)self setAccessoryView:0];
      [(HUAvailableTriggerItemSwitchCell *)self setAccessoryType:1];
      [(HUAvailableTriggerItemSwitchCell *)self setNeedsLayout];
      [(HUAvailableTriggerItemSwitchCell *)self layoutIfNeeded];
      [(HUAvailableTriggerItemSwitchCell *)self frame];
      v10 = CGRectGetWidth(v17);
      containerView2 = [(HUIconCell *)self containerView];
      [containerView2 frame];
      v12 = vabdd_f64(v10, CGRectGetMaxX(v18));

      v13 = vabdd_f64(v9, v12);
    }

    else
    {
      switchView = [(HUIconSwitchCell *)self switchView];
      [(HUAvailableTriggerItemSwitchCell *)self setAccessoryView:switchView];

      [(HUAvailableTriggerItemSwitchCell *)self setAccessoryType:0];
      v13 = 0.0;
    }

    [(HUAvailableTriggerItemSwitchCell *)self setReservedSwitchWidth:v13];

    [(HUAvailableTriggerItemSwitchCell *)self setNeedsUpdateConstraints];
  }
}

- (void)updateConstraints
{
  v9.receiver = self;
  v9.super_class = HUAvailableTriggerItemSwitchCell;
  [(HUTitleDescriptionCell *)&v9 updateConstraints];
  [(HUAvailableTriggerItemSwitchCell *)self reservedSwitchWidth];
  v4 = -v3;
  titleTrailingConstraint = [(HUTitleDescriptionCell *)self titleTrailingConstraint];
  [titleTrailingConstraint setConstant:v4];

  [(HUAvailableTriggerItemSwitchCell *)self reservedSwitchWidth];
  v7 = -v6;
  descriptionTrailingConstraint = [(HUTitleDescriptionCell *)self descriptionTrailingConstraint];
  [descriptionTrailingConstraint setConstant:v7];
}

@end