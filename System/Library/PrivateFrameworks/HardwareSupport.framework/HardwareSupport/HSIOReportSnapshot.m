@interface HSIOReportSnapshot
+ (id)report:(id *)a3;
+ (id)reportWithOnlySimpleChannels:(id *)a3;
+ (id)snapshotReport:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSnapshot:(id)a3;
- (HSIOReportSnapshot)snapshotWithBaseline:(id)a3 error:(id *)a4;
- (NSArray)samples;
- (id)reportWithOnlySimpleChannels;
- (id)snapshotByFilteringSamples:(id)a3;
- (unint64_t)hash;
@end

@implementation HSIOReportSnapshot

+ (id)snapshotReport:(id)a3 error:(id *)a4
{
  v6 = [a3 reportDictionary];
  Subscription = IOReportCreateSubscription();

  if (Subscription)
  {
    Samples = IOReportCreateSamples();
    CFRelease(Subscription);
    if (Samples)
    {
      v9 = [a1 alloc];
      v10 = [Samples copy];
      v11 = [v9 initWithReportDictionary:v10];
    }

    else
    {
      v10 = 0;
      if (a4)
      {
        v13 = 0;
        v11 = 0;
        *a4 = 0;
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
    if (a4)
    {
      v12 = 0;
      v11 = 0;
      *a4 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (id)report:(id *)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___HSIOReportSnapshot;
  v4 = objc_msgSendSuper2(&v7, sel_report_);
  if (v4)
  {
    v5 = [objc_opt_class() snapshotReport:v4 error:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(HSIOReportSnapshot *)self samples];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HSIOReportSnapshot *)self isEqualToSnapshot:v4];
  }

  return v5;
}

- (BOOL)isEqualToSnapshot:(id)a3
{
  v4 = [a3 samples];
  v5 = [(HSIOReportSnapshot *)self samples];
  v6 = [v4 isEqualToArray:v5];

  return v6;
}

- (HSIOReportSnapshot)snapshotWithBaseline:(id)a3 error:(id *)a4
{
  v6 = [a3 reportDictionary];
  v7 = [(HSIOReport *)self reportDictionary];
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
    if (a4)
    {
      v12 = 0;
      v11 = 0;
      *a4 = 0;
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
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(HSIOReport *)self reportDictionary];
    v10 = v4;
    v6 = v4;
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

- (id)snapshotByFilteringSamples:(id)a3
{
  v4 = a3;
  v5 = [(HSIOReportSnapshot *)self copy];
  v6 = [v5 reportDictionary];
  v7 = [v6 mutableCopy];

  v8 = [(HSIOReport *)self reportDictionary];
  v14 = v4;
  v9 = v4;
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

+ (id)reportWithOnlySimpleChannels:(id *)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___HSIOReportSnapshot;
  v4 = objc_msgSendSuper2(&v7, sel_reportWithOnlySimpleChannels_);
  if (v4)
  {
    v5 = [objc_opt_class() snapshotReport:v4 error:a3];
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
  v2 = [(HSIOReport *)&v4 reportWithOnlySimpleChannels];

  return v2;
}

@end