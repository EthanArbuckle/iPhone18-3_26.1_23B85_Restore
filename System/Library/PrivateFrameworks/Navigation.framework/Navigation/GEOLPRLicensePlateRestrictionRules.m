@interface GEOLPRLicensePlateRestrictionRules
@end

@implementation GEOLPRLicensePlateRestrictionRules

void __87__GEOLPRLicensePlateRestrictionRules_MNExtras__plateRegionsContainingLatLngs_inRadius___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v3 mapRegion];
        v11 = [v10 mapRegion];
        [v9 coordinate];
        v12 = *(a1 + 48);
        LODWORD(v9) = [v11 containsCoordinate:? radius:?];

        if (v9)
        {
          [*(a1 + 40) addObject:v3];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
}

@end