@interface MSVSystemDialogTextField
+ (id)textFieldWithTitle:(id)a3;
- (MSVSystemDialogTextField)initWithTitle:(id)a3;
@end

@implementation MSVSystemDialogTextField

- (MSVSystemDialogTextField)initWithTitle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MSVSystemDialogTextField;
  v5 = [(MSVSystemDialogTextField *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    title = v5->_title;
    v5->_title = v6;

    v5->_secure = 0;
  }

  return v5;
}

+ (id)textFieldWithTitle:(id)a3
{
  v3 = a3;
  v4 = [[MSVSystemDialogTextField alloc] initWithTitle:v3];

  return v4;
}

@end