@interface CSSessionStateUpdateRequest
+ (id)responseMessageFromDictionary:(id)a3;
@end

@implementation CSSessionStateUpdateRequest

+ (id)responseMessageFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [[CSSessionStateUpdate alloc] initWithMessage:v3];

  return v4;
}

@end