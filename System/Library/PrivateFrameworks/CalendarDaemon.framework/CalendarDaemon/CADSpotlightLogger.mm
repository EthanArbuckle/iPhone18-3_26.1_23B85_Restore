@interface CADSpotlightLogger
+ (void)_logWithFormat:(id)format args:(char *)args prependErrorMarker:(BOOL)marker;
@end

@implementation CADSpotlightLogger

+ (void)_logWithFormat:(id)format args:(char *)args prependErrorMarker:(BOOL)marker
{
  markerCopy = marker;
  formatCopy = format;
  if (_logWithFormat_args_prependErrorMarker__onceToken != -1)
  {
    +[CADSpotlightLogger _logWithFormat:args:prependErrorMarker:];
  }

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:formatCopy arguments:args];
  v9 = _logWithFormat_args_prependErrorMarker__dateFormatter;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [v9 stringFromDate:v10];

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  if (markerCopy)
  {
    v13 = @"%@ SPOTLIGHT_ERROR %@\n";
  }

  else
  {
    v13 = @"%@ %@\n";
  }

  v14 = [v12 initWithFormat:v13, v11, v8];
  v15 = [v14 dataUsingEncoding:4];
  DACPLoggingAppendDataToLogFile();
}

void __61__CADSpotlightLogger__logWithFormat_args_prependErrorMarker___block_invoke()
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277D03998];
  v0 = DACustomLogDirectory();
  v1 = *MEMORY[0x277D039A8];
  v11[0] = v0;
  v11[1] = @"SpotlightLog";
  v2 = *MEMORY[0x277D039B0];
  v10[1] = v1;
  v10[2] = v2;
  v10[3] = *MEMORY[0x277D039A0];
  v11[2] = &unk_2837C7150;
  v11[3] = @"DALogLevel";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v4 = [MEMORY[0x277D03910] DAManagedDefaultForKey:@"DALogLevel"];

  if (!v4 && [MEMORY[0x277D03910] isAppleInternalInstall])
  {
    v5 = [v3 mutableCopy];
    [v5 setObject:&unk_2837C7168 forKeyedSubscript:*MEMORY[0x277D039B8]];

    v3 = v5;
  }

  v9 = @"SpotlightLog";
  MEMORY[0x22AA4CF10]([MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1], v3);
  v6 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v7 = _logWithFormat_args_prependErrorMarker__dateFormatter;
  _logWithFormat_args_prependErrorMarker__dateFormatter = v6;

  [_logWithFormat_args_prependErrorMarker__dateFormatter setFormatOptions:4083];
  v8 = *MEMORY[0x277D85DE8];
}

void __61__CADSpotlightLogger__logWithFormat_args_prependErrorMarker___block_invoke_19(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

@end