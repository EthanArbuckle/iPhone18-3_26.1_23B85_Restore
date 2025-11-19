@interface WFPlaceDescriptorContentItem
- (LNEntity)entity;
@end

@implementation WFPlaceDescriptorContentItem

- (LNEntity)entity
{
  v3 = [MEMORY[0x277D23928] wf_placeDescriptorObjectClass];

  return [(WFContentItem *)self objectForClass:v3];
}

@end