@interface MKTableTitleRow
- (MKTableTitleRow)initWithTitle:(id)a3;
- (id)asciiRepresentationUsingColumns:(id)a3;
@end

@implementation MKTableTitleRow

- (MKTableTitleRow)initWithTitle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKTableTitleRow;
  v6 = [(MKTableRow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, a3);
  }

  return v7;
}

- (id)asciiRepresentationUsingColumns:(id)a3
{
  title = self->_title;
  v4 = [(MKTableRow *)self totalWidthOfColumns:a3];

  return [(NSString *)title padToLength:v4 withString:@" "];
}

@end