@interface CSReverbRequest
+ (id)responseMessageFromDictionary:(id)a3;
@end

@implementation CSReverbRequest

+ (id)responseMessageFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [[CSReverbResponse alloc] initWithMessage:v3];

  return v4;
}

@end