@interface _DKUUIDIdentifier
+ (id)withUUID:(id)d;
@end

@implementation _DKUUIDIdentifier

+ (id)withUUID:(id)d
{
  uUIDString = [d UUIDString];
  type = [self type];
  v6 = [_DKIdentifier identifierWithString:uUIDString type:type];

  return v6;
}

@end