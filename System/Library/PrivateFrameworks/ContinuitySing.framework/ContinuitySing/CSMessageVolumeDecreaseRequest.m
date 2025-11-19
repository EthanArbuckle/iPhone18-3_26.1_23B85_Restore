@interface CSMessageVolumeDecreaseRequest
+ (id)responseMessageFromDictionary:(id)a3;
@end

@implementation CSMessageVolumeDecreaseRequest

+ (id)responseMessageFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [[CSMessageVolumeResponse alloc] initWithMessage:v3];

  return v4;
}

@end