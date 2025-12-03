@interface CRKCloudTuple
- (CRKCloudTuple)initWithChangedObject:(id)object originalObject:(id)originalObject;
@end

@implementation CRKCloudTuple

- (CRKCloudTuple)initWithChangedObject:(id)object originalObject:(id)originalObject
{
  v5.receiver = self;
  v5.super_class = CRKCloudTuple;
  return [(CRKCloudTuple *)&v5 init:object];
}

@end