@interface GEOLPRLicensePlateRegion(MNExtras)
- (id)plateInfosMatchingVehicle:()MNExtras;
- (id)restrictionRegionsContainingLatLngs:()MNExtras inRadius:;
@end

@implementation GEOLPRLicensePlateRegion(MNExtras)

- (id)restrictionRegionsContainingLatLngs:()MNExtras inRadius:
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "regionsCount")}];
  regions = [self regions];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__GEOLPRLicensePlateRegion_MNExtras__restrictionRegionsContainingLatLngs_inRadius___block_invoke;
  v14[3] = &unk_1E842AED8;
  v15 = v6;
  v17 = a2;
  v9 = v7;
  v16 = v9;
  v10 = v6;
  [regions enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

- (id)plateInfosMatchingVehicle:()MNExtras
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "licensePlateInfosCount")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  licensePlateInfos = [self licensePlateInfos];
  v7 = [licensePlateInfos countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(licensePlateInfos);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v4 matchesPlateInfo:v11])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [licensePlateInfos countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

@end