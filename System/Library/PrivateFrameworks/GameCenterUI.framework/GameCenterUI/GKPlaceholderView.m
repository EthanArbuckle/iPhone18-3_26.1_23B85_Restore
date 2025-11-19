@interface GKPlaceholderView
+ (GKPlaceholderView)placeholderViewWithTitle:(id)a3 message:(id)a4 frame:(CGRect)a5;
+ (void)initialize;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation GKPlaceholderView

+ (void)initialize
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0C868] sharedPalette];
  v3 = objc_opt_class();
  v8[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v3 appearanceWhenContainedInInstancesOfClasses:v4];

  [v5 setBackgroundColor:0];
  v6 = [objc_opt_class() appearance];
  v7 = [v2 viewBackgroundColor];
  [v6 setBackgroundColor:v7];
}

+ (GKPlaceholderView)placeholderViewWithTitle:(id)a3 message:(id)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v11 = a3;
  v12 = [(_UIContentUnavailableView *)[GKPlaceholderView alloc] initWithFrame:v11 title:0 style:x, y, width, height];

  [(_UIContentUnavailableView *)v12 setMessage:v10];

  return v12;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(GKPlaceholderView *)self subviews];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isUserInteractionEnabled])
        {
          [(GKPlaceholderView *)self convertPoint:v13 toView:x, y];
          if ([v13 pointInside:v7 withEvent:?])
          {
            v14 = 1;
            goto LABEL_12;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

@end