@interface CSClientCheckinRequest
+ (id)responseMessageFromDictionary:(id)a3;
@end

@implementation CSClientCheckinRequest

+ (id)responseMessageFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [[CSClientCheckinResponse alloc] initWithMessage:v3];

  return v4;
}

@end