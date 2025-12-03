@interface HSIOReportSnapshot
+ (id)report:(id *)report;
+ (id)reportWithOnlySimpleChannels:(id *)channels;
+ (id)snapshotReport:(id)report error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSnapshot:(id)snapshot;
- (HSIOReportSnapshot)snapshotWithBaseline:(id)baseline error:(id *)error;
- (NSArray)samples;
- (id)reportWithOnlySimpleChannels;
- (id)snapshotByFilteringSamples:(id)samples;
- (unint64_t)hash;
@end

@implementation HSIOReportSnapshot

+ (id)snapshotReport:(id)report error:(id *)error
{
  reportDictionary = [report reportDictionary];
  Subscription = IOReportCreateSubscription();

  if (Subscription)
  {
    Samples = IOReportCreateSamples();
    CFRelease(Subscription);
    if (Samples)
    {
      v9 = [self alloc];
      v10 = [Samples copy];
      v11 = [v9 initWithReportDictionary:v10];
    }

    else
    {
      v10 = 0;
      if (error)
      {
        v13 = 0;
        v11 = 0;
        *error = 0;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    Samples = 0;
    if (error)
    {
      v12 = 0;
      v11 = 0;
      *error = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (id)report:(id *)report
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___HSIOReportSnapshot;
  v4 = objc_msgSendSuper2(&v7, sel_report_);
  if (v4)
  {
    v5 = [objc_opt_class() snapshotReport:v4 error:report];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  samples = [(HSIOReportSnapshot *)self samples];
  v3 = [samples hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HSIOReportSnapshot *)self isEqualToSnapshot:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSnapshot:(id)snapshot
{
  samples = [snapshot samples];
  samples2 = [(HSIOReportSnapshot *)self samples];
  v6 = [samples isEqualToArray:samples2];

  return v6;
}

- (HSIOReportSnapshot)snapshotWithBaseline:(id)baseline error:(id *)error
{
  reportDictionary = [baseline reportDictionary];
  reportDictionary2 = [(HSIOReport *)self reportDictionary];
  SamplesDelta = IOReportCreateSamplesDelta();

  if (SamplesDelta)
  {
    v9 = objc_alloc(objc_opt_class());
    v10 = [SamplesDelta copy];
    v11 = [v9 initWithReportDictionary:v10];
  }

  else
  {
    v10 = 0;
    if (error)
    {
      v12 = 0;
      v11 = 0;
      *error = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (NSArray)samples
{
  samples = self->_samples;
  if (!samples)
  {
    array = [MEMORY[0x277CBEB18] array];
    reportDictionary = [(HSIOReport *)self reportDictionary];
    v10 = array;
    v6 = array;
    IOReportIterate();

    v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_177];
    v8 = self->_samples;
    self->_samples = v7;

    samples = self->_samples;
  }

  return samples;
}

uint64_t __29__HSIOReportSnapshot_samples__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[HSIORSample alloc] initWithIOReportSampleRef:a2];
  [*(a1 + 32) addObject:v3];

  return 0;
}

uint64_t __29__HSIOReportSnapshot_samples__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 channelDescription];
  v6 = [v5 name];
  v7 = [v4 channelDescription];

  v8 = [v7 name];
  v9 = [v6 compare:v8];

  return v9;
}

- (id)snapshotByFilteringSamples:(id)samples
{
  samplesCopy = samples;
  v5 = [(HSIOReportSnapshot *)self copy];
  reportDictionary = [v5 reportDictionary];
  v7 = [reportDictionary mutableCopy];

  reportDictionary2 = [(HSIOReport *)self reportDictionary];
  v14 = samplesCopy;
  v9 = samplesCopy;
  IOReportPrune();

  v10 = objc_alloc(objc_opt_class());
  v11 = [v7 copy];
  v12 = [v10 initWithReportDictionary:v11];

  return v12;
}

uint64_t __49__HSIOReportSnapshot_snapshotByFilteringSamples___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[HSIORSample alloc] initWithIOReportSampleRef:a2];
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = 0;
  }

  else
  {
    v4 = 16;
  }

  return v4;
}

+ (id)reportWithOnlySimpleChannels:(id *)channels
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___HSIOReportSnapshot;
  v4 = objc_msgSendSuper2(&v7, sel_reportWithOnlySimpleChannels_);
  if (v4)
  {
    v5 = [objc_opt_class() snapshotReport:v4 error:channels];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)reportWithOnlySimpleChannels
{
  v4.receiver = self;
  v4.super_class = HSIOReportSnapshot;
  reportWithOnlySimpleChannels = [(HSIOReport *)&v4 reportWithOnlySimpleChannels];

  return reportWithOnlySimpleChannels;
}

@end