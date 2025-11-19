@interface CKManualUpdater
- (CKManualUpdater)initWithTarget:(id)a3 action:(SEL)a4;
- (SEL)action;
- (id)description;
- (id)target;
- (void)setAction:(SEL)a3;
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
    v3 = [(CKManualUpdater *)self target];
    [v3 performSelector:{-[CKManualUpdater action](self, "action")}];
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

- (CKManualUpdater)initWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CKManualUpdater;
  v7 = [(CKManualUpdater *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CKManualUpdater *)v7 setTarget:v6];
    [(CKManualUpdater *)v8 setAction:a4];
  }

  return v8;
}

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
}

@end