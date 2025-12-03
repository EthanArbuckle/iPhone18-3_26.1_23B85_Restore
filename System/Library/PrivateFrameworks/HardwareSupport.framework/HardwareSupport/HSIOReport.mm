@interface HSIOReport
+ (id)report:(id *)report;
+ (id)reportWithOnlySimpleChannels:(id *)channels;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReport:(id)report;
- (HSIOReport)initWithReportDictionary:(id)dictionary;
- (NSArray)channelDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)reportByFilteringChannels:(id)channels;
- (unint64_t)hash;
@end

@implementation HSIOReport

+ (id)report:(id *)report
{
  v4 = IOReportCopyAllChannels();
  if (v4)
  {
    v5 = [HSIOReport alloc];
    v6 = [v4 copy];
    v7 = [(HSIOReport *)v5 initWithReportDictionary:v6];
  }

  else
  {
    v6 = 0;
    if (report)
    {
      v8 = 0;
      v7 = 0;
      *report = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (HSIOReport)initWithReportDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = HSIOReport;
  v6 = [(HSIOReport *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportDictionary, dictionary);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  Aggregate = IOReportCreateAggregate();
  reportDictionary = [(HSIOReport *)self reportDictionary];
  v7 = IOReportMergeChannels();

  if (v7)
  {
    v8 = 0;
    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE658];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v9 raise:v10 format:{@"Failed to copy %@ with error: %@", v12, 0}];

    v13 = 0;
  }

  else
  {
    v14 = [objc_opt_class() allocWithZone:zone];
    v8 = [Aggregate copy];
    v13 = [v14 initWithReportDictionary:v8];
  }

  return v13;
}

- (unint64_t)hash
{
  channelDescriptions = [(HSIOReport *)self channelDescriptions];
  v3 = [channelDescriptions hash];

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HSIOReport *)self isEqualToReport:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToReport:(id)report
{
  channelDescriptions = [report channelDescriptions];
  channelDescriptions2 = [(HSIOReport *)self channelDescriptions];
  v6 = [channelDescriptions isEqual:channelDescriptions2];

  return v6;
}

- (id)description
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = HSIOReport;
  v4 = [(HSIOReport *)&v13 description];
  v14[0] = @"channel count";
  v5 = MEMORY[0x277CCABB0];
  channelDescriptions = [(HSIOReport *)self channelDescriptions];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(channelDescriptions, "count")}];
  v14[1] = @"channel descriptions";
  v15[0] = v7;
  channelDescriptions2 = [(HSIOReport *)self channelDescriptions];
  v15[1] = channelDescriptions2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v10 = [v3 stringWithFormat:@"%@ %@", v4, v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSArray)channelDescriptions
{
  channelDescriptions = self->_channelDescriptions;
  if (!channelDescriptions)
  {
    array = [MEMORY[0x277CBEB18] array];
    reportDictionary = [(HSIOReport *)self reportDictionary];
    v10 = array;
    v6 = array;
    IOReportIterate();

    v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_1];
    v8 = self->_channelDescriptions;
    self->_channelDescriptions = v7;

    channelDescriptions = self->_channelDescriptions;
  }

  return channelDescriptions;
}

uint64_t __33__HSIOReport_channelDescriptions__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[HSIORChannelDescription alloc] initWithIOReportChannelRef:a2];
  [*(a1 + 32) addObject:v3];

  return 0;
}

uint64_t __33__HSIOReport_channelDescriptions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)reportByFilteringChannels:(id)channels
{
  channelsCopy = channels;
  v5 = [(HSIOReport *)self copy];
  reportDictionary = [v5 reportDictionary];
  v7 = [reportDictionary mutableCopy];

  v13 = channelsCopy;
  v8 = channelsCopy;
  IOReportPrune();
  v9 = objc_alloc(objc_opt_class());
  v10 = [v7 copy];
  v11 = [v9 initWithReportDictionary:v10];

  return v11;
}

uint64_t __40__HSIOReport_reportByFilteringChannels___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[HSIORChannelDescription alloc] initWithIOReportChannelRef:a2];
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
  v4 = IOReportCopyChannelsOfFormat();
  if (v4)
  {
    v5 = [HSIOReport alloc];
    v6 = [v4 copy];
    v7 = [(HSIOReport *)v5 initWithReportDictionary:v6];
  }

  else
  {
    v6 = 0;
    if (channels)
    {
      v8 = 0;
      v7 = 0;
      *channels = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

uint64_t __56__HSIOReport_SimpleFormat__reportWithOnlySimpleChannels__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 reportingProtocol];
  v3 = NSStringFromProtocol(v2);
  v4 = NSStringFromProtocol(&unk_286331AC8);
  v5 = [v3 isEqualToString:v4];

  return v5;
}

@end