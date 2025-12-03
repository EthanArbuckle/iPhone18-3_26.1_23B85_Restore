@interface CSMessageVolumeIncreaseRequest
+ (id)responseMessageFromDictionary:(id)dictionary;
@end

@implementation CSMessageVolumeIncreaseRequest

+ (id)responseMessageFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[CSMessageVolumeResponse alloc] initWithMessage:dictionaryCopy];

  return v4;
}

@end