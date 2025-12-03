@interface MKTableTitleRow
- (MKTableTitleRow)initWithTitle:(id)title;
- (id)asciiRepresentationUsingColumns:(id)columns;
@end

@implementation MKTableTitleRow

- (MKTableTitleRow)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = MKTableTitleRow;
  v6 = [(MKTableRow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, title);
  }

  return v7;
}

- (id)asciiRepresentationUsingColumns:(id)columns
{
  title = self->_title;
  v4 = [(MKTableRow *)self totalWidthOfColumns:columns];

  return [(NSString *)title padToLength:v4 withString:@" "];
}

@end