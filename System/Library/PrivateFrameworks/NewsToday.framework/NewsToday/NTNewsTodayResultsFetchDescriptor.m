@interface NTNewsTodayResultsFetchDescriptor
- (NTNewsTodayResultsFetchDescriptor)init;
- (id)placeholderSectionDescriptorsWithContentRequest:(id)a3;
@end

@implementation NTNewsTodayResultsFetchDescriptor

- (NTNewsTodayResultsFetchDescriptor)init
{
  v3.receiver = self;
  v3.super_class = NTNewsTodayResultsFetchDescriptor;
  return [(NTNewsTodayResultsFetchDescriptor *)&v3 init];
}

- (id)placeholderSectionDescriptorsWithContentRequest:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 moduleDescriptorType];
  if (v4 == 1)
  {
    v10 = [NTSectionPlaceholderDescriptor alloc];
    v5 = [v3 name];
    v6 = [v3 nameColorLight];
    v7 = [v3 nameColorDark];
    v8 = [v3 tagID];
    v11 = [(NTSectionPlaceholderDescriptor *)v10 initWithName:v5 nameColorLight:v6 nameColorDark:v7 minimumStoriesAllocation:0 maximumStoriesAllocation:-1 backingTagID:v8];
    v14 = v11;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];

    goto LABEL_5;
  }

  if (!v4)
  {
    v5 = __85__NTNewsTodayResultsFetchDescriptor_placeholderSectionDescriptorsWithContentRequest___block_invoke();
    v6 = __85__NTNewsTodayResultsFetchDescriptor_placeholderSectionDescriptorsWithContentRequest___block_invoke_2();
    v7 = [[NTSectionPlaceholderDescriptor alloc] initWithName:v5 nameColorLight:@"FF2D54" nameColorDark:@"FF375F" minimumStoriesAllocation:1 maximumStoriesAllocation:2 backingTagID:0];
    v15[0] = v7;
    v8 = [[NTSectionPlaceholderDescriptor alloc] initWithName:v6 nameColorLight:@"ff8e00" nameColorDark:0 minimumStoriesAllocation:1 maximumStoriesAllocation:-1 backingTagID:0];
    v15[1] = v8;
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