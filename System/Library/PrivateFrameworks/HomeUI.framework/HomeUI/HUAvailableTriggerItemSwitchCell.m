@interface HUAvailableTriggerItemSwitchCell
- (void)setSwitchHidden:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation HUAvailableTriggerItemSwitchCell

- (void)setSwitchHidden:(BOOL)a3
{
  if (self->_switchHidden != a3)
  {
    self->_switchHidden = a3;
    [(HUAvailableTriggerItemSwitchCell *)self frame];
    Width = CGRectGetWidth(v15);
    v7 = [(HUIconCell *)self containerView];
    [v7 frame];
    MaxX = CGRectGetMaxX(v16);

    if (a3)
    {
      v9 = vabdd_f64(Width, MaxX);
      [(HUAvailableTriggerItemSwitchCell *)self setAccessoryView:0];
      [(HUAvailableTriggerItemSwitchCell *)self setAccessoryType:1];
      [(HUAvailableTriggerItemSwitchCell *)self setNeedsLayout];
      [(HUAvailableTriggerItemSwitchCell *)self layoutIfNeeded];
      [(HUAvailableTriggerItemSwitchCell *)self frame];
      v10 = CGRectGetWidth(v17);
      v11 = [(HUIconCell *)self containerView];
      [v11 frame];
      v12 = vabdd_f64(v10, CGRectGetMaxX(v18));

      v13 = vabdd_f64(v9, v12);
    }

    else
    {
      v14 = [(HUIconSwitchCell *)self switchView];
      [(HUAvailableTriggerItemSwitchCell *)self setAccessoryView:v14];

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
  v5 = [(HUTitleDescriptionCell *)self titleTrailingConstraint];
  [v5 setConstant:v4];

  [(HUAvailableTriggerItemSwitchCell *)self reservedSwitchWidth];
  v7 = -v6;
  v8 = [(HUTitleDescriptionCell *)self descriptionTrailingConstraint];
  [v8 setConstant:v7];
}

@end