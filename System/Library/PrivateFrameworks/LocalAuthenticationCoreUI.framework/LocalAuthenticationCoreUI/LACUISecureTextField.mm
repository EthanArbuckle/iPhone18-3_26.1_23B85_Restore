@interface LACUISecureTextField
- (LACUISecureTextField)init;
- (LACUISecureTextField)initWithCoder:(id)a3;
- (LACUISecureTextField)initWithFrame:(CGRect)a3;
- (NSString)placeholder;
- (NSString)text;
- (void)setPlaceholder:(id)a3;
- (void)setText:(id)a3;
@end

@implementation LACUISecureTextField

- (LACUISecureTextField)init
{
  v5.receiver = self;
  v5.super_class = LACUISecureTextField;
  v2 = [(LACUISecureTextField *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(LACUISecureTextField *)v2 _setup];
  }

  return v3;
}

- (LACUISecureTextField)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = LACUISecureTextField;
  v3 = [(LACUISecureTextField *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(LACUISecureTextField *)v3 _setup];
  }

  return v4;
}

- (LACUISecureTextField)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = LACUISecureTextField;
  v3 = [(LACUISecureTextField *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(LACUISecureTextField *)v3 _setup];
  }

  return v4;
}

- (NSString)text
{
  v4.receiver = self;
  v4.super_class = LACUISecureTextField;
  v2 = [(LACUITextField *)&v4 text];

  return v2;
}

- (void)setText:(id)a3
{
  v3.receiver = self;
  v3.super_class = LACUISecureTextField;
  [(LACUITextField *)&v3 setText:a3];
}

- (NSString)placeholder
{
  v4.receiver = self;
  v4.super_class = LACUISecureTextField;
  v2 = [(LACUITextField *)&v4 placeholder];

  return v2;
}

- (void)setPlaceholder:(id)a3
{
  v3.receiver = self;
  v3.super_class = LACUISecureTextField;
  [(LACUITextField *)&v3 setPlaceholder:a3];
}

@end