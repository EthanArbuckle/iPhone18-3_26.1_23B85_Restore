@interface IDSDestinationStrings
- (IDSDestinationStrings)initWithCoder:(id)coder;
@end

@implementation IDSDestinationStrings

- (IDSDestinationStrings)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"kIDSDestinationStringSetKey"];
  v5 = [IDSDestination destinationWithStrings:v4];

  return v5;
}

@end