@interface HKSeparatorLineView(HRAgeGateAddition)
+ (id)_hragegate_separatorView;
@end

@implementation HKSeparatorLineView(HRAgeGateAddition)

+ (id)_hragegate_separatorView
{
  v0 = objc_alloc_init(MEMORY[0x277D12A48]);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  separatorColor = [MEMORY[0x277D75348] separatorColor];
  [v0 setColor:separatorColor];

  HKUIFloorToScreenScale();
  [v0 setSeparatorThickness:?];
  [v0 setDashStyle:0];

  return v0;
}

@end