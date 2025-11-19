@interface _HDMirroredProgress
+ (id)_KVOKeyPaths;
- (void)_update;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _HDMirroredProgress

- (void)_update
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 128));
    if ([*(a1 + 120) isCancelled])
    {
      [a1 cancel];
    }

    else
    {
      if ([*(a1 + 120) isIndeterminate])
      {
        [a1 setTotalUnitCount:-1];
        v2 = a1;
        v3 = -1;
      }

      else
      {
        [a1 setTotalUnitCount:100000];
        [*(a1 + 120) fractionCompleted];
        v3 = (v4 * 100000.0);
        v2 = a1;
      }

      [v2 setCompletedUnitCount:v3];
    }

    os_unfair_lock_unlock((a1 + 128));
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock(&self->_lock);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = +[_HDMirroredProgress _KVOKeyPaths];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(NSProgress *)self->_originalProgress removeObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v7++) context:_HDProgressMirrorObserverContext];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v9.receiver = self;
  v9.super_class = _HDMirroredProgress;
  [(_HDMirroredProgress *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)_KVOKeyPaths
{
  v6[3] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v0 = NSStringFromSelector(sel_fractionCompleted);
  v6[0] = v0;
  v1 = NSStringFromSelector(sel_isIndeterminate);
  v6[1] = v1;
  v2 = NSStringFromSelector(sel_isCancelled);
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (_HDProgressMirrorObserverContext == a6)
  {

    [(_HDMirroredProgress *)self _update];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = _HDMirroredProgress;
    [(_HDMirroredProgress *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end