@interface NTKBlackcombFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)allowedComplicationsForSlot:(id)slot includingComplication:(id)complication;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKBlackcombFace

+ (id)_complicationSlotDescriptors
{
  v15[4] = *MEMORY[0x277D85DE8];
  v2 = NTKAllSignatureCircularTypes();
  v13 = NTKAllExtendedSignatureCircularTypes();
  v3 = NTKComplicationTypeRankedListWithDefaultTypes(&unk_284189EE0);
  v4 = NTKComplicationTypeRankedListWithDefaultTypes(&unk_284189EF8);
  v5 = NTKComplicationTypeRankedListWithDefaultTypes(&unk_284189F10);
  v6 = NTKComplicationTypeRankedListWithDefaultTypes(&unk_284189F28);
  v14[0] = @"subdial-top";
  v7 = NTKComplicationSlotDescriptor(10, v13, v3);
  v15[0] = v7;
  v14[1] = @"subdial-left";
  v8 = NTKComplicationSlotDescriptor(10, v2, v4);
  v15[1] = v8;
  v14[2] = @"subdial-right";
  v9 = NTKComplicationSlotDescriptor(10, v2, v5);
  v15[2] = v9;
  v14[3] = @"subdial-bottom";
  v10 = NTKComplicationSlotDescriptor(10, v2, v6);
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  return v11;
}

+ (id)_orderedComplicationSlots
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"subdial-top";
  v4[1] = @"subdial-left";
  v4[2] = @"subdial-right";
  v4[3] = @"subdial-bottom";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 10)
  {
    device = [(NTKFace *)self device];
    v10 = NTKDefaultFaceColorForDeviceCollection(device, 200);

    device2 = [(NTKFace *)self device];
    v8 = [(NTKFaceColorEditOption *)NTKFaceColorMonochromeEditOption optionWithFaceColor:v10 forDevice:device2];
    goto LABEL_5;
  }

  if (mode == 15)
  {
    device2 = [(NTKFace *)self device];
    v8 = [NTKBlackcombDialColorEditOption optionWithBlackcombDialColor:0 forDevice:device2];
LABEL_5:
    v11 = v8;

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKBlackcombFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKBlackcombFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKBlackcombFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 15 || mode == 10)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 15)
  {
    v4 = [@"EDIT_MODE_BLACKCOMB_LABEL_STYLE" stringByAppendingString:{@"_COMPANION", device}];
    v5 = NTKCompanionClockFaceLocalizedString(v4, @"edit mode");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NTKBlackcombFace;
    v5 = objc_msgSendSuper2(&v7, sel__localizedNameOverrideForCustomEditMode_forDevice_, mode, device);
  }

  return v5;
}

+ (id)_richComplicationSlotsForDevice:(id)device
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"subdial-top";
  v5[1] = @"subdial-left";
  v5[2] = @"subdial-right";
  v5[3] = @"subdial-bottom";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];

  return v3;
}

- (id)allowedComplicationsForSlot:(id)slot includingComplication:(id)complication
{
  v29 = *MEMORY[0x277D85DE8];
  slotCopy = slot;
  v27.receiver = self;
  v27.super_class = NTKBlackcombFace;
  v7 = [(NTKFace *)&v27 allowedComplicationsForSlot:slotCopy includingComplication:complication];
  if (([slotCopy isEqualToString:@"subdial-top"] & 1) == 0)
  {
    v18 = v7;
    goto LABEL_19;
  }

  v21 = v7;
  v22 = slotCopy;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v9)
  {
LABEL_13:

LABEL_17:
    v18 = v8;
    goto LABEL_18;
  }

  v10 = v9;
  v11 = *v24;
LABEL_4:
  v12 = 0;
  while (1)
  {
    if (*v24 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v23 + 1) + 8 * v12);
    if ([v13 complicationType] != 48)
    {
      goto LABEL_11;
    }

    v14 = v13;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      complication = [v14 complication];
      bundleIdentifier = [complication bundleIdentifier];
      v17 = [bundleIdentifier isEqualToString:@"com.apple.NanoTimeKit.DigitalTime"];

      if (v17)
      {
        break;
      }
    }

LABEL_11:
    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v10)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  if (!v14)
  {
    goto LABEL_17;
  }

  v19 = [v8 mutableCopy];
  [v19 removeObject:v14];
  v18 = [v19 copy];

LABEL_18:
  v7 = v21;
  slotCopy = v22;
LABEL_19:

  return v18;
}

@end