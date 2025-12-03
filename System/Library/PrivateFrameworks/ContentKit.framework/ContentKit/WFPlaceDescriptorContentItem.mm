@interface WFPlaceDescriptorContentItem
- (LNEntity)entity;
@end

@implementation WFPlaceDescriptorContentItem

- (LNEntity)entity
{
  wf_placeDescriptorObjectClass = [MEMORY[0x277D23928] wf_placeDescriptorObjectClass];

  return [(WFContentItem *)self objectForClass:wf_placeDescriptorObjectClass];
}

@end