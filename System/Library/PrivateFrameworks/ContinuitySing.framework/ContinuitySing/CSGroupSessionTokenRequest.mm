@interface CSGroupSessionTokenRequest
+ (id)responseMessageFromDictionary:(id)dictionary;
@end

@implementation CSGroupSessionTokenRequest

+ (id)responseMessageFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[CSGroupSessionTokenResponse alloc] initWithMessage:dictionaryCopy];

  return v4;
}

@end