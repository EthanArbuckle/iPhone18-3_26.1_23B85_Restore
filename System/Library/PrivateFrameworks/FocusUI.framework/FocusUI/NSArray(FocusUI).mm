@interface NSArray(FocusUI)
- (uint64_t)fcui_isEqualToActionArray:()FocusUI;
@end

@implementation NSArray(FocusUI)

- (uint64_t)fcui_isEqualToActionArray:()FocusUI
{
  v4 = a3;
  v5 = v4;
  v6 = a1 == v4;
  if (v4 && a1 != v4)
  {
    v7 = [a1 count];
    if (v7 == [v5 count] && objc_msgSend(a1, "count"))
    {
      v8 = 0;
      do
      {
        v9 = [a1 objectAtIndexedSubscript:v8];
        v10 = [v5 objectAtIndexedSubscript:v8];
        v6 = [v9 fcui_isEqualToAction:v10];

        if ((v6 & 1) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v8 < [a1 count]);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end