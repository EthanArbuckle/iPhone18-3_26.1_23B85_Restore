@interface ICDidMoveToWindowSpy
- (ICDidMoveToWindowSpy)initWithOwner:(id)owner handler:(id)handler;
- (id)owner;
- (void)callHandler;
- (void)didMoveToWindow;
- (void)scheduleCallHandler;
@end

@implementation ICDidMoveToWindowSpy

- (ICDidMoveToWindowSpy)initWithOwner:(id)owner handler:(id)handler
{
  ownerCopy = owner;
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = ICDidMoveToWindowSpy;
  v8 = [(ICDidMoveToWindowSpy *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_owner, ownerCopy);
    v10 = _Block_copy(handlerCopy);
    handler = v9->_handler;
    v9->_handler = v10;
  }

  return v9;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = ICDidMoveToWindowSpy;
  [(ICDidMoveToWindowSpy *)&v3 didMoveToWindow];
  [(ICDidMoveToWindowSpy *)self scheduleCallHandler];
}

- (void)scheduleCallHandler
{
  v4[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_callHandler object:0];
  v4[0] = *MEMORY[0x1E695DA28];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [(ICDidMoveToWindowSpy *)self performSelector:sel_callHandler withObject:0 afterDelay:v3 inModes:0.0];
}

- (void)callHandler
{
  owner = [(ICDidMoveToWindowSpy *)self owner];
  if (owner)
  {
    handler = [(ICDidMoveToWindowSpy *)self handler];
    (handler)[2](handler, self, owner);
  }

  else
  {
    handler = self->_handler;
    self->_handler = 0;
  }
}

- (id)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end