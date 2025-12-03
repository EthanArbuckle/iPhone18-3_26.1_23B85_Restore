@interface UIView(MUHairlineView)
- (MUHairlineView)_addHairlineAtBottom:()MUHairlineView leadingMargin:trailingMargin:;
@end

@implementation UIView(MUHairlineView)

- (MUHairlineView)_addHairlineAtBottom:()MUHairlineView leadingMargin:trailingMargin:
{
  v9 = objc_alloc_init(MUHairlineView);
  [(MUHairlineView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [self addSubview:v9];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  leadingAnchor = [(MUHairlineView *)v9 leadingAnchor];
  leadingAnchor2 = [self leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:a2];
  [(MUHairlineView *)v9 setLeadingMarginConstraint:v13];

  leadingMarginConstraint = [(MUHairlineView *)v9 leadingMarginConstraint];
  [v10 addObject:leadingMarginConstraint];

  trailingAnchor = [self trailingAnchor];
  trailingAnchor2 = [(MUHairlineView *)v9 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:a3];
  [(MUHairlineView *)v9 setTrailingMarginConstraint:v17];

  trailingMarginConstraint = [(MUHairlineView *)v9 trailingMarginConstraint];
  [v10 addObject:trailingMarginConstraint];

  if (a5)
  {
    bottomAnchor = [(MUHairlineView *)v9 bottomAnchor];
    [self bottomAnchor];
  }

  else
  {
    bottomAnchor = [(MUHairlineView *)v9 topAnchor];
    [self topAnchor];
  }
  v20 = ;
  v21 = [bottomAnchor constraintEqualToAnchor:v20];
  [v10 addObject:v21];

  [MEMORY[0x1E696ACD8] activateConstraints:v10];

  return v9;
}

@end