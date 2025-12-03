@interface DOCAddTagViewTextField
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (DOCAddTagViewTextField)initWithFrame:(CGRect)frame;
@end

@implementation DOCAddTagViewTextField

- (DOCAddTagViewTextField)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = DOCAddTagViewTextField;
  v3 = [(DOCAddTagViewTextField *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  resignFirstResponder = [(DOCAddTagViewTextField *)&v5 resignFirstResponder];
  if (resignFirstResponder)
  {
    [(DOCAddTagViewTextField *)self setUserInteractionEnabled:0];
  }

  return resignFirstResponder;
}

@end