@interface LACUITextField
- (NSString)placeholder;
- (NSString)text;
- (void)setPlaceholder:(id)a3;
- (void)setText:(id)a3;
@end

@implementation LACUITextField

- (NSString)text
{
  v4.receiver = self;
  v4.super_class = LACUITextField;
  v2 = [(LACUITextField *)&v4 text];

  return v2;
}

- (void)setText:(id)a3
{
  v3.receiver = self;
  v3.super_class = LACUITextField;
  [(LACUITextField *)&v3 setText:a3];
}

- (NSString)placeholder
{
  v4.receiver = self;
  v4.super_class = LACUITextField;
  v2 = [(LACUITextField *)&v4 placeholder];

  return v2;
}

- (void)setPlaceholder:(id)a3
{
  v3.receiver = self;
  v3.super_class = LACUITextField;
  [(LACUITextField *)&v3 setPlaceholder:a3];
}

@end