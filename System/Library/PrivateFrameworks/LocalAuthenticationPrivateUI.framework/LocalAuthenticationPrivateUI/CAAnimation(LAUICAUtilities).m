@interface CAAnimation(LAUICAUtilities)
- (id)laui_didStartHandler;
- (id)laui_didStopHandler;
- (void)laui_setDidStartHandler:()LAUICAUtilities;
- (void)laui_setDidStopHandler:()LAUICAUtilities;
@end

@implementation CAAnimation(LAUICAUtilities)

- (id)laui_didStartHandler
{
  v1 = [a1 delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 didStartHandler];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)laui_setDidStartHandler:()LAUICAUtilities
{
  v5 = a3;
  v4 = [a1 delegate];
  if (v5 && !v4)
  {
    v4 = objc_alloc_init(LAUIAnimationDelegate);
    [a1 setDelegate:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(LAUIAnimationDelegate *)v4 setDidStartHandler:v5];
  }

  else if (v5)
  {
    v5[2]();
  }
}

- (id)laui_didStopHandler
{
  v1 = [a1 delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 didStopHandler];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)laui_setDidStopHandler:()LAUICAUtilities
{
  v5 = a3;
  v4 = [a1 delegate];
  if (v5 && !v4)
  {
    v4 = objc_alloc_init(LAUIAnimationDelegate);
    [a1 setDelegate:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(LAUIAnimationDelegate *)v4 setDidStopHandler:v5];
  }

  else if (v5)
  {
    v5[2](v5, 0);
  }
}

@end