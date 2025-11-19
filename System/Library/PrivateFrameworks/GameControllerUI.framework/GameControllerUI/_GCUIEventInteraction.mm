@interface _GCUIEventInteraction
- (_GCUIEventInteraction)init;
- (id)view;
- (void)setHandledEventTypes:(unint64_t)a3;
@end

@implementation _GCUIEventInteraction

- (_GCUIEventInteraction)init
{
  v3.receiver = self;
  v3.super_class = _GCUIEventInteraction;
  return [(_GCUIEventInteraction *)&v3 init];
}

- (void)setHandledEventTypes:(unint64_t)a3
{
  v3.receiver = self;
  v3.super_class = _GCUIEventInteraction;
  [(_GCUIEventInteraction *)&v3 setHandledEventTypes:a3];
}

- (id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end