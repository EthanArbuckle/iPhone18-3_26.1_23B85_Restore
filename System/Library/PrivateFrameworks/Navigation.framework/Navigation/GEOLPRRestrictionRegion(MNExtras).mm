@interface GEOLPRRestrictionRegion(MNExtras)
- (id)plateTypeIndexesMatchingVehicle:()MNExtras error:;
@end

@implementation GEOLPRRestrictionRegion(MNExtras)

- (id)plateTypeIndexesMatchingVehicle:()MNExtras error:
{
  v6 = a3;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4186;
  v22 = __Block_byref_object_dispose__4187;
  v23 = 0;
  definedPlateTypes = [self definedPlateTypes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__GEOLPRRestrictionRegion_MNExtras__plateTypeIndexesMatchingVehicle_error___block_invoke;
  v14[3] = &unk_1E842AF28;
  v9 = v6;
  v15 = v9;
  v17 = &v18;
  v10 = indexSet;
  v16 = v10;
  [definedPlateTypes enumerateObjectsUsingBlock:v14];

  v11 = v19[5];
  if (v11)
  {
    v12 = 0;
    if (a4)
    {
      *a4 = v11;
    }
  }

  else
  {
    v12 = v10;
  }

  _Block_object_dispose(&v18, 8);

  return v12;
}

@end