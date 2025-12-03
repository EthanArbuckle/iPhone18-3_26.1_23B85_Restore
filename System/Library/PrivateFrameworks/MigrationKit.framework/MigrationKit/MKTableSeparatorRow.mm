@interface MKTableSeparatorRow
- (id)asciiRepresentationUsingColumns:(id)columns;
@end

@implementation MKTableSeparatorRow

- (id)asciiRepresentationUsingColumns:(id)columns
{
  v3 = [(MKTableRow *)self totalWidthOfColumns:columns];

  return [&stru_286A8E730 stringByPaddingToLength:v3 withString:@"-" startingAtIndex:0];
}

@end