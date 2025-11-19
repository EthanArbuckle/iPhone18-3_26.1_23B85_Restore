@interface ViewWithCustomNextResponder
- (UIFocusEnvironment)customParentFocusEnvironment;
- (UIResponder)customNextResponder;
- (id)nextResponder;
- (id)parentFocusEnvironment;
- (void)setNextResponder:(id)a3 parentFocusEnvironment:(id)a4;
@end

@implementation ViewWithCustomNextResponder

- (id)nextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_customNextResponder);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ViewWithCustomNextResponder;
    v5 = [(ViewWithCustomNextResponder *)&v8 nextResponder];
  }

  v6 = v5;

  return v6;
}

- (id)parentFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_customParentFocusEnvironment);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ViewWithCustomNextResponder;
    v5 = [(ViewWithCustomNextResponder *)&v8 parentFocusEnvironment];
  }

  v6 = v5;

  return v6;
}

- (void)setNextResponder:(id)a3 parentFocusEnvironment:(id)a4
{
  obj = a4;
  objc_storeWeak(&self->_customNextResponder, a3);
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