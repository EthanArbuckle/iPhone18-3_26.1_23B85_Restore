@interface NTKPeopleComplicationEntry
+ (id)lockedEntry;
- (NTKPeopleComplicationEntry)initWithFullName:(id)a3 abbreviation:(id)a4 profileImage:(id)a5;
- (id)templateForComplicationFamily:(int64_t)a3;
@end

@implementation NTKPeopleComplicationEntry

+ (id)lockedEntry
{
  v2 = NTKClockFaceLocalizedString(@"PEOPLE_LOCKED_FULL_NAME", @"------");
  v3 = NTKClockFaceLocalizedString(@"PEOPLE_LOCKED_ABBREVIATION", @"‒‒");
  v4 = [[NTKPeopleComplicationEntry alloc] initWithFullName:v2 abbreviation:v3 profileImage:0];

  return v4;
}

- (NTKPeopleComplicationEntry)initWithFullName:(id)a3 abbreviation:(id)a4 profileImage:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = NTKPeopleComplicationEntry;
  v12 = [(NTKPeopleComplicationEntry *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fullName, a3);
    objc_storeStrong(&v13->_abbreviation, a4);
    objc_storeStrong(&v13->_profileImage, a5);
    v14 = [MEMORY[0x277CBEAA8] date];
    [(NTKTimelineEntryModel *)v13 setEntryDate:v14];
  }

  return v13;
}

- (id)templateForComplicationFamily:(int64_t)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(NTKPeopleComplicationImageProvider);
  [(NTKPeopleComplicationImageProvider *)v5 setProfileImage:self->_profileImage];
  [(NTKPeopleComplicationImageProvider *)v5 setFullName:self->_fullName];
  [(NTKPeopleComplicationImageProvider *)v5 setNameAbbreviation:self->_abbreviation];
  if (*MEMORY[0x277CBB668] == a3)
  {
    [(NTKPeopleComplicationImageProvider *)v5 setBorderWidth:2.0];
    [(NTKPeopleComplicationImageProvider *)v5 setFontSize:20.0];
    v6 = MEMORY[0x277CBB738];
LABEL_3:
    v7 = [v6 templateWithImageProvider:v5];
    goto LABEL_24;
  }

  v7 = 0;
  if (a3 > 7)
  {
    if (a3 > 9)
    {
      if (a3 == 10)
      {
        [(NTKPeopleComplicationImageProvider *)v5 setBorderWidth:2.0];
        [(NTKPeopleComplicationImageProvider *)v5 setFontSize:20.0];
        v8 = [MEMORY[0x277CBBB10] fullColorImageProviderWithImageViewClass:objc_opt_class()];
        v21 = @"NTKPeopleComplicationImageProviderMetadataKey";
        v22 = v5;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        [v8 setMetadata:v15];

        v13 = MEMORY[0x277CBB850];
      }

      else
      {
        if (a3 != 12)
        {
          goto LABEL_24;
        }

        v11 = [MEMORY[0x277CBBAE8] currentDevice];
        __60__NTKPeopleComplicationEntry_templateForComplicationFamily___block_invoke(v11, v11);

        [(NTKPeopleComplicationImageProvider *)v5 setBorderWidth:*&templateForComplicationFamily__graphicXLargeBorderWidth];
        [(NTKPeopleComplicationImageProvider *)v5 setFontSize:*&templateForComplicationFamily__graphicXLargeFontSize];
        v8 = [MEMORY[0x277CBBB10] fullColorImageProviderWithImageViewClass:objc_opt_class()];
        v19 = @"NTKPeopleComplicationImageProviderMetadataKey";
        v20 = v5;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [v8 setMetadata:v12];

        v13 = MEMORY[0x277CBB938];
      }
    }

    else
    {
      if (a3 != 8)
      {
        [(NTKPeopleComplicationImageProvider *)v5 setBorderWidth:2.0];
        [(NTKPeopleComplicationImageProvider *)v5 setFontSize:20.0];
        v8 = [MEMORY[0x277CBBB10] fullColorImageProviderWithImageViewClass:objc_opt_class()];
        v17 = @"NTKPeopleComplicationImageProviderMetadataKey";
        v18 = v5;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        [v8 setMetadata:v9];

        v10 = [MEMORY[0x277CBB850] templateWithImageProvider:v8];
        v7 = [MEMORY[0x277CBB810] templateWithCircularTemplate:v10];

LABEL_23:
        goto LABEL_24;
      }

      [(NTKPeopleComplicationImageProvider *)v5 setBorderWidth:1.5];
      [(NTKPeopleComplicationImageProvider *)v5 setFontSize:15.0];
      v8 = [MEMORY[0x277CBBB10] fullColorImageProviderWithImageViewClass:objc_opt_class()];
      v23 = @"NTKPeopleComplicationImageProviderMetadataKey";
      v24[0] = v5;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      [v8 setMetadata:v14];

      v13 = MEMORY[0x277CBB8B8];
    }

    v7 = [v13 templateWithImageProvider:v8];
    goto LABEL_23;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      [(NTKPeopleComplicationImageProvider *)v5 setBorderWidth:1.5];
      [(NTKPeopleComplicationImageProvider *)v5 setFontSize:15.0];
      v6 = MEMORY[0x277CBB768];
      goto LABEL_3;
    }

    if (a3 == 7)
    {
      [(NTKPeopleComplicationImageProvider *)v5 setBorderWidth:5.0];
      [(NTKPeopleComplicationImageProvider *)v5 setFontSize:55.0];
      v6 = MEMORY[0x277CBB7F0];
      goto LABEL_3;
    }
  }

  else
  {
    if (!a3)
    {
      [(NTKPeopleComplicationImageProvider *)v5 setBorderWidth:1.5];
      [(NTKPeopleComplicationImageProvider *)v5 setFontSize:15.0];
      v6 = MEMORY[0x277CBBA50];
      goto LABEL_3;
    }

    if (a3 == 2)
    {
      [(NTKPeopleComplicationImageProvider *)v5 setBorderWidth:1.0];
      [(NTKPeopleComplicationImageProvider *)v5 setFontSize:10.5];
      v6 = MEMORY[0x277CBBAC0];
      goto LABEL_3;
    }
  }

LABEL_24:

  return v7;
}

uint64_t __60__NTKPeopleComplicationEntry_templateForComplicationFamily___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKPeopleComplicationEntryProfileImageKey_block_invoke_lock);
  if (NTKPeopleComplicationEntryProfileImageKey_block_invoke___cachedDevice)
  {
    v3 = NTKPeopleComplicationEntryProfileImageKey_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKPeopleComplicationEntryProfileImageKey_block_invoke___previousCLKDeviceVersion))
  {
    v5 = NTKPeopleComplicationEntryProfileImageKey_block_invoke_value;
  }

  else
  {
    NTKPeopleComplicationEntryProfileImageKey_block_invoke___cachedDevice = v2;
    NTKPeopleComplicationEntryProfileImageKey_block_invoke___previousCLKDeviceVersion = [v2 version];
    CLKComplicationGraphicExtraLargeCircularScalingFactor();
    *&templateForComplicationFamily__graphicXLargeBorderWidth = v6 + v6;
    *&templateForComplicationFamily__graphicXLargeFontSize = v6 * 20.0;
    v5 = 1;
    NTKPeopleComplicationEntryProfileImageKey_block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&NTKPeopleComplicationEntryProfileImageKey_block_invoke_lock);

  return v5;
}

@end