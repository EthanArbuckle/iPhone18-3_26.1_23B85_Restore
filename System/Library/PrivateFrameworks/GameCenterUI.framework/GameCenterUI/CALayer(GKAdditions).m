@interface CALayer(GKAdditions)
- (id)_gkDescriptionWithChildren:()GKAdditions;
- (void)_gkParentSublayerTransform;
@end

@implementation CALayer(GKAdditions)

- (id)_gkDescriptionWithChildren:()GKAdditions
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = _gkTabStringForTabLevel();
  v6 = [MEMORY[0x277CCAB68] string];
  v7 = [a1 debugDescription];
  [v6 appendFormat:@"%@%@\n", v5, v7];

  v8 = [a1 sublayers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) _gkDescriptionWithChildren:a3 + 1];
        [v6 appendString:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = _gkUnicodifyDescription();

  return v6;
}

- (void)_gkParentSublayerTransform
{
  v3 = [a1 superlayer];
  if (v3)
  {
    v9 = v3;
    [v3 sublayerTransform];
    v3 = v9;
  }

  else
  {
    v4 = MEMORY[0x277CD9DE8];
    v5 = *(MEMORY[0x277CD9DE8] + 80);
    a2[4] = *(MEMORY[0x277CD9DE8] + 64);
    a2[5] = v5;
    v6 = v4[7];
    a2[6] = v4[6];
    a2[7] = v6;
    v7 = v4[1];
    *a2 = *v4;
    a2[1] = v7;
    v8 = v4[3];
    a2[2] = v4[2];
    a2[3] = v8;
  }
}

@end