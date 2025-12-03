@interface MKTableCell
- (id)formattedValue;
@end

@implementation MKTableCell

- (id)formattedValue
{
  formatter = [(MKTableCell *)self formatter];
  if (formatter)
  {
    formatter2 = [(MKTableCell *)self formatter];
    value = [(MKTableCell *)self value];
    v6 = [formatter2 stringForObjectValue:value];
  }

  else
  {
    formatter2 = [(MKTableCell *)self value];
    v6 = [formatter2 description];
  }

  return v6;
}

@end