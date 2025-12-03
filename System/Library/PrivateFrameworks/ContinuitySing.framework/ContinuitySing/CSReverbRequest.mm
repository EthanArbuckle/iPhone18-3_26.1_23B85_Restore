@interface CSReverbRequest
+ (id)responseMessageFromDictionary:(id)dictionary;
@end

@implementation CSReverbRequest

+ (id)responseMessageFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[CSReverbResponse alloc] initWithMessage:dictionaryCopy];

  return v4;
}

@end