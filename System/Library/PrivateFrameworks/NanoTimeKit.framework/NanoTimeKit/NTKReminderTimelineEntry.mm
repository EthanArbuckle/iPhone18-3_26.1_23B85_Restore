@interface NTKReminderTimelineEntry
+ (id)_analogReminderImageProvider;
+ (id)_cornerReminderImageProvider;
+ (id)_reminderImageAnalog;
+ (id)_reminderImageCorner;
+ (id)loadingEntryForFamily:(int64_t)a3;
+ (id)lockedEntryForFamily:(int64_t)a3;
- (id)_createLargeModularTemplate;
- (id)_createLargeUtilityTemplate;
- (id)_createSignatureCornerTemplate;
- (id)description;
- (id)templateForComplicationFamily:(int64_t)a3;
@end

@implementation NTKReminderTimelineEntry

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = NTKReminderTimelineEntry;
  v4 = [(NTKReminderTimelineEntry *)&v12 description];
  v5 = [(NTKTimelineEntryModel *)self entryDate];
  v6 = [(NTKReminderTimelineEntry *)self primaryReminderTitle];
  v7 = [(NTKReminderTimelineEntry *)self primaryReminderId];
  v8 = [(NTKReminderTimelineEntry *)self secondaryReminderTitle];
  v9 = [(NTKReminderTimelineEntry *)self dueDate];
  v10 = [v3 stringWithFormat:@"%@ entryDate %@ title 1 %@ reminderId %@ title 2 %@ dueDate %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)templateForComplicationFamily:(int64_t)a3
{
  switch(a3)
  {
    case 104:
      goto LABEL_2;
    case 8:
      v3 = [(NTKReminderTimelineEntry *)self _createSignatureCornerTemplate];
      break;
    case 3:
LABEL_2:
      v3 = [(NTKReminderTimelineEntry *)self _createLargeUtilityTemplate];
      break;
    case 1:
      v3 = [(NTKReminderTimelineEntry *)self _createLargeModularTemplate];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

+ (id)_reminderImageAnalog
{
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  __48__NTKReminderTimelineEntry__reminderImageAnalog__block_invoke(v3, v3);

  v4 = _reminderImageAnalog_reminderImage;

  return v4;
}

uint64_t __48__NTKReminderTimelineEntry__reminderImageAnalog__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_25);
  if (_block_invoke___cachedDevice_25)
  {
    v3 = _block_invoke___cachedDevice_25 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke___previousCLKDeviceVersion_25))
  {
    _block_invoke___cachedDevice_25 = v2;
    _block_invoke___previousCLKDeviceVersion_25 = [v2 version];
    __48__NTKReminderTimelineEntry__reminderImageAnalog__block_invoke_3();
  }

  v5 = _block_invoke_value_16;
  os_unfair_lock_unlock(&_block_invoke_lock_25);

  return v5;
}

+ (id)_reminderImageCorner
{
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  __48__NTKReminderTimelineEntry__reminderImageCorner__block_invoke(v3, v3);

  v4 = _reminderImageCorner_reminderImage;

  return v4;
}

uint64_t __48__NTKReminderTimelineEntry__reminderImageCorner__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock_2);
  if (_block_invoke_2___cachedDevice_2)
  {
    v3 = _block_invoke_2___cachedDevice_2 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke_2___previousCLKDeviceVersion_2))
  {
    _block_invoke_2___cachedDevice_2 = v2;
    _block_invoke_2___previousCLKDeviceVersion_2 = [v2 version];
    __48__NTKReminderTimelineEntry__reminderImageCorner__block_invoke_3();
  }

  v5 = _block_invoke_2_value_1;
  os_unfair_lock_unlock(&_block_invoke_2_lock_2);

  return v5;
}

+ (id)_cornerReminderImageProvider
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__NTKReminderTimelineEntry__cornerReminderImageProvider__block_invoke;
  v6[3] = &__block_descriptor_40_e19_B16__0__CLKDevice_8l;
  v6[4] = a1;
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  __56__NTKReminderTimelineEntry__cornerReminderImageProvider__block_invoke(v6, v3);

  v4 = _cornerReminderImageProvider_imageProvider;

  return v4;
}

uint64_t __56__NTKReminderTimelineEntry__cornerReminderImageProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_3_lock);
  if (_block_invoke_3___cachedDevice)
  {
    v3 = _block_invoke_3___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_3___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_3_value;
  }

  else
  {
    _block_invoke_3___cachedDevice = v2;
    _block_invoke_3___previousCLKDeviceVersion = [v2 version];
    __56__NTKReminderTimelineEntry__cornerReminderImageProvider__block_invoke_3();
    v5 = 1;
    _block_invoke_3_value = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_3_lock);

  return v5;
}

void __56__NTKReminderTimelineEntry__cornerReminderImageProvider__block_invoke_3()
{
  v0 = MEMORY[0x277CBBB10];
  v3 = [objc_opt_class() _reminderImageCorner];
  v1 = [v0 providerWithFullColorImage:v3 monochromeFilterType:1 applyScalingAndCircularMasking:0];
  v2 = _cornerReminderImageProvider_imageProvider;
  _cornerReminderImageProvider_imageProvider = v1;
}

- (id)_createSignatureCornerTemplate
{
  if ([(NTKReminderTimelineEntry *)self overlappingReminderCount])
  {
    v3 = [(NTKReminderTimelineEntry *)self primaryReminderParentListColor];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [MEMORY[0x277D75348] systemBlueColor];
    }

    v9 = v5;

    if (CLKLanguageIsTallScript())
    {
      v13 = MEMORY[0x277CBBB88];
      v14 = [(NTKReminderTimelineEntry *)self primaryReminderTitle];
      v11 = [v13 finalizedTextProviderWithText:v14];

      [v11 setTintColor:v9];
      v15 = [objc_opt_class() _cornerReminderImageProvider];
      [MEMORY[0x277CBB908] templateWithTextProvider:v11 imageProvider:v15];
    }

    else
    {
      v16 = MEMORY[0x277CBBBB8];
      v17 = [(NTKReminderTimelineEntry *)self dueDate];
      v11 = [v16 textProviderWithDate:v17];

      v18 = MEMORY[0x277CBBB88];
      v19 = [(NTKReminderTimelineEntry *)self primaryReminderTitle];
      v15 = [v18 finalizedTextProviderWithText:v19];

      [v15 setTintColor:v9];
      [MEMORY[0x277CBB900] templateWithInnerTextProvider:v15 outerTextProvider:v11];
    }
    v12 = ;
  }

  else
  {
    v6 = MEMORY[0x277CBBB88];
    v7 = NTKClockFaceLocalizedString(@"REMINDERS_NONE_CORNER", @"No Reminders Due");
    v8 = NTKClockFaceLocalizedString(@"REMINDERS_NONE_CORNER_SHORT", @"No Reminders");
    v9 = [v6 textProviderWithText:v7 shortText:v8];

    v10 = [MEMORY[0x277D75348] systemBlueColor];
    [v9 setTintColor:v10];

    v11 = [objc_opt_class() _cornerReminderImageProvider];
    v12 = [MEMORY[0x277CBB908] templateWithTextProvider:v9 imageProvider:v11];
  }

  return v12;
}

- (id)_createLargeModularTemplate
{
  if ([(NTKReminderTimelineEntry *)self overlappingReminderCount])
  {
    v3 = MEMORY[0x277CBBBB8];
    v4 = [(NTKReminderTimelineEntry *)self dueDate];
    v5 = [v3 textProviderWithDate:v4];

    v6 = MEMORY[0x277CBBB88];
    v7 = [(NTKReminderTimelineEntry *)self primaryReminderTitle];
    v8 = [v6 finalizedTextProviderWithText:v7];
  }

  else
  {
    v9 = MEMORY[0x277CBBB88];
    v10 = NTKClockFaceLocalizedString(@"REMINDERS_TITLE", @"Reminders");
    v5 = [v9 textProviderWithText:v10];

    v11 = MEMORY[0x277CBBB88];
    v12 = NTKClockFaceLocalizedString(@"REMINDERS_NO_SCHEDULED_REMINDERS_LARGE_MODULAR", @"No scheduled reminders");
    v8 = [v11 textProviderWithText:v12];
  }

  v13 = [MEMORY[0x277CBBA08] templateWithHeaderTextProvider:v5 body1TextProvider:v8];

  v14 = [MEMORY[0x277D75348] systemBlueColor];
  [v13 setTintColor:v14];

  return v13;
}

- (id)_createLargeUtilityTemplate
{
  if ([(NTKReminderTimelineEntry *)self overlappingReminderCount])
  {
    v3 = [(NTKReminderTimelineEntry *)self dueDate];
    v4 = [(NTKReminderTimelineEntry *)self primaryReminderTitle];
    if (v4)
    {
      v5 = [(NTKReminderTimelineEntry *)self primaryReminderTitle];
      v6 = [MEMORY[0x277CBEAF8] currentLocale];
      v7 = [v5 uppercaseStringWithLocale:v6];
    }

    else
    {
      v7 = &stru_284110E98;
    }

    v10 = [MEMORY[0x277CBBBB8] textProviderWithDate:v3];
    [v10 setPrefersDesignatorToMinutes:1];
    v11 = MEMORY[0x277CBBBA0];
    v12 = [MEMORY[0x277CBBB88] textProviderWithText:v7];
    v9 = [v11 textProviderWithFormat:@"%@ %@", v10, v12];
  }

  else
  {
    v8 = MEMORY[0x277CBBB88];
    v3 = NTKClockFaceLocalizedString(@"REMINDERS_NO_SCHEDULED_REMINDERS_LONG_UTILITY", @"NO REMINDERS DUE");
    v9 = [v8 textProviderWithText:v3];
  }

  v13 = [MEMORY[0x277CBBA80] templateWithTextProvider:v9];

  return v13;
}

+ (id)_analogReminderImageProvider
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__NTKReminderTimelineEntry__analogReminderImageProvider__block_invoke;
  v6[3] = &__block_descriptor_40_e19_B16__0__CLKDevice_8l;
  v6[4] = a1;
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  __56__NTKReminderTimelineEntry__analogReminderImageProvider__block_invoke(v6, v3);

  v4 = _analogReminderImageProvider_imageProvider;

  return v4;
}

uint64_t __56__NTKReminderTimelineEntry__analogReminderImageProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_4_lock);
  if (_block_invoke_4___cachedDevice)
  {
    v3 = _block_invoke_4___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_4___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_4_value;
  }

  else
  {
    _block_invoke_4___cachedDevice = v2;
    _block_invoke_4___previousCLKDeviceVersion = [v2 version];
    __56__NTKReminderTimelineEntry__analogReminderImageProvider__block_invoke_3();
    v5 = 1;
    _block_invoke_4_value = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_4_lock);

  return v5;
}

void __56__NTKReminderTimelineEntry__analogReminderImageProvider__block_invoke_3()
{
  v0 = MEMORY[0x277CBBB40];
  v1 = [objc_opt_class() _reminderImageAnalog];
  v2 = [v0 imageProviderWithOnePieceImage:v1];
  v3 = _analogReminderImageProvider_imageProvider;
  _analogReminderImageProvider_imageProvider = v2;

  v4 = _analogReminderImageProvider_imageProvider;
  v5 = [MEMORY[0x277D75348] systemBlueColor];
  [v4 setTintColor:v5];
}

+ (id)lockedEntryForFamily:(int64_t)a3
{
  switch(a3)
  {
    case 104:
      v3 = MEMORY[0x277CBBB88];
      v4 = NTKClockFaceLocalizedString(@"COMPLICATION_LOCKED_PLACEHOLDER_LONG_UTILITY", 0);
      v5 = [v3 textProviderWithText:v4];

      v6 = [MEMORY[0x277CBBA80] templateWithTextProvider:v5];
      goto LABEL_10;
    case 8:
      v17 = MEMORY[0x277CBBB88];
      v18 = NTKClockFaceLocalizedString(@"COMPLICATION_LOCKED_PLACEHOLDER_CORNER", 0);
      v5 = [v17 textProviderWithText:v18];

      v19 = [MEMORY[0x277D75348] systemBlueColor];
      [v5 setTintColor:v19];

      v15 = [objc_opt_class() _cornerReminderImageProvider];
      v16 = MEMORY[0x277CBB908];
      goto LABEL_9;
    case 3:
      v13 = MEMORY[0x277CBBB88];
      v14 = NTKClockFaceLocalizedString(@"COMPLICATION_LOCKED_PLACEHOLDER_LONG_UTILITY", 0);
      v5 = [v13 textProviderWithText:v14];

      v15 = [a1 _analogReminderImageProvider];
      v16 = MEMORY[0x277CBBA80];
LABEL_9:
      v6 = [v16 templateWithTextProvider:v5 imageProvider:v15];

      goto LABEL_10;
  }

  if (a3 != 1)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v8 = MEMORY[0x277CBBB88];
  v9 = NTKClockFaceLocalizedString(@"REMINDERS_TITLE", @"Reminders");
  v5 = [v8 textProviderWithText:v9];

  v10 = MEMORY[0x277CBBB88];
  v11 = NTKClockFaceLocalizedString(@"COMPLICATION_LOCKED_PLACEHOLDER_LARGE_MODULAR", 0);
  v12 = [v10 textProviderWithText:v11];

  v6 = [MEMORY[0x277CBBA08] templateWithHeaderTextProvider:v5 body1TextProvider:v12];

LABEL_10:
  if (v6)
  {
    [v6 finalize];
    v20 = MEMORY[0x277CBBAC8];
    v21 = [MEMORY[0x277CBEAA8] date];
    v22 = [v20 entryWithDate:v21 complicationTemplate:v6];

    goto LABEL_14;
  }

LABEL_13:
  v22 = 0;
LABEL_14:

  return v22;
}

+ (id)loadingEntryForFamily:(int64_t)a3
{
  switch(a3)
  {
    case 104:
      v3 = MEMORY[0x277CBBB88];
      v4 = NTKClockFaceLocalizedString(@"REMINDERS_FETCHING_LARGE_UTILITY", @"GETTING REMINDERS...");
      v5 = [v3 textProviderWithText:v4];

      v6 = [MEMORY[0x277CBBA80] templateWithTextProvider:v5];
      goto LABEL_10;
    case 8:
      v17 = MEMORY[0x277CBBB88];
      v18 = NTKClockFaceLocalizedString(@"REMINDERS_FETCHING_CORNER", @"Getting reminders...");
      v19 = NTKClockFaceLocalizedString(@"REMINDERS_FETCHING_CORNER_SHORT", @"Loading...");
      v5 = [v17 textProviderWithText:v18 shortText:v19];

      v20 = [MEMORY[0x277D75348] systemBlueColor];
      [v5 setTintColor:v20];

      v15 = [objc_opt_class() _cornerReminderImageProvider];
      v16 = MEMORY[0x277CBB908];
      goto LABEL_9;
    case 3:
      v13 = MEMORY[0x277CBBB88];
      v14 = NTKClockFaceLocalizedString(@"REMINDERS_FETCHING_LARGE_UTILITY", @"GETTING REMINDERS...");
      v5 = [v13 textProviderWithText:v14];

      v15 = [a1 _analogReminderImageProvider];
      v16 = MEMORY[0x277CBBA80];
LABEL_9:
      v6 = [v16 templateWithTextProvider:v5 imageProvider:v15];

      goto LABEL_10;
  }

  if (a3 != 1)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v8 = MEMORY[0x277CBBB88];
  v9 = NTKClockFaceLocalizedString(@"REMINDERS_TITLE", @"Reminders");
  v5 = [v8 textProviderWithText:v9];

  v10 = MEMORY[0x277CBBB88];
  v11 = NTKClockFaceLocalizedString(@"REMINDERS_FETCHING_LARGE_MODULAR", @"Getting reminders...");
  v12 = [v10 textProviderWithText:v11];

  v6 = [MEMORY[0x277CBBA08] templateWithHeaderTextProvider:v5 body1TextProvider:v12];

LABEL_10:
  if (v6)
  {
    [v6 finalize];
    v21 = MEMORY[0x277CBBAC8];
    v22 = [MEMORY[0x277CBEAA8] date];
    v23 = [v21 entryWithDate:v22 complicationTemplate:v6];

    goto LABEL_14;
  }

LABEL_13:
  v23 = 0;
LABEL_14:

  return v23;
}

@end