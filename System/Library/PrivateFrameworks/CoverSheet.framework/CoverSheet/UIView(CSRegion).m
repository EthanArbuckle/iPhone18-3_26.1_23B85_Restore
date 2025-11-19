@interface UIView(CSRegion)
- (uint64_t)coverSheetRegionIsReservedForHorizontalScrolling;
- (uint64_t)coverSheetRegionRole;
- (void)setCoverSheetRegionReservedForHorizontalScrolling:()CSRegion;
- (void)setCoverSheetRegionRole:()CSRegion;
@end

@implementation UIView(CSRegion)

- (uint64_t)coverSheetRegionRole
{
  v1 = objc_getAssociatedObject(a1, "coverSheetRegionRole");
  v2 = [v1 integerValue];

  return v2;
}

- (uint64_t)coverSheetRegionIsReservedForHorizontalScrolling
{
  v1 = objc_getAssociatedObject(a1, "coverSheetRegionReservedForHorizontalScrolling");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setCoverSheetRegionRole:()CSRegion
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  objc_setAssociatedObject(a1, "coverSheetRegionRole", v2, 1);
}

- (void)setCoverSheetRegionReservedForHorizontalScrolling:()CSRegion
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, "coverSheetRegionReservedForHorizontalScrolling", v2, 1);
}

@end