@interface HFCameraUtilities
+ (BOOL)_shouldUseTwentyFourHourTime;
+ (BOOL)disableFullQualityVideoCaching;
+ (BOOL)eventSpansMultipleDays:(id)days;
+ (BOOL)forceDisplayMultiCameraUpgradeBanner;
+ (BOOL)forceDisplayOfDismissedCameraUpgradeBanner;
+ (BOOL)forceDisplaySingleCameraUpgradeBanner;
+ (BOOL)hasAcceptedCameraFeedbackEmployeeConsent;
+ (BOOL)internalCameraFeedbackSupported;
+ (BOOL)isDate:(id)date withinSameMinuteOf:(id)of;
+ (BOOL)isDateToday:(id)today;
+ (BOOL)isDateYesterday:(id)yesterday;
+ (BOOL)isMP4FileAtURL:(id)l;
+ (BOOL)isTimelapseVideoFileAtURL:(id)l;
+ (BOOL)isVideoFileWithStrippedAudioAtURL:(id)l;
+ (BOOL)markCachedVideoAsGreenInTimeline;
+ (BOOL)shouldCacheScrubberTimeScale;
+ (BOOL)shouldDisableHeroFrameDownloads;
+ (BOOL)shouldDisplayInternalUpgradeViews;
+ (BOOL)shouldDisplayInternalViews;
+ (BOOL)shouldPurgePosterFrameCache;
+ (BOOL)shouldPurgeVideoFileCache;
+ (BOOL)treatAllClipsAsUnanalyzed;
+ (double)cachedScrubberTimeScale;
+ (double)durationOfRecordingAtURL:(id)l;
+ (double)elapsedTimeSinceMidnightForEvent:(id)event;
+ (id)_fullTimeStringFromDate:(id)date shouldUseTwentyFourHourTime:(BOOL)time;
+ (id)_shortTimeStringFromDate:(id)date shouldUseTwentyFourHourTime:(BOOL)time;
+ (id)attributedFullTimeStringFromDate:(id)date;
+ (id)attributedShortTimeStringFromDate:(id)date;
+ (id)attributedStringFromDateString:(id)string;
+ (id)attributedStringFromTwentyFourHourDateString:(id)string;
+ (id)dateIntervalForSortedEventArray:(id)array arraySortedInAscendingOrder:(BOOL)order;
+ (id)dayStringFromDate:(id)date;
+ (id)fullTimeStringFromDate:(id)date;
+ (id)liveStringFromDate:(id)date;
+ (id)localizerKeyDayNameFromDate:(id)date;
+ (id)overrideVideoCacheDurationLimit;
+ (id)overrideVideoDiskCacheLimit;
+ (id)percentageOfDurationUntilNextDayForEvent:(id)event;
+ (id)shortTimeStringFromDate:(id)date;
+ (id)twelveHourTimeStringFromDate:(id)date;
+ (id)twentyFourHourLiveStringFromDate:(id)date;
+ (id)twentyFourHourTimeStringFromDate:(id)date;
+ (id)videoCachesDirectoryURL;
+ (id)videoDestinationURLForCameraClip:(id)clip strippedAudio:(BOOL)audio;
+ (int64_t)compareCreationDateOfFileAtURL:(id)l toDaysFromNow:(int64_t)now;
+ (void)acceptEmployeeCameraFeedbackConsent;
+ (void)cacheScrubberTimeScale:(double)scale;
@end

@implementation HFCameraUtilities

+ (BOOL)eventSpansMultipleDays:(id)days
{
  v3 = MEMORY[0x277CBEAA8];
  daysCopy = days;
  hf_sharedCalendar = [v3 hf_sharedCalendar];
  timeZone = [hf_sharedCalendar timeZone];
  dateOfOccurrence = [daysCopy dateOfOccurrence];
  v8 = [hf_sharedCalendar componentsInTimeZone:timeZone fromDate:dateOfOccurrence];

  timeZone2 = [hf_sharedCalendar timeZone];
  hf_endDate = [daysCopy hf_endDate];

  v11 = [hf_sharedCalendar componentsInTimeZone:timeZone2 fromDate:hf_endDate];

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

+ (id)percentageOfDurationUntilNextDayForEvent:(id)event
{
  eventCopy = event;
  if ([self eventSpansMultipleDays:eventCopy])
  {
    dateOfOccurrence = [eventCopy dateOfOccurrence];
    hf_startOfNextDay = [dateOfOccurrence hf_startOfNextDay];
    dateOfOccurrence2 = [eventCopy dateOfOccurrence];
    [hf_startOfNextDay timeIntervalSinceDate:dateOfOccurrence2];
    v9 = v8;

    v10 = MEMORY[0x277CCABB0];
    [eventCopy hf_duration];
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

+ (double)elapsedTimeSinceMidnightForEvent:(id)event
{
  v3 = MEMORY[0x277CBEAA8];
  eventCopy = event;
  hf_sharedCalendar = [v3 hf_sharedCalendar];
  dateOfOccurrence = [eventCopy dateOfOccurrence];
  v7 = [hf_sharedCalendar nextDateAfterDate:dateOfOccurrence matchingHour:0 minute:0 second:0 options:6];

  dateOfOccurrence2 = [eventCopy dateOfOccurrence];

  [dateOfOccurrence2 timeIntervalSinceDate:v7];
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

+ (void)cacheScrubberTimeScale:(double)scale
{
  if (+[HFUtilities isInternalInstall])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    *&v4 = scale;
    [standardUserDefaults setFloat:@"HFCachedScrubberTimeScaleKey" forKey:v4];
  }
}

+ (double)cachedScrubberTimeScale
{
  v2 = 0.0;
  if (+[HFUtilities isInternalInstall])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults valueForKey:@"HFCachedScrubberTimeScaleKey"];
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
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [standardUserDefaults valueForKey:@"HFPreferencesOverrideVideoDiskCacheLimit"];
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
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [standardUserDefaults valueForKey:@"HFPreferencesOverrideVideoCacheDurationLimit"];
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
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults valueForKey:@"HFForceDisplaySingleCameraUpgradeBanner"];
    bOOLValue = [v4 BOOLValue];

    LOBYTE(v2) = bOOLValue;
  }

  return v2;
}

+ (BOOL)forceDisplayMultiCameraUpgradeBanner
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults valueForKey:@"HFForceDisplayMultiCameraUpgradeBanner"];
    bOOLValue = [v4 BOOLValue];

    LOBYTE(v2) = bOOLValue;
  }

  return v2;
}

+ (BOOL)forceDisplayOfDismissedCameraUpgradeBanner
{
  v2 = +[HFUtilities isInternalInstall];
  if (v2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults valueForKey:@"HFForceDisplayOfDismissedCameraUpgradeBanner"];
    bOOLValue = [v4 BOOLValue];

    LOBYTE(v2) = bOOLValue;
  }

  return v2;
}

+ (id)twentyFourHourTimeStringFromDate:(id)date
{
  v3 = qword_280E03B90;
  dateCopy = date;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E03B90, &__block_literal_global_207);
  }

  v5 = [_MergedGlobals_310 stringFromDate:dateCopy];

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

+ (id)twelveHourTimeStringFromDate:(id)date
{
  v3 = qword_280E03BA0;
  dateCopy = date;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E03BA0, &__block_literal_global_34_8);
  }

  v5 = [qword_280E03B98 stringFromDate:dateCopy];

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

+ (id)dayStringFromDate:(id)date
{
  dateCopy = date;
  if (qword_280E03BB0 != -1)
  {
    dispatch_once(&qword_280E03BB0, &__block_literal_global_36_6);
  }

  if ([self isDateToday:dateCopy])
  {
    _HFLocalizedStringWithDefaultValue(@"HFCameraToday", @"HFCameraToday", 1);
  }

  else
  {
    [qword_280E03BA8 stringFromDate:dateCopy];
  }
  v5 = ;
  capitalizedString = [v5 capitalizedString];

  return capitalizedString;
}

uint64_t __39__HFCameraUtilities_dayStringFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = qword_280E03BA8;
  qword_280E03BA8 = v0;

  v2 = qword_280E03BA8;

  return [v2 setDateFormat:@"EEEE"];
}

+ (BOOL)isDateToday:(id)today
{
  v3 = MEMORY[0x277CBEAA8];
  todayCopy = today;
  hf_sharedCalendar = [v3 hf_sharedCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [hf_sharedCalendar isDate:todayCopy inSameDayAsDate:date];

  return v7;
}

+ (BOOL)isDateYesterday:(id)yesterday
{
  v3 = MEMORY[0x277CBEAA8];
  yesterdayCopy = yesterday;
  hf_sharedCalendar = [v3 hf_sharedCalendar];
  v6 = [hf_sharedCalendar isDateInYesterday:yesterdayCopy];

  return v6;
}

+ (BOOL)isDate:(id)date withinSameMinuteOf:(id)of
{
  v5 = MEMORY[0x277CBEAA8];
  ofCopy = of;
  dateCopy = date;
  hf_sharedCalendar = [v5 hf_sharedCalendar];
  v9 = [hf_sharedCalendar isDate:dateCopy equalToDate:ofCopy toUnitGranularity:64];

  return v9;
}

+ (id)liveStringFromDate:(id)date
{
  v3 = qword_280E03BC0;
  dateCopy = date;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E03BC0, &__block_literal_global_44_3);
  }

  v5 = [qword_280E03BB8 stringFromDate:dateCopy];

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

+ (id)twentyFourHourLiveStringFromDate:(id)date
{
  v3 = qword_280E03BD0;
  dateCopy = date;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E03BD0, &__block_literal_global_46_4);
  }

  v5 = [qword_280E03BC8 stringFromDate:dateCopy];

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

+ (id)attributedStringFromTwentyFourHourDateString:(id)string
{
  v13 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = stringCopy;
  if (attributedStringFromTwentyFourHourDateString__onceToken == -1)
  {
    if (stringCopy)
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

+ (id)attributedStringFromDateString:(id)string
{
  v27 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (qword_280E03BE8 != -1)
  {
    dispatch_once(&qword_280E03BE8, &__block_literal_global_59_5);
  }

  v4 = [stringCopy componentsSeparatedByString:@" "];
  if ([v4 count] == 2)
  {
    v5 = objc_alloc(MEMORY[0x277CCAB48]);
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v4 objectAtIndexedSubscript:1];
    v9 = [v6 stringWithFormat:@"%@ %@", v7, v8];
    v10 = [v5 initWithString:v9];

    string = [v10 string];
    v12 = [v4 objectAtIndexedSubscript:1];
    v13 = [string rangeOfString:v12];
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
      v26 = stringCopy;
      _os_log_error_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_ERROR, "Unable to parse proper twelve hour components from string:%@. Displaying full string without small caps.", buf, 0xCu);
    }

    v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:stringCopy];
    v18 = *MEMORY[0x277D740A8];
    v19 = qword_280E03BD8;
    string2 = [v10 string];
    v21 = [string2 rangeOfString:stringCopy];
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
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v2 dateFormatFromTemplate:@"j" options:0 locale:currentLocale];

  LOBYTE(currentLocale) = [v4 containsString:@"a"];
  return currentLocale ^ 1;
}

+ (id)_fullTimeStringFromDate:(id)date shouldUseTwentyFourHourTime:(BOOL)time
{
  if (time)
  {
    [self twentyFourHourTimeStringFromDate:date];
  }

  else
  {
    [self twelveHourTimeStringFromDate:date];
  }
  v4 = ;

  return v4;
}

+ (id)fullTimeStringFromDate:(id)date
{
  dateCopy = date;
  v5 = [self _fullTimeStringFromDate:dateCopy shouldUseTwentyFourHourTime:{objc_msgSend(self, "_shouldUseTwentyFourHourTime")}];

  return v5;
}

+ (id)attributedFullTimeStringFromDate:(id)date
{
  dateCopy = date;
  _shouldUseTwentyFourHourTime = [self _shouldUseTwentyFourHourTime];
  v6 = [self _fullTimeStringFromDate:dateCopy shouldUseTwentyFourHourTime:_shouldUseTwentyFourHourTime];

  if (_shouldUseTwentyFourHourTime)
  {
    [self attributedStringFromTwentyFourHourDateString:v6];
  }

  else
  {
    [self attributedStringFromDateString:v6];
  }
  v7 = ;

  return v7;
}

+ (id)_shortTimeStringFromDate:(id)date shouldUseTwentyFourHourTime:(BOOL)time
{
  if (time)
  {
    [self twentyFourHourLiveStringFromDate:date];
  }

  else
  {
    [self liveStringFromDate:date];
  }
  v4 = ;

  return v4;
}

+ (id)shortTimeStringFromDate:(id)date
{
  dateCopy = date;
  v5 = [self _shortTimeStringFromDate:dateCopy shouldUseTwentyFourHourTime:{objc_msgSend(self, "_shouldUseTwentyFourHourTime")}];

  return v5;
}

+ (id)attributedShortTimeStringFromDate:(id)date
{
  dateCopy = date;
  _shouldUseTwentyFourHourTime = [self _shouldUseTwentyFourHourTime];
  v6 = [self _shortTimeStringFromDate:dateCopy shouldUseTwentyFourHourTime:_shouldUseTwentyFourHourTime];

  if (_shouldUseTwentyFourHourTime)
  {
    [self attributedStringFromTwentyFourHourDateString:v6];
  }

  else
  {
    [self attributedStringFromDateString:v6];
  }
  v7 = ;

  return v7;
}

+ (id)localizerKeyDayNameFromDate:(id)date
{
  dateCopy = date;
  v6 = dateCopy;
  if (qword_280E03BF8 == -1)
  {
    if (dateCopy)
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

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraUtilities.m" lineNumber:400 description:{@"Invalid parameter not satisfying: %@", @"date"}];

LABEL_3:
  hf_sharedCalendar = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v8 = [hf_sharedCalendar component:512 fromDate:v6];

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
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults valueForKey:@"HFShouldDisplayInternalUpgradeViews"];
    bOOLValue = [v4 BOOLValue];

    LOBYTE(v2) = bOOLValue;
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"HFEmployeeAcceptedCameraFeedbackConsent_2020"];
  v4 = v3 != 0;

  return v4;
}

+ (void)acceptEmployeeCameraFeedbackConsent
{
  if (([self hasAcceptedCameraFeedbackEmployeeConsent] & 1) == 0)
  {
    v2 = HFLogForCategory(0x14uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "User has accepted the employee consent.", v4, 2u);
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:1 forKey:@"HFEmployeeAcceptedCameraFeedbackConsent_2020"];
  }
}

+ (double)durationOfRecordingAtURL:(id)l
{
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager fileExistsAtPath:path];

  Seconds = 0.0;
  if (v6)
  {
    v8 = [MEMORY[0x277CE63D8] assetWithURL:lCopy];
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

+ (id)videoDestinationURLForCameraClip:(id)clip strippedAudio:(BOOL)audio
{
  audioCopy = audio;
  clipCopy = clip;
  uniqueIdentifier = [clipCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  quality = [clipCopy quality];
  if (quality == 1)
  {
    v10 = [uUIDString stringByAppendingString:@"-timelapse"];

    uUIDString = v10;
  }

  if (audioCopy)
  {
    v11 = [uUIDString stringByAppendingString:@"-noaac"];

    uUIDString = v11;
  }

  v12 = [uUIDString stringByAppendingPathExtension:@"mp4"];

  v13 = MEMORY[0x277CBEBC0];
  videoCachesDirectoryURL = [self videoCachesDirectoryURL];
  v15 = [v13 URLWithString:v12 relativeToURL:videoCachesDirectoryURL];

  return v15;
}

+ (BOOL)isTimelapseVideoFileAtURL:(id)l
{
  lastPathComponent = [l lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v5 = [stringByDeletingPathExtension hasSuffix:@"-timelapse"];

  return v5;
}

+ (BOOL)isVideoFileWithStrippedAudioAtURL:(id)l
{
  lastPathComponent = [l lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v5 = [stringByDeletingPathExtension hasSuffix:@"-noaac"];

  return v5;
}

+ (int64_t)compareCreationDateOfFileAtURL:(id)l toDaysFromNow:(int64_t)now
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v18 = 0;
  v6 = *MEMORY[0x277CBE7C0];
  v17 = 0;
  v7 = [lCopy getResourceValue:&v18 forKey:v6 error:&v17];
  v8 = v18;
  v9 = v17;
  if (v7)
  {
    v10 = MEMORY[0x277CBEAA8];
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = [v10 hf_dateByAddingDays:now toDate:v11];

    v13 = [v8 compare:v12];
  }

  else
  {
    v12 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 136315650;
      v20 = "+[HFCameraUtilities compareCreationDateOfFileAtURL:toDaysFromNow:]";
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = path;
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "%s: %@; %@", buf, 0x20u);
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)isMP4FileAtURL:(id)l
{
  pathExtension = [l pathExtension];
  v4 = [pathExtension caseInsensitiveCompare:@"mp4"] == 0;

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

+ (id)dateIntervalForSortedEventArray:(id)array arraySortedInAscendingOrder:(BOOL)order
{
  arrayCopy = array;
  if ([arrayCopy count])
  {
    if (order)
    {
      firstObject = [arrayCopy firstObject];
      [arrayCopy lastObject];
    }

    else
    {
      firstObject = [arrayCopy lastObject];
      [arrayCopy firstObject];
    }
    v8 = ;
    v9 = objc_alloc(MEMORY[0x277CCA970]);
    dateOfOccurrence = [firstObject dateOfOccurrence];
    hf_endDate = [v8 hf_endDate];
    v7 = [v9 initWithStartDate:dateOfOccurrence endDate:hf_endDate];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end