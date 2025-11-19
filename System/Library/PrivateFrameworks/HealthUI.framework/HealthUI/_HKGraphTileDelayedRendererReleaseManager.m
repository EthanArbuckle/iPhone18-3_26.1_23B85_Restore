@interface _HKGraphTileDelayedRendererReleaseManager
+ (id)singleton;
+ (void)handleDelayedRendererRelease:(id)a3 lastAssignmentTime:(double)a4;
- (_HKGraphTileDelayedRendererReleaseManager)init;
- (void)addRenderForDelayedRelease:(id)a3 lastAssignmentTime:(double)a4;
- (void)releaseExpiredImageRenderers:(double)a3;
@end

@implementation _HKGraphTileDelayedRendererReleaseManager

- (_HKGraphTileDelayedRendererReleaseManager)init
{
  v7.receiver = self;
  v7.super_class = _HKGraphTileDelayedRendererReleaseManager;
  v2 = [(_HKGraphTileDelayedRendererReleaseManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_entriesLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    delayedEntries = v3->_delayedEntries;
    v3->_delayedEntries = v4;
  }

  return v3;
}

+ (void)handleDelayedRendererRelease:(id)a3 lastAssignmentTime:(double)a4
{
  v7 = a3;
  v5 = +[_HKGraphTileDelayedRendererReleaseManager singleton];
  v6 = CACurrentMediaTime();
  if (v6 - a4 < 3.0)
  {
    [v5 addRenderForDelayedRelease:v7 lastAssignmentTime:a4];
  }

  [v5 releaseExpiredImageRenderers:v6];
}

+ (id)singleton
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___HKGraphTileDelayedRendererReleaseManager_singleton__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (singleton_pred != -1)
  {
    dispatch_once(&singleton_pred, block);
  }

  v2 = singleton_singletonDelayedRendererReleaseManager;

  return v2;
}

- (void)addRenderForDelayedRelease:(id)a3 lastAssignmentTime:(double)a4
{
  v6 = a3;
  v8 = [[_HKGraphTileDelayedRendererEntry alloc] initWithImageRenderer:v6 lastAssignmentTime:a4];

  os_unfair_lock_lock(&self->_entriesLock);
  v7 = [(_HKGraphTileDelayedRendererReleaseManager *)self delayedEntries];
  [v7 addObject:v8];

  os_unfair_lock_unlock(&self->_entriesLock);
}

- (void)releaseExpiredImageRenderers:(double)a3
{
  v33 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_entriesLock);
  v5 = [(_HKGraphTileDelayedRendererReleaseManager *)self delayedEntries];
  v6 = [v5 count];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [(_HKGraphTileDelayedRendererReleaseManager *)self delayedEntries];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = v6 - 45;
    v12 = *v28;
    while (2)
    {
      v13 = 0;
      v14 = v10 + v9;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v7);
        }

        if (v10 < v11 || ([*(*(&v27 + 1) + 8 * v13) expiredAtTime:a3] & 1) != 0)
        {

          v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v15 = [(_HKGraphTileDelayedRendererReleaseManager *)self delayedEntries];
          v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = 0;
            v19 = *v24;
            do
            {
              v20 = 0;
              v21 = v18;
              do
              {
                if (*v24 != v19)
                {
                  objc_enumerationMutation(v15);
                }

                if (v21 >= v11)
                {
                  v22 = *(*(&v23 + 1) + 8 * v20);
                  if (([v22 expiredAtTime:a3] & 1) == 0)
                  {
                    [v7 addObject:v22];
                  }
                }

                ++v21;
                ++v20;
              }

              while (v17 != v20);
              v18 += v17;
              v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v17);
          }

          [(_HKGraphTileDelayedRendererReleaseManager *)self setDelayedEntries:v7];
          goto LABEL_22;
        }

        ++v13;
      }

      while (v9 != v13);
      v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      v10 = v14;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  os_unfair_lock_unlock(&self->_entriesLock);
}

@end