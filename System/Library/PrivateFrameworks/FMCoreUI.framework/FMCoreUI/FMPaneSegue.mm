@interface FMPaneSegue
- (void)performFromEdge:(unint64_t)edge;
@end

@implementation FMPaneSegue

- (void)performFromEdge:(unint64_t)edge
{
  sourceViewController = [(UIStoryboardSegue *)self sourceViewController];
  destinationViewController = [(UIStoryboardSegue *)self destinationViewController];
  if (sourceViewController)
  {
    v7 = sourceViewController;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      parentViewController = [v7 parentViewController];

      v7 = parentViewController;
      if (!parentViewController)
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
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"No instance of FMSlidingPaneViewController in controller hierarchy of %@", sourceViewController}];
  }

  [v9 presentPaneViewController:destinationViewController fromEdge:edge animated:-[FMPaneSegue disableAnimation](self completion:{"disableAnimation") ^ 1, 0}];
}

@end