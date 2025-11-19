@interface FMPaneSegue
- (void)performFromEdge:(unint64_t)a3;
@end

@implementation FMPaneSegue

- (void)performFromEdge:(unint64_t)a3
{
  v5 = [(UIStoryboardSegue *)self sourceViewController];
  v6 = [(UIStoryboardSegue *)self destinationViewController];
  if (v5)
  {
    v7 = v5;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v8 = [v7 parentViewController];

      v7 = v8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v9 = v7;
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"No instance of FMSlidingPaneViewController in controller hierarchy of %@", v5}];
  }

  [v9 presentPaneViewController:v6 fromEdge:a3 animated:-[FMPaneSegue disableAnimation](self completion:{"disableAnimation") ^ 1, 0}];
}

@end