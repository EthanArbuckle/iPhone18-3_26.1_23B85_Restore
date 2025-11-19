@interface MKTableSeparatorRow
- (id)asciiRepresentationUsingColumns:(id)a3;
@end

@implementation MKTableSeparatorRow

- (id)asciiRepresentationUsingColumns:(id)a3
{
  v3 = [(MKTableRow *)self totalWidthOfColumns:a3];

  return [&stru_286A8E730 stringByPaddingToLength:v3 withString:@"-" startingAtIndex:0];
}

@end