@interface UIView(CSRegion)
- (uint64_t)coverSheetRegionIsReservedForHorizontalScrolling;
- (uint64_t)coverSheetRegionRole;
- (void)setCoverSheetRegionReservedForHorizontalScrolling:()CSRegion;
- (void)setCoverSheetRegionRole:()CSRegion;
@end

@implementation UIView(CSRegion)

- (uint64_t)coverSheetRegionRole
{
  v1 = objc_getAssociatedObject(self, "coverSheetRegionRole");
  integerValue = [v1 integerValue];

  return integerValue;
}

- (uint64_t)coverSheetRegionIsReservedForHorizontalScrolling
{
  v1 = objc_getAssociatedObject(self, "coverSheetRegionReservedForHorizontalScrolling");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setCoverSheetRegionRole:()CSRegion
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  objc_setAssociatedObject(self, "coverSheetRegionRole", v2, 1);
}

- (void)setCoverSheetRegionReservedForHorizontalScrolling:()CSRegion
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, "coverSheetRegionReservedForHorizontalScrolling", v2, 1);
}

@end