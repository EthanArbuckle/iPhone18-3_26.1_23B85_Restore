@interface LACUIPasscodeFieldConfigurator
- (int64_t)textAlignment;
- (void)configureDotView:(id)a3 atIndex:(int64_t)a4 forField:(id)a5;
@end

@implementation LACUIPasscodeFieldConfigurator

- (void)configureDotView:(id)a3 atIndex:(int64_t)a4 forField:(id)a5
{
  v7 = a3;
  v8 = [a5 text];
  if ([v8 length] <= a4)
  {
    [v7 showEmpty];
  }

  else
  {
    [v7 showConcealed];
  }
}

- (int64_t)textAlignment
{
  if (_UISolariumEnabled())
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

@end