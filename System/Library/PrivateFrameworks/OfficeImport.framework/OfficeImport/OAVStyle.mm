@interface OAVStyle
- (OAVStyle)init;
@end

@implementation OAVStyle

- (OAVStyle)init
{
  v6.receiver = self;
  v6.super_class = OAVStyle;
  v2 = [(OAVStyle *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    string = v2->_string;
    v2->_string = v3;
  }

  return v2;
}

@end