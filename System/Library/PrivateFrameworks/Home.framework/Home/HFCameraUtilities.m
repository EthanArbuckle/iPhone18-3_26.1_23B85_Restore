@interface HFCameraUtilities
+ (BOOL)_shouldUseTwentyFourHourTime;
+ (BOOL)disableFullQualityVideoCaching;
+ (BOOL)eventSpansMultipleDays:(id)a3;
+ (BOOL)forceDisplayMultiCameraUpgradeBanner;
+ (BOOL)forceDisplayOfDismissedCameraUpgradeBanner;
+ (BOOL)forceDisplaySingleCameraUpgradeBanner;
+ (BOOL)hasAcceptedCameraFeedbackEmployeeConsent;
+ (BOOL)internalCameraFeedbackSupported;
+ (BOOL)isDate:(id)a3 withinSameMinuteOf:(id)a4;
+ (BOOL)isDateToday:(id)a3;
+ (BOOL)isDateYesterday:(id)a3;
+ (BOOL)isMP4FileAtURL:(id)a3;
+ (BOOL)isTimelapseVideoFileAtURL:(id)a3;
+ (BOOL)isVideoFileWithStrippedAudioAtURL:(id)a3;
+ (BOOL)markCachedVideoAsGreenInTimeline;
+ (BOOL)shouldCacheScrubberTimeScale;
+ (BOOL)shouldDisableHeroFrameDownloads;
+ (BOOL)shouldDisplayInternalUpgradeViews;
+ (BOOL)shouldDisplayInternalViews;
+ (BOOL)shouldPurgePosterFrameCache;
+ (BOOL)shouldPurgeVideoFileCache;
+ (BOOL)treatAllClipsAsUnanalyzed;
+ (double)cachedScrubberTimeScale;
+ (double)durationOfRecordingAtURL:(id)a3;
+ (double)elapsedTimeSinceMidnightForEvent:(id)a3;
+ (id)_fullTimeStringFromDate:(id)a3 shouldUseTwentyFourHourTime:(BOOL)a4;
+ (id)_shortTimeStringFromDate:(id)a3 shouldUseTwentyFourHourTime:(BOOL)a4;
+ (id)attributedFullTimeStringFromDate:(id)a3;
+ (id)attributedShortTimeStringFromDate:(id)a3;
+ (id)attributedStringFromDateString:(id)a3;
+ (id)attributedStringFromTwentyFourHourDateString:(id)a3;
+ (id)dateIntervalForSortedEventArray:(id)a3 arraySortedInAscendingOrder:(BOOL)a4;
+ (id)dayStringFromDate:(id)a3;
+ (id)fullTimeStringFromDate:(id)a3;
+ (id)liveStringFromDate:(id)a3;
+ (id)localizerKeyDayNameFromDate:(id)a3;
+ (id)overrideVideoCacheDurationLimit;
+ (id)overrideVideoDiskCacheLimit;
+ (id)percentageOfDurationUntilNextDayForEvent:(id)a3;
+ (id)shortTimeStringFromDate:(id)a3;
+ (id)twelveHourTimeStringFromDate:(id)a3;
+ (id)twentyFourHourLiveStringFromDate:(id)a3;
+ (id)twentyFourHourTimeStringFromDate:(id)a3;
+ (id)videoCachesDirectoryURL;
+ (id)videoDestinationURLForCameraClip:(id)a3 strippedAudio:(BOOL)a4;
+ (int64_t)compareCreationDateOfFileAtURL:(id)a3 toDaysFromNow:(int64_t)a4;
+ (void)acceptEmployeeCameraFeedbackConsent;
+ (void)cacheScrubberTimeScale:(double)a3;
@end

@implementation HFCameraUtilities

+ (BOOL)eventSpansMultipleDays:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 hf_sharedCalendar];
  v6 = [v5 timeZone];
  v7 = [v4 dateOfOccurrence];
  v8 = [v5 componentsInTimeZone:v6 fromDate:v7];

  v9 = [v5 timeZone];
  v10 = [v4 hf_endDate];

  v11 = [v5 componentsInTimeZone:v9 fromDate:v10];

  v13 = 0;
  if ([v8 isValidDate])
  {
    if ([v11 isValidDate])
    {
      v12 = [v8 day];
      if (v12 != [v11 day])
      {
        v13 = 1;
      }
    }
  }

  return v13;
}

+ (id)percentageOfDurationUntilNextDayForEvent:(id)a3
{
  v4 = a3;
  if ([a1 eventSpansMultipleDays:v4])
  {
    v5 = [v4 dateOfOccurrence];
    v6 = [v5 hf_startOfNextDay];
    v7 = [v4 dateOfOccurrence];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;

    v10 = MEMORY[0x277CCABB0];
    [v4 hf_duration];
    v12 = v9 / v11;
    *&v12 = v12;
    v13 = [v10 numberWithFloat:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (double)elapsedTimeSinceMidnightForEvent:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 hf_sharedCalendar];
  v6 = [v4 dateOfOccurrence];
  v7 = [v5 nextDateAfterDate:v6 matchingHour:0 minute:0 second:0 options:6];

  v8 = [v4 dateOfOccurrence];

  [v8 timeIntervalSinceDate:v7];
  v10 = v9;

  return v10;
}

+ (BOOL)shouldPurgePosterFrameCache
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"HFPurgePosterFrameCacheOnLoadKey", @"com.apple.Home", 0) != 0;
  }

  return v2;
}

+ (BOOL)shouldPurgeVideoFileCache
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"HFPurgeVideoFileCacheOnLoadKey", @"com.apple.Home", 0) != 0;
  }

  return v2;
}

+ (BOOL)shouldDisableHeroFrameDownloads
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"HFDisableHeroFrameDownloadsKey", @"com.apple.Home", 0) != 0;
  }

  return v2;
}

+ (BOOL)shouldDisplayInternalViews
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"HFEnableCameraInternalViewsKey", @"com.apple.Home", 0) != 0;
  }

  return v2;
}

+ (BOOL)shouldCacheScrubberTimeScale
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"HFShouldCacheScrubberTimeScaleKey", @"com.apple.Home", 0) != 0;
  }

  return v2;
}

+ (void)cacheScrubberTimeScale:(double)a3
{
  if (+[HFUtilities isInternalInstall])
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    *&v4 = a3;
    [v5 setFloat:@"HFCachedScrubberTimeScaleKey" forKey:v4];
  }
}

+ (double)cachedScrubberTimeScale
{
  v2 = 0.0;
  if (+[HFUtilities isInternalInstall])
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 valueForKey:@"HFCachedScrubberTimeScaleKey"];
    [v4 floatValue];
    v2 = v5;
  }

  return v2;
}

+ (BOOL)treatAllClipsAsUnanalyzed
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"HFTreatAllClipsAsUnanalyzed", @"com.apple.Home", 0) != 0;
  }

  return v2;
}

+ (BOOL)markCachedVideoAsGreenInTimeline
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"HFMarkCachedVideoAsGreenInTimeline", @"com.apple.Home", 0) != 0;
  }

  return v2;
}

+ (BOOL)disableFullQualityVideoCaching
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"HFDisableFullQualityVideoCaching", @"com.apple.Home", 0) != 0;
  }

  return v2;
}

+ (id)overrideVideoDiskCacheLimit
{
  if (+[HFUtilities isInternalInstall])
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [v2 valueForKey:@"HFPreferencesOverrideVideoDiskCacheLimit"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)overrideVideoCacheDurationLimit
{
  if (+[HFUtilities isInternalInstall])
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [v2 valueForKey:@"HFPreferencesOverrideVideoCacheDurationLimit"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)forceDisplaySingleCameraUpgradeBanner
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 valueForKey:@"HFForceDisplaySingleCameraUpgradeBanner"];
    v5 = [v4 BOOLValue];

    LOBYTE(v2) = v5;
  }

  return v2;
}

+ (BOOL)forceDisplayMultiCameraUpgradeBanner
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 valueForKey:@"HFForceDisplayMultiCameraUpgradeBanner"];
    v5 = [v4 BOOLValue];

    LOBYTE(v2) = v5;
  }

  return v2;
}

+ (BOOL)forceDisplayOfDismissedCameraUpgradeBanner
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 valueForKey:@"HFForceDisplayOfDismissedCameraUpgradeBanner"];
    v5 = [v4 BOOLValue];

    LOBYTE(v2) = v5;
  }

  return v2;
}

+ (id)twentyFourHourTimeStringFromDate:(id)a3
{
  v3 = qword_280E03B90;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E03B90, &__block_literal_global_207);
  }

  v5 = [_MergedGlobals_310 stringFromDate:v4];

  return v5;
}

uint64_t __54__HFCameraUtilities_twentyFourHourTimeStringFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _MergedGlobals_310;
  _MergedGlobals_310 = v0;

  v2 = _MergedGlobals_310;

  return [v2 setDateFormat:@"HH:mm:ss"];
}

+ (id)twelveHourTimeStringFromDate:(id)a3
{
  v3 = qword_280E03BA0;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E03BA0, &__block_literal_global_34_8);
  }

  v5 = [qword_280E03B98 stringFromDate:v4];

  return v5;
}

uint64_t __50__HFCameraUtilities_twelveHourTimeStringFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = qword_280E03B98;
  qword_280E03B98 = v0;

  v2 = qword_280E03B98;

  return [v2 setTimeStyle:2];
}

+ (id)dayStringFromDate:(id)a3
{
  v4 = a3;
  if (qword_280E03BB0 != -1)
  {
    dispatch_once(&qword_280E03BB0, &__block_literal_global_36_6);
  }

  if ([a1 isDateToday:v4])
  {
    _HFLocalizedStringWithDefaultValue(@"HFCameraToday", @"HFCameraToday", 1);
  }

  else
  {
    [qword_280E03BA8 stringFromDate:v4];
  }
  v5 = ;
  v6 = [v5 capitalizedString];

  return v6;
}

uint64_t __39__HFCameraUtilities_dayStringFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = qword_280E03BA8;
  qword_280E03BA8 = v0;

  v2 = qword_280E03BA8;

  return [v2 setDateFormat:@"EEEE"];
}

+ (BOOL)isDateToday:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 hf_sharedCalendar];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 isDate:v4 inSameDayAsDate:v6];

  return v7;
}

+ (BOOL)isDateYesterday:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 hf_sharedCalendar];
  v6 = [v5 isDateInYesterday:v4];

  return v6;
}

+ (BOOL)isDate:(id)a3 withinSameMinuteOf:(id)a4
{
  v5 = MEMORY[0x277CBEAA8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 hf_sharedCalendar];
  v9 = [v8 isDate:v7 equalToDate:v6 toUnitGranularity:64];

  return v9;
}

+ (id)liveStringFromDate:(id)a3
{
  v3 = qword_280E03BC0;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E03BC0, &__block_literal_global_44_3);
  }

  v5 = [qword_280E03BB8 stringFromDate:v4];

  return v5;
}

uint64_t __40__HFCameraUtilities_liveStringFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = qword_280E03BB8;
  qword_280E03BB8 = v0;

  v2 = qword_280E03BB8;

  return [v2 setTimeStyle:1];
}

+ (id)twentyFourHourLiveStringFromDate:(id)a3
{
  v3 = qword_280E03BD0;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E03BD0, &__block_literal_global_46_4);
  }

  v5 = [qword_280E03BC8 stringFromDate:v4];

  return v5;
}

uint64_t __54__HFCameraUtilities_twentyFourHourLiveStringFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = qword_280E03BC8;
  qword_280E03BC8 = v0;

  v2 = qword_280E03BC8;

  return [v2 setDateFormat:@"HH:mm"];
}

+ (id)attributedStringFromTwentyFourHourDateString:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (attributedStringFromTwentyFourHourDateString__onceToken == -1)
  {
    if (v3)
    {
LABEL_3:
      v5 = objc_alloc(MEMORY[0x277CCAB48]);
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];
      v7 = [v5 initWithString:v6];

      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&attributedStringFromTwentyFourHourDateString__onceToken, &__block_literal_global_51_1);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v8 = HFLogForCategory(0xEuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = 0;
    _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Unable to parse proper twenty-four hour components from string:%@.", buf, 0xCu);
  }

  v7 = 0;
LABEL_8:

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

void __66__HFCameraUtilities_attributedStringFromTwentyFourHourDateString___block_invoke()
{
  v0 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:18.0 weight:*MEMORY[0x277D74420]];
  v1 = attributedStringFromTwentyFourHourDateString__font;
  attributedStringFromTwentyFourHourDateString__font = v0;
}

+ (id)attributedStringFromDateString:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (qword_280E03BE8 != -1)
  {
    dispatch_once(&qword_280E03BE8, &__block_literal_global_59_5);
  }

  v4 = [v3 componentsSeparatedByString:@" "];
  if ([v4 count] == 2)
  {
    v5 = objc_alloc(MEMORY[0x277CCAB48]);
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v4 objectAtIndexedSubscript:1];
    v9 = [v6 stringWithFormat:@"%@ %@", v7, v8];
    v10 = [v5 initWithString:v9];

    v11 = [v10 string];
    v12 = [v4 objectAtIndexedSubscript:1];
    v13 = [v11 rangeOfString:v12];
    v15 = v14;

    v16 = *MEMORY[0x277D740A8];
    [v10 addAttribute:*MEMORY[0x277D740A8] value:qword_280E03BD8 range:{0, v13}];
    [v10 addAttribute:v16 value:qword_280E03BE0 range:{v13, v15}];
  }

  else
  {
    v17 = HFLogForCategory(0xEuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_error_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_ERROR, "Unable to parse proper twelve hour components from string:%@. Displaying full string without small caps.", buf, 0xCu);
    }

    v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v3];
    v18 = *MEMORY[0x277D740A8];
    v19 = qword_280E03BD8;
    v20 = [v10 string];
    v21 = [v20 rangeOfString:v3];
    [v10 addAttribute:v18 value:v19 range:{v21, v22}];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v10;
}

void __52__HFCameraUtilities_attributedStringFromDateString___block_invoke()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:18.0 weight:*MEMORY[0x277D74420]];
  v1 = qword_280E03BD8;
  qword_280E03BD8 = v0;

  v14 = *MEMORY[0x277D74338];
  v2 = *MEMORY[0x277D74388];
  v11[0] = *MEMORY[0x277D74398];
  v11[1] = v2;
  v12[0] = &unk_282524F48;
  v12[1] = &unk_282524F60;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13 = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v15[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v6 = [qword_280E03BD8 fontDescriptor];
  v7 = [v6 fontDescriptorByAddingAttributes:v5];

  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:18.0];
  v9 = qword_280E03BE0;
  qword_280E03BE0 = v8;

  v10 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_shouldUseTwentyFourHourTime
{
  v2 = MEMORY[0x277CCA968];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v2 dateFormatFromTemplate:@"j" options:0 locale:v3];

  LOBYTE(v3) = [v4 containsString:@"a"];
  return v3 ^ 1;
}

+ (id)_fullTimeStringFromDate:(id)a3 shouldUseTwentyFourHourTime:(BOOL)a4
{
  if (a4)
  {
    [a1 twentyFourHourTimeStringFromDate:a3];
  }

  else
  {
    [a1 twelveHourTimeStringFromDate:a3];
  }
  v4 = ;

  return v4;
}

+ (id)fullTimeStringFromDate:(id)a3
{
  v4 = a3;
  v5 = [a1 _fullTimeStringFromDate:v4 shouldUseTwentyFourHourTime:{objc_msgSend(a1, "_shouldUseTwentyFourHourTime")}];

  return v5;
}

+ (id)attributedFullTimeStringFromDate:(id)a3
{
  v4 = a3;
  v5 = [a1 _shouldUseTwentyFourHourTime];
  v6 = [a1 _fullTimeStringFromDate:v4 shouldUseTwentyFourHourTime:v5];

  if (v5)
  {
    [a1 attributedStringFromTwentyFourHourDateString:v6];
  }

  else
  {
    [a1 attributedStringFromDateString:v6];
  }
  v7 = ;

  return v7;
}

+ (id)_shortTimeStringFromDate:(id)a3 shouldUseTwentyFourHourTime:(BOOL)a4
{
  if (a4)
  {
    [a1 twentyFourHourLiveStringFromDate:a3];
  }

  else
  {
    [a1 liveStringFromDate:a3];
  }
  v4 = ;

  return v4;
}

+ (id)shortTimeStringFromDate:(id)a3
{
  v4 = a3;
  v5 = [a1 _shortTimeStringFromDate:v4 shouldUseTwentyFourHourTime:{objc_msgSend(a1, "_shouldUseTwentyFourHourTime")}];

  return v5;
}

+ (id)attributedShortTimeStringFromDate:(id)a3
{
  v4 = a3;
  v5 = [a1 _shouldUseTwentyFourHourTime];
  v6 = [a1 _shortTimeStringFromDate:v4 shouldUseTwentyFourHourTime:v5];

  if (v5)
  {
    [a1 attributedStringFromTwentyFourHourDateString:v6];
  }

  else
  {
    [a1 attributedStringFromDateString:v6];
  }
  v7 = ;

  return v7;
}

+ (id)localizerKeyDayNameFromDate:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (qword_280E03BF8 == -1)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_once(&qword_280E03BF8, &__block_literal_global_79_1);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x277CCA890] currentHandler];
  [v11 handleFailureInMethod:a2 object:a1 file:@"HFCameraUtilities.m" lineNumber:400 description:{@"Invalid parameter not satisfying: %@", @"date"}];

LABEL_3:
  v7 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v8 = [v7 component:512 fromDate:v6];

  v9 = [qword_280E03BF0 objectAtIndexedSubscript:v8 - 1];

  return v9;
}

void __49__HFCameraUtilities_localizerKeyDayNameFromDate___block_invoke()
{
  v0 = qword_280E03BF0;
  qword_280E03BF0 = &unk_2825258E8;
}

+ (BOOL)shouldDisplayInternalUpgradeViews
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 valueForKey:@"HFShouldDisplayInternalUpgradeViews"];
    v5 = [v4 BOOLValue];

    LOBYTE(v2) = v5;
  }

  return v2;
}

+ (BOOL)internalCameraFeedbackSupported
{
  if (+[HFUtilities isPressDemoModeEnabled])
  {
    return 0;
  }

  return +[HFUtilities isInternalInstall];
}

+ (BOOL)hasAcceptedCameraFeedbackEmployeeConsent
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 valueForKey:@"HFEmployeeAcceptedCameraFeedbackConsent_2020"];
  v4 = v3 != 0;

  return v4;
}

+ (void)acceptEmployeeCameraFeedbackConsent
{
  if (([a1 hasAcceptedCameraFeedbackEmployeeConsent] & 1) == 0)
  {
    v2 = HFLogForCategory(0x14uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "User has accepted the employee consent.", v4, 2u);
    }

    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v3 setBool:1 forKey:@"HFEmployeeAcceptedCameraFeedbackConsent_2020"];
  }
}

+ (double)durationOfRecordingAtURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  Seconds = 0.0;
  if (v6)
  {
    v8 = [MEMORY[0x277CE63D8] assetWithURL:v3];
    v9 = v8;
    if (v8)
    {
      [v8 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
  }

  return Seconds;
}

+ (id)videoCachesDirectoryURL
{
  v2 = +[HFUtilities cachesDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"Video" isDirectory:1];

  return v3;
}

+ (id)videoDestinationURLForCameraClip:(id)a3 strippedAudio:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 uniqueIdentifier];
  v8 = [v7 UUIDString];

  v9 = [v6 quality];
  if (v9 == 1)
  {
    v10 = [v8 stringByAppendingString:@"-timelapse"];

    v8 = v10;
  }

  if (v4)
  {
    v11 = [v8 stringByAppendingString:@"-noaac"];

    v8 = v11;
  }

  v12 = [v8 stringByAppendingPathExtension:@"mp4"];

  v13 = MEMORY[0x277CBEBC0];
  v14 = [a1 videoCachesDirectoryURL];
  v15 = [v13 URLWithString:v12 relativeToURL:v14];

  return v15;
}

+ (BOOL)isTimelapseVideoFileAtURL:(id)a3
{
  v3 = [a3 lastPathComponent];
  v4 = [v3 stringByDeletingPathExtension];
  v5 = [v4 hasSuffix:@"-timelapse"];

  return v5;
}

+ (BOOL)isVideoFileWithStrippedAudioAtURL:(id)a3
{
  v3 = [a3 lastPathComponent];
  v4 = [v3 stringByDeletingPathExtension];
  v5 = [v4 hasSuffix:@"-noaac"];

  return v5;
}

+ (int64_t)compareCreationDateOfFileAtURL:(id)a3 toDaysFromNow:(int64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v18 = 0;
  v6 = *MEMORY[0x277CBE7C0];
  v17 = 0;
  v7 = [v5 getResourceValue:&v18 forKey:v6 error:&v17];
  v8 = v18;
  v9 = v17;
  if (v7)
  {
    v10 = MEMORY[0x277CBEAA8];
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = [v10 hf_dateByAddingDays:a4 toDate:v11];

    v13 = [v8 compare:v12];
  }

  else
  {
    v12 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 path];
      *buf = 136315650;
      v20 = "+[HFCameraUtilities compareCreationDateOfFileAtURL:toDaysFromNow:]";
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v16;
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "%s: %@; %@", buf, 0x20u);
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)isMP4FileAtURL:(id)a3
{
  v3 = [a3 pathExtension];
  v4 = [v3 caseInsensitiveCompare:@"mp4"] == 0;

  return v4;
}

uint64_t __66__HFCameraUtilities_cameraRecordingEventDateOfOccurenceComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateOfOccurrence];
  v6 = [v4 dateOfOccurrence];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)dateIntervalForSortedEventArray:(id)a3 arraySortedInAscendingOrder:(BOOL)a4
{
  v5 = a3;
  if ([v5 count])
  {
    if (a4)
    {
      v6 = [v5 firstObject];
      [v5 lastObject];
    }

    else
    {
      v6 = [v5 lastObject];
      [v5 firstObject];
    }
    v8 = ;
    v9 = objc_alloc(MEMORY[0x277CCA970]);
    v10 = [v6 dateOfOccurrence];
    v11 = [v8 hf_endDate];
    v7 = [v9 initWithStartDate:v10 endDate:v11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end