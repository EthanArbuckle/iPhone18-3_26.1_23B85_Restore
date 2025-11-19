@interface MKTableCell
- (id)formattedValue;
@end

@implementation MKTableCell

- (id)formattedValue
{
  v3 = [(MKTableCell *)self formatter];
  if (v3)
  {
    v4 = [(MKTableCell *)self formatter];
    v5 = [(MKTableCell *)self value];
    v6 = [v4 stringForObjectValue:v5];
  }

  else
  {
    v4 = [(MKTableCell *)self value];
    v6 = [v4 description];
  }

  return v6;
}

@end