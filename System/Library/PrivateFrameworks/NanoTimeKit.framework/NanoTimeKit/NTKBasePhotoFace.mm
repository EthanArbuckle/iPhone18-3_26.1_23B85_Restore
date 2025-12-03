@interface NTKBasePhotoFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (BOOL)_allowsEditing;
- (id)_localizedNameForComplicationSlot:(id)slot;
@end

@implementation NTKBasePhotoFace

+ (id)_complicationSlotDescriptors
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = NTKAllUtilitySmallFlatComplicationTypes();
  v3 = NTKAllUtilityLargeNarrowComplicationTypes();
  v10[0] = @"top";
  v4 = NTKComplicationTypeRankedListWithDefaultTypes(&unk_284189E98);
  v5 = NTKComplicationSlotDescriptor(6, v2, v4);
  v11[0] = v5;
  v10[1] = @"bottom";
  v6 = NTKComplicationTypeRankedListWithDefaultTypes(&unk_284189EB0);
  v7 = NTKComplicationSlotDescriptor(104, v3, v6);
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

+ (id)_orderedComplicationSlots
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"top";
  v4[1] = @"bottom";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:@"top"])
  {
    v4 = @"ABOVE_TIME";
  }

  else
  {
    v5 = [slotCopy isEqualToString:@"bottom"];
    v4 = @"BELOW_TIME";
    if (!v5)
    {
      v4 = 0;
    }
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SLOT_LABEL_%@", v4];
  v7 = NTKClockFaceLocalizedString(v6, @"slot name");

  return v7;
}

- (BOOL)_allowsEditing
{
  resourceDirectory = [(NTKFace *)self resourceDirectory];
  v3 = resourceDirectory != 0;

  return v3;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 14)
  {
    v5 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_LABEL_PHOTO_POSITION_COMPANION", @"Time Position");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end