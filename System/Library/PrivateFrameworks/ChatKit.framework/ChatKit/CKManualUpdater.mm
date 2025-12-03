@interface CKManualUpdater
- (CKManualUpdater)initWithTarget:(id)target action:(SEL)action;
- (SEL)action;
- (id)description;
- (id)target;
- (void)setAction:(SEL)action;
- (void)setNeedsUpdate;
- (void)updateIfNeeded;
@end

@implementation CKManualUpdater

- (void)setNeedsUpdate
{
  if (![(CKManualUpdater *)self needsUpdate])
  {

    [(CKManualUpdater *)self setNeedsUpdate:1];
  }
}

- (void)updateIfNeeded
{
  if ([(CKManualUpdater *)self needsUpdate])
  {
    [(CKManualUpdater *)self setNeedsUpdate:0];
    target = [(CKManualUpdater *)self target];
    [target performSelector:{-[CKManualUpdater action](self, "action")}];
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CKManualUpdater;
  v4 = [(CKManualUpdater *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ needsUpdate:%d", v4, -[CKManualUpdater needsUpdate](self, "needsUpdate")];

  return v5;
}

- (CKManualUpdater)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v10.receiver = self;
  v10.super_class = CKManualUpdater;
  v7 = [(CKManualUpdater *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CKManualUpdater *)v7 setTarget:targetCopy];
    [(CKManualUpdater *)v8 setAction:action];
  }

  return v8;
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

@end