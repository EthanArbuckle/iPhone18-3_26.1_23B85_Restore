@interface BWIOSurfaceTracking
+ (uint64_t)defaultSurfaceTracking;
+ (void)noteSurfaceIDInUse:(unsigned int)a3 byClient:(id)a4;
+ (void)noteSurfaceIDNoLongerInUse:(unsigned int)a3 byClient:(id)a4;
+ (void)trackPixelBuffer:(__CVBuffer *)a3 surfaceUseCountIsZeroHandler:(id)a4;
- (BWIOSurfaceTracking)init;
- (os_unfair_lock_s)noteSurfaceIDNoLongerInUse:(os_unfair_lock_s *)result;
- (void)dealloc;
- (void)noteSurfaceIDInUse:(uint64_t)a1;
- (void)trackPixelBuffer:(uint64_t)a3 surfaceUseCountIsZeroHandler:;
@end

@implementation BWIOSurfaceTracking

+ (void)trackPixelBuffer:(__CVBuffer *)a3 surfaceUseCountIsZeroHandler:(id)a4
{
  if (a4)
  {
    if (CVPixelBufferGetIOSurface(a3))
    {
      v7 = +[BWIOSurfaceTracking defaultSurfaceTracking];

      [(BWIOSurfaceTracking *)v7 trackPixelBuffer:a3 surfaceUseCountIsZeroHandler:a4];
    }

    else
    {
      v6 = *(a4 + 2);

      v6(a4);
    }
  }
}

+ (uint64_t)defaultSurfaceTracking
{
  objc_opt_self();
  if (defaultSurfaceTracking_sOnceToken != -1)
  {
    +[BWIOSurfaceTracking defaultSurfaceTracking];
  }

  return defaultSurfaceTracking_sDefaultSurfaceTracking;
}

+ (void)noteSurfaceIDInUse:(unsigned int)a3 byClient:(id)a4
{
  v5 = +[BWIOSurfaceTracking defaultSurfaceTracking];

  [(BWIOSurfaceTracking *)v5 noteSurfaceIDInUse:a3];
}

+ (void)noteSurfaceIDNoLongerInUse:(unsigned int)a3 byClient:(id)a4
{
  v5 = +[BWIOSurfaceTracking defaultSurfaceTracking];

  [(BWIOSurfaceTracking *)v5 noteSurfaceIDNoLongerInUse:a3];
}

BWIOSurfaceTracking *__45__BWIOSurfaceTracking_defaultSurfaceTracking__block_invoke()
{
  result = objc_alloc_init(BWIOSurfaceTracking);
  defaultSurfaceTracking_sDefaultSurfaceTracking = result;
  return result;
}

- (BWIOSurfaceTracking)init
{
  v5.receiver = self;
  v5.super_class = BWIOSurfaceTracking;
  v2 = [(BWIOSurfaceTracking *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_trackedSurfacesLock._os_unfair_lock_opaque = 0;
    v2->_trackedSurfaces = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWIOSurfaceTracking;
  [(BWIOSurfaceTracking *)&v3 dealloc];
}

void __69__BWIOSurfaceTracking_trackPixelBuffer_surfaceUseCountIsZeroHandler___block_invoke(uint64_t a1)
{
  v2 = IOSurfaceIsInUse(*(a1 + 56));
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(a1 + 40) setOwningPixelBufferDeallocated:1];
  v3 = [*(a1 + 40) clientUseCount];
  v4 = *(a1 + 32);
  if (v2)
  {
    v5 = v3 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = v3;
    [*(v4 + 16) removeObjectIdenticalTo:*(a1 + 40)];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    if (v2)
    {
      if (v6 <= 0)
      {
        v9 = *(a1 + 48);
        v8 = *(a1 + 56);

        [BWIOSurfacePoller trackSurface:v8 useCountIsZeroHandler:v9];
      }
    }

    else
    {
      v7 = *(*(a1 + 48) + 16);

      v7();
    }
  }

  else
  {

    os_unfair_lock_unlock((v4 + 8));
  }
}

- (void)trackPixelBuffer:(uint64_t)a3 surfaceUseCountIsZeroHandler:
{
  if (a1)
  {
    IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
    v7 = [[BWTrackedSurface alloc] initWithSurface:IOSurface handler:a3];
    os_unfair_lock_lock((a1 + 8));
    [*(a1 + 16) addObject:v7];
    os_unfair_lock_unlock((a1 + 8));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__BWIOSurfaceTracking_trackPixelBuffer_surfaceUseCountIsZeroHandler___block_invoke;
    v8[3] = &unk_1E799D4F0;
    v8[4] = a1;
    v8[5] = v7;
    v8[6] = a3;
    v8[7] = IOSurface;
    [BWObjectLifetimeTracker trackAttachmentBearer:pixelBuffer deallocHandler:v8];
  }
}

- (void)noteSurfaceIDInUse:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    OUTLINED_FUNCTION_1_13();
    v4 = *(a1 + 16);
    v13 = OUTLINED_FUNCTION_0_0(v5, v6, v7, v8, v9, v10, v11, v12, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58);
    if (v13)
    {
      v14 = v13;
      v15 = *v61;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v61 != v15)
          {
            objc_enumerationMutation(v4);
          }

          v17 = *(v60 + 8 * i);
          ID = IOSurfaceGetID([v17 surface]);
          if (ID == a2)
          {
            ID = [v17 setClientUseCount:{objc_msgSend(v17, "clientUseCount") + 1}];
          }
        }

        v14 = OUTLINED_FUNCTION_0_0(ID, v19, v20, v21, v22, v23, v24, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
      }

      while (v14);
    }

    os_unfair_lock_unlock((a1 + 8));
  }
}

- (os_unfair_lock_s)noteSurfaceIDNoLongerInUse:(os_unfair_lock_s *)result
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_lock(result + 2);
    v4 = *&v3[4]._os_unfair_lock_opaque;
    v13 = OUTLINED_FUNCTION_3_108(v5, v6, v7, v8, v9, v10, v11, v12, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v102, v104, v106, v108, v110, v112, v114);
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = 0;
      v17 = MEMORY[0];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (MEMORY[0] != v17)
          {
            objc_enumerationMutation(v4);
          }

          v19 = *(8 * i);
          ID = IOSurfaceGetID([v19 surface]);
          if (ID == a2)
          {
            [v19 setClientUseCount:{objc_msgSend(v19, "clientUseCount") - 1}];
            if ([v19 owningPixelBufferDeallocated] && !objc_msgSend(v19, "clientUseCount"))
            {
              if (!v15)
              {
                v15 = [MEMORY[0x1E696AD50] indexSet];
              }

              [v15 addIndex:v16];
            }

            ID = [v19 clientUseCount];
            if (!ID)
            {
              ID = [v19 owningPixelBufferDeallocated];
            }
          }

          ++v16;
        }

        v14 = OUTLINED_FUNCTION_3_108(ID, v21, v22, v23, v24, v25, v26, v27, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v103, v105, v107, v109, v111, v113, v115);
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    if ([v15 count])
    {
      v28 = [*&v3[4]._os_unfair_lock_opaque objectsAtIndexes:v15];
      [*&v3[4]._os_unfair_lock_opaque removeObjectsAtIndexes:v15];
    }

    else
    {
      v28 = 0;
    }

    os_unfair_lock_unlock(v3 + 2);
    OUTLINED_FUNCTION_1_13();
    result = OUTLINED_FUNCTION_1_3(v29, v30, v31, v32, v33, v34, v35, v36, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98);
    if (result)
    {
      v37 = result;
      v38 = *v103;
      do
      {
        v39 = 0;
        do
        {
          if (*v103 != v38)
          {
            objc_enumerationMutation(v28);
          }

          v40 = *(v101 + 8 * v39);
          if (IOSurfaceIsInUse([v40 surface]))
          {
            v41 = +[BWIOSurfacePoller trackSurface:useCountIsZeroHandler:](BWIOSurfacePoller, "trackSurface:useCountIsZeroHandler:", [v40 surface], objc_msgSend(v40, "handler"));
          }

          else
          {
            v41 = (*([v40 handler] + 16))();
          }

          v39 = (v39 + 1);
        }

        while (v37 != v39);
        result = OUTLINED_FUNCTION_1_3(v41, v42, v43, v44, v45, v46, v47, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99);
        v37 = result;
      }

      while (result);
    }
  }

  return result;
}

@end