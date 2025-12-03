@interface LACUITextField
- (NSString)placeholder;
- (NSString)text;
- (void)setPlaceholder:(id)placeholder;
- (void)setText:(id)text;
@end

@implementation LACUITextField

- (NSString)text
{
  v4.receiver = self;
  v4.super_class = LACUITextField;
  text = [(LACUITextField *)&v4 text];

  return text;
}

- (void)setText:(id)text
{
  v3.receiver = self;
  v3.super_class = LACUITextField;
  [(LACUITextField *)&v3 setText:text];
}

- (NSString)placeholder
{
  v4.receiver = self;
  v4.super_class = LACUITextField;
  placeholder = [(LACUITextField *)&v4 placeholder];

  return placeholder;
}

- (void)setPlaceholder:(id)placeholder
{
  v3.receiver = self;
  v3.super_class = LACUITextField;
  [(LACUITextField *)&v3 setPlaceholder:placeholder];
}

@end