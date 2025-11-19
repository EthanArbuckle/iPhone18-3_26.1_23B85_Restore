@interface NTKBlackcombFacesGalleryCollection
+ (id)activityComplicationTypesBySlot;
+ (id)complicationTypesBySlot;
- (id)_galleryEditOptionsForDevice:(id)a3;
- (id)_galleryPigmentsForDevice:(id)a3;
- (id)facesForDevice:(id)a3;
@end

@implementation NTKBlackcombFacesGalleryCollection

- (id)facesForDevice:(id)a3
{
  v43[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  if (([v4 isRunningNapiliGMOrLater] & 1) == 0)
  {
    v9 = v5;
    v11 = 0;
    while (1)
    {
      v12 = [NTKFace defaultFaceOfStyle:40 forDevice:v4];
      if (v11 <= 2)
      {
        if (v11)
        {
          if (v11 == 1)
          {
            v42[0] = @"subdial-left";
            v42[1] = @"subdial-right";
            v43[0] = &unk_28418A018;
            v43[1] = &unk_28418A030;
            v42[2] = @"subdial-bottom";
            v43[2] = &unk_28418A048;
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
            [v12 _setFaceGalleryComplicationTypesForSlots:v19];
            v20 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NoiseComplications" appBundleIdentifier:@"com.apple.Noise" complicationDescriptor:0];
            [v12 setComplication:v20 forSlot:@"subdial-top"];
          }

          else
          {
            v40[0] = @"subdial-top";
            v40[1] = @"subdial-left";
            v41[0] = &unk_28418A060;
            v41[1] = &unk_28418A078;
            v40[2] = @"subdial-right";
            v41[2] = &unk_28418A090;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
            [v12 _setFaceGalleryComplicationTypesForSlots:v21];
            if ([v4 supportsWidgetMigration])
            {
              v22 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.weather.watchapp.widgets" containerBundleIdentifier:@"com.apple.weather.watchapp" kind:@"com.apple.weather.widget.rain" intent:0];
              v23 = [NTKWidgetComplication complicationWithDescriptor:v22];
            }

            else
            {
              v23 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.weather.precipitation.chance" appBundleIdentifier:@"com.apple.weather.watchapp" complicationDescriptor:0];
            }

            [v12 setComplication:v23 forSlot:@"subdial-bottom"];
          }

          v17 = 0;
          v13 = 0;
          goto LABEL_25;
        }

        v13 = +[NTKBlackcombFacesGalleryCollection complicationTypesBySlot];
        v17 = 0;
        v16 = 200;
        v18 = 1;
      }

      else
      {
        if ((v11 - 4) >= 3)
        {
          v24 = [NTKComplication allComplicationsOfType:5];
          v25 = [v24 count];

          v38[0] = @"subdial-top";
          v38[1] = @"subdial-left";
          v39[0] = &unk_28418A0A8;
          v39[1] = &unk_28418A0C0;
          v38[2] = @"subdial-right";
          v38[3] = @"subdial-bottom";
          v39[2] = &unk_28418A0D8;
          v39[3] = &unk_28418A0F0;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];
          v27 = [v26 mutableCopy];
          v28 = v27;
          if (v25 < 2)
          {
            v17 = 1;
          }

          else
          {
            if (v25 == 2)
            {
              [v27 setObject:&unk_28418A108 forKeyedSubscript:@"subdial-top"];
              v27 = v28;
              v29 = &unk_28418A120;
              v30 = @"subdial-bottom";
LABEL_22:
              [v27 setObject:v29 forKeyedSubscript:v30];
            }

            else if (v25 == 3)
            {
              v29 = &unk_28418A138;
              v30 = @"subdial-top";
              goto LABEL_22;
            }

            v17 = 0;
          }

          v13 = [v28 copy];

LABEL_25:
          v18 = 0;
          v16 = 200;
          goto LABEL_26;
        }

        v13 = +[NTKBlackcombFacesGalleryCollection complicationTypesBySlot];
        v14 = [NTKFaceColorEditOption standardColorValuesForDevice:v4];
        v15 = [v14 objectAtIndexedSubscript:v11 - 4];
        v16 = [v15 integerValue];

        v17 = 0;
        v18 = 0;
      }

LABEL_26:
      v31 = [NTKBlackcombDialColorEditOption optionWithBlackcombDialColor:v18 forDevice:v4];
      [v12 selectOption:v31 forCustomEditMode:15 slot:0];

      v32 = [(NTKFaceColorEditOption *)NTKFaceColorMonochromeEditOption optionWithFaceColor:v16 forDevice:v4];
      [v12 selectOption:v32 forCustomEditMode:10 slot:0];

      if (v13)
      {
        [v12 _setFaceGalleryComplicationTypesForSlots:v13 canRepeat:1];
      }

      if ((v17 & 1) == 0)
      {
        [v9 addObject:v12];
      }

      if (++v11 == 7)
      {
        goto LABEL_31;
      }
    }
  }

  v6 = [(NTKBlackcombFacesGalleryCollection *)self _galleryEditOptionsForDevice:v4];
  v7 = [v6 objectForKeyedSubscript:&unk_284181FC0];
  v8 = [(NTKBlackcombFacesGalleryCollection *)self _galleryPigmentsForDevice:v4];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __53__NTKBlackcombFacesGalleryCollection_facesForDevice___block_invoke;
  v34[3] = &unk_27877FAD0;
  v35 = v4;
  v36 = v7;
  v9 = v5;
  v37 = v5;
  v10 = v7;
  [v8 enumerateObjectsUsingBlock:v34];

LABEL_31:

  return v9;
}

void __53__NTKBlackcombFacesGalleryCollection_facesForDevice___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [NTKFace defaultFaceOfStyle:40 forDevice:*(a1 + 32)];
  if (v6)
  {
    if ([*(a1 + 40) count] > a3)
    {
      v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      v8 = +[NTKBlackcombDialColorEditOption optionWithBlackcombDialColor:forDevice:](NTKBlackcombDialColorEditOption, "optionWithBlackcombDialColor:forDevice:", [v7 unsignedIntValue], *(a1 + 32));

      [v6 selectOption:v8 forCustomEditMode:15 slot:0];
    }

    v9 = [NTKPigmentEditOption pigmentNamed:v5];
    [v6 selectOption:v9 forCustomEditMode:10 slot:0];
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v18 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
        v27[0] = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
        [v6 setCurationPlacements:v19];
      }

      v20 = +[NTKBlackcombFacesGalleryCollection activityComplicationTypesBySlot];
      [v6 _setFaceGalleryComplicationTypesForSlots:v20];

      v21 = +[NTKComplication noiseComplication];
      [v6 setComplication:v21 forSlot:@"subdial-top"];

      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v26 = v10;
      v16 = MEMORY[0x277CBEA60];
      v17 = &v26;
    }

    else
    {
      if ((a3 - 2) >= 2)
      {
        if (a3 == 4)
        {
          [v6 _setFaceGalleryComplicationTypesForSlots:MEMORY[0x277CBEC10]];
          v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
          v24[0] = v10;
          v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
          v24[1] = v11;
          v12 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
          v24[2] = v12;
          v13 = MEMORY[0x277CBEA60];
          v14 = v24;
        }

        else
        {
          if (a3 != 5)
          {
LABEL_19:
            [*(a1 + 48) addObject:v6];

            goto LABEL_20;
          }

          [v6 _setFaceGalleryComplicationTypesForSlots:MEMORY[0x277CBEC10]];
          v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
          v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:8000, v10];
          v23[1] = v11;
          v12 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
          v23[2] = v12;
          v13 = MEMORY[0x277CBEA60];
          v14 = v23;
        }

        v22 = [v13 arrayWithObjects:v14 count:3];
        [v6 setCurationPlacements:v22];

LABEL_18:
        goto LABEL_19;
      }

      v15 = +[NTKBlackcombFacesGalleryCollection complicationTypesBySlot];
      [v6 _setFaceGalleryComplicationTypesForSlots:v15];

      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v25 = v10;
      v16 = MEMORY[0x277CBEA60];
      v17 = &v25;
    }

    v11 = [v16 arrayWithObjects:v17 count:1];
    [v6 setCurationPlacements:v11];
    goto LABEL_18;
  }

LABEL_20:
}

- (id)_galleryEditOptionsForDevice:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([a3 isRunningNapiliGMOrLater])
  {
    v5 = &unk_284181FC0;
    v6[0] = &unk_28418A150;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_galleryPigmentsForDevice:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  if ([v3 isRunningNapiliGMOrLater])
  {
    v18[0] = @"special.multicolor";
    v18[1] = @"special.multicolor";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v4 addObjectsFromArray:v5];

    v6 = [NTKFace defaultFaceOfStyle:40 forDevice:v3];
    v7 = [v6 defaultOptionForCustomEditMode:10 slot:0];
    v8 = [v7 fullname];
    v9 = [v8 isEqualToString:@"special.multicolor"];

    if (v9)
    {
      v17[0] = @"seasons.fall2024.blueCloud";
      v17[1] = @"seasons.spring2021.pistachio";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      [v4 addObjectsFromArray:v10];
    }

    else
    {
      v10 = [v7 fullname];
      v16[0] = v10;
      v11 = [v7 fullname];
      v16[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
      [v4 addObjectsFromArray:v12];
    }

    v15[0] = @"special.multicolor";
    v15[1] = @"special.multicolor";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    [v4 addObjectsFromArray:v13];
  }

  return v4;
}

+ (id)complicationTypesBySlot
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"subdial-top";
  v4[1] = @"subdial-left";
  v5[0] = &unk_28418A168;
  v5[1] = &unk_28418A180;
  v4[2] = @"subdial-right";
  v4[3] = @"subdial-bottom";
  v5[2] = &unk_28418A198;
  v5[3] = &unk_28418A1B0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)activityComplicationTypesBySlot
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"subdial-left";
  v4[1] = @"subdial-right";
  v5[0] = &unk_28418A1C8;
  v5[1] = &unk_28418A1E0;
  v4[2] = @"subdial-bottom";
  v5[2] = &unk_28418A1F8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

@end