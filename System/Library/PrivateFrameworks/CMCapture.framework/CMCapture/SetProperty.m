@interface SetProperty
@end

@implementation SetProperty

uint64_t __captureSession_SetProperty_block_invoke(uint64_t a1)
{
  SystemStyleFromDefaults = *(a1 + 32);
  if (!SystemStyleFromDefaults)
  {
    SystemStyleFromDefaults = captureSession_getSystemStyleFromDefaults();
  }

  if ([objc_msgSend(*(*(a1 + 48) + 784) "cinematographyPipelines")])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = [*(*(a1 + 48) + 784) cinematographyPipelines];
    result = [v3 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v20;
      do
      {
        v7 = 0;
        do
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(FigCaptureCinematographyPipeline *)*(*(&v19 + 1) + 8 * v7++) setSmartStyle:?];
        }

        while (v5 != v7);
        result = [v3 countByEnumeratingWithState:&v19 objects:v18 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  else if ([objc_msgSend(*(*(a1 + 48) + 784) "cameraSourcePipelines")])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [*(*(a1 + 48) + 784) cameraSourcePipelines];
    result = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (result)
    {
      v9 = result;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [(FigCaptureCameraSourcePipeline *)*(*(&v14 + 1) + 8 * v11++) setSmartStyle:?];
        }

        while (v9 != v11);
        result = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
        v9 = result;
      }

      while (result);
    }
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 48) + 384));
    v12 = *(*(a1 + 48) + 504);
    os_unfair_lock_unlock((*(a1 + 48) + 384));
    result = [v12 setSmartStyle:SystemStyleFromDefaults];
  }

  *(*(a1 + 48) + 704) = *(a1 + 32) != 0;
  return result;
}

void __captureDeferredPhotoProcessor_SetProperty_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) BOOLValue];
  v3 = *(a1 + 40);
  if (*(v3 + 56) != v2)
  {
    *(v3 + 56) = v2;
    if ((v2 & 1) == 0)
    {
      v4 = *(a1 + 48);

      captureDeferredPhotoProcessor_workloop(v4);
    }
  }
}

@end