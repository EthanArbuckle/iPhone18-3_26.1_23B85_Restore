@interface SUUIPopoverObserver
- (SUUIPopoverObserver)initWithPopoverController:(id)controller;
- (void)dealloc;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)setTarget:(id)target selector:(SEL)selector;
@end

@implementation SUUIPopoverObserver

- (SUUIPopoverObserver)initWithPopoverController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SUUIPopoverObserver;
  v6 = [(SUUIPopoverObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_popoverController, controller);
    [(UIPopoverController *)v7->_popoverController setDelegate:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(UIPopoverController *)self->_popoverController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIPopoverObserver;
  [(SUUIPopoverObserver *)&v3 dealloc];
}

- (void)setTarget:(id)target selector:(SEL)selector
{
  objc_initWeak(&location, target);
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
  v7 = objc_loadWeakRetained(&location);
  objc_storeWeak(&self->_target, v7);

  objc_destroyWeak(&location);
}

- (void)popoverControllerDidDismissPopover:(id)popover
{
  popoverCopy = popover;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    p_selector = &self->_selector;
    if (self->_selector)
    {

      v7 = objc_loadWeakRetained(&self->_target);
      v5 = v7;
      if (*p_selector)
      {
        v8 = *p_selector;
      }

      else
      {
        v8 = 0;
      }

      [v7 performSelector:v8 withObject:0];
    }
  }
}

@end