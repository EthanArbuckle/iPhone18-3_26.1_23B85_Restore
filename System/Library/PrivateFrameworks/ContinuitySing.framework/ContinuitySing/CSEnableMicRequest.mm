@interface CSEnableMicRequest
+ (id)responseMessageFromDictionary:(id)dictionary;
@end

@implementation CSEnableMicRequest

+ (id)responseMessageFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[CSEnableMicResponse alloc] initWithMessage:dictionaryCopy];

  return v4;
}

@end