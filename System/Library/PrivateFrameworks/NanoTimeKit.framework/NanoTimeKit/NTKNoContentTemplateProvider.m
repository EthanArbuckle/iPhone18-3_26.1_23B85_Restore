@interface NTKNoContentTemplateProvider
+ (id)largeModularEmptyTextProvider;
+ (id)templateForDisplayName:(id)a3 image:(id)a4 family:(int64_t)a5 device:(id)a6 sdkVersion:(id)a7;
@end

@implementation NTKNoContentTemplateProvider

+ (id)templateForDisplayName:(id)a3 image:(id)a4 family:(int64_t)a5 device:(id)a6 sdkVersion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = 0;
  if (a5 > 6)
  {
    if (a5 <= 9)
    {
      if (a5 == 7)
      {
        v17 = [MEMORY[0x277CBBB40] imageProviderWithOnePieceImage:v13];
        v18 = MEMORY[0x277CBB7F0];
        goto LABEL_34;
      }

      if (a5 == 8)
      {
        v17 = NTKClockFaceLocalizedString(@"SIGNATURE_CONER_NO_DATA", @"----");
        if (!v13)
        {
          v26 = [MEMORY[0x277CBBB88] textProviderWithText:v12];
          v28 = [MEMORY[0x277CBBB88] textProviderWithText:v17];
          v16 = [MEMORY[0x277CBB900] templateWithInnerTextProvider:v28 outerTextProvider:v26];

LABEL_47:
          v13 = 0;
          goto LABEL_48;
        }

        v19 = [MEMORY[0x277CBBB10] providerWithFullColorImage:v13 monochromeFilterType:0];
        v23 = [MEMORY[0x277CBBB88] textProviderWithText:v17];
        v24 = [MEMORY[0x277CBB908] templateWithTextProvider:v23 imageProvider:v19];
      }

      else
      {
        v17 = [MEMORY[0x277CBBB88] textProviderWithText:v12];
        if (v13)
        {
          v19 = [MEMORY[0x277CBBB10] providerWithFullColorImage:v13 monochromeFilterType:0];
        }

        else
        {
          v25 = [NTKNoContentTemplateProvider graphicCircularEmptyImageForDevice:v14];
          v19 = [MEMORY[0x277CBBB10] providerWithFullColorImage:v25 monochromeFilterType:0 applyScalingAndCircularMasking:0];
        }

        v23 = [MEMORY[0x277CBB850] templateWithImageProvider:v19];
        v24 = [MEMORY[0x277CBB810] templateWithCircularTemplate:v23 textProvider:v17];
      }

      v16 = v24;

      goto LABEL_42;
    }

    if (a5 == 10)
    {
      if (!v13)
      {
        v13 = [NTKNoContentTemplateProvider graphicCircularEmptyImageForDevice:v14];
      }

      v17 = [MEMORY[0x277CBBB10] providerWithFullColorImage:v13 monochromeFilterType:0 applyScalingAndCircularMasking:1];
      v18 = MEMORY[0x277CBB850];
      goto LABEL_34;
    }

    if (a5 != 11)
    {
      if (a5 == 12)
      {
        if (!v13)
        {
          v13 = [NTKNoContentTemplateProvider graphicExtraLargeCircularEmptyImageForDevice:v14];
        }

        v17 = [MEMORY[0x277CBBB10] providerWithFullColorImage:v13 monochromeFilterType:0 applyScalingAndCircularMasking:1];
        v18 = MEMORY[0x277CBB938];
        goto LABEL_34;
      }

      goto LABEL_49;
    }

    v17 = [MEMORY[0x277CBBB88] textProviderWithText:v12];
    if (v13)
    {
      v19 = [MEMORY[0x277CBBB10] providerWithFullColorImage:v13 monochromeFilterType:0];
      v22 = [MEMORY[0x277CBB9B0] templateWithTextProvider:v17 imageProvider:v19];
      goto LABEL_38;
    }

    v26 = [a1 largeRectangularEmptyTextProviderForDevice:v14];
    v27 = [MEMORY[0x277CBB9D8] templateWithHeaderTextProvider:v17 body1TextProvider:v26];
LABEL_46:
    v16 = v27;
    goto LABEL_47;
  }

  if (a5 > 2)
  {
    switch(a5)
    {
      case 3:
        v17 = [MEMORY[0x277CBBB88] textProviderWithText:v12];
        v20 = MEMORY[0x277CBBA80];
        break;
      case 4:
        v17 = [MEMORY[0x277CBBB40] imageProviderWithOnePieceImage:v13];
        v18 = MEMORY[0x277CBB790];
        goto LABEL_34;
      case 6:
        v17 = [MEMORY[0x277CBBB88] textProviderWithText:v12];
        v20 = MEMORY[0x277CBBA90];
        break;
      default:
        goto LABEL_49;
    }

    v21 = [v20 templateWithTextProvider:v17];
LABEL_35:
    v16 = v21;
LABEL_48:

    goto LABEL_49;
  }

  switch(a5)
  {
    case 0:
      if (v13)
      {
        v17 = [MEMORY[0x277CBBB40] imageProviderWithOnePieceImage:v13];
        v18 = MEMORY[0x277CBBA50];
        goto LABEL_34;
      }

      v17 = NTKClockFaceLocalizedString(@"SMALL_MODULAR_NO_CONTENT", @"--");
      v26 = [MEMORY[0x277CBBB88] textProviderWithText:v17];
      v27 = [MEMORY[0x277CBBA60] templateWithTextProvider:v26];
      goto LABEL_46;
    case 1:
      v17 = [MEMORY[0x277CBBB88] textProviderWithText:v12];
      v19 = [a1 largeModularEmptyTextProvider];
      v22 = [MEMORY[0x277CBBA08] templateWithHeaderTextProvider:v17 body1TextProvider:v19];
LABEL_38:
      v16 = v22;
LABEL_42:

      goto LABEL_48;
    case 2:
      v17 = [MEMORY[0x277CBBB40] imageProviderWithOnePieceImage:v13];
      v18 = MEMORY[0x277CBBAC0];
LABEL_34:
      v21 = [v18 templateWithImageProvider:v17];
      goto LABEL_35;
  }

LABEL_49:
  [v16 setSDKVersionFromLS:v15];
  v34 = MEMORY[0x277D85DD0];
  v35 = 3221225472;
  v36 = __86__NTKNoContentTemplateProvider_templateForDisplayName_image_family_device_sdkVersion___block_invoke;
  v37 = &unk_2787846C8;
  v29 = v16;
  v38 = v29;
  v39 = v15;
  v30 = v15;
  [v29 enumerateEmbeddedTemplateKeysWithBlock:&v34];
  [v29 finalize];
  v31 = v39;
  v32 = v29;

  return v29;
}

void __86__NTKNoContentTemplateProvider_templateForDisplayName_image_family_device_sdkVersion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) valueForKey:a2];
  [v3 setSDKVersionFromLS:*(a1 + 40)];
}

+ (id)largeModularEmptyTextProvider
{
  if (largeModularEmptyTextProvider_onceToken != -1)
  {
    +[NTKNoContentTemplateProvider largeModularEmptyTextProvider];
  }

  v3 = largeModularEmptyTextProvider___largeModularEmptyTextProvider;

  return v3;
}

void __61__NTKNoContentTemplateProvider_largeModularEmptyTextProvider__block_invoke()
{
  v2 = NTKClockFaceLocalizedString(@"LARGE_MODULAR_NO_CONTENT", @"–––––––––––\n–––––––––––");
  v0 = [MEMORY[0x277CBBB58] _dashTrackingTextProviderWithDashes:v2 tracking:305.0];
  v1 = largeModularEmptyTextProvider___largeModularEmptyTextProvider;
  largeModularEmptyTextProvider___largeModularEmptyTextProvider = v0;
}

id __75__NTKNoContentTemplateProvider_largeRectangularEmptyTextProviderForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_54);
  if (_block_invoke___cachedDevice_54)
  {
    v3 = _block_invoke___cachedDevice_54 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke___previousCLKDeviceVersion_54))
  {
    _block_invoke___cachedDevice_54 = v2;
    _block_invoke___previousCLKDeviceVersion_54 = [v2 version];
    v5 = __75__NTKNoContentTemplateProvider_largeRectangularEmptyTextProviderForDevice___block_invoke_2();
    v6 = _block_invoke_value_39;
    _block_invoke_value_39 = v5;
  }

  v7 = _block_invoke_value_39;
  os_unfair_lock_unlock(&_block_invoke_lock_54);

  return v7;
}

id __75__NTKNoContentTemplateProvider_largeRectangularEmptyTextProviderForDevice___block_invoke_2()
{
  CLKValueForDeviceMetrics();
  v1 = v0;
  v2 = NTKClockFaceLocalizedString(@"LARGE_RECTANGULAR_NO_CONTENT", @"––––––––––––\n––––––––––––");
  v3 = [MEMORY[0x277CBBB58] _dashTrackingTextProviderWithDashes:v2 tracking:v1];

  return v3;
}

id __67__NTKNoContentTemplateProvider_graphicCircularEmptyImageForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock_7);
  if (_block_invoke_2___cachedDevice_7)
  {
    v3 = _block_invoke_2___cachedDevice_7 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke_2___previousCLKDeviceVersion_7))
  {
    _block_invoke_2___cachedDevice_7 = v2;
    _block_invoke_2___previousCLKDeviceVersion_7 = [v2 version];
    v5 = __67__NTKNoContentTemplateProvider_graphicCircularEmptyImageForDevice___block_invoke_2(_block_invoke_2___previousCLKDeviceVersion_7, v2);
    v6 = _block_invoke_2_value_5;
    _block_invoke_2_value_5 = v5;
  }

  v7 = _block_invoke_2_value_5;
  os_unfair_lock_unlock(&_block_invoke_2_lock_7);

  return v7;
}

id __67__NTKNoContentTemplateProvider_graphicCircularEmptyImageForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = NTKWhistlerSubdialComplicationDiameter(v2);
  CLKValueForDeviceMetrics();
  v5 = v4;
  [v2 screenScale];
  v7 = v6;

  return _richCircularEmptyImage(v3, v5, v7);
}

id __77__NTKNoContentTemplateProvider_graphicExtraLargeCircularEmptyImageForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_3_lock_2);
  if (_block_invoke_3___cachedDevice_2)
  {
    v3 = _block_invoke_3___cachedDevice_2 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke_3___previousCLKDeviceVersion_2))
  {
    _block_invoke_3___cachedDevice_2 = v2;
    _block_invoke_3___previousCLKDeviceVersion_2 = [v2 version];
    v5 = __77__NTKNoContentTemplateProvider_graphicExtraLargeCircularEmptyImageForDevice___block_invoke_2(_block_invoke_3___previousCLKDeviceVersion_2, v2);
    v6 = _block_invoke_3_value_2;
    _block_invoke_3_value_2 = v5;
  }

  v7 = _block_invoke_3_value_2;
  os_unfair_lock_unlock(&_block_invoke_3_lock_2);

  return v7;
}

id __77__NTKNoContentTemplateProvider_graphicExtraLargeCircularEmptyImageForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = NTKGraphicExtraLargeComplicationContentDiameter();
  v4 = [MEMORY[0x277CBBAF8] metricsWithDevice:v2 identitySizeClass:2];
  v12[0] = &unk_284183CB8;
  v12[1] = &unk_284183CD0;
  v13[0] = &unk_284189098;
  v13[1] = &unk_284189098;
  v12[2] = &unk_284183CE8;
  v13[2] = &unk_2841890A8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v4 scaledValue:v5 withOverrides:51.5];
  v7 = v6;

  [v2 screenScale];
  v9 = v8;

  v10 = _richCircularEmptyImage(v3, v7, v9);

  return v10;
}

@end