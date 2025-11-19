__CFString *NWCComplicationFamilyDescription(uint64_t a1)
{
  if (*MEMORY[0x277CBB668] == a1)
  {
    v2 = @"CLKComplicationFamilyCircularMedium";
  }

  else
  {
    v2 = CLKStringForComplicationFamily();
  }

  return v2;
}

void NWCHourlyDateEnumeration(void *a1, void *a2, unint64_t a3, void *a4)
{
  v16 = a1;
  v7 = a2;
  v8 = a4;
  v9 = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [v9 components:60 fromDate:v16];
  [v10 setHour:{objc_msgSend(v10, "hour") + 1}];
  v11 = [v9 dateFromComponents:v10];
  if ([v11 compare:v7] != 1 && a3 != 0)
  {
    v13 = 1;
    do
    {
      v14 = v11;
      v8[2](v8, v11);
      [v10 setHour:{objc_msgSend(v10, "hour") + 1}];
      v11 = [v9 dateFromComponents:v10];

      if ([v11 compare:v7] == 1)
      {
        break;
      }
    }

    while (v13++ < a3);
  }
}

void NWCMinuteByMinuteDateEnumeration(void *a1, void *a2, unint64_t a3, void *a4)
{
  v16 = a1;
  v7 = a2;
  v8 = a4;
  v9 = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [v9 components:124 fromDate:v16];
  [v10 setMinute:{objc_msgSend(v10, "minute") + 1}];
  v11 = [v9 dateFromComponents:v10];
  if ([v11 compare:v7] != 1 && a3 != 0)
  {
    v13 = 1;
    do
    {
      v14 = v11;
      v8[2](v8, v11);
      [v10 setMinute:{objc_msgSend(v10, "minute") + 1}];
      v11 = [v9 dateFromComponents:v10];

      if ([v11 compare:v7] == 1)
      {
        break;
      }
    }

    while (v13++ < a3);
  }
}

uint64_t NWCIsCurrentLocaleNonLatin()
{
  if (NWCIsCurrentLocaleNonLatin_onceToken != -1)
  {
    NWCIsCurrentLocaleNonLatin_cold_1();
  }

  v0 = NWCIsCurrentLocaleNonLatin_NonLatinSet;
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v1 languageCode];
  v3 = [v0 containsObject:v2];

  return v3;
}

uint64_t __NWCIsCurrentLocaleNonLatin_block_invoke()
{
  NWCIsCurrentLocaleNonLatin_NonLatinSet = [MEMORY[0x277CBEB98] setWithObjects:{@"zh", @"ja", @"ko", @"hi", @"th", @"ar", 0}];

  return MEMORY[0x2821F96F8]();
}

id NWCLocalizationBundle()
{
  if (NWCLocalizationBundle_onceToken != -1)
  {
    NWCLocalizationBundle_cold_1();
  }

  v1 = NWCLocalizationBundle_Bundle;

  return v1;
}

uint64_t __NWCLocalizationBundle_block_invoke()
{
  NWCLocalizationBundle_Bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id NWCLocalizedImageNamed(void *a1)
{
  v1 = MEMORY[0x277D755B8];
  v2 = a1;
  v3 = NWCLocalizationBundle();
  v4 = [MEMORY[0x277D759A0] mainScreen];
  v5 = [v4 traitCollection];
  v6 = [v1 imageNamed:v2 inBundle:v3 compatibleWithTraitCollection:v5];

  return v6;
}

id NWCLocalizedString(void *a1)
{
  v1 = a1;
  v2 = NWCLocalizationBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_286CFFA48 table:@"NanoWeatherComplications-Localizable"];

  return v3;
}

id NWCGlyphPrefixedTextProvider(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    gotLoadHelper_x8__OBJC_CLASS___NTKOverrideTextProvider(v6);
    v8 = *(v7 + 152);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __NWCGlyphPrefixedTextProvider_block_invoke;
    v11[3] = &unk_279962300;
    v12 = v5;
    v9 = [v8 textProviderWithText:a1 overrideBlock:v11];
  }

  else
  {
    v9 = [MEMORY[0x277CBBB88] textProviderWithText:a1];
  }

  return v9;
}

id __NWCGlyphPrefixedTextProvider_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = 0;
  if (a2 && !a3)
  {
    v7 = a4;
    v8 = a2;
    v9 = [v7 otherAttributes];
    v10 = [v9 mutableCopy];

    [v10 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x277D740C0]];
    v11 = [v7 font];

    v12 = [NWCLocationDisplayName attributedDisplayNameWithLocationGlyph:v8 inFont:v11];

    v13 = [v12 mutableCopy];
    [v13 addAttributes:v10 range:{0, objc_msgSend(v13, "length")}];
    v4 = [v13 copy];
  }

  return v4;
}

double NWCExtraLargeScalingFactor(void *a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  __NWCExtraLargeScalingFactor_block_invoke(a1, a1);
  v1 = NWCExtraLargeScalingFactor_Metrics;
  v7[0] = &unk_286D01E80;
  v7[1] = &unk_286D01E98;
  v8[0] = &unk_286D01FA0;
  v8[1] = &unk_286D01FA0;
  v7[2] = &unk_286D01EB0;
  v8[2] = &unk_286D01FB0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v1 scaledValue:v2 withOverrides:2.86];
  v4 = v3;

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __NWCExtraLargeScalingFactor_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NWCMaxHourlyCountInDay_block_invoke_lock);
  if (NWCMaxHourlyCountInDay_block_invoke___cachedDevice)
  {
    v3 = NWCMaxHourlyCountInDay_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NWCMaxHourlyCountInDay_block_invoke___previousCLKDeviceVersion))
  {
    v5 = NWCMaxHourlyCountInDay_block_invoke_value;
  }

  else
  {
    NWCMaxHourlyCountInDay_block_invoke___cachedDevice = v2;
    NWCMaxHourlyCountInDay_block_invoke___previousCLKDeviceVersion = [v2 version];
    __NWCExtraLargeScalingFactor_block_invoke_3(NWCMaxHourlyCountInDay_block_invoke___previousCLKDeviceVersion, v2);
    v5 = 1;
    NWCMaxHourlyCountInDay_block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&NWCMaxHourlyCountInDay_block_invoke_lock);

  return v5;
}

void __NWCExtraLargeScalingFactor_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:0];
  v3 = NWCExtraLargeScalingFactor_Metrics;
  NWCExtraLargeScalingFactor_Metrics = v2;
}

id NWMConditionsLocalizedString(void *a1)
{
  v1 = a1;
  v2 = +[NWCCBundle bundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_286CFFA48 table:@"Conditions"];

  return v3;
}

double gotLoadHelper_x8__OBJC_CLASS___NTKOverrideTextProvider(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NanoTimeKit))
  {
    return dlopenHelper_NanoTimeKit(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_NanoTimeKit(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/NanoTimeKit.framework/NanoTimeKit", 0);
  atomic_store(1u, &dlopenHelperFlag_NanoTimeKit);
  return a1;
}