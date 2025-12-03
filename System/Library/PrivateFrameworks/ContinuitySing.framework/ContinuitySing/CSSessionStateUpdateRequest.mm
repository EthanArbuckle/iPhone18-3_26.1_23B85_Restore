@interface CSSessionStateUpdateRequest
+ (id)responseMessageFromDictionary:(id)dictionary;
@end

@implementation CSSessionStateUpdateRequest

+ (id)responseMessageFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[CSSessionStateUpdate alloc] initWithMessage:dictionaryCopy];

  return v4;
}

@end