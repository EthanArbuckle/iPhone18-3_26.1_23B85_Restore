@interface IMManualUpdater
- (IMManualUpdater)initWithTarget:(id)target action:(SEL)action;
- (SEL)action;
- (id)description;
- (id)target;
- (void)setAction:(SEL)action;
- (void)setNeedsUpdate;
- (void)updateIfNeeded;
@end

@implementation IMManualUpdater

- (void)updateIfNeeded
{
  if (objc_msgSend_needsUpdate(self, a2, v2))
  {
    objc_msgSend_setNeedsUpdate_(self, v4, 0);
    v11 = objc_msgSend_target(self, v5, v6);
    v9 = objc_msgSend_action(self, v7, v8);
    objc_msgSend_performSelector_(v11, v10, v9);
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
  v11.receiver = self;
  v11.super_class = IMManualUpdater;
  v4 = [(IMManualUpdater *)&v11 description];
  v7 = objc_msgSend_needsUpdate(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ needsUpdate:%d", v4, v7);

  return v9;
}

- (IMManualUpdater)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v12.receiver = self;
  v12.super_class = IMManualUpdater;
  v7 = [(IMManualUpdater *)&v12 init];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_setTarget_(v7, v8, targetCopy);
    objc_msgSend_setAction_(v9, v10, action);
  }

  return v9;
}

- (void)setNeedsUpdate
{
  if ((objc_msgSend_needsUpdate(self, a2, v2) & 1) == 0)
  {

    objc_msgSend_setNeedsUpdate_(self, v4, 1);
  }
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