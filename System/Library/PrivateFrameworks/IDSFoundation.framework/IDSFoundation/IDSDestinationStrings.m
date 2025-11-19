@interface IDSDestinationStrings
- (IDSDestinationStrings)initWithCoder:(id)a3;
@end

@implementation IDSDestinationStrings

- (IDSDestinationStrings)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"kIDSDestinationStringSetKey"];
  v5 = [IDSDestination destinationWithStrings:v4];

  return v5;
}

@end