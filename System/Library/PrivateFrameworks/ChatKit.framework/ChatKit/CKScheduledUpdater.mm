@interface CKScheduledUpdater
- (BOOL)isHoldingUpdates;
- (BOOL)isHoldingUpdatesForKey:(id)key;
- (CKScheduledUpdater)initWithTarget:(id)target action:(SEL)action;
- (id)description;
- (void)beginHoldingUpdatesForKey:(id)key;
- (void)dealloc;
- (void)endHoldingAllUpdates;
- (void)endHoldingAllUpdatesForKey:(id)key;
- (void)endHoldingUpdatesForKey:(id)key;
- (void)invalidate;
- (void)setNeedsUpdate;
- (void)updateIfNeeded;
@end

@implementation CKScheduledUpdater

- (void)setNeedsUpdate
{
  if (![(CKManualUpdater *)self needsUpdate])
  {
    [(CKManualUpdater *)self setNeedsUpdate:1];
    if (![(CKScheduledUpdater *)self isHoldingUpdates])
    {
      if ([(CKScheduledUpdater *)self updateSynchronouslyIfPossible])
      {

        [(CKScheduledUpdater *)self updateIfNeeded];
      }

      else
      {

        [(CKScheduledUpdater *)self performSelector:sel_updateIfNeeded withObject:0 afterDelay:0.0];
      }
    }
  }
}

- (BOOL)isHoldingUpdates
{
  holdingUpdatesKeys = [(CKScheduledUpdater *)self holdingUpdatesKeys];
  v3 = [holdingUpdatesKeys count] != 0;

  return v3;
}

- (void)updateIfNeeded
{
  if (![(CKScheduledUpdater *)self isHoldingUpdates])
  {
    v3.receiver = self;
    v3.super_class = CKScheduledUpdater;
    [(CKManualUpdater *)&v3 updateIfNeeded];
  }
}

- (void)dealloc
{
  [(CKScheduledUpdater *)self invalidate];
  v3.receiver = self;
  v3.super_class = CKScheduledUpdater;
  [(CKScheduledUpdater *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = CKScheduledUpdater;
  v4 = [(CKManualUpdater *)&v10 description];
  needsUpdate = [(CKManualUpdater *)self needsUpdate];
  isHoldingUpdates = [(CKScheduledUpdater *)self isHoldingUpdates];
  holdingUpdatesKeys = [(CKScheduledUpdater *)self holdingUpdatesKeys];
  v8 = [v3 stringWithFormat:@"%@ needsUpdate:%d isHoldingUpdates:%d holdingUpdatesKeys:%@", v4, needsUpdate, isHoldingUpdates, holdingUpdatesKeys];

  return v8;
}

- (CKScheduledUpdater)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = CKScheduledUpdater;
  v7 = [(CKScheduledUpdater *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(CKManualUpdater *)v7 setTarget:targetCopy];
    [(CKManualUpdater *)v8 setAction:action];
    v9 = objc_alloc_init(MEMORY[0x1E696AB50]);
    [(CKScheduledUpdater *)v8 setHoldingUpdatesKeys:v9];
  }

  return v8;
}

- (void)beginHoldingUpdatesForKey:(id)key
{
  keyCopy = key;
  holdingUpdatesKeys = [(CKScheduledUpdater *)self holdingUpdatesKeys];
  [holdingUpdatesKeys addObject:keyCopy];
}

- (void)endHoldingUpdatesForKey:(id)key
{
  keyCopy = key;
  holdingUpdatesKeys = [(CKScheduledUpdater *)self holdingUpdatesKeys];
  [holdingUpdatesKeys removeObject:keyCopy];

  if (![(CKScheduledUpdater *)self isHoldingUpdates]&& [(CKManualUpdater *)self needsUpdate])
  {

    [(CKScheduledUpdater *)self performSelector:sel_updateIfNeeded withObject:0 afterDelay:0.0];
  }
}

- (BOOL)isHoldingUpdatesForKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  keyCopy = key;
  holdingUpdatesKeys = [(CKScheduledUpdater *)self holdingUpdatesKeys];
  v6 = [holdingUpdatesKeys countForObject:keyCopy];

  v7 = v6 != 0;
  return v7;
}

- (void)invalidate
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  [(CKManualUpdater *)self setTarget:0];

  [(CKManualUpdater *)self setAction:0];
}

- (void)endHoldingAllUpdatesForKey:(id)key
{
  keyCopy = key;
  holdingUpdatesKeys = [(CKScheduledUpdater *)self holdingUpdatesKeys];
  v5 = [holdingUpdatesKeys countForObject:keyCopy];

  for (; v5; --v5)
  {
    holdingUpdatesKeys2 = [(CKScheduledUpdater *)self holdingUpdatesKeys];
    [holdingUpdatesKeys2 removeObject:keyCopy];
  }

  if (![(CKScheduledUpdater *)self isHoldingUpdates]&& [(CKManualUpdater *)self needsUpdate])
  {
    [(CKScheduledUpdater *)self performSelector:sel_updateIfNeeded withObject:0 afterDelay:0.0];
  }
}

- (void)endHoldingAllUpdates
{
  holdingUpdatesKeys = [(CKScheduledUpdater *)self holdingUpdatesKeys];
  [holdingUpdatesKeys removeAllObjects];

  if (![(CKScheduledUpdater *)self isHoldingUpdates]&& [(CKManualUpdater *)self needsUpdate])
  {

    [(CKScheduledUpdater *)self performSelector:sel_updateIfNeeded withObject:0 afterDelay:0.0];
  }
}

@end