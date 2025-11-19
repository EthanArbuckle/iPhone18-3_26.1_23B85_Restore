@interface UIStackView(ClipServicesUIExtras)
- (void)cps_addArrangedSpacerWithHeight:()ClipServicesUIExtras;
@end

@implementation UIStackView(ClipServicesUIExtras)

- (void)cps_addArrangedSpacerWithHeight:()ClipServicesUIExtras
{
  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v6 heightAnchor];
  v5 = [v4 constraintEqualToConstant:a2];
  [v5 setActive:1];

  [a1 addArrangedSubview:v6];
}

@end