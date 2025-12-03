@interface NTNoContentTodayResultsFetchDescriptor
- (NTNoContentTodayResultsFetchDescriptor)init;
- (id)placeholderSectionDescriptorsWithContentRequest:(id)request;
@end

@implementation NTNoContentTodayResultsFetchDescriptor

- (NTNoContentTodayResultsFetchDescriptor)init
{
  v3.receiver = self;
  v3.super_class = NTNoContentTodayResultsFetchDescriptor;
  return [(NTNoContentTodayResultsFetchDescriptor *)&v3 init];
}

- (id)placeholderSectionDescriptorsWithContentRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(NTNewsTodayResultsFetchDescriptor);
  v5 = [(NTNewsTodayResultsFetchDescriptor *)v4 placeholderSectionDescriptorsWithContentRequest:requestCopy];

  return v5;
}

@end