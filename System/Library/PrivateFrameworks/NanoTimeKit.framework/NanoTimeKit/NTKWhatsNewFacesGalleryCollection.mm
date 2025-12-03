@interface NTKWhatsNewFacesGalleryCollection
+ (id)_gloryBDefaultFacesForDevice:(id)device;
+ (id)_gloryEDefaultFacesForDevice:(id)device;
+ (id)_gloryFDefaultFacesForDevice:(id)device;
+ (id)_graceDefaultFacesForDevice:(id)device;
+ (id)_legacyDefaultFacesForDevice:(id)device;
+ (id)_pride2020DefaultFacesForDevice:(id)device;
+ (id)_spring2020DefaultFacesForDevice:(id)device;
+ (id)whistlerSubdialsSpring2020ComplicationTypesBySlot;
- (BOOL)hasNewFaces;
- (NTKWhatsNewFacesGalleryCollection)initWithDevice:(id)device;
- (id)facesForDevice:(id)device;
@end

@implementation NTKWhatsNewFacesGalleryCollection

- (NTKWhatsNewFacesGalleryCollection)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NTKWhatsNewFacesGalleryCollection;
  v3 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)&v6 initWithDevice:device];
  v4 = v3;
  if (v3)
  {
    [(NTKGalleryCollection *)v3 setCalloutName:&__block_literal_global_71];
  }

  return v4;
}

- (BOOL)hasNewFaces
{
  device = [(NTKDeviceSpecificFacesArrayGalleryCollection *)self device];
  v4 = [(NTKWhatsNewFacesGalleryCollection *)self facesForDevice:device];
  v5 = [v4 count] != 0;

  return v5;
}

- (id)facesForDevice:(id)device
{
  v27 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:3588072423])
  {
    v4 = +[NTKFaceBundleManager sharedManager];
    array = [MEMORY[0x277CBEB18] array];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __52__NTKWhatsNewFacesGalleryCollection_facesForDevice___block_invoke;
    v23[3] = &unk_27877EA00;
    v24 = deviceCopy;
    v6 = array;
    v25 = v6;
    [v4 enumerateFaceBundlesOnDevice:v24 includingLegacy:1 withBlock:v23];
    [v6 sortUsingSelector:sel_compare_];
    array2 = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          face = [*(*(&v19 + 1) + 8 * i) face];
          if (face)
          {
            [array2 addObject:face];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v10);
    }

    v14 = [array2 copy];
  }

  else
  {
    if ([deviceCopy supportsPDRCapability:3503302961])
    {
      v15 = [objc_opt_class() _pride2020DefaultFacesForDevice:deviceCopy];
    }

    else if ([deviceCopy supportsPDRCapability:753405533])
    {
      v15 = [objc_opt_class() _spring2020DefaultFacesForDevice:deviceCopy];
    }

    else if ([deviceCopy isRunningGraceOrLater])
    {
      v15 = [objc_opt_class() _graceDefaultFacesForDevice:deviceCopy];
    }

    else if ([deviceCopy isRunningGloryFOrLater])
    {
      v15 = [objc_opt_class() _gloryFDefaultFacesForDevice:deviceCopy];
    }

    else if ([deviceCopy isRunningGloryEOrLater])
    {
      v15 = [objc_opt_class() _gloryEDefaultFacesForDevice:deviceCopy];
    }

    else
    {
      isRunningGloryBOrLater = [deviceCopy isRunningGloryBOrLater];
      v17 = objc_opt_class();
      if (isRunningGloryBOrLater)
      {
        [v17 _gloryBDefaultFacesForDevice:deviceCopy];
      }

      else
      {
        [v17 _legacyDefaultFacesForDevice:deviceCopy];
      }
      v15 = ;
    }

    v14 = v15;
  }

  return v14;
}

void __52__NTKWhatsNewFacesGalleryCollection_facesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 heroFacesForDevice:*(a1 + 32)];
  [*(a1 + 40) addObjectsFromArray:v3];
}

+ (id)_legacyDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_opt_new();
  if ([deviceCopy deviceCategory] != 1)
  {
    if ([deviceCopy collectionType] == 5)
    {
      v5 = +[NTKFaceBundleManager sharedManager];
      v6 = [v5 faceBundleForFaceStyle:14 onDevice:deviceCopy];

      v7 = [v6 heroLegacyDefaultFacesForDevice:deviceCopy];
      if (v7)
      {
        [v4 addObjectsFromArray:v7];
      }
    }

    if (NTKShowVictoryFaces(deviceCopy))
    {
      v8 = +[NTKFaceBundleManager sharedManager];
      v9 = [v8 faceBundleForFaceStyle:19 onDevice:deviceCopy];

      if (v9)
      {
        v10 = [v9 heroLegacyDefaultFacesForDevice:deviceCopy];
        if ([v10 count])
        {
          [v4 addObjectsFromArray:v10];
        }
      }
    }

    v11 = +[NTKFaceBundleManager sharedManager];
    v12 = [v11 faceBundleForFaceStyle:30 onDevice:deviceCopy];

    if (v12)
    {
      v13 = [v12 heroLegacyDefaultFacesForDevice:deviceCopy];
      if ([v13 count])
      {
        [v4 addObjectsFromArray:v13];
      }
    }

    v14 = +[NTKFaceBundleManager sharedManager];
    v15 = [v14 faceBundleForFaceStyle:29 onDevice:deviceCopy];

    if (v12)
    {
      v16 = [v15 heroLegacyDefaultFacesForDevice:deviceCopy];
      if ([v16 count])
      {
        [v4 addObjectsFromArray:v16];
      }
    }

    v17 = +[NTKFaceBundleManager sharedManager];
    v18 = [v17 faceBundleForFaceStyle:23 onDevice:deviceCopy];

    if (v18)
    {
      v19 = [v15 heroLegacyDefaultFacesForDevice:deviceCopy];
      if ([v19 count])
      {
        [v4 addObjectsFromArray:v19];
      }
    }
  }

  v20 = +[NTKFaceBundleManager sharedManager];
  v21 = [v20 faceBundleForFaceStyle:27 onDevice:deviceCopy];

  if (v21)
  {
    v22 = [v21 heroLegacyDefaultFacesForDevice:deviceCopy];
    if ([v22 count])
    {
      [v4 addObjectsFromArray:v22];
    }
  }

  v23 = +[NTKFaceBundleManager sharedManager];
  v24 = [v23 faceBundleForFaceStyle:32 onDevice:deviceCopy];

  if (v24)
  {
    v25 = [v24 heroLegacyDefaultFacesForDevice:deviceCopy];
    if ([v25 count])
    {
      [v4 addObjectsFromArray:v25];
    }
  }

  v26 = +[NTKFaceBundleManager sharedManager];
  v27 = [v26 faceBundleForFaceStyle:31 onDevice:deviceCopy];

  if (v27)
  {
    v28 = [v27 heroLegacyDefaultFacesForDevice:deviceCopy];
    if ([v28 count])
    {
      [v4 addObjectsFromArray:v28];
    }
  }

  v29 = +[NTKFaceBundleManager sharedManager];
  v30 = [v29 faceBundleForFaceStyle:28 onDevice:deviceCopy];

  if (v30)
  {
    v31 = [v30 heroLegacyDefaultFacesForDevice:deviceCopy];
    if ([v31 count])
    {
      [v4 addObjectsFromArray:v31];
    }
  }

  return v4;
}

+ (id)_gloryBDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  v6 = [self _legacyDefaultFacesForDevice:deviceCopy];
  [v5 addObjectsFromArray:v6];

  v7 = +[NTKFaceBundleManager sharedManager];
  v8 = [v7 faceBundleForFaceStyle:3 onDevice:deviceCopy];

  if (v8)
  {
    v9 = [v8 heroGloryBDefaultFacesForDevice:deviceCopy];
    if (v9)
    {
      [v5 addObjectsFromArray:v9];
    }
  }

  return v5;
}

+ (id)_gloryEDefaultFacesForDevice:(id)device
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_opt_new();
  v6 = [self _gloryBDefaultFacesForDevice:deviceCopy];
  [v5 addObjectsFromArray:v6];

  v7 = +[NTKFaceBundleManager sharedManager];
  v8 = [v7 faceBundleForFaceStyle:14 onDevice:deviceCopy];

  v9 = [v8 heroGloryEDefaultFacesForDevice:deviceCopy];
  v10 = [v9 mutableCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v5 copy];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([v16 faceStyle] == 14)
        {
          v17 = [v5 indexOfObject:v16];
          v18 = [v10 objectAtIndexedSubscript:0];
          [v5 replaceObjectAtIndex:v17 withObject:v18];

          [v10 removeObjectAtIndex:0];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  return v5;
}

+ (id)_gloryFDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  v6 = [self _gloryEDefaultFacesForDevice:deviceCopy];
  [v5 addObjectsFromArray:v6];

  v7 = +[NTKFaceBundleManager sharedManager];
  v8 = [v7 faceBundleForFaceStyle:26 onDevice:deviceCopy];

  v9 = [v8 heroGloryFDefaultFacesForDevice:deviceCopy];
  if (v9)
  {
    [v5 addObjectsFromArray:v9];
  }

  v10 = +[NTKFaceBundleManager sharedManager];
  v11 = [v10 faceBundleForFaceStyle:33 onDevice:deviceCopy];

  v12 = [v11 heroGloryFDefaultFacesForDevice:deviceCopy];
  if (v12)
  {
    [v5 addObjectsFromArray:v12];
  }

  return v5;
}

+ (id)_graceDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_opt_new();
  deviceCategory = [deviceCopy deviceCategory];
  v6 = +[NTKFaceBundleManager sharedManager];
  v7 = v6;
  if (deviceCategory == 1)
  {
    v8 = [v6 faceBundleForFaceStyle:37 onDevice:deviceCopy];

    v9 = [v8 heroGraceDefaultFacesForDevice:deviceCopy];
    if (v9)
    {
      [v4 addObjectsFromArray:v9];
    }

    v10 = +[NTKFaceBundleManager sharedManager];
    v11 = [v10 faceBundleForFaceStyle:38 onDevice:deviceCopy];

    v12 = [v11 heroGraceDefaultFacesForDevice:deviceCopy];
    if (v12)
    {
      [v4 addObjectsFromArray:v12];
    }
  }

  else
  {
    v13 = [v6 faceBundleForFaceStyle:42 onDevice:deviceCopy];

    v14 = [v13 heroGraceDefaultFacesForDevice:deviceCopy];
    if (v14)
    {
      [v4 addObjectsFromArray:v14];
    }

    v42 = v13;
    v15 = +[NTKFaceBundleManager sharedManager];
    v16 = [v15 faceBundleForFaceStyle:14 onDevice:deviceCopy];

    v12 = [v16 heroGraceDefaultFacesForDevice:deviceCopy];
    if (v12)
    {
      [v4 addObjectsFromArray:v12];
    }

    if ([deviceCopy collectionType] == 6)
    {
      v17 = +[NTKFaceBundleManager sharedManager];
      v18 = [v17 faceBundleForFaceStyle:35 onDevice:deviceCopy];

      v19 = [v18 heroGraceDefaultFacesForDevice:deviceCopy];
      if (v19)
      {
        [v4 addObjectsFromArray:v19];
      }
    }

    v40 = v16;
    v41 = v14;
    v39 = [NTKFace defaultFaceOfStyle:40 forDevice:deviceCopy];
    [v4 addObject:?];
    v20 = +[NTKFaceBundleManager sharedManager];
    v21 = [v20 faceBundleForFaceStyle:39 onDevice:deviceCopy];

    v38 = v21;
    v37 = [v21 heroGraceDefaultFacesForDevice:deviceCopy];
    [v4 addObjectsFromArray:?];
    v36 = [NTKFace defaultFaceOfStyle:34 forDevice:deviceCopy];
    [v4 addObject:?];
    v35 = +[NTKFaceBundleManager sharedManager];
    v34 = [v35 faceBundleForFaceStyle:36 onDevice:deviceCopy];
    v33 = [v34 heroGraceDefaultFacesForDevice:deviceCopy];
    [v4 addObjectsFromArray:?];
    v22 = +[NTKFaceBundleManager sharedManager];
    v23 = [v22 faceBundleForFaceStyle:41 onDevice:deviceCopy];

    v24 = [v23 heroGraceDefaultFacesForDevice:deviceCopy];
    if (v24)
    {
      [v4 addObjectsFromArray:v24];
    }

    v25 = +[NTKFaceBundleManager sharedManager];
    v26 = [v25 faceBundleForFaceStyle:37 onDevice:deviceCopy];

    v27 = [v26 heroGraceDefaultFacesForDevice:deviceCopy];
    if (v27)
    {
      [v4 addObjectsFromArray:v27];
    }

    v28 = +[NTKFaceBundleManager sharedManager];
    v29 = [v28 faceBundleForFaceStyle:38 onDevice:deviceCopy];

    v30 = [v29 heroGraceDefaultFacesForDevice:deviceCopy];
    if (v30)
    {
      [v4 addObjectsFromArray:v30];
    }

    v31 = [NTKFace defaultFaceOfStyle:38 forDevice:deviceCopy];
    [v4 addObject:v31];

    v9 = v41;
    v8 = v42;
    v11 = v40;
  }

  return v4;
}

+ (id)whistlerSubdialsSpring2020ComplicationTypesBySlot
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"top";
  v4[1] = @"center";
  v5[0] = &unk_28418AF48;
  v5[1] = &unk_28418AF60;
  v4[2] = @"bottom";
  v5[2] = &unk_28418AF78;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

+ (id)_spring2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_opt_new();
  if ([deviceCopy deviceCategory] != 1)
  {
    if ([deviceCopy collectionType] == 5)
    {
      v5 = +[NTKFaceBundleManager sharedManager];
      v6 = [v5 faceBundleForFaceStyle:14 onDevice:deviceCopy];

      v7 = [v6 heroSpring2020DefaultFacesForDevice:deviceCopy];
      if (v7)
      {
        [v4 addObjectsFromArray:v7];
      }
    }

    if ([deviceCopy collectionType] == 6)
    {
      v8 = +[NTKFaceBundleManager sharedManager];
      v9 = [v8 faceBundleForFaceStyle:35 onDevice:deviceCopy];

      v10 = [v9 heroSpring2020DefaultFacesForDevice:deviceCopy];
      if (v10)
      {
        [v4 addObjectsFromArray:v10];
      }
    }

    v11 = [NTKFace defaultFaceOfStyle:40 forDevice:deviceCopy];
    v12 = +[NTKBlackcombFacesGalleryCollection complicationTypesBySlot];
    [v11 _setFaceGalleryComplicationTypesForSlots:v12];

    [v4 addObject:v11];
    v13 = +[NTKFaceBundleManager sharedManager];
    v14 = [v13 faceBundleForFaceStyle:39 onDevice:deviceCopy];

    v31 = v14;
    v15 = [v14 heroSpring2020DefaultFacesForDevice:deviceCopy];
    [v4 addObjectsFromArray:v15];
    v16 = [NTKFace defaultFaceOfStyle:34 forDevice:deviceCopy];
    v17 = +[NTKWhatsNewFacesGalleryCollection whistlerSubdialsSpring2020ComplicationTypesBySlot];
    [v16 _setFaceGalleryComplicationTypesForSlots:v17];

    [v4 addObject:v16];
    v18 = +[NTKFaceBundleManager sharedManager];
    v19 = [v18 faceBundleForFaceStyle:36 onDevice:deviceCopy];
    v20 = [v19 heroGraceDefaultFacesForDevice:deviceCopy];
    [v4 addObjectsFromArray:v20];
    v21 = +[NTKFaceBundleManager sharedManager];
    v22 = [v21 faceBundleForFaceStyle:41 onDevice:deviceCopy];

    v23 = [v22 heroSpring2020DefaultFacesForDevice:deviceCopy];
    if (v23)
    {
      [v4 addObjectsFromArray:v23];
    }
  }

  v24 = +[NTKFaceBundleManager sharedManager];
  v25 = [v24 faceBundleForFaceStyle:37 onDevice:deviceCopy];

  v26 = [v25 heroSpring2020DefaultFacesForDevice:deviceCopy];
  if (v26)
  {
    [v4 addObjectsFromArray:v26];
  }

  v27 = +[NTKFaceBundleManager sharedManager];
  v28 = [v27 faceBundleForFaceStyle:38 onDevice:deviceCopy];

  v29 = [v28 heroSpring2020DefaultFacesForDevice:deviceCopy];
  if (v29)
  {
    [v4 addObjectsFromArray:v29];
  }

  return v4;
}

+ (id)_pride2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  v6 = +[NTKFaceBundleManager sharedManager];
  v7 = [v6 faceBundleForFaceStyle:26 onDevice:deviceCopy];

  v8 = [v7 heroPride2020DefaultFacesForDevice:deviceCopy];
  if (v8)
  {
    [v5 addObjectsFromArray:v8];
  }

  v9 = +[NTKFaceBundleManager sharedManager];
  v10 = [v9 faceBundleForFaceStyle:33 onDevice:deviceCopy];

  v11 = [v10 heroPride2020DefaultFacesForDevice:deviceCopy];
  if (v11)
  {
    [v5 addObjectsFromArray:v11];
  }

  v12 = [self _spring2020DefaultFacesForDevice:deviceCopy];
  [v5 addObjectsFromArray:v12];

  return v5;
}

@end