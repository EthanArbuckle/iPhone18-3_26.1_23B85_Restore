@interface TapbackPlatterContentView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation TapbackPlatterContentView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_190C17034(v4, v6);

  return v8 & 1;
}

@end