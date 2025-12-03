@interface NTKWhistlerSubdialsFacesGalleryCollection
- (id)_galleryEditOptionsForDevice:(id)device;
- (id)_galleryPigmentsForDevice:(id)device;
- (id)facesForDevice:(id)device;
@end

@implementation NTKWhistlerSubdialsFacesGalleryCollection

- (id)facesForDevice:(id)device
{
  v107[6] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [(NTKWhistlerSubdialsFacesGalleryCollection *)self _galleryEditOptionsForDevice:deviceCopy];
    v7 = [array2 objectForKeyedSubscript:&unk_2841824E8];
    v8 = [array2 objectForKeyedSubscript:&unk_284182500];
    v9 = [array2 objectForKeyedSubscript:&unk_284182518];
    v10 = [(NTKWhistlerSubdialsFacesGalleryCollection *)self _galleryPigmentsForDevice:deviceCopy];
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __60__NTKWhistlerSubdialsFacesGalleryCollection_facesForDevice___block_invoke;
    v95[3] = &unk_2787806E0;
    v96 = deviceCopy;
    v97 = v7;
    v98 = v8;
    v99 = v9;
    v11 = array;
    v100 = v11;
    v12 = v9;
    v13 = v8;
    pigmentFaceDomain = v7;
    [v10 enumerateObjectsUsingBlock:v95];
    v15 = v100;
    array4 = v11;

LABEL_3:
    goto LABEL_47;
  }

  if ([deviceCopy supportsPDRCapability:3669496134])
  {
    if ([deviceCopy supportsPDRCapability:3874532124])
    {
      v107[0] = @"seasons.spring2025.peony";
      v107[1] = @"seasons.spring2025.tangerine";
      v107[2] = @"seasons.spring2025.aquamarine";
      v107[3] = @"seasons.spring2025.periwinkle";
      v107[4] = @"seasons.spring2025.northernLights";
      v107[5] = @"seasons.spring2025.sage";
      v17 = MEMORY[0x277CBEA60];
      v18 = v107;
      v19 = 6;
    }

    else
    {
      v106[0] = @"seasons.fall2024.denim";
      v106[1] = @"seasons.fall2024.plum";
      v106[2] = @"seasons.fall2024.chartreuse";
      v106[3] = @"seasons.fall2024.lakeGreen";
      v106[4] = @"seasons.fall2024.ultramarine";
      v106[5] = @"seasons.fall2024.darkTaupe";
      v106[6] = @"seasons.fall2024.ink";
      v106[7] = @"seasons.fall2024.magenta";
      v17 = MEMORY[0x277CBEA60];
      v18 = v106;
      v19 = 8;
    }

    v10 = [v17 arrayWithObjects:v18 count:v19];
    v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(0, "count")}];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __60__NTKWhistlerSubdialsFacesGalleryCollection_facesForDevice___block_invoke_2;
    v93[3] = &unk_27877DED0;
    v94 = v30;
    pigmentFaceDomain = v30;
    [v10 enumerateObjectsUsingBlock:v93];
    array2 = [pigmentFaceDomain copy];
    v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(array2, "count")}];
    v32 = [NTKFaceBackgroundStyleEditOption optionWithBackgroundStyle:1 forDevice:deviceCopy];
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __60__NTKWhistlerSubdialsFacesGalleryCollection_facesForDevice___block_invoke_3;
    v89[3] = &unk_278780730;
    v90 = deviceCopy;
    v91 = v32;
    v33 = v31;
    v92 = v33;
    v34 = v32;
    [array2 enumerateObjectsUsingBlock:v89];
    v35 = v92;
    array4 = v33;

    v13 = v94;
    goto LABEL_47;
  }

  array2 = [MEMORY[0x277CBEB18] array];
  if ([deviceCopy supportsPDRCapability:3887189377])
  {
    v10 = [NTKFace defaultFaceOfStyle:34 forDevice:deviceCopy];
    pigmentFaceDomain = [objc_opt_class() pigmentFaceDomain];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = +[NTKPigmentEditOptionStore sharedInstance];
    v13 = v20;
    v22 = [v21 pigmentSetForDomain:pigmentFaceDomain bundle:v20];
    v12 = [v22 pigmentsFromMostRecentAddableCollectionsForSlot:0];

    v23 = [NTKFaceBackgroundStyleEditOption optionWithBackgroundStyle:1 forDevice:deviceCopy];
    array3 = [MEMORY[0x277CBEB18] array];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __60__NTKWhistlerSubdialsFacesGalleryCollection_facesForDevice___block_invoke_2_122;
    v85[3] = &unk_278780730;
    v25 = deviceCopy;
    v86 = v25;
    v87 = v23;
    v26 = array3;
    v88 = v26;
    v27 = v23;
    [v12 enumerateObjectsUsingBlock:v85];
    if (NTKShowCarbonara(v25) && [v26 count] >= 7)
    {
      v28 = [v26 objectAtIndexedSubscript:6];
      [v26 removeObjectAtIndex:6];
      [v26 insertObject:v28 atIndex:0];
    }

    v29 = v88;
    array4 = v26;

    goto LABEL_3;
  }

  if (NTKShowGossamerUI(deviceCopy))
  {
    v36 = [NTKPigmentEditOption pigmentNamed:@"special.multicolor"];
    [array2 addObject:v36];

    v37 = 4;
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v104[0] = @"seasons.spring2015.white";
    v104[1] = @"seasons.black";
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:2];
    v39 = [v38 countByEnumeratingWithState:&v81 objects:v105 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v82;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v82 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = [NTKPigmentEditOption pigmentNamed:*(*(&v81 + 1) + 8 * i)];
          [array2 addObject:v43];
        }

        v40 = [v38 countByEnumeratingWithState:&v81 objects:v105 count:16];
      }

      while (v40);
    }

    v37 = 3;
  }

  v44 = [NTKFaceColorEditOption standardColorValuesForDevice:deviceCopy];
  v45 = [v44 subarrayWithRange:{0, v37}];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v10 = v45;
  v46 = [v10 countByEnumeratingWithState:&v77 objects:v103 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v78;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v78 != v48)
        {
          objc_enumerationMutation(v10);
        }

        v50 = +[NTKFaceColorEditOption optionWithFaceColor:forDevice:](NTKFaceColorEditOption, "optionWithFaceColor:forDevice:", [*(*(&v77 + 1) + 8 * j) integerValue], deviceCopy);
        pigmentEditOption = [v50 pigmentEditOption];
        [array2 addObject:pigmentEditOption];
      }

      v47 = [v10 countByEnumeratingWithState:&v77 objects:v103 count:16];
    }

    while (v47);
  }

  pigmentFaceDomain = [MEMORY[0x277CBEB18] array];
  v52 = [NTKDualTimeStyleEditOption optionWithStyle:0 forDevice:deviceCopy];
  [pigmentFaceDomain addObject:v52];

  v53 = [NTKDualTimeStyleEditOption optionWithStyle:1 forDevice:deviceCopy];
  [pigmentFaceDomain addObject:v53];

  array4 = [MEMORY[0x277CBEB18] array];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v13 = array2;
  v67 = [v13 countByEnumeratingWithState:&v73 objects:v102 count:16];
  if (v67)
  {
    v64 = v10;
    obj = v13;
    v66 = *v74;
    do
    {
      v54 = 0;
      do
      {
        if (*v74 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v68 = v54;
        v55 = *(*(&v73 + 1) + 8 * v54);
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v56 = pigmentFaceDomain;
        v57 = [v56 countByEnumeratingWithState:&v69 objects:v101 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v70;
          do
          {
            for (k = 0; k != v58; ++k)
            {
              if (*v70 != v59)
              {
                objc_enumerationMutation(v56);
              }

              v61 = *(*(&v69 + 1) + 8 * k);
              v62 = [NTKFace defaultFaceOfStyle:34 forDevice:deviceCopy, v64];
              [v62 selectOption:v55 forCustomEditMode:10 slot:0];
              [v62 selectOption:v61 forCustomEditMode:15 slot:0];
              [array4 addObject:v62];
            }

            v58 = [v56 countByEnumeratingWithState:&v69 objects:v101 count:16];
          }

          while (v58);
        }

        v54 = v68 + 1;
      }

      while (v68 + 1 != v67);
      v67 = [obj countByEnumeratingWithState:&v73 objects:v102 count:16];
    }

    while (v67);
    pigmentFaceDomain = v56;
    v10 = v64;
    v13 = obj;
  }

  array2 = v13;
LABEL_47:

  return array4;
}

void __60__NTKWhistlerSubdialsFacesGalleryCollection_facesForDevice___block_invoke(id *a1, void *a2, unint64_t a3)
{
  v81[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [NTKFace defaultFaceOfStyle:34 forDevice:a1[4]];
  if (v6)
  {
    if ([a1[5] count] > a3)
    {
      v7 = [a1[5] objectAtIndexedSubscript:a3];
      v8 = +[NTKDualTimeStyleEditOption optionWithStyle:forDevice:](NTKDualTimeStyleEditOption, "optionWithStyle:forDevice:", [v7 unsignedIntValue], a1[4]);

      [v6 selectOption:v8 forCustomEditMode:15 slot:0];
    }

    if ([a1[6] count] > a3)
    {
      v9 = [a1[6] objectAtIndexedSubscript:a3];
      v10 = +[NTKFaceBackgroundStyleEditOption optionWithBackgroundStyle:forDevice:](NTKFaceBackgroundStyleEditOption, "optionWithBackgroundStyle:forDevice:", [v9 unsignedIntValue], a1[4]);

      [v6 selectOption:v10 forCustomEditMode:17 slot:0];
    }

    if ([a1[7] count] > a3)
    {
      v11 = [a1[7] objectAtIndexedSubscript:a3];
      v12 = +[NTKNumeralEditOption optionWithNumeral:forDevice:](NTKNumeralEditOption, "optionWithNumeral:forDevice:", [v11 unsignedIntValue], a1[4]);

      [v6 selectOption:v12 forCustomEditMode:19 slot:0];
    }

    v13 = [NTKPigmentEditOption pigmentNamed:v5];
    [v6 selectOption:v13 forCustomEditMode:10 slot:0];
    if (a3 <= 2)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          if (a3 == 2)
          {
            v14 = [NTKComplication anyComplicationOfType:43];
            [v6 setComplication:v14 forSlot:@"top"];

            if ([a1[4] supportsUrsa])
            {
              v74[0] = @"center";
              v15 = +[NTKComplication elevationComplication];
              v75[0] = v15;
              v74[1] = @"bottom";
              v16 = +[NTKComplication waypointsComplication];
              v75[1] = v16;
              v17 = MEMORY[0x277CBEAC0];
              v18 = v75;
              v19 = v74;
            }

            else
            {
              v72[0] = @"center";
              v15 = [NTKComplication anyComplicationOfType:12];
              v73[0] = v15;
              v72[1] = @"bottom";
              v16 = [NTKComplication anyComplicationOfType:22];
              v73[1] = v16;
              v17 = MEMORY[0x277CBEAC0];
              v18 = v73;
              v19 = v72;
            }

            v55 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:2];
            [v6 setComplicationsForSlots:v55];

            v24 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
            v71[0] = v24;
            v25 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
            v71[1] = v25;
            v26 = MEMORY[0x277CBEA60];
            v27 = v71;
            goto LABEL_33;
          }

          goto LABEL_35;
        }

        v77[0] = @"top";
        v40 = [NTKComplication anyComplicationOfType:7];
        v78[0] = v40;
        v77[1] = @"center";
        v41 = [NTKComplication anyComplicationOfType:18];
        v78[1] = v41;
        v77[2] = @"bottom";
        v42 = [NTKComplication anyComplicationOfType:15];
        v78[2] = v42;
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:3];
        [v6 setComplicationsForSlots:v43];

        v44 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:9 zOrder:4000];
        v76[0] = v44;
        v45 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v76[1] = v45;
        v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
        v24 = [v46 mutableCopy];

        if ([a1[4] deviceCategory] == 2)
        {
          v33 = 7000;
        }

        else
        {
          v33 = 4000;
        }
      }

      else
      {
        v80[0] = @"center";
        v28 = [NTKComplication anyComplicationOfType:10];
        v81[0] = v28;
        v80[1] = @"bottom";
        v29 = [NTKComplication anyComplicationOfType:43];
        v81[1] = v29;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
        [v6 setComplicationsForSlots:v30];

        v31 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
        v79 = v31;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
        v24 = [v32 mutableCopy];

        [a1[4] deviceCategory];
        v33 = 4000;
      }

      v47 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:7 zOrder:v33];
      [v24 addObject:v47];

      [v6 setCurationPlacements:v24];
LABEL_34:

      goto LABEL_35;
    }

    switch(a3)
    {
      case 3uLL:
        if ([a1[4] supportsCharon])
        {
          v69[0] = @"top";
          v34 = +[NTKComplication compassComplication];
          v70[0] = v34;
          v69[1] = @"center";
          v35 = +[NTKComplication waterTemperatureComplication];
          v70[1] = v35;
          v69[2] = @"bottom";
          v36 = +[NTKComplication depthComplication];
          v70[2] = v36;
          v37 = MEMORY[0x277CBEAC0];
          v38 = v70;
          v39 = v69;
        }

        else
        {
          v67[0] = @"top";
          v34 = [NTKComplication anyComplicationOfType:7];
          v68[0] = v34;
          v67[1] = @"center";
          v35 = [NTKComplication anyComplicationOfType:13];
          v68[1] = v35;
          v67[2] = @"bottom";
          v36 = [NTKComplication anyComplicationOfType:8];
          v68[2] = v36;
          v37 = MEMORY[0x277CBEAC0];
          v38 = v68;
          v39 = v67;
        }

        v54 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:3];
        [v6 setComplicationsForSlots:v54];

        v24 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
        v66[0] = v24;
        v25 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v66[1] = v25;
        v26 = MEMORY[0x277CBEA60];
        v27 = v66;
        goto LABEL_33;
      case 4uLL:
        if ([a1[4] supportsCharon])
        {
          v64[0] = @"top";
          v48 = +[NTKComplication waterTemperatureComplication];
          v65[0] = v48;
          v64[1] = @"center";
          v49 = +[NTKComplication depthComplication];
          v65[1] = v49;
          v64[2] = @"bottom";
          v50 = +[NTKComplication tidesComplication];
          v65[2] = v50;
          v51 = MEMORY[0x277CBEAC0];
          v52 = v65;
          v53 = v64;
        }

        else
        {
          v62[0] = @"top";
          v48 = +[NTKComplication stateOfMindComplication];
          v63[0] = v48;
          v62[1] = @"center";
          v49 = [NTKComplication anyComplicationOfType:17];
          v63[1] = v49;
          v62[2] = @"bottom";
          v50 = +[NTKComplication calendarTimelineComplication];
          v63[2] = v50;
          v51 = MEMORY[0x277CBEAC0];
          v52 = v63;
          v53 = v62;
        }

        v56 = [v51 dictionaryWithObjects:v52 forKeys:v53 count:3];
        [v6 setComplicationsForSlots:v56];

        v24 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
        v61[0] = v24;
        v25 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v61[1] = v25;
        v26 = MEMORY[0x277CBEA60];
        v27 = v61;
        goto LABEL_33;
      case 5uLL:
        v59[0] = @"top";
        v20 = +[NTKComplication swellComplication];
        v60[0] = v20;
        v59[1] = @"center";
        v21 = +[NTKComplication humidityComplication];
        v60[1] = v21;
        v59[2] = @"bottom";
        v22 = +[NTKComplication weatherLocationComplication];
        v60[2] = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:3];
        [v6 setComplicationsForSlots:v23];

        v24 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
        v58[0] = v24;
        v25 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:7 zOrder:4000];
        v58[1] = v25;
        v26 = MEMORY[0x277CBEA60];
        v27 = v58;
LABEL_33:
        v57 = [v26 arrayWithObjects:v27 count:2];
        [v6 setCurationPlacements:v57];

        goto LABEL_34;
    }

LABEL_35:
    [a1[8] addObject:v6];
  }
}

void __60__NTKWhistlerSubdialsFacesGalleryCollection_facesForDevice___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [NTKPigmentEditOption pigmentNamed:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void __60__NTKWhistlerSubdialsFacesGalleryCollection_facesForDevice___block_invoke_3(uint64_t a1, void *a2, char a3)
{
  v100[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [NTKFace defaultFaceOfStyle:34 forDevice:*(a1 + 32)];
  if (v6)
  {
    v78 = [NTKComplication anyComplicationOfType:7];
    v7 = [NTKComplication anyComplicationOfType:18];
    v8 = v7;
    v9 = a3 & 7;
    if (v9 > 3)
    {
      if ((a3 & 7u) <= 5uLL)
      {
        v73 = v7;
        if (v9 == 4)
        {
          v70 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.boardwalk.watchapp.widgets" containerBundleIdentifier:@"com.apple.boardwalk.watchapp" kind:@"Swell" intent:0];
          v66 = [NTKWidgetComplication complicationWithDescriptor:v70];
          v68 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.weather.watchapp.widgets" containerBundleIdentifier:@"com.apple.weather.watchapp" kind:@"com.apple.weather.widget.humidity" intent:0];
          v25 = [NTKWidgetComplication complicationWithDescriptor:v68];
          v26 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.weather.watchapp.widgets" containerBundleIdentifier:@"com.apple.weather.watchapp" kind:@"com.apple.weather.widget.threeup" intent:0];
          v27 = [NTKWidgetComplication complicationWithDescriptor:v26];
          v89[0] = @"top";
          v28 = _complicationOrDie(v66);
          v90[0] = v28;
          v89[1] = @"center";
          v29 = _complicationOrDie(v25);
          v90[1] = v29;
          v89[2] = @"bottom";
          _complicationOrDie(v27);
          v31 = v30 = v5;
          v90[2] = v31;
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:3];

          v5 = v30;
          v33 = 0;
          v34 = 1;
        }

        else
        {
          v46 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.NanoTranslate.Widget" containerBundleIdentifier:@"com.apple.NanoTranslate" kind:@"NanoTranslateStaticWidget" intent:0];
          v47 = [NTKWidgetComplication complicationWithDescriptor:v46];
          v87[0] = @"center";
          v87[1] = @"bottom";
          v88[0] = &unk_28418AB10;
          v88[1] = &unk_28418AB28;
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
          v85 = @"top";
          v48 = _complicationOrDie(v47);
          v86 = v48;
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];

          v34 = 0;
        }

        v20 = v73;
        goto LABEL_45;
      }

      if (v9 != 6)
      {
        v75 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.NanoHealthBalance.NanoHealthBalanceWidgetExtension" containerBundleIdentifier:@"com.apple.NanoHealthBalance" kind:@"BalanceOneDayWidgetKind" intent:0];
        v69 = [NTKWidgetComplication complicationWithDescriptor:v75];
        v71 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.nanomusicrecognition.NanoMusicRecognitionWidget" containerBundleIdentifier:@"com.apple.nanomusicrecognition" kind:@"com.apple.nanomusicrecognition.NanoMusicRecognitionWidget" intent:0];
        v67 = [NTKWidgetComplication complicationWithDescriptor:v71];
        v58 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.ActivityMonitorApp.ActivityComplication" containerBundleIdentifier:@"com.apple.ActivityMonitorApp" kind:@"ActivityGraphComplication" intent:0];
        v59 = [NTKWidgetComplication complicationWithDescriptor:v58];
        v81[0] = @"top";
        _complicationOrDie(v69);
        v60 = v20 = v8;
        v82[0] = v60;
        v81[1] = @"center";
        v61 = _complicationOrDie(v67);
        v82[1] = v61;
        v81[2] = @"bottom";
        _complicationOrDie(v59);
        v63 = v62 = v5;
        v82[2] = v63;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:3];

        v5 = v62;
        v34 = 0;
        v33 = 0;
        goto LABEL_45;
      }

      v10 = [NTKComplication anyComplicationOfType:1];
      v76 = v5;
      if ([*(a1 + 32) supportsUrsa])
      {
        v35 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.compass" appBundleIdentifier:@"com.apple.NanoCompass.watchkitapp" complicationDescriptor:0];
        v36 = v35;
        if (v35)
        {
          v37 = v35;

          v10 = v37;
        }
      }

      v38 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.Depth.temperature" appBundleIdentifier:@"com.apple.Depth" complicationDescriptor:0];
      v72 = v38;
      v15 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.Depth.depth" appBundleIdentifier:@"com.apple.Depth" complicationDescriptor:0];
      v83[0] = @"top";
      v16 = _complicationOrDie(v10);
      v84[0] = v16;
      v83[1] = @"center";
      if ([*(a1 + 32) supportsCharon])
      {
        v39 = v38;
      }

      else
      {
        v39 = v78;
      }

      v18 = _complicationOrDie(v39);
      v84[1] = v18;
      v83[2] = @"bottom";
      if ([*(a1 + 32) supportsCharon])
      {
        v40 = v15;
      }

      else
      {
        v40 = v8;
      }

      _complicationOrDie(v40);
      v21 = v20 = v8;
      v84[2] = v21;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v84;
      v24 = v83;
    }

    else
    {
      if ((a3 & 7u) > 1uLL)
      {
        if (v9 == 2)
        {
          v93[0] = @"top";
          v93[1] = @"center";
          v94[0] = &unk_28418AAC8;
          v94[1] = &unk_28418AAE0;
          v93[2] = @"bottom";
          v94[2] = &unk_28418AAF8;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:3];
          v33 = v20 = v8;
          v34 = 0;
          v32 = 0;
        }

        else
        {
          v49 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.Depth.temperature" appBundleIdentifier:@"com.apple.Depth" complicationDescriptor:0];
          v74 = v49;
          v50 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.Depth.depth" appBundleIdentifier:@"com.apple.Depth" complicationDescriptor:0];
          v77 = v5;
          v51 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.boardwalk.watchapp.widgets" containerBundleIdentifier:@"com.apple.boardwalk.watchapp" kind:@"Tides" intent:0];
          v52 = [NTKWidgetComplication complicationWithDescriptor:v51];
          v91[0] = @"top";
          if ([*(a1 + 32) supportsCharon])
          {
            v53 = v49;
          }

          else
          {
            v53 = v78;
          }

          v54 = _complicationOrDie(v53);
          v92[0] = v54;
          v91[1] = @"center";
          if ([*(a1 + 32) supportsCharon])
          {
            v55 = v50;
          }

          else
          {
            v55 = v8;
          }

          v56 = _complicationOrDie(v55);
          v92[1] = v56;
          v91[2] = @"bottom";
          _complicationOrDie(v52);
          v57 = v20 = v8;
          v92[2] = v57;
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:3];

          v5 = v77;
          v33 = 0;
          v34 = 1;
        }

        goto LABEL_45;
      }

      if ((a3 & 7) != 0)
      {
        v97 = @"top";
        v98 = &unk_28418AAB0;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v33 = v20 = v8;
        v41 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.altitude" appBundleIdentifier:@"com.apple.NanoCompass.watchkitapp" complicationDescriptor:0];
        v42 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.waypoint" appBundleIdentifier:@"com.apple.NanoCompass.watchkitapp" complicationDescriptor:0];
        v95[0] = @"center";
        v43 = _complicationOrDie(v41);
        v96[0] = v43;
        v95[1] = @"bottom";
        _complicationOrDie(v42);
        v45 = v44 = v5;
        v96[1] = v45;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:2];

        v5 = v44;
        v34 = 0;
        goto LABEL_45;
      }

      v10 = [NTKComplication anyComplicationOfType:1];
      v76 = v5;
      if ([*(a1 + 32) supportsUrsa])
      {
        v11 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.compass" appBundleIdentifier:@"com.apple.NanoCompass.watchkitapp" complicationDescriptor:0];
        v12 = v11;
        if (v11)
        {
          v13 = v11;

          v10 = v13;
        }
      }

      v14 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.Depth.temperature" appBundleIdentifier:@"com.apple.Depth" complicationDescriptor:0];
      v72 = v14;
      v15 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.Depth.depth" appBundleIdentifier:@"com.apple.Depth" complicationDescriptor:0];
      v99[0] = @"top";
      v16 = _complicationOrDie(v10);
      v100[0] = v16;
      v99[1] = @"center";
      if ([*(a1 + 32) supportsCharon])
      {
        v17 = v14;
      }

      else
      {
        v17 = v78;
      }

      v18 = _complicationOrDie(v17);
      v100[1] = v18;
      v99[2] = @"bottom";
      if ([*(a1 + 32) supportsCharon])
      {
        v19 = v15;
      }

      else
      {
        v19 = v8;
      }

      _complicationOrDie(v19);
      v21 = v20 = v8;
      v100[2] = v21;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v100;
      v24 = v99;
    }

    v32 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:3];

    v33 = 0;
    v34 = 1;
    v5 = v76;
LABEL_45:
    [v6 _setFaceGalleryComplicationTypesForSlots:v33 canRepeat:1];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __60__NTKWhistlerSubdialsFacesGalleryCollection_facesForDevice___block_invoke_117;
    v79[3] = &unk_278780708;
    v64 = v6;
    v80 = v64;
    [v32 enumerateKeysAndObjectsUsingBlock:v79];
    v65 = [NTKDualTimeStyleEditOption optionWithStyle:v34 forDevice:*(a1 + 32)];
    [v64 selectOption:v65 forCustomEditMode:15 slot:0];
    [v64 selectOption:v5 forCustomEditMode:10 slot:0];
    [v64 selectOption:*(a1 + 40) forCustomEditMode:17 slot:0];
    [*(a1 + 48) addObject:v64];
  }
}

void __60__NTKWhistlerSubdialsFacesGalleryCollection_facesForDevice___block_invoke_2_122(uint64_t a1, void *a2, uint64_t a3)
{
  v51[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [NTKFace defaultFaceOfStyle:34 forDevice:*(a1 + 32)];
  if (v6)
  {
    v7 = 0;
    if (a3 > 3)
    {
      if (a3 <= 5)
      {
        if (a3 == 4)
        {
          v42[0] = @"top";
          v42[1] = @"center";
          v43[0] = &unk_28418AC60;
          v43[1] = &unk_28418AC78;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
          if ([*(a1 + 32) supportsUrsa])
          {
            v17 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.compass.bearing" appBundleIdentifier:@"com.apple.NanoCompass.watchkitapp" complicationDescriptor:0];
            v18 = v17;
            if (v17)
            {
              v40 = @"bottom";
              v41 = v17;
              v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            }

            else
            {
              v9 = 0;
            }

            v8 = 0;
            goto LABEL_22;
          }

LABEL_21:
          v8 = 0;
          v9 = 0;
LABEL_22:
          v7 = 1;
          goto LABEL_28;
        }

        v38[0] = @"top";
        v38[1] = @"center";
        v39[0] = &unk_28418AC90;
        v39[1] = &unk_28418ACA8;
        v38[2] = @"bottom";
        v39[2] = &unk_28418ACC0;
        v11 = MEMORY[0x277CBEAC0];
        v12 = v39;
        v13 = v38;
LABEL_20:
        v10 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:3];
        goto LABEL_21;
      }

      if (a3 == 6)
      {
        if (NTKShowCarbonara(*(a1 + 32)))
        {
          v19 = objc_alloc(MEMORY[0x277CBBBD0]);
          v20 = NTKCarbonaraWidgetIntent();
          v21 = [v19 initWithExtensionBundleIdentifier:@"com.apple.NanoHome.NanoHomeWidgets" containerBundleIdentifier:@"com.apple.NanoHome" kind:@"com.apple.HomeEnergyUI.EnergyForecastComplication" intent:v20];

          v22 = [NTKWidgetComplication complicationWithDescriptor:v21];
          v36 = @"bottom";
          v37 = v22;
          v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v34[0] = @"top";
          v34[1] = @"center";
          v35[0] = &unk_28418ACD8;
          v35[1] = &unk_28418ACF0;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

          v7 = 0;
LABEL_27:
          v9 = 0;
          goto LABEL_28;
        }

        v32[0] = @"top";
        v32[1] = @"center";
        v33[0] = &unk_28418AD08;
        v33[1] = &unk_28418AD20;
        v32[2] = @"bottom";
        v33[2] = &unk_28418AD38;
        v14 = MEMORY[0x277CBEAC0];
        v15 = v33;
        v16 = v32;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        if (a3 != 7)
        {
          goto LABEL_28;
        }

        v30[0] = @"top";
        v30[1] = @"center";
        v31[0] = &unk_28418AD50;
        v31[1] = &unk_28418AD68;
        v30[2] = @"bottom";
        v31[2] = &unk_28418AD80;
        v14 = MEMORY[0x277CBEAC0];
        v15 = v31;
        v16 = v30;
      }
    }

    else if (a3 > 1)
    {
      if (a3 == 2)
      {
        v46[0] = @"top";
        v46[1] = @"center";
        v47[0] = &unk_28418ABD0;
        v47[1] = &unk_28418ABE8;
        v46[2] = @"bottom";
        v47[2] = &unk_28418AC00;
        v11 = MEMORY[0x277CBEAC0];
        v12 = v47;
        v13 = v46;
        goto LABEL_20;
      }

      v44[0] = @"top";
      v44[1] = @"center";
      v45[0] = &unk_28418AC18;
      v45[1] = &unk_28418AC30;
      v44[2] = @"bottom";
      v45[2] = &unk_28418AC48;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v45;
      v16 = v44;
    }

    else
    {
      if (a3)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        if (a3 == 1)
        {
          v48[0] = @"top";
          v48[1] = @"center";
          v49[0] = &unk_28418AB88;
          v49[1] = &unk_28418ABA0;
          v48[2] = @"bottom";
          v49[2] = &unk_28418ABB8;
          v11 = MEMORY[0x277CBEAC0];
          v12 = v49;
          v13 = v48;
          goto LABEL_20;
        }

LABEL_28:
        [v6 _setFaceGalleryComplicationTypesForSlots:v10 canRepeat:1];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __60__NTKWhistlerSubdialsFacesGalleryCollection_facesForDevice___block_invoke_231;
        v28[3] = &unk_278780758;
        v23 = v6;
        v29 = v23;
        [v9 enumerateKeysAndObjectsUsingBlock:v28];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __60__NTKWhistlerSubdialsFacesGalleryCollection_facesForDevice___block_invoke_2_233;
        v26[3] = &unk_278780780;
        v24 = v23;
        v27 = v24;
        [v8 enumerateKeysAndObjectsUsingBlock:v26];
        v25 = [NTKDualTimeStyleEditOption optionWithStyle:v7 forDevice:*(a1 + 32)];
        [v24 selectOption:v25 forCustomEditMode:15 slot:0];
        [v24 selectOption:v5 forCustomEditMode:10 slot:0];
        [v24 selectOption:*(a1 + 40) forCustomEditMode:17 slot:0];
        [*(a1 + 48) addObject:v24];

        goto LABEL_29;
      }

      v50[0] = @"top";
      v50[1] = @"center";
      v51[0] = &unk_28418AB40;
      v51[1] = &unk_28418AB58;
      v50[2] = @"bottom";
      v51[2] = &unk_28418AB70;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v51;
      v16 = v50;
    }

    v10 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:3];
    v7 = 0;
    v8 = 0;
    goto LABEL_27;
  }

LABEL_29:
}

- (id)_galleryEditOptionsForDevice:(id)device
{
  v6[3] = *MEMORY[0x277D85DE8];
  if ([device isRunningNapiliGMOrLater])
  {
    v5[0] = &unk_284182518;
    v5[1] = &unk_284182500;
    v6[0] = &unk_28418AD98;
    v6[1] = &unk_28418ADB0;
    v5[2] = &unk_2841824E8;
    v6[2] = &unk_28418ADC8;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_galleryPigmentsForDevice:(id)device
{
  v15[4] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  array = [MEMORY[0x277CBEB18] array];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v15[0] = @"special.multicolor";
    v15[1] = @"special.multicolor";
    v15[2] = @"special.multicolor";
    v15[3] = @"special.multicolor";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
    [array addObjectsFromArray:v5];

    v6 = [NTKFace defaultFaceOfStyle:40 forDevice:deviceCopy];
    v7 = [v6 defaultOptionForCustomEditMode:10 slot:0];
    fullname = [v7 fullname];
    v9 = [fullname isEqualToString:@"special.multicolor"];

    if (v9)
    {
      [array addObjectsFromArray:&unk_28418ADE0];
    }

    else
    {
      fullname2 = [v7 fullname];
      v14[0] = fullname2;
      fullname3 = [v7 fullname];
      v14[1] = fullname3;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
      [array addObjectsFromArray:v12];
    }
  }

  return array;
}

@end