@interface CAAnimation(LAUICAUtilities)
- (id)laui_didStartHandler;
- (id)laui_didStopHandler;
- (void)laui_setDidStartHandler:()LAUICAUtilities;
- (void)laui_setDidStopHandler:()LAUICAUtilities;
@end

@implementation CAAnimation(LAUICAUtilities)

- (id)laui_didStartHandler
{
  delegate = [self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    didStartHandler = [delegate didStartHandler];
  }

  else
  {
    didStartHandler = 0;
  }

  return didStartHandler;
}

- (void)laui_setDidStartHandler:()LAUICAUtilities
{
  v5 = a3;
  delegate = [self delegate];
  if (v5 && !delegate)
  {
    delegate = objc_alloc_init(LAUIAnimationDelegate);
    [self setDelegate:delegate];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(LAUIAnimationDelegate *)delegate setDidStartHandler:v5];
  }

  else if (v5)
  {
    v5[2]();
  }
}

- (id)laui_didStopHandler
{
  delegate = [self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    didStopHandler = [delegate didStopHandler];
  }

  else
  {
    didStopHandler = 0;
  }

  return didStopHandler;
}

- (void)laui_setDidStopHandler:()LAUICAUtilities
{
  v5 = a3;
  delegate = [self delegate];
  if (v5 && !delegate)
  {
    delegate = objc_alloc_init(LAUIAnimationDelegate);
    [self setDelegate:delegate];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(LAUIAnimationDelegate *)delegate setDidStopHandler:v5];
  }

  else if (v5)
  {
    v5[2](v5, 0);
  }
}

@end