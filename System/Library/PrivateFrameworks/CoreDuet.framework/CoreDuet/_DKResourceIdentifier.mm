@interface _DKResourceIdentifier
+ (id)withResource:(id)resource;
@end

@implementation _DKResourceIdentifier

+ (id)withResource:(id)resource
{
  resourceCopy = resource;
  type = [self type];
  v6 = [_DKIdentifier identifierWithString:resourceCopy type:type];

  return v6;
}

@end