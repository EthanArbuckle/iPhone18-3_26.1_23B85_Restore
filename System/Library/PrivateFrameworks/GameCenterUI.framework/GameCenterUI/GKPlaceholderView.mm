@interface GKPlaceholderView
+ (GKPlaceholderView)placeholderViewWithTitle:(id)title message:(id)message frame:(CGRect)frame;
+ (void)initialize;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation GKPlaceholderView

+ (void)initialize
{
  v8[1] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
  v3 = objc_opt_class();
  v8[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v3 appearanceWhenContainedInInstancesOfClasses:v4];

  [v5 setBackgroundColor:0];
  appearance = [objc_opt_class() appearance];
  viewBackgroundColor = [mEMORY[0x277D0C868] viewBackgroundColor];
  [appearance setBackgroundColor:viewBackgroundColor];
}

+ (GKPlaceholderView)placeholderViewWithTitle:(id)title message:(id)message frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  messageCopy = message;
  titleCopy = title;
  height = [(_UIContentUnavailableView *)[GKPlaceholderView alloc] initWithFrame:titleCopy title:0 style:x, y, width, height];

  [(_UIContentUnavailableView *)height setMessage:messageCopy];

  return height;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subviews = [(GKPlaceholderView *)self subviews];
  v9 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isUserInteractionEnabled])
        {
          [(GKPlaceholderView *)self convertPoint:v13 toView:x, y];
          if ([v13 pointInside:eventCopy withEvent:?])
          {
            v14 = 1;
            goto LABEL_12;
          }
        }
      }

      v10 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
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