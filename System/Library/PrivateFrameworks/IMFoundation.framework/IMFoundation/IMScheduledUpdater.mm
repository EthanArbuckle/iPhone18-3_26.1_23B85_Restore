@interface IMScheduledUpdater
- (BOOL)isHoldingUpdates;
- (BOOL)isHoldingUpdatesForKey:(id)key;
- (IMScheduledUpdater)initWithTarget:(id)target action:(SEL)action;
- (id)description;
- (void)beginHoldingUpdatesForKey:(id)key;
- (void)dealloc;
- (void)endHoldingUpdatesForAllKeys;
- (void)endHoldingUpdatesForKey:(id)key;
- (void)invalidate;
- (void)setNeedsUpdate;
- (void)updateIfNeeded;
@end

@implementation IMScheduledUpdater

- (void)setNeedsUpdate
{
  if ((objc_msgSend_needsUpdate(self, a2, v2) & 1) == 0)
  {
    objc_msgSend_setNeedsUpdate_(self, v4, 1);
    if ((objc_msgSend_isHoldingUpdates(self, v5, v6) & 1) == 0)
    {
      objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v7, self, sel_updateIfNeeded, 0);

      objc_msgSend_performSelector_withObject_afterDelay_(self, v8, sel_updateIfNeeded, 0, 0.0);
    }
  }
}

- (BOOL)isHoldingUpdates
{
  v3 = objc_msgSend_holdingUpdatesKeys(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5) != 0;

  return v6;
}

- (void)updateIfNeeded
{
  if ((objc_msgSend_isHoldingUpdates(self, a2, v2) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = IMScheduledUpdater;
    [(IMManualUpdater *)&v4 updateIfNeeded];
  }
}

- (void)dealloc
{
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], a2, self, sel_updateIfNeeded, 0);
  objc_msgSend_invalidate(self, v3, v4);
  v5.receiver = self;
  v5.super_class = IMScheduledUpdater;
  [(IMScheduledUpdater *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = IMScheduledUpdater;
  v4 = [(IMManualUpdater *)&v11 description];
  v7 = objc_msgSend_holdingUpdatesKeys(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ holdingUpdatesKeys:%@", v4, v7);

  return v9;
}

- (IMScheduledUpdater)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v14.receiver = self;
  v14.super_class = IMScheduledUpdater;
  v7 = [(IMScheduledUpdater *)&v14 init];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_setTarget_(v7, v8, targetCopy);
    objc_msgSend_setAction_(v9, v10, action);
    v11 = objc_alloc_init(MEMORY[0x1E696AB50]);
    objc_msgSend_setHoldingUpdatesKeys_(v9, v12, v11);
  }

  return v9;
}

- (void)beginHoldingUpdatesForKey:(id)key
{
  keyCopy = key;
  v8 = objc_msgSend_holdingUpdatesKeys(self, v5, v6);
  objc_msgSend_addObject_(v8, v7, keyCopy);
}

- (void)endHoldingUpdatesForKey:(id)key
{
  keyCopy = key;
  v7 = objc_msgSend_holdingUpdatesKeys(self, v5, v6);
  objc_msgSend_removeObject_(v7, v8, keyCopy);

  if ((objc_msgSend_isHoldingUpdates(self, v9, v10) & 1) == 0 && objc_msgSend_needsUpdate(self, v11, v12))
  {
    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v13, self, sel_updateIfNeeded, 0);

    objc_msgSend_performSelector_withObject_afterDelay_(self, v14, sel_updateIfNeeded, 0, 0.0);
  }
}

- (void)endHoldingUpdatesForAllKeys
{
  v4 = objc_msgSend_holdingUpdatesKeys(self, a2, v2);
  objc_msgSend_removeAllObjects(v4, v5, v6);

  if (objc_msgSend_needsUpdate(self, v7, v8))
  {
    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v9, self, sel_updateIfNeeded, 0);

    objc_msgSend_performSelector_withObject_afterDelay_(self, v10, sel_updateIfNeeded, 0, 0.0);
  }
}

- (BOOL)isHoldingUpdatesForKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  keyCopy = key;
  v7 = objc_msgSend_holdingUpdatesKeys(self, v5, v6);
  v9 = objc_msgSend_countForObject_(v7, v8, keyCopy);

  v10 = v9 != 0;
  return v10;
}

- (void)invalidate
{
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], a2, self, sel_updateIfNeeded, 0);
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_(MEMORY[0x1E69E58C0], v3, self);
  objc_msgSend_setTarget_(self, v4, 0);

  objc_msgSend_setAction_(self, v5, 0);
}

@end