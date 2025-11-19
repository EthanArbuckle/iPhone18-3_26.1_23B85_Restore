@interface SetConfiguration
@end

@implementation SetConfiguration

void __captureSession_SetConfiguration_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[114]._os_unfair_lock_opaque - 1 > 1)
  {
    os_unfair_lock_lock(v2 + 96);
    v4 = *(a1 + 32);
    *(v4 + 464) = 0;
    if ([*(v4 + 424) count])
    {
      [*(*(a1 + 32) + 424) filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_1378)}];
    }

    os_unfair_lock_unlock((*(a1 + 32) + 384));
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!_FigIsCurrentDispatchQueue())
    {
      __captureSession_SetConfiguration_block_invoke_cold_1();
    }

    os_unfair_lock_lock((DerivedStorage + 384));
    v6 = *(DerivedStorage + 504);
    if (v6 == *(DerivedStorage + 512))
    {
      os_unfair_lock_unlock((DerivedStorage + 384));
      v7 = 0;
    }

    else
    {
      v7 = v6;
      os_unfair_lock_unlock((DerivedStorage + 384));
      if (v7)
      {
        v8 = [[FigCaptureSessionParsedConfiguration alloc] initWithSessionConfiguration:v7 clientSetsUserInitiatedCaptureRequestTime:captureSession_clientSetsUserInitiatedCaptureRequestTime() restrictions:*(DerivedStorage + 496)];
        if (v8)
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v9 = [(FigCaptureSessionParsedConfiguration *)v8 parsedCameraSourceConfigurations];
          v10 = [(NSArray *)v9 countByEnumeratingWithState:&v29 objects:v28 count:16];
          if (v10)
          {
            v11 = v10;
            v27 = v7;
            v12 = *v30;
            while (2)
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v30 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [*(*(&v29 + 1) + 8 * i) cameraConfiguration];
                if (([v14 hasSetVideoZoomFactorOnCaptureSource] & 1) == 0)
                {
                  v15 = [v14 source];
                  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                  if (!v16 || v16(v15))
                  {
                    __captureSession_SetConfiguration_block_invoke_cold_5();
                    goto LABEL_35;
                  }

                  v17 = [v14 source];
                  v18 = MEMORY[0x1E696AD98];
                  [v14 videoZoomFactor];
                  v19 = [v18 numberWithFloat:?];
                  v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (!v20 || v20(v17, @"VideoZoomFactor", v19))
                  {
                    __captureSession_SetConfiguration_block_invoke_cold_4();
                    goto LABEL_35;
                  }

                  v21 = [v14 source];
                  v22 = MEMORY[0x1E696AD98];
                  [v14 simulatedAperture];
                  v23 = [v22 numberWithFloat:?];
                  v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (!v24 || v24(v21, @"SimulatedAperture", v23))
                  {
                    __captureSession_SetConfiguration_block_invoke_cold_3();
                    goto LABEL_35;
                  }

                  v25 = [v14 source];
                  v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                  if (!v26 || v26(v25))
                  {
                    __captureSession_SetConfiguration_block_invoke_cold_2();
                    goto LABEL_35;
                  }

                  [v14 setHasSetVideoZoomFactorOnCaptureSource:1];
                  [v14 setHasSetSimulatedApertureOnCaptureSource:1];
                }
              }

              v11 = [(NSArray *)v9 countByEnumeratingWithState:&v29 objects:v28 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }

LABEL_35:
            v7 = v27;
          }
        }

        else
        {
          __captureSession_SetConfiguration_block_invoke_cold_6();
        }
      }
    }
  }

  else
  {
    v3 = *(a1 + 40);

    captureSession_commitInflightConfiguration(v3);
  }
}

uint64_t __captureSession_SetConfiguration_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

@end