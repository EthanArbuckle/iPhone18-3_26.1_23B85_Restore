@interface MDDateFormatter
- (MDDateFormatter)init;
@end

@implementation MDDateFormatter

- (MDDateFormatter)init
{
  v6.receiver = self;
  v6.super_class = MDDateFormatter;
  v2 = [(MDDateFormatter *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    formatter = v2->_formatter;
    v2->_formatter = v3;
  }

  return v2;
}

@end