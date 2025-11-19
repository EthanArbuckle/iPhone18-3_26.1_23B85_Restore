@interface UIView(SUUIApparentBackgroundColor)
- (id)suui_apparentBackgroundColor;
@end

@implementation UIView(SUUIApparentBackgroundColor)

- (id)suui_apparentBackgroundColor
{
  v1 = a1;
  if (v1)
  {
    while (1)
    {
      v2 = [v1 backgroundColor];
      if ([v2 suui_isOpaque])
      {
        v5 = v2;
        goto LABEL_8;
      }

      v3 = objc_alloc(MEMORY[0x277D75348]);
      v4 = [v1 layer];
      v5 = [v3 initWithCGColor:{objc_msgSend(v4, "backgroundColor")}];

      if ([v5 suui_isOpaque])
      {
        break;
      }

      v6 = [v1 superview];

      v1 = v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

@end