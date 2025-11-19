@interface IRServiceLogPrefix
- (IRServiceLogPrefix)init;
@end

@implementation IRServiceLogPrefix

- (IRServiceLogPrefix)init
{
  v6.receiver = self;
  v6.super_class = IRServiceLogPrefix;
  v2 = [(IRServiceLogPrefix *)&v6 init];
  v3 = v2;
  if (v2)
  {
    prefix = v2->_prefix;
    v2->_prefix = &stru_286755D18;
  }

  return v3;
}

@end