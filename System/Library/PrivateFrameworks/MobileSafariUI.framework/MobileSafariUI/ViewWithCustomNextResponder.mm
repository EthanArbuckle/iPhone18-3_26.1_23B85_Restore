@interface ViewWithCustomNextResponder
- (UIFocusEnvironment)customParentFocusEnvironment;
- (UIResponder)customNextResponder;
- (id)nextResponder;
- (id)parentFocusEnvironment;
- (void)setNextResponder:(id)responder parentFocusEnvironment:(id)environment;
@end

@implementation ViewWithCustomNextResponder

- (id)nextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_customNextResponder);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    nextResponder = WeakRetained;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ViewWithCustomNextResponder;
    nextResponder = [(ViewWithCustomNextResponder *)&v8 nextResponder];
  }

  v6 = nextResponder;

  return v6;
}

- (id)parentFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_customParentFocusEnvironment);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    parentFocusEnvironment = WeakRetained;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ViewWithCustomNextResponder;
    parentFocusEnvironment = [(ViewWithCustomNextResponder *)&v8 parentFocusEnvironment];
  }

  v6 = parentFocusEnvironment;

  return v6;
}

- (void)setNextResponder:(id)responder parentFocusEnvironment:(id)environment
{
  obj = environment;
  objc_storeWeak(&self->_customNextResponder, responder);
  objc_storeWeak(&self->_customParentFocusEnvironment, obj);
}

- (UIResponder)customNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_customNextResponder);

  return WeakRetained;
}

- (UIFocusEnvironment)customParentFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_customParentFocusEnvironment);

  return WeakRetained;
}

@end