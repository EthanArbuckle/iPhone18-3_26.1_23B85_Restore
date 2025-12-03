@interface LACUIPasscodeFieldConfigurator
- (int64_t)textAlignment;
- (void)configureDotView:(id)view atIndex:(int64_t)index forField:(id)field;
@end

@implementation LACUIPasscodeFieldConfigurator

- (void)configureDotView:(id)view atIndex:(int64_t)index forField:(id)field
{
  viewCopy = view;
  text = [field text];
  if ([text length] <= index)
  {
    [viewCopy showEmpty];
  }

  else
  {
    [viewCopy showConcealed];
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