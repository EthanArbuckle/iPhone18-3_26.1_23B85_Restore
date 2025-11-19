@interface UIFocusMap
@end

@implementation UIFocusMap

void __54___UIFocusMap__inferredDefaultFocusItemInEnvironment___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = a2;
  [v5 addObject:v6];
  v7 = a1[5];

  if (v7 == v6)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }
}

uint64_t __103___UIFocusMap__nextFocusedItemForLinearFocusMovementRequest_startingFromRegion_inRegions_withSnapshot___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 searchInfo];
  IsFocusableInFocusSystemWithSearchInfo = _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(v4, v2, v5);

  return IsFocusableInFocusSystemWithSearchInfo;
}

uint64_t __76___UIFocusMap__linearlySortedFocusItemsForItems_groupFilter_itemStandInMap___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 48) focusGroupForItem:a2];
  v4 = [v3 isEqualToFocusGroup:*(a1 + 40)];

  return v4;
}

@end