@interface CSEnableMicRequest
+ (id)responseMessageFromDictionary:(id)a3;
@end

@implementation CSEnableMicRequest

+ (id)responseMessageFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [[CSEnableMicResponse alloc] initWithMessage:v3];

  return v4;
}

@end