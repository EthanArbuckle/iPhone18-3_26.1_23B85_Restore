@interface MSVSystemDialogTextField
+ (id)textFieldWithTitle:(id)title;
- (MSVSystemDialogTextField)initWithTitle:(id)title;
@end

@implementation MSVSystemDialogTextField

- (MSVSystemDialogTextField)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = MSVSystemDialogTextField;
  v5 = [(MSVSystemDialogTextField *)&v9 init];
  if (v5)
  {
    v6 = [titleCopy copy];
    title = v5->_title;
    v5->_title = v6;

    v5->_secure = 0;
  }

  return v5;
}

+ (id)textFieldWithTitle:(id)title
{
  titleCopy = title;
  v4 = [[MSVSystemDialogTextField alloc] initWithTitle:titleCopy];

  return v4;
}

@end