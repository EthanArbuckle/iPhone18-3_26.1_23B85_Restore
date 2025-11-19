@interface WFiCloudContentLocation
+ (id)objectWithWFSerializedRepresentation:(id)a3;
@end

@implementation WFiCloudContentLocation

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v3 = [[a1 alloc] initWithIdentifier:@"com.apple.shortcuts.publicICloudDestination" promptingBehaviour:0];

  return v3;
}

@end