@interface _DKHomeKitHomeAppViewIdentifier
+ (id)withString:(id)string;
@end

@implementation _DKHomeKitHomeAppViewIdentifier

+ (id)withString:(id)string
{
  stringCopy = string;
  type = [self type];
  v6 = [_DKIdentifier identifierWithString:stringCopy type:type];

  return v6;
}

@end