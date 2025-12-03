@interface _DKTitleIdentifier
+ (id)withTitle:(id)title;
@end

@implementation _DKTitleIdentifier

+ (id)withTitle:(id)title
{
  titleCopy = title;
  type = [self type];
  v6 = [_DKIdentifier identifierWithString:titleCopy type:type];

  return v6;
}

@end