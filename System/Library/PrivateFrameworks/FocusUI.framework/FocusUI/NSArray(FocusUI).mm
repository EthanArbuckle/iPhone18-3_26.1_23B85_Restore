@interface NSArray(FocusUI)
- (uint64_t)fcui_isEqualToActionArray:()FocusUI;
@end

@implementation NSArray(FocusUI)

- (uint64_t)fcui_isEqualToActionArray:()FocusUI
{
  v4 = a3;
  v5 = v4;
  v6 = self == v4;
  if (v4 && self != v4)
  {
    v7 = [self count];
    if (v7 == [v5 count] && objc_msgSend(self, "count"))
    {
      v8 = 0;
      do
      {
        v9 = [self objectAtIndexedSubscript:v8];
        v10 = [v5 objectAtIndexedSubscript:v8];
        v6 = [v9 fcui_isEqualToAction:v10];

        if ((v6 & 1) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v8 < [self count]);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end