@interface CSClientCheckinRequest
+ (id)responseMessageFromDictionary:(id)dictionary;
@end

@implementation CSClientCheckinRequest

+ (id)responseMessageFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[CSClientCheckinResponse alloc] initWithMessage:dictionaryCopy];

  return v4;
}

@end