@interface HUQuickControlGridServiceSection
- (HUQuickControlGridServiceSection)init;
@end

@implementation HUQuickControlGridServiceSection

- (HUQuickControlGridServiceSection)init
{
  v8.receiver = self;
  v8.super_class = HUQuickControlGridServiceSection;
  v2 = [(HUQuickControlGridServiceSection *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    gridControlItems = v2->_gridControlItems;
    v2->_gridControlItems = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    supplementaryControlItems = v2->_supplementaryControlItems;
    v2->_supplementaryControlItems = v5;
  }

  return v2;
}

@end