@interface MXMOSSignpostProbe
+ (id)probeHostLive;
+ (id)probeHostSystemLogArchiveWithRelativeTimeInterval:(double)interval;
+ (id)probeHostSystemLogArchiveWithStartDate:(id)date endDate:(id)endDate;
+ (id)probeHostSystemLogArchiveWithStartDate:(id)date endDate:(id)endDate startMachTime:(unint64_t)time stopMachTime:(unint64_t)machTime;
+ (id)probeWithLogArchivePath:(id)path;
+ (id)probeWithLogArchivePath:(id)path startDate:(id)date endDate:(id)endDate;
+ (id)probeWithLogArchivePath:(id)path startDate:(id)date endDate:(id)endDate startMachTime:(unint64_t)time stopMachTime:(unint64_t)machTime;
- (MXMOSSignpostProbe)initWithMode:(unint64_t)mode;
- (MXMOSSignpostProbe)initWithMode:(unint64_t)mode logArchive:(id)archive startDate:(id)date endDate:(id)endDate;
- (MXMOSSignpostProbe)initWithMode:(unint64_t)mode logArchive:(id)archive startDate:(id)date endDate:(id)endDate startMachTime:(unint64_t)time stopMachTime:(unint64_t)machTime;
- (id)_buildSampleSetWithData:(id)data tag:(id)tag unit:(id)unit attributes:(id)attributes signpostObject:(id)object;
- (id)sampleWithTimeout:(double)timeout stopReason:(unint64_t *)reason;
- (void)_addAnimationFrameCountToData:(id)data fromSignpostAnimationInterval:(id)interval;
- (void)_addAnimationFrameRateToData:(id)data fromSignpostAnimationInterval:(id)interval;
- (void)_addAnimationGlitchTimeRatioToData:(id)data fromSignpostAnimationInterval:(id)interval;
- (void)_addAnimationGlitchesTotalDurationToData:(id)data fromSignpostAnimationInterval:(id)interval;
- (void)_addAnimationNumberOfGlitchesToData:(id)data fromSignpostAnimationInterval:(id)interval;
- (void)_addAnimationRenderStatsToData:(id)data fromSignpostAnimationInterval:(id)interval;
- (void)_beginUpdates;
- (void)_buildData:(id)data attributes:(id)attributes signpostEvent:(id)event;
- (void)_buildData:(id)data signpostAnimationInterval:(id)interval;
- (void)_buildData:(id)data signpostInterval:(id)interval;
- (void)_setupProcessingBlocks;
- (void)_setupProcessingFilter;
- (void)_stopUpdates;
- (void)dealloc;
@end

@implementation MXMOSSignpostProbe

+ (id)probeHostLive
{
  v2 = [[self alloc] initWithMode:0];

  return v2;
}

+ (id)probeHostSystemLogArchiveWithRelativeTimeInterval:(double)interval
{
  v4 = [self alloc];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-interval];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [v4 initWithMode:1 logArchive:0 startDate:v5 endDate:date];

  return v7;
}

+ (id)probeHostSystemLogArchiveWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v8 = [[self alloc] initWithMode:1 logArchive:0 startDate:dateCopy endDate:endDateCopy];

  return v8;
}

+ (id)probeHostSystemLogArchiveWithStartDate:(id)date endDate:(id)endDate startMachTime:(unint64_t)time stopMachTime:(unint64_t)machTime
{
  endDateCopy = endDate;
  dateCopy = date;
  v12 = [[self alloc] initWithMode:1 logArchive:0 startDate:dateCopy endDate:endDateCopy startMachTime:time stopMachTime:machTime];

  return v12;
}

+ (id)probeWithLogArchivePath:(id)path
{
  pathCopy = path;
  v5 = [[self alloc] initWithMode:2 logArchive:pathCopy startDate:0 endDate:0];

  return v5;
}

+ (id)probeWithLogArchivePath:(id)path startDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  pathCopy = path;
  v11 = [[self alloc] initWithMode:2 logArchive:pathCopy startDate:dateCopy endDate:endDateCopy];

  return v11;
}

+ (id)probeWithLogArchivePath:(id)path startDate:(id)date endDate:(id)endDate startMachTime:(unint64_t)time stopMachTime:(unint64_t)machTime
{
  endDateCopy = endDate;
  dateCopy = date;
  pathCopy = path;
  v15 = [[self alloc] initWithMode:2 logArchive:pathCopy startDate:dateCopy endDate:endDateCopy startMachTime:time stopMachTime:machTime];

  return v15;
}

- (MXMOSSignpostProbe)initWithMode:(unint64_t)mode
{
  v10.receiver = self;
  v10.super_class = MXMOSSignpostProbe;
  v4 = [(MXMProbe *)&v10 init];
  v5 = v4;
  if (v4)
  {
    logArchivePath = v4->_logArchivePath;
    v4->_logArchivePath = 0;

    v5->_mode = mode;
    v7 = objc_alloc_init(MEMORY[0x277D55030]);
    extractor = v5->_extractor;
    v5->_extractor = v7;

    [(MXMOSSignpostProbe *)v5 _setupProcessingBlocks];
  }

  return v5;
}

- (MXMOSSignpostProbe)initWithMode:(unint64_t)mode logArchive:(id)archive startDate:(id)date endDate:(id)endDate
{
  archiveCopy = archive;
  dateCopy = date;
  endDateCopy = endDate;
  v14 = [(MXMOSSignpostProbe *)self initWithMode:mode];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_logArchivePath, archive);
    objc_storeStrong(&v15->_startDate, date);
    objc_storeStrong(&v15->_endDate, endDate);
  }

  return v15;
}

- (MXMOSSignpostProbe)initWithMode:(unint64_t)mode logArchive:(id)archive startDate:(id)date endDate:(id)endDate startMachTime:(unint64_t)time stopMachTime:(unint64_t)machTime
{
  self->_startMachContTime = time;
  self->_stopMachContTime = machTime;
  return [(MXMOSSignpostProbe *)self initWithMode:mode logArchive:archive startDate:date endDate:endDate];
}

- (void)_setupProcessingFilter
{
  array = [MEMORY[0x277CBEB18] array];
  filter = [(MXMProbe *)self filter];
  v4 = [filter attributeFilterWithName:@"os_signpost subsystem"];
  stringValue = [v4 stringValue];

  filter2 = [(MXMProbe *)self filter];
  v7 = [filter2 attributeFilterWithName:@"os_signpost category"];
  stringValue2 = [v7 stringValue];

  if (stringValue)
  {
    v9 = [objc_alloc(MEMORY[0x277D55048]) initWithSubsystem:stringValue category:stringValue2];
    [array addObject:v9];
  }

  if ([array count])
  {
    v10 = objc_alloc(MEMORY[0x277D55050]);
    v11 = [MEMORY[0x277CBEB98] setWithArray:array];
    v12 = [v10 initWithEntries:v11];

    [(SignpostSupportObjectExtractor *)self->_extractor setSubsystemCategoryFilter:v12];
  }
}

- (void)_setupProcessingBlocks
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__MXMOSSignpostProbe__setupProcessingBlocks__block_invoke;
  aBlock[3] = &unk_2798C96C0;
  objc_copyWeak(&v21, &location);
  v3 = _Block_copy(aBlock);
  extractor = self->_extractor;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__MXMOSSignpostProbe__setupProcessingBlocks__block_invoke_2;
  v18[3] = &unk_2798C96E8;
  objc_copyWeak(&v19, &location);
  [(SignpostSupportObjectExtractor *)extractor setEmitEventProcessingBlock:v18];
  v5 = self->_extractor;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__MXMOSSignpostProbe__setupProcessingBlocks__block_invoke_3;
  v15[3] = &unk_2798C9710;
  objc_copyWeak(&v17, &location);
  v6 = v3;
  v16 = v6;
  [(SignpostSupportObjectExtractor *)v5 setIntervalCompletionProcessingBlock:v15];
  v7 = self->_extractor;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__MXMOSSignpostProbe__setupProcessingBlocks__block_invoke_4;
  v12[3] = &unk_2798C9738;
  objc_copyWeak(&v14, &location);
  v8 = v6;
  v13 = v8;
  [(SignpostSupportObjectExtractor *)v7 setAnimationIntervalCompletionProcessingBlock:v12];
  v9 = self->_extractor;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__MXMOSSignpostProbe__setupProcessingBlocks__block_invoke_5;
  v10[3] = &unk_2798C9760;
  objc_copyWeak(&v11, &location);
  [(SignpostSupportObjectExtractor *)v9 setProcessingCompletionBlock:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

uint64_t __44__MXMOSSignpostProbe__setupProcessingBlocks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 startMachContinuousTime] >= WeakRetained[13] && objc_msgSend(v3, "endMachContinuousTime") >= WeakRetained[13])
  {
    if ([v3 endMachContinuousTime] > WeakRetained[14] || objc_msgSend(v3, "startMachContinuousTime") > WeakRetained[14])
    {
      v5 = 0;
      goto LABEL_5;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = WeakRetained[16];
    if (isKindOfClass)
    {
      [WeakRetained _buildData:v8 signpostAnimationInterval:v3];
    }

    else
    {
      [WeakRetained _buildData:v8 signpostInterval:v3];
    }
  }

  v5 = 1;
LABEL_5:

  return v5;
}

uint64_t __44__MXMOSSignpostProbe__setupProcessingBlocks__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _buildData:WeakRetained[16] attributes:0 signpostEvent:v3];
  }

  return 1;
}

uint64_t __44__MXMOSSignpostProbe__setupProcessingBlocks__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained || WeakRetained[13] && WeakRetained[14])
  {
    v6 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    [WeakRetained _buildData:WeakRetained[16] signpostInterval:v3];
    v6 = 1;
  }

  return v6;
}

uint64_t __44__MXMOSSignpostProbe__setupProcessingBlocks__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained || WeakRetained[13] && WeakRetained[14])
  {
    v6 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    [WeakRetained _buildData:WeakRetained[16] signpostAnimationInterval:v3];
    v6 = 1;
  }

  return v6;
}

void __44__MXMOSSignpostProbe__setupProcessingBlocks__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = _MXMGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      v21 = v5;
      _os_log_impl(&dword_258DAA000, v7, OS_LOG_TYPE_ERROR, "Extractor finished due to an error: '%@'.", &v20, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[16];
    v11 = [WeakRetained filter];
    v12 = [v10 dataMatchingFilter:v11];
    v13 = v9[16];
    v9[16] = v12;

    v14 = v9[15];
    if (v14)
    {
      dispatch_semaphore_signal(v14);
      v15 = _MXMGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20) = 0;
        v16 = "Extractor finished and we've signaled the sampling caller.";
LABEL_13:
        v17 = v15;
        v18 = OS_LOG_TYPE_DEBUG;
        goto LABEL_14;
      }
    }

    else
    {
      [v9 _stopUpdates];
      v15 = _MXMGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20) = 0;
        v16 = "Extractor finished and we've manually stopped updates.";
        goto LABEL_13;
      }
    }
  }

  else
  {
    v15 = _MXMGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      v16 = "Extractor called processingCompletionBlock but self is nil!";
      v17 = v15;
      v18 = OS_LOG_TYPE_INFO;
LABEL_14:
      _os_log_impl(&dword_258DAA000, v17, v18, v16, &v20, 2u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_buildSampleSetWithData:(id)data tag:(id)tag unit:(id)unit attributes:(id)attributes signpostObject:(id)object
{
  v67[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  tagCopy = tag;
  unitCopy = unit;
  attributesCopy = attributes;
  objectCopy = object;
  v13 = attributesCopy;
  if (!attributesCopy)
  {
    v13 = [MEMORY[0x277CBEB58] set];
  }

  name = [objectCopy name];
  v61 = [MXMSampleAttribute attributeWithName:@"os_signpost name" stringValue:name];
  v67[0] = v61;
  subsystem = [objectCopy subsystem];
  v15 = [MXMSampleAttribute attributeWithName:@"os_signpost subsystem" stringValue:subsystem];
  v67[1] = v15;
  category = [objectCopy category];
  v17 = [MXMSampleAttribute attributeWithName:@"os_signpost category" stringValue:category];
  v67[2] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(objectCopy, "signpostId")}];
  v19 = [MXMSampleAttribute attributeWithName:@"os_signpost identifier" numericValue:v18];
  v67[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
  v60 = v13;
  v21 = [v13 setByAddingObjectsFromArray:v20];
  v66 = [v21 mutableCopy];

  if (!attributesCopy)
  {
  }

  string1Name = [objectCopy string1Name];

  v23 = v66;
  if (string1Name)
  {
    string1Name2 = [objectCopy string1Name];
    v25 = [MXMSampleAttribute attributeWithName:@"os_signpost telemetry string1 name" stringValue:string1Name2];
    [v66 addObject:v25];

    string1Value = [objectCopy string1Value];
    v27 = [MXMSampleAttribute attributeWithName:@"os_signpost telemetry string1 value" stringValue:string1Value];
    [v66 addObject:v27];
  }

  string2Name = [objectCopy string2Name];

  if (string2Name)
  {
    string2Name2 = [objectCopy string2Name];
    v30 = [MXMSampleAttribute attributeWithName:@"os_signpost telemetry string2 name" stringValue:string2Name2];
    [v66 addObject:v30];

    string2Value = [objectCopy string2Value];
    v32 = [MXMSampleAttribute attributeWithName:@"os_signpost telemetry string2 value" stringValue:string2Value];
    [v66 addObject:v32];
  }

  number1Value = [objectCopy number1Value];

  if (number1Value)
  {
    v34 = [MXMMutableSampleSet alloc];
    v35 = +[MXMOSSignpostSampleTag telemetryNumber1];
    number1Name = [objectCopy number1Name];
    v37 = [MXMSampleAttribute attributeWithName:@"os_signpost telemetry number1 name" stringValue:number1Name];
    v38 = [v66 setByAddingObject:v37];
    v39 = [(MXMSampleSet *)v34 initWithTag:v35 unit:0 attributes:v38];
    [dataCopy appendSet:v39];

    v23 = v66;
    number1Value2 = [objectCopy number1Value];
    [number1Value2 doubleValue];
    v42 = v41;
    v43 = +[MXMOSSignpostSampleTag telemetryNumber1];
    v44 = [dataCopy appendDoubleValue:v43 tag:objc_msgSend(objectCopy timestamp:{"startNanoseconds"), v42}];
  }

  number2Value = [objectCopy number2Value];

  if (number2Value)
  {
    v46 = [MXMMutableSampleSet alloc];
    v47 = +[MXMOSSignpostSampleTag telemetryNumber2];
    number2Name = [objectCopy number2Name];
    v49 = [MXMSampleAttribute attributeWithName:@"os_signpost telemetry number2 name" stringValue:number2Name];
    v50 = [v23 setByAddingObject:v49];
    v51 = [(MXMSampleSet *)v46 initWithTag:v47 unit:0 attributes:v50];
    [dataCopy appendSet:v51];

    v23 = v66;
    number2Value2 = [objectCopy number2Value];
    [number2Value2 doubleValue];
    v54 = v53;
    v55 = +[MXMOSSignpostSampleTag telemetryNumber2];
    v56 = [dataCopy appendDoubleValue:v55 tag:objc_msgSend(objectCopy timestamp:{"startNanoseconds"), v54}];
  }

  v57 = [(MXMSampleSet *)[MXMMutableSampleSet alloc] initWithTag:tagCopy unit:unitCopy attributes:v23];

  v58 = *MEMORY[0x277D85DE8];

  return v57;
}

- (void)_buildData:(id)data attributes:(id)attributes signpostEvent:(id)event
{
  dataCopy = data;
  attributesCopy = attributes;
  eventCopy = event;
  v10 = attributesCopy;
  if (!attributesCopy)
  {
    v10 = [MEMORY[0x277CBEB98] set];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(eventCopy, "processID")}];
  v12 = [MXMSampleAttribute attributeWithName:@"Process Identifier" numericValue:v11];
  v13 = [v10 setByAddingObject:v12];

  if (!attributesCopy)
  {
  }

  v14 = +[MXMOSSignpostSampleTag timestamp];
  nanoseconds = [MEMORY[0x277CCADD0] nanoseconds];
  v16 = [(MXMOSSignpostProbe *)self _buildSampleSetWithData:dataCopy tag:v14 unit:nanoseconds attributes:v13 signpostObject:eventCopy];

  [v16 appendDoubleValue:objc_msgSend(eventCopy timestamp:{"startMachContinuousTime"), objc_msgSend(eventCopy, "startNanoseconds")}];
  [dataCopy appendSet:v16];
}

- (void)_buildData:(id)data signpostInterval:(id)interval
{
  intervalCopy = interval;
  dataCopy = data;
  beginEvent = [intervalCopy beginEvent];
  [(MXMOSSignpostProbe *)self _buildData:dataCopy attributes:0 signpostEvent:beginEvent];

  endEvent = [intervalCopy endEvent];
  [(MXMOSSignpostProbe *)self _buildData:dataCopy attributes:0 signpostEvent:endEvent];

  v10 = +[MXMOSSignpostSampleTag duration];
  nanoseconds = [MEMORY[0x277CCADD0] nanoseconds];
  v14 = [(MXMOSSignpostProbe *)self _buildSampleSetWithData:dataCopy tag:v10 unit:nanoseconds attributes:0 signpostObject:intervalCopy];

  durationNanoseconds = [intervalCopy durationNanoseconds];
  startMachContinuousTime = [intervalCopy startMachContinuousTime];

  [v14 appendDoubleValue:startMachContinuousTime timestamp:durationNanoseconds];
  [dataCopy appendSet:v14];
}

- (void)_buildData:(id)data signpostAnimationInterval:(id)interval
{
  intervalCopy = interval;
  dataCopy = data;
  [(MXMOSSignpostProbe *)self _buildData:dataCopy signpostInterval:intervalCopy];
  [(MXMOSSignpostProbe *)self _addAnimationFrameRateToData:dataCopy fromSignpostAnimationInterval:intervalCopy];
  [(MXMOSSignpostProbe *)self _addAnimationFrameCountToData:dataCopy fromSignpostAnimationInterval:intervalCopy];
  [(MXMOSSignpostProbe *)self _addAnimationRenderStatsToData:dataCopy fromSignpostAnimationInterval:intervalCopy];
  [(MXMOSSignpostProbe *)self _addAnimationGlitchTimeRatioToData:dataCopy fromSignpostAnimationInterval:intervalCopy];
  [(MXMOSSignpostProbe *)self _addAnimationNumberOfGlitchesToData:dataCopy fromSignpostAnimationInterval:intervalCopy];
  [(MXMOSSignpostProbe *)self _addAnimationGlitchesTotalDurationToData:dataCopy fromSignpostAnimationInterval:intervalCopy];
}

- (void)_addAnimationFrameRateToData:(id)data fromSignpostAnimationInterval:(id)interval
{
  intervalCopy = interval;
  dataCopy = data;
  v8 = +[MXMOSSignpostSampleTag animationFrameRate];
  framesPerSecond = [MEMORY[0x277CCAE00] framesPerSecond];
  v13 = [(MXMOSSignpostProbe *)self _buildSampleSetWithData:dataCopy tag:v8 unit:framesPerSecond attributes:0 signpostObject:intervalCopy];

  [intervalCopy frameRate];
  v11 = v10;
  startMachContinuousTime = [intervalCopy startMachContinuousTime];

  [v13 appendDoubleValue:startMachContinuousTime timestamp:v11];
  [dataCopy appendSet:v13];
}

- (void)_addAnimationFrameCountToData:(id)data fromSignpostAnimationInterval:(id)interval
{
  intervalCopy = interval;
  dataCopy = data;
  v8 = +[MXMOSSignpostSampleTag animationFrameCount];
  v9 = +[MXMUnitFrame frames];
  v12 = [(MXMOSSignpostProbe *)self _buildSampleSetWithData:dataCopy tag:v8 unit:v9 attributes:0 signpostObject:intervalCopy];

  frameCount = [intervalCopy frameCount];
  startMachContinuousTime = [intervalCopy startMachContinuousTime];

  [v12 appendDoubleValue:startMachContinuousTime timestamp:frameCount];
  [dataCopy appendSet:v12];
}

- (void)_addAnimationRenderStatsToData:(id)data fromSignpostAnimationInterval:(id)interval
{
  dataCopy = data;
  intervalCopy = interval;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__MXMOSSignpostProbe__addAnimationRenderStatsToData_fromSignpostAnimationInterval___block_invoke;
  aBlock[3] = &unk_2798C9788;
  aBlock[4] = self;
  v28 = dataCopy;
  v29 = intervalCopy;
  v8 = intervalCopy;
  v9 = dataCopy;
  v10 = _Block_copy(aBlock);
  v11 = [v8 frameStatisticsForDisplayID:0];
  v12 = +[MXMOSSignpostSampleTag animationUpdateTimeP90];
  milliseconds = [MEMORY[0x277CCADD0] milliseconds];
  updateTime = [v11 updateTime];
  v10[2](v10, v12, milliseconds, updateTime);

  v15 = +[MXMOSSignpostSampleTag animationRenderTimeP90];
  milliseconds2 = [MEMORY[0x277CCADD0] milliseconds];
  renderTime = [v11 renderTime];
  v10[2](v10, v15, milliseconds2, renderTime);

  v18 = +[MXMOSSignpostSampleTag animationGPUTimeP90];
  milliseconds3 = [MEMORY[0x277CCADD0] milliseconds];
  gpuTime = [v11 gpuTime];
  v10[2](v10, v18, milliseconds3, gpuTime);

  v21 = +[MXMOSSignpostSampleTag animationRenderGPUTimeP90];
  milliseconds4 = [MEMORY[0x277CCADD0] milliseconds];
  renderAndGPUTime = [v11 renderAndGPUTime];
  v10[2](v10, v21, milliseconds4, renderAndGPUTime);

  v24 = +[MXMOSSignpostSampleTag animationNumberOfOffscreenPassesP90];
  v25 = +[MXMUnitFrame passes];
  offscreenPassCount = [v11 offscreenPassCount];
  v10[2](v10, v24, v25, offscreenPassCount);
}

void __83__MXMOSSignpostProbe__addAnimationRenderStatsToData_fromSignpostAnimationInterval___block_invoke(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  v7 = [a1[4] _buildSampleSetWithData:a1[5] tag:a2 unit:a3 attributes:0 signpostObject:a1[6]];
  if (v10)
  {
    [v10 p90];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  [v7 appendDoubleValue:objc_msgSend(a1[6] timestamp:{"startMachContinuousTime"), v9}];
  [a1[5] appendSet:v7];
}

- (void)_addAnimationGlitchTimeRatioToData:(id)data fromSignpostAnimationInterval:(id)interval
{
  intervalCopy = interval;
  dataCopy = data;
  v8 = +[MXMOSSignpostSampleTag animationGlitchTimeRatio];
  v9 = +[MXMUnitHitch timeRatio];
  v10 = [(MXMOSSignpostProbe *)self _buildSampleSetWithData:dataCopy tag:v8 unit:v9 attributes:0 signpostObject:intervalCopy];

  [intervalCopy glitchTimeRatioMsPerS];
  [v10 appendDoubleValue:objc_msgSend(intervalCopy timestamp:{"startMachContinuousTime"), v11}];
  [dataCopy appendSet:v10];
  v12 = +[MXMOSSignpostSampleTag animationNonFirstFrameGlitchTimeRatioAdjusted];
  v13 = +[MXMUnitHitch timeRatio];
  v14 = [(MXMOSSignpostProbe *)self _buildSampleSetWithData:dataCopy tag:v12 unit:v13 attributes:0 signpostObject:intervalCopy];

  [intervalCopy nonFirstFrameGlitchTimeRatioAdjustedMsPerS];
  [v14 appendDoubleValue:objc_msgSend(intervalCopy timestamp:{"startMachContinuousTime"), v15}];
  [dataCopy appendSet:v14];

  v16 = +[MXMOSSignpostSampleTag animationPerAppNonFirstFrameGlitchTimeRatioAdjusted];
  v17 = +[MXMUnitHitch timeRatio];
  v18 = [(MXMOSSignpostProbe *)self _buildSampleSetWithData:dataCopy tag:v16 unit:v17 attributes:0 signpostObject:intervalCopy];

  filter = [(MXMProbe *)self filter];
  v20 = [filter attributeFilterWithName:@"os_signpost animation contributing process name"];
  stringValue = [v20 stringValue];

  v22 = [intervalCopy contributingPidsForProcessName:stringValue];
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __87__MXMOSSignpostProbe__addAnimationGlitchTimeRatioToData_fromSignpostAnimationInterval___block_invoke;
  v30 = &unk_2798C97B0;
  v31 = v23;
  v32 = intervalCopy;
  v24 = intervalCopy;
  v25 = v23;
  [v22 enumerateIndexesUsingBlock:&v27];
  SignpostSupportTotalDurationNsForIntervals();
  [v24 timeRatioMSPerSForOverrunIntervals:v25 applyPerceptionAdjustments:{0x7FFFFFFFFFFFFFFFLL, v27, v28, v29, v30}];
  [v18 appendDoubleValue:objc_msgSend(v24 timestamp:{"startMachContinuousTime"), v26}];
  [dataCopy appendSet:v18];
}

void __87__MXMOSSignpostProbe__addAnimationGlitchTimeRatioToData_fromSignpostAnimationInterval___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x277D54FF0] nonFirstFrameContributedGlitches:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) overrunIntervals:v5];
  [v3 addObjectsFromArray:v4];
}

- (void)_addAnimationNumberOfGlitchesToData:(id)data fromSignpostAnimationInterval:(id)interval
{
  dataCopy = data;
  intervalCopy = interval;
  v8 = +[MXMOSSignpostSampleTag animationNumberOfGlitches];
  v9 = +[MXMUnitHitch hitches];
  v10 = [(MXMOSSignpostProbe *)self _buildSampleSetWithData:dataCopy tag:v8 unit:v9 attributes:0 signpostObject:intervalCopy];

  glitches = [intervalCopy glitches];
  [v10 appendDoubleValue:objc_msgSend(intervalCopy timestamp:{"startMachContinuousTime"), objc_msgSend(glitches, "count")}];

  [dataCopy appendSet:v10];
  v12 = +[MXMOSSignpostSampleTag animationNonFirstFrameNumberOfGlitches];
  v13 = +[MXMUnitHitch hitches];
  v14 = [(MXMOSSignpostProbe *)self _buildSampleSetWithData:dataCopy tag:v12 unit:v13 attributes:0 signpostObject:intervalCopy];

  nonFirstFrameGlitches = [intervalCopy nonFirstFrameGlitches];
  [v14 appendDoubleValue:objc_msgSend(intervalCopy timestamp:{"startMachContinuousTime"), objc_msgSend(nonFirstFrameGlitches, "count")}];

  [dataCopy appendSet:v14];
  v16 = +[MXMOSSignpostSampleTag animationPerAppNonFirstFrameNumberOfGlitches];
  v17 = +[MXMUnitHitch hitches];
  v18 = [(MXMOSSignpostProbe *)self _buildSampleSetWithData:dataCopy tag:v16 unit:v17 attributes:0 signpostObject:intervalCopy];

  filter = [(MXMProbe *)self filter];
  v20 = [filter attributeFilterWithName:@"os_signpost animation contributing process name"];
  stringValue = [v20 stringValue];

  v22 = [intervalCopy contributingPidsForProcessName:stringValue];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __88__MXMOSSignpostProbe__addAnimationNumberOfGlitchesToData_fromSignpostAnimationInterval___block_invoke;
  v27 = &unk_2798C97D8;
  v23 = intervalCopy;
  v28 = v23;
  v29 = &v30;
  [v22 enumerateIndexesUsingBlock:&v24];
  [v18 appendDoubleValue:objc_msgSend(v23 timestamp:{"startMachContinuousTime", v24, v25, v26, v27), v31[3]}];
  [dataCopy appendSet:v18];

  _Block_object_dispose(&v30, 8);
}

void __88__MXMOSSignpostProbe__addAnimationNumberOfGlitchesToData_fromSignpostAnimationInterval___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D54FF0] nonFirstFrameContributedGlitches:a2];
  v3 = [*(a1 + 32) overrunIntervals:v4];
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + [v3 count];
}

- (void)_addAnimationGlitchesTotalDurationToData:(id)data fromSignpostAnimationInterval:(id)interval
{
  v55 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  intervalCopy = interval;
  v8 = +[MXMOSSignpostSampleTag animationGlitchesTotalDuration];
  milliseconds = [MEMORY[0x277CCADD0] milliseconds];
  v10 = [(MXMOSSignpostProbe *)self _buildSampleSetWithData:dataCopy tag:v8 unit:milliseconds attributes:0 signpostObject:intervalCopy];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  glitches = [intervalCopy glitches];
  v12 = [glitches countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v12)
  {
    v13 = *v50;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(glitches);
        }

        [*(*(&v49 + 1) + 8 * i) durationMs];
        v14 = v14 + v16;
      }

      v12 = [glitches countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
  }

  [v10 appendDoubleValue:objc_msgSend(intervalCopy timestamp:{"startMachContinuousTime"), v14}];
  [dataCopy appendSet:v10];
  v17 = +[MXMOSSignpostSampleTag animationNonFirstFrameGlitchesTotalDuration];
  milliseconds2 = [MEMORY[0x277CCADD0] milliseconds];
  v19 = [(MXMOSSignpostProbe *)self _buildSampleSetWithData:dataCopy tag:v17 unit:milliseconds2 attributes:0 signpostObject:intervalCopy];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  nonFirstFrameGlitches = [intervalCopy nonFirstFrameGlitches];
  v21 = [nonFirstFrameGlitches countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v21)
  {
    v22 = *v46;
    v23 = 0.0;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v46 != v22)
        {
          objc_enumerationMutation(nonFirstFrameGlitches);
        }

        [*(*(&v45 + 1) + 8 * j) durationMs];
        v23 = v23 + v25;
      }

      v21 = [nonFirstFrameGlitches countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v21);
  }

  else
  {
    v23 = 0.0;
  }

  [v19 appendDoubleValue:objc_msgSend(intervalCopy timestamp:{"startMachContinuousTime"), v23}];
  [dataCopy appendSet:v19];

  v26 = +[MXMOSSignpostSampleTag animationPerAppNonFirstFrameGlitchesTotalDuration];
  milliseconds3 = [MEMORY[0x277CCADD0] milliseconds];
  v28 = [(MXMOSSignpostProbe *)self _buildSampleSetWithData:dataCopy tag:v26 unit:milliseconds3 attributes:0 signpostObject:intervalCopy];

  filter = [(MXMProbe *)self filter];
  v30 = [filter attributeFilterWithName:@"os_signpost animation contributing process name"];
  stringValue = [v30 stringValue];

  v32 = [intervalCopy contributingPidsForProcessName:stringValue];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __93__MXMOSSignpostProbe__addAnimationGlitchesTotalDurationToData_fromSignpostAnimationInterval___block_invoke;
  v38 = &unk_2798C97D8;
  v33 = intervalCopy;
  v39 = v33;
  v40 = &v41;
  [v32 enumerateIndexesUsingBlock:&v35];
  [v28 appendDoubleValue:objc_msgSend(v33 timestamp:{"startMachContinuousTime", v35, v36, v37, v38), v42[3]}];
  [dataCopy appendSet:v28];

  _Block_object_dispose(&v41, 8);
  v34 = *MEMORY[0x277D85DE8];
}

void __93__MXMOSSignpostProbe__addAnimationGlitchesTotalDurationToData_fromSignpostAnimationInterval___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D54FF0] nonFirstFrameContributedGlitches:a2];
  v4 = [*(a1 + 32) overrunIntervals:v3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8) durationMs];
        *(*(*(a1 + 40) + 8) + 24) = v9 + *(*(*(a1 + 40) + 8) + 24);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_beginUpdates
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = [self description];
  [currentHandler handleFailureInMethod:a2 object:a3 file:@"MXMOSSignpostProbe.m" lineNumber:611 description:v7];
}

- (void)_stopUpdates
{
  v3.receiver = self;
  v3.super_class = MXMOSSignpostProbe;
  [(MXMProbe *)&v3 _stopUpdates];
  [(SignpostSupportObjectExtractor *)self->_extractor stopProcessing];
  [(MXMProbe *)self _handleIncomingData:self->_data];
}

- (id)sampleWithTimeout:(double)timeout stopReason:(unint64_t *)reason
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = dispatch_semaphore_create(0);
  finishedProcessingSema = self->_finishedProcessingSema;
  self->_finishedProcessingSema = v6;

  [(MXMOSSignpostProbe *)self _beginUpdates];
  v8 = _MXMGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    timeoutCopy = timeout;
    _os_log_impl(&dword_258DAA000, v8, OS_LOG_TYPE_DEBUG, "Created finish process semaphore, now waiting up to %f seconds.", buf, 0xCu);
  }

  v9 = self->_finishedProcessingSema;
  v10 = dispatch_time(0, (timeout * 1000000000.0));
  v11 = dispatch_semaphore_wait(v9, v10);
  v12 = _MXMGetLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_258DAA000, v12, OS_LOG_TYPE_DEBUG, "Failed to stop waiting for stop processing semaphore.", buf, 2u);
    }

    [(SignpostSupportObjectExtractor *)self->_extractor stopProcessing];
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_258DAA000, v12, OS_LOG_TYPE_DEBUG, "Succesfully waited for stop processing semaphore.", buf, 2u);
    }
  }

  v17.receiver = self;
  v17.super_class = MXMOSSignpostProbe;
  [(MXMProbe *)&v17 _stopUpdates];
  data = self->_data;
  v15 = *MEMORY[0x277D85DE8];

  return data;
}

- (void)dealloc
{
  [(SignpostSupportObjectExtractor *)self->_extractor setProcessingCompletionBlock:0];
  [(SignpostSupportObjectExtractor *)self->_extractor stopProcessing];
  extractor = self->_extractor;
  self->_extractor = 0;

  v4.receiver = self;
  v4.super_class = MXMOSSignpostProbe;
  [(MXMOSSignpostProbe *)&v4 dealloc];
}

@end