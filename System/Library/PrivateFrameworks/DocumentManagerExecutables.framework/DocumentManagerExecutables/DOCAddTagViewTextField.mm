@interface DOCAddTagViewTextField
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (DOCAddTagViewTextField)initWithFrame:(CGRect)a3;
@end

@implementation DOCAddTagViewTextField

- (DOCAddTagViewTextField)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = DOCAddTagViewTextField;
  v3 = [(DOCAddTagViewTextField *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DOCAddTagViewTextField *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (BOOL)becomeFirstResponder
{
  [(DOCAddTagViewTextField *)self setUserInteractionEnabled:1];
  v4.receiver = self;
  v4.super_class = DOCAddTagViewTextField;
  return [(DOCAddTagViewTextField *)&v4 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = DOCAddTagViewTextField;
  v3 = [(DOCAddTagViewTextField *)&v5 resignFirstResponder];
  if (v3)
  {
    [(DOCAddTagViewTextField *)self setUserInteractionEnabled:0];
  }

  return v3;
}

@end