@interface _DKUUIDIdentifier
+ (id)withUUID:(id)a3;
@end

@implementation _DKUUIDIdentifier

+ (id)withUUID:(id)a3
{
  v4 = [a3 UUIDString];
  v5 = [a1 type];
  v6 = [_DKIdentifier identifierWithString:v4 type:v5];

  return v6;
}

@end