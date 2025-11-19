@interface IDSRestoreMonitor
+ (IDSRestoreMonitor)sharedInstance;
- (BOOL)hasActionForTarget:(id)a3;
- (IDSRestoreMonitor)initWithTimerBlock:(id)a3;
- (void)_timerFired;
- (void)_timerFiredOnMain;
- (void)addTarget:(id)a3 actionBlock:(id)a4;
- (void)removeTarget:(id)a3;
@end

@implementation IDSRestoreMonitor

+ (IDSRestoreMonitor)sharedInstance
{
  if (qword_100CBF530 != -1)
  {
    sub_100931CD0();
  }

  v3 = qword_100CBF528;

  return v3;
}

- (IDSRestoreMonitor)initWithTimerBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = IDSRestoreMonitor;
    v5 = [(IDSRestoreMonitor *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      timerBlock = v5->_timerBlock;
      v5->_timerBlock = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasActionForTarget:(id)a3
{
  v3 = [(NSMapTable *)self->_actionByTarget objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)addTarget:(id)a3 actionBlock:(id)a4
{
  v13 = a3;
  v6 = a4;
  actionByTarget = self->_actionByTarget;
  if (!actionByTarget)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_actionByTarget;
    self->_actionByTarget = v8;

    actionByTarget = self->_actionByTarget;
  }

  v10 = objc_retainBlock(v6);
  [(NSMapTable *)actionByTarget setObject:v10 forKey:v13];

  if (!self->_restoreTimer)
  {
    v11 = (*(self->_timerBlock + 2))();
    restoreTimer = self->_restoreTimer;
    self->_restoreTimer = v11;
  }
}

- (void)removeTarget:(id)a3
{
  [(NSMapTable *)self->_actionByTarget removeObjectForKey:a3];
  if (![(NSMapTable *)self->_actionByTarget count])
  {
    actionByTarget = self->_actionByTarget;
    self->_actionByTarget = 0;

    [(IMTimer *)self->_restoreTimer invalidate];
    restoreTimer = self->_restoreTimer;
    self->_restoreTimer = 0;
  }
}

- (void)_timerFired
{
  v3 = [(NSMapTable *)self->_actionByTarget copy];
  actionByTarget = self->_actionByTarget;
  self->_actionByTarget = 0;

  [(IMTimer *)self->_restoreTimer invalidate];
  restoreTimer = self->_restoreTimer;
  self->_restoreTimer = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v6 objectForKey:{v11, v13}];
        v12[2](v12, v11);
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)_timerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006C03F4;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

@end