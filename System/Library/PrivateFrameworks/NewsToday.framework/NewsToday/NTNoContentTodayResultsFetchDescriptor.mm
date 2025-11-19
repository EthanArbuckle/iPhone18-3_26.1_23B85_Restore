@interface NTNoContentTodayResultsFetchDescriptor
- (NTNoContentTodayResultsFetchDescriptor)init;
- (id)placeholderSectionDescriptorsWithContentRequest:(id)a3;
@end

@implementation NTNoContentTodayResultsFetchDescriptor

- (NTNoContentTodayResultsFetchDescriptor)init
{
  v3.receiver = self;
  v3.super_class = NTNoContentTodayResultsFetchDescriptor;
  return [(NTNoContentTodayResultsFetchDescriptor *)&v3 init];
}

- (id)placeholderSectionDescriptorsWithContentRequest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NTNewsTodayResultsFetchDescriptor);
  v5 = [(NTNewsTodayResultsFetchDescriptor *)v4 placeholderSectionDescriptorsWithContentRequest:v3];

  return v5;
}

@end