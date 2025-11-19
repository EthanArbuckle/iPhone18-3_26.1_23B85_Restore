@interface GEOLPRRestrictionRegion
@end

@implementation GEOLPRRestrictionRegion

void __75__GEOLPRRestrictionRegion_MNExtras__plateTypeIndexesMatchingVehicle_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [a2 hasDefinedPlateConditionsForVehicle:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    [*(a1 + 40) addIndex:a3];
  }

  else if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

@end