@interface SUUIPopoverObserver
- (SUUIPopoverObserver)initWithPopoverController:(id)a3;
- (void)dealloc;
- (void)popoverControllerDidDismissPopover:(id)a3;
- (void)setTarget:(id)a3 selector:(SEL)a4;
@end

@implementation SUUIPopoverObserver

- (SUUIPopoverObserver)initWithPopoverController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIPopoverObserver;
  v6 = [(SUUIPopoverObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_popoverController, a3);
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

- (void)setTarget:(id)a3 selector:(SEL)a4
{
  objc_initWeak(&location, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_selector = v6;
  v7 = objc_loadWeakRetained(&location);
  objc_storeWeak(&self->_target, v7);

  objc_destroyWeak(&location);
}

- (void)popoverControllerDidDismissPopover:(id)a3
{
  v9 = a3;
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