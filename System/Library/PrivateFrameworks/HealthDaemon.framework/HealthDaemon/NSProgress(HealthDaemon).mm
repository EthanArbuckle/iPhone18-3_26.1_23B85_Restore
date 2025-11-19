@interface NSProgress(HealthDaemon)
+ (_HDMirroredProgress)hd_progressMirroringProgress:()HealthDaemon;
+ (id)hk_finishedDiscreteProgressWithTotalUnitCount:()HealthDaemon;
@end

@implementation NSProgress(HealthDaemon)

+ (_HDMirroredProgress)hd_progressMirroringProgress:()HealthDaemon
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [_HDMirroredProgress alloc];
  v6 = v4;
  if (v5)
  {
    v15.receiver = v5;
    v15.super_class = _HDMirroredProgress;
    v7 = objc_msgSendSuper2(&v15, sel_initWithParent_userInfo_, 0, 0);
    v5 = v7;
    if (v7)
    {
      v7->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v7->_originalProgress, a3);
      os_unfair_lock_lock(&v5->_lock);
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = +[_HDMirroredProgress _KVOKeyPaths];
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [(NSProgress *)v5->_originalProgress addObserver:v5 forKeyPath:*(*(&v16 + 1) + 8 * i) options:0 context:_HDProgressMirrorObserverContext];
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      os_unfair_lock_unlock(&v5->_lock);
      [(_HDMirroredProgress *)v5 _update];
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)hk_finishedDiscreteProgressWithTotalUnitCount:()HealthDaemon
{
  v0 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:?];
  [v0 setCompletedUnitCount:{objc_msgSend(v0, "totalUnitCount")}];

  return v0;
}

@end