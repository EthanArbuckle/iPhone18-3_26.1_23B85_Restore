@interface TapbackPlatterContentView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation TapbackPlatterContentView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_190C17034(v4, v6);

  return v8 & 1;
}

@end