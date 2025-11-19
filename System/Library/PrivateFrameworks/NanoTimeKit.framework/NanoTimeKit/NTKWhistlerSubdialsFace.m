@interface NTKWhistlerSubdialsFace
+ (id)_complicationSlotDescriptors;
+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_customEditModes;
- (id)_defaultBackgroundOption;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)editOptionsThatHideEditModes;
- (id)pigmentOptionProvider;
- (int64_t)timeStyle;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4;
- (void)selectOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
@end

@implementation NTKWhistlerSubdialsFace

- (int64_t)timeStyle
{
  v2 = [(NTKFace *)self selectedOptionForCustomEditMode:15 slot:0];
  v3 = [v2 style] != 0;

  return v3;
}

- (void)selectOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NTKFace *)self selectedOptionForCustomEditMode:a4 slot:v9];
  v13.receiver = self;
  v13.super_class = NTKWhistlerSubdialsFace;
  [(NTKFace *)&v13 selectOption:v8 forCustomEditMode:a4 slot:v9];

  if (a4 == 15 && (NTKEqualObjects(v8, v10) & 1) == 0)
  {
    v11 = v10;
    v12 = [v8 style];
    if (v12 != [v11 style])
    {
      [(NTKFace *)self _notifyObserversFaceTimeStyleChanged];
    }
  }
}

+ (id)_complicationSlotDescriptors
{
  v18[3] = *MEMORY[0x277D85DE8];
  v2 = NTKAllSignatureCircularTypes();
  v3 = NTKAllSignatureRectangularTypes();
  v4 = NTKComplicationTypeRankedListWithDefaultTypes(&unk_28418B7E8);
  v5 = [MEMORY[0x277CBBAE8] currentDevice];
  v6 = [v5 isRunningNapiliGMOrLater];
  v7 = [v5 isTinker];
  v8 = &unk_28418B800;
  if (v6)
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = &unk_28418B818;
  }

  v10 = NTKComplicationTypeRankedListWithDefaultTypes(v9);
  v11 = NTKComplicationTypeRankedListWithDefaultTypes(&unk_28418B830);
  v17[0] = @"top";
  v12 = NTKComplicationSlotDescriptor(10, v2, v4);
  v18[0] = v12;
  v17[1] = @"center";
  v13 = NTKComplicationSlotDescriptor(10, v2, v10);
  v18[1] = v13;
  v17[2] = @"bottom";
  v14 = NTKComplicationSlotDescriptor(11, v3, v11);
  v18[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  return v15;
}

+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4
{
  v5 = a4;
  if ([a3 isEqualToString:@"bottom"])
  {
    v6 = [v5 supportsUrsa];
    v7 = NTKBundleComplicationUrsaBearingBundleIdentifier;
    if (!v6)
    {
      v7 = NTKBundleComplicationNoiseBundleIdentifier;
    }

    v8 = *v7;
    v9 = NTKBundleComplicationUrsaAppBundleIdentifier;
    if (!v6)
    {
      v9 = NTKBundleComplicationNoiseAppBundleIdentifier;
    }

    v10 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:v8 appBundleIdentifier:*v9 complicationDescriptor:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_orderedComplicationSlots
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"top";
  v4[1] = @"center";
  v4[2] = @"bottom";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

- (id)_customEditModes
{
  v3 = [(NTKFace *)self device];
  v4 = NTKShowGossamerUI(v3);

  if (!v4)
  {
    return &unk_28418B878;
  }

  v5 = [(NTKFace *)self device];
  v6 = NTKShowIndicScriptNumerals(v5);

  if (v6)
  {
    return &unk_28418B848;
  }

  else
  {
    return &unk_28418B860;
  }
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 <= 16)
  {
    if (a3 == 10)
    {
      v14 = [(NTKFace *)self device];
      v15 = NTKDefaultFaceColorForDeviceCollection(v14, 7);

      v10 = [(NTKFace *)self device];
      v11 = [NTKFaceColorEditOption optionWithFaceColor:v15 forDevice:v10];
    }

    else
    {
      if (a3 != 15)
      {
        goto LABEL_11;
      }

      v8 = [(NTKFace *)self device];
      v9 = [v8 isTinker];

      v10 = [(NTKFace *)self device];
      v11 = [NTKDualTimeStyleEditOption optionWithStyle:v9 forDevice:v10];
    }

LABEL_9:
    v7 = v11;

    goto LABEL_11;
  }

  if (a3 != 17)
  {
    if (a3 != 19)
    {
      goto LABEL_11;
    }

    Language = CLKLocaleNumberSystemForFirstLanguage();
    v13 = NTKNumeralOptionFromCLKLocaleNumberSystem(Language);
    v10 = [(NTKFace *)self device];
    v11 = [NTKNumeralEditOption optionWithNumeral:v13 forDevice:v10];
    goto LABEL_9;
  }

  v7 = [(NTKWhistlerSubdialsFace *)self _defaultBackgroundOption];
LABEL_11:

  return v7;
}

- (id)_defaultBackgroundOption
{
  v2 = [(NTKFace *)self device];
  v3 = [NTKFaceBackgroundStyleEditOption optionWithBackgroundStyle:0 forDevice:v2];

  return v3;
}

- (id)pigmentOptionProvider
{
  v3 = [(NTKFace *)self device];
  v4 = NTKShowGossamerUI(v3);

  if (self->_isGossamerPigmentEditOptionProvider != v4)
  {
    pigmentEditOptionProvider = self->_pigmentEditOptionProvider;
    self->_pigmentEditOptionProvider = 0;
  }

  v6 = self->_pigmentEditOptionProvider;
  if (!v6)
  {
    self->_isGossamerPigmentEditOptionProvider = v4;
    v7 = [objc_opt_class() pigmentFaceDomain];
    v8 = v7;
    if (self->_isGossamerPigmentEditOptionProvider)
    {
      v9 = [v7 stringByAppendingString:@"-Gossamer"];

      v8 = v9;
    }

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [[NTKPigmentEditOptionProvider alloc] initWithDomain:v8 bundle:v10];
    v12 = self->_pigmentEditOptionProvider;
    self->_pigmentEditOptionProvider = v11;

    v6 = self->_pigmentEditOptionProvider;
  }

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKWhistlerSubdialsFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKWhistlerSubdialsFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKWhistlerSubdialsFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 - 10) <= 9 && ((0x2A1u >> (a3 - 10)))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 15)
  {
    v4 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_LABEL_TIME_COMPANION", @"Time");
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___NTKWhistlerSubdialsFace;
    v4 = objc_msgSendSuper2(&v6, sel__localizedNameOverrideForCustomEditMode_forDevice_, a3, a4);
  }

  return v4;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"top";
  v5[1] = @"center";
  v5[2] = @"bottom";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];

  return v3;
}

- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4
{
  if (a4 > 3)
  {
    if (a4 > 5)
    {
      if (a4 == 6)
      {
        v9 = ntk_standard_pink;
      }

      else
      {
        if (a4 != 7)
        {
          v5 = 0;
          goto LABEL_24;
        }

        v9 = ntk_standard_purple;
      }

      v10 = *v9;
      goto LABEL_23;
    }

    v6 = @"gossamer.color8";
    v7 = @"gossamer.color2";
    if (a4 != 5)
    {
      v7 = 0;
    }

    v8 = a4 == 4;
  }

  else
  {
    if (a4 <= 1)
    {
      if (a4)
      {
        if (a4 == 1)
        {
          v5 = @"gossamer.color3";
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_24;
      }

      v10 = @"special.rainbow";
LABEL_23:
      v5 = v10;
      goto LABEL_24;
    }

    v6 = @"gossamer.color5";
    v7 = @"gossamer.color6";
    if (a4 != 3)
    {
      v7 = 0;
    }

    v8 = a4 == 2;
  }

  if (v8)
  {
    v5 = v6;
  }

  else
  {
    v5 = v7;
  }

LABEL_24:
  v15 = v5;
  v11 = [NTKPigmentEditOption pigmentNamed:v5];
  [(NTKWhistlerSubdialsFace *)self selectOption:v11 forCustomEditMode:10 slot:0];
  v12 = [(NTKFace *)self device];
  v13 = [NTKFaceBackgroundStyleEditOption optionWithBackgroundStyle:v15 != @"special.rainbow" forDevice:v12];

  [(NTKWhistlerSubdialsFace *)self selectOption:v13 forCustomEditMode:17 slot:0];
  v14 = [NTKComplication anyComplicationOfType:0];
  [(NTKFace *)self setComplication:v14 forSlot:@"top"];
  [(NTKFace *)self setComplication:v14 forSlot:@"center"];
  [(NTKFace *)self setComplication:v14 forSlot:@"bottom"];
}

- (id)editOptionsThatHideEditModes
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [(NTKFace *)self device];
  v3 = [NTKDualTimeStyleEditOption optionWithStyle:0 forDevice:v2];

  v7 = v3;
  v8 = &unk_284185C20;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v5;
}

@end