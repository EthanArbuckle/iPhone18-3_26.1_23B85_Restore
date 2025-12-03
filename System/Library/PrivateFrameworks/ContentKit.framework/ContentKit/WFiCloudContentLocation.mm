@interface WFiCloudContentLocation
+ (id)objectWithWFSerializedRepresentation:(id)representation;
@end

@implementation WFiCloudContentLocation

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  v3 = [[self alloc] initWithIdentifier:@"com.apple.shortcuts.publicICloudDestination" promptingBehaviour:0];

  return v3;
}

@end