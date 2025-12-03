@interface NTNewsTodayResultsFetchDescriptor
- (NTNewsTodayResultsFetchDescriptor)init;
- (id)placeholderSectionDescriptorsWithContentRequest:(id)request;
@end

@implementation NTNewsTodayResultsFetchDescriptor

- (NTNewsTodayResultsFetchDescriptor)init
{
  v3.receiver = self;
  v3.super_class = NTNewsTodayResultsFetchDescriptor;
  return [(NTNewsTodayResultsFetchDescriptor *)&v3 init];
}

- (id)placeholderSectionDescriptorsWithContentRequest:(id)request
{
  v15[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  moduleDescriptorType = [requestCopy moduleDescriptorType];
  if (moduleDescriptorType == 1)
  {
    v10 = [NTSectionPlaceholderDescriptor alloc];
    name = [requestCopy name];
    nameColorLight = [requestCopy nameColorLight];
    nameColorDark = [requestCopy nameColorDark];
    tagID = [requestCopy tagID];
    v11 = [(NTSectionPlaceholderDescriptor *)v10 initWithName:name nameColorLight:nameColorLight nameColorDark:nameColorDark minimumStoriesAllocation:0 maximumStoriesAllocation:-1 backingTagID:tagID];
    v14 = v11;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];

    goto LABEL_5;
  }

  if (!moduleDescriptorType)
  {
    name = __85__NTNewsTodayResultsFetchDescriptor_placeholderSectionDescriptorsWithContentRequest___block_invoke();
    nameColorLight = __85__NTNewsTodayResultsFetchDescriptor_placeholderSectionDescriptorsWithContentRequest___block_invoke_2();
    nameColorDark = [[NTSectionPlaceholderDescriptor alloc] initWithName:name nameColorLight:@"FF2D54" nameColorDark:@"FF375F" minimumStoriesAllocation:1 maximumStoriesAllocation:2 backingTagID:0];
    v15[0] = nameColorDark;
    tagID = [[NTSectionPlaceholderDescriptor alloc] initWithName:nameColorLight nameColorLight:@"ff8e00" nameColorDark:0 minimumStoriesAllocation:1 maximumStoriesAllocation:-1 backingTagID:0];
    v15[1] = tagID;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
LABEL_5:

    goto LABEL_7;
  }

  v9 = MEMORY[0x277CBEBF8];
LABEL_7:

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

__CFString *__85__NTNewsTodayResultsFetchDescriptor_placeholderSectionDescriptorsWithContentRequest___block_invoke()
{
  v0 = [MEMORY[0x277D30DC8] sharedAccount];
  v1 = [v0 dynamicSupportedContentLanguage];

  if (v1)
  {
    return @"À la une";
  }

  else
  {
    return @"Top Stories";
  }
}

__CFString *__85__NTNewsTodayResultsFetchDescriptor_placeholderSectionDescriptorsWithContentRequest___block_invoke_2()
{
  v0 = [MEMORY[0x277D30DC8] sharedAccount];
  v1 = [v0 dynamicSupportedContentLanguage];

  if (v1)
  {
    return @"Populaires";
  }

  else
  {
    return @"Trending";
  }
}

@end