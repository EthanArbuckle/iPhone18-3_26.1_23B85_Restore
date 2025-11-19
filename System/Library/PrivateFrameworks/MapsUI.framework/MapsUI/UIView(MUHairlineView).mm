@interface UIView(MUHairlineView)
- (MUHairlineView)_addHairlineAtBottom:()MUHairlineView leadingMargin:trailingMargin:;
@end

@implementation UIView(MUHairlineView)

- (MUHairlineView)_addHairlineAtBottom:()MUHairlineView leadingMargin:trailingMargin:
{
  v9 = objc_alloc_init(MUHairlineView);
  [(MUHairlineView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [a1 addSubview:v9];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v11 = [(MUHairlineView *)v9 leadingAnchor];
  v12 = [a1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:a2];
  [(MUHairlineView *)v9 setLeadingMarginConstraint:v13];

  v14 = [(MUHairlineView *)v9 leadingMarginConstraint];
  [v10 addObject:v14];

  v15 = [a1 trailingAnchor];
  v16 = [(MUHairlineView *)v9 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:a3];
  [(MUHairlineView *)v9 setTrailingMarginConstraint:v17];

  v18 = [(MUHairlineView *)v9 trailingMarginConstraint];
  [v10 addObject:v18];

  if (a5)
  {
    v19 = [(MUHairlineView *)v9 bottomAnchor];
    [a1 bottomAnchor];
  }

  else
  {
    v19 = [(MUHairlineView *)v9 topAnchor];
    [a1 topAnchor];
  }
  v20 = ;
  v21 = [v19 constraintEqualToAnchor:v20];
  [v10 addObject:v21];

  [MEMORY[0x1E696ACD8] activateConstraints:v10];

  return v9;
}

@end