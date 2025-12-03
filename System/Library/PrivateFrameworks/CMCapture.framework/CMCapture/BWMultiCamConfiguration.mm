@interface BWMultiCamConfiguration
+ (id)configurationWithCurrentStateFromCaptureDevice:(id)device;
+ (id)configurationWithUnsynchronizedActiveStreamsPortTypes:(id)types synchronizedActiveStreamsGroupsPortTypes:(id)portTypes stereoVideoCaptureEnabled:(BOOL)enabled;
- (BOOL)isEqual:(id)equal;
- (id)copyActiveSynchronizedStreamsGroupsForDevice:(id)device errorOut:(int *)out;
- (id)multiCamConfigurationForDevice:(id)device errorOut:(int *)out;
- (void)_initWithUnsynchronizedActiveStreamsPortTypes:(void *)types synchronizedActiveStreamsGroupsPortTypes:(void *)portTypes withCaptureDevice:(int)device readCurrentStateFromCaptureDevice:(char)captureDevice stereoVideoCaptureEnabled:;
- (void)dealloc;
- (void)sortedStreamsForTNRFeatureBasedRegistration:(char)registration prioritizePrimaryStream:;
@end

@implementation BWMultiCamConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMultiCamConfiguration;
  [(BWMultiCamConfiguration *)&v3 dealloc];
}

+ (id)configurationWithUnsynchronizedActiveStreamsPortTypes:(id)types synchronizedActiveStreamsGroupsPortTypes:(id)portTypes stereoVideoCaptureEnabled:(BOOL)enabled
{
  v5 = [[BWMultiCamConfiguration alloc] _initWithUnsynchronizedActiveStreamsPortTypes:types synchronizedActiveStreamsGroupsPortTypes:portTypes withCaptureDevice:0 readCurrentStateFromCaptureDevice:0 stereoVideoCaptureEnabled:enabled];

  return v5;
}

- (void)_initWithUnsynchronizedActiveStreamsPortTypes:(void *)types synchronizedActiveStreamsGroupsPortTypes:(void *)portTypes withCaptureDevice:(int)device readCurrentStateFromCaptureDevice:(char)captureDevice stereoVideoCaptureEnabled:
{
  if (!self)
  {
    return 0;
  }

  v39.receiver = self;
  v39.super_class = BWMultiCamConfiguration;
  v11 = objc_msgSendSuper2(&v39, sel_init);
  if (v11)
  {
    v12 = *off_1E798A0D8;
    v38[0] = *off_1E798A0C0;
    v38[1] = v12;
    v13 = *off_1E798A0E0;
    v38[2] = *off_1E798A0D0;
    v38[3] = v13;
    v38[4] = *off_1E798A0F8;
    v11[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:5];
    *(v11 + 32) = captureDevice;
    if (!device)
    {
      v11[2] = [a2 copy];
      v11[3] = [types copy];
      return v11;
    }

    if (!portTypes)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"device must not be NULL" userInfo:0]);
    }

    v55[0] = 0;
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v16 = [portTypes getProperty:*off_1E798A018 error:v55];
    if (v55[0])
    {
      [BWMultiCamConfiguration _initWithUnsynchronizedActiveStreamsPortTypes:synchronizedActiveStreamsGroupsPortTypes:withCaptureDevice:readCurrentStateFromCaptureDevice:stereoVideoCaptureEnabled:];
    }

    else
    {
      v35 = array;
      v36 = v11;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v34 = v16;
      obj = [v16 objectForKeyedSubscript:*off_1E7989F48];
      v17 = [obj countByEnumeratingWithState:&v51 objects:v50 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v52;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v52 != v19)
            {
              objc_enumerationMutation(obj);
            }

            activeStreams = [*(*(&v51 + 1) + 8 * i) activeStreams];
            v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(activeStreams, "count")}];
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v23 = [activeStreams countByEnumeratingWithState:&v46 objects:v45 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v47;
              do
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v47 != v25)
                  {
                    objc_enumerationMutation(activeStreams);
                  }

                  [v22 addObject:{objc_msgSend(*(*(&v46 + 1) + 8 * j), "portType")}];
                }

                v24 = [activeStreams countByEnumeratingWithState:&v46 objects:v45 count:16];
              }

              while (v24);
            }

            [array2 addObject:v22];
          }

          v18 = [obj countByEnumeratingWithState:&v51 objects:v50 count:16];
        }

        while (v18);
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v27 = [v34 objectForKeyedSubscript:*off_1E7989F50];
      v28 = [v27 countByEnumeratingWithState:&v41 objects:v40 count:16];
      array = v35;
      v11 = v36;
      if (v28)
      {
        v29 = v28;
        v30 = *v42;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v42 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [v35 addObject:{objc_msgSend(*(*(&v41 + 1) + 8 * k), "portType")}];
          }

          v29 = [v27 countByEnumeratingWithState:&v41 objects:v40 count:16];
        }

        while (v29);
      }
    }

    v32 = v55[0];
    if (v55[0] || (v11[2] = [array copy], v11[3] = objc_msgSend(array2, "copy"), (v32 = v55[0]) != 0))
    {
      [BWMultiCamConfiguration _initWithUnsynchronizedActiveStreamsPortTypes:v32 synchronizedActiveStreamsGroupsPortTypes:v11 withCaptureDevice:? readCurrentStateFromCaptureDevice:? stereoVideoCaptureEnabled:?];
      return 0;
    }
  }

  return v11;
}

+ (id)configurationWithCurrentStateFromCaptureDevice:(id)device
{
  v3 = [[BWMultiCamConfiguration alloc] _initWithUnsynchronizedActiveStreamsPortTypes:0 synchronizedActiveStreamsGroupsPortTypes:device withCaptureDevice:1 readCurrentStateFromCaptureDevice:0 stereoVideoCaptureEnabled:?];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v35 = v3;
    v36 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = -[NSArray count](self->_unsynchronizedActiveStreamsPortTypes, "count"), v7 == [*(equal + 2) count]) && (v8 = -[NSArray count](self->_synchronizedActiveStreamsGroupsPortTypes, "count"), v8 == objc_msgSend(*(equal + 3), "count")))
    {
      v9 = [MEMORY[0x1E695DFD8] setWithArray:self->_unsynchronizedActiveStreamsPortTypes];
      v10 = [v9 isEqual:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", *(equal + 2))}];
      if (v10)
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        obj = self->_synchronizedActiveStreamsGroupsPortTypes;
        v11 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v24 = *v32;
LABEL_8:
          v13 = 0;
          while (1)
          {
            if (*v32 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v31 + 1) + 8 * v13);
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v15 = *(equal + 3);
            v16 = [v15 countByEnumeratingWithState:&v26 objects:v25 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v27;
LABEL_13:
              v19 = 0;
              while (1)
              {
                if (*v27 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v26 + 1) + 8 * v19);
                if ([v20 containsObject:{objc_msgSend(v14, "firstObject")}])
                {
                  break;
                }

                if (v17 == ++v19)
                {
                  v17 = [v15 countByEnumeratingWithState:&v26 objects:v25 count:16];
                  if (v17)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_19;
                }
              }
            }

            else
            {
LABEL_19:
              v20 = 0;
            }

            v21 = [MEMORY[0x1E695DFD8] setWithArray:v14];
            v10 = [v21 isEqual:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", v20)}];
            if (!v10)
            {
              break;
            }

            if (++v13 == v12)
            {
              v12 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v30 count:16];
              if (v12)
              {
                goto LABEL_8;
              }

              goto LABEL_23;
            }
          }
        }

        else
        {
LABEL_23:
          LOBYTE(v10) = self->_stereoVideoCaptureEnabled == *(equal + 32);
        }
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

uint64_t __95__BWMultiCamConfiguration_sortedStreamsForTNRFeatureBasedRegistration_prioritizePrimaryStream___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = [*(*(a1 + 32) + 8) indexOfObject:{objc_msgSend(a2, "portType")}];
  v7 = [*(*(a1 + 32) + 8) indexOfObject:{objc_msgSend(a3, "portType")}];
  if ([*(a1 + 40) containsObject:{objc_msgSend(a2, "portType")}])
  {
    if (*(a1 + 48))
    {
      v6 = -1;
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if ([*(a1 + 40) containsObject:{objc_msgSend(a3, "portType")}])
  {
    if (*(a1 + 48))
    {
      v7 = -1;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (v6 >= v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v6 > v7)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

- (id)multiCamConfigurationForDevice:(id)device errorOut:(int *)out
{
  v30[0] = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_synchronizedActiveStreamsGroupsPortTypes, "count")}];
  array = [MEMORY[0x1E695DF70] array];
  outCopy = out;
  if ([(NSArray *)self->_unsynchronizedActiveStreamsPortTypes count])
  {
    v10 = [device copyStreamsWithPortTypes:self->_unsynchronizedActiveStreamsPortTypes error:v30];
    if (v30[0])
    {
      [BWMultiCamConfiguration multiCamConfigurationForDevice:errorOut:];
      if (out)
      {
        goto LABEL_26;
      }

      return dictionary;
    }

    v22 = v10;
    [array addObjectsFromArray:v10];
  }

  else
  {
    v22 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  synchronizedActiveStreamsGroupsPortTypes = self->_synchronizedActiveStreamsGroupsPortTypes;
  v12 = [(NSArray *)synchronizedActiveStreamsGroupsPortTypes countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (!v12)
  {
LABEL_17:
    v19 = [MEMORY[0x1E695DF70] arrayWithArray:array];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __67__BWMultiCamConfiguration_multiCamConfigurationForDevice_errorOut___block_invoke;
    v24[3] = &unk_1E79977D8;
    v24[4] = self;
    [v19 sortUsingComparator:v24];
    if (self->_stereoVideoCaptureEnabled)
    {
      out = outCopy;
      if ([v8 count])
      {
        v20 = [(BWMultiCamConfiguration *)self sortedStreamsForTNRFeatureBasedRegistration:v8 prioritizePrimaryStream:0];
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
      out = outCopy;
    }

    [dictionary setObject:v22 forKeyedSubscript:*off_1E7989F50];
    [dictionary setObject:v8 forKeyedSubscript:*off_1E7989F48];
    [dictionary setObject:v19 forKeyedSubscript:*off_1E7989F58];
    [dictionary setObject:v20 forKeyedSubscript:*off_1E7989F60];
    if (out)
    {
      goto LABEL_26;
    }

    return dictionary;
  }

  v13 = v12;
  v14 = *v27;
LABEL_7:
  v15 = 0;
  while (1)
  {
    if (*v27 != v14)
    {
      objc_enumerationMutation(synchronizedActiveStreamsGroupsPortTypes);
    }

    v16 = *(*(&v26 + 1) + 8 * v15);
    if (![v16 count])
    {
      goto LABEL_15;
    }

    v17 = [device copyStreamsWithPortTypes:v16 error:v30];
    if (v30[0])
    {
      [BWMultiCamConfiguration multiCamConfigurationForDevice:errorOut:];
      goto LABEL_25;
    }

    v18 = [device copySynchronizedStreamsGroupForStreams:v17 error:v30];
    if (v30[0])
    {
      break;
    }

    if (v18)
    {
      [v8 addObject:?];
      [array addObjectsFromArray:v17];
    }

LABEL_15:
    if (v13 == ++v15)
    {
      v13 = [(NSArray *)synchronizedActiveStreamsGroupsPortTypes countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v13)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  [BWMultiCamConfiguration multiCamConfigurationForDevice:errorOut:];
LABEL_25:
  out = outCopy;
  if (!outCopy)
  {
    return dictionary;
  }

LABEL_26:
  *out = v30[0];
  return dictionary;
}

uint64_t __67__BWMultiCamConfiguration_multiCamConfigurationForDevice_errorOut___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [*(*(a1 + 32) + 8) indexOfObject:{objc_msgSend(a2, "portType")}];
  v6 = [*(*(a1 + 32) + 8) indexOfObject:{objc_msgSend(a3, "portType")}];
  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (id)copyActiveSynchronizedStreamsGroupsForDevice:(id)device errorOut:(int *)out
{
  v23 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_synchronizedActiveStreamsGroupsPortTypes, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  synchronizedActiveStreamsGroupsPortTypes = self->_synchronizedActiveStreamsGroupsPortTypes;
  v9 = [(NSArray *)synchronizedActiveStreamsGroupsPortTypes countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(synchronizedActiveStreamsGroupsPortTypes);
        }

        v13 = [device copyStreamsWithPortTypes:*(*(&v19 + 1) + 8 * i) error:&v23];
        if (v23)
        {
          [BWMultiCamConfiguration copyActiveSynchronizedStreamsGroupsForDevice:errorOut:];
          v14 = 0;
          goto LABEL_11;
        }

        v14 = [device copySynchronizedStreamsGroupForStreams:v13 error:&v23];
        if (v23)
        {
          [BWMultiCamConfiguration copyActiveSynchronizedStreamsGroupsForDevice:errorOut:];
          goto LABEL_11;
        }

        [v7 addObject:v14];
      }

      v10 = [(NSArray *)synchronizedActiveStreamsGroupsPortTypes countByEnumeratingWithState:&v19 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
  v13 = 0;
LABEL_11:
  v15 = v23;
  if (out)
  {
    *out = v23;
  }

  if (v15 || ![v7 count])
  {
    v16 = 0;
  }

  else
  {
    v16 = [v7 copy];
  }

  return v16;
}

- (void)sortedStreamsForTNRFeatureBasedRegistration:(char)registration prioritizePrimaryStream:
{
  if (!self)
  {
    return 0;
  }

  v6 = [MEMORY[0x1E695DFA8] set];
  array = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = OUTLINED_FUNCTION_1_66(array, v8, v9, v10, v11, v12, v13, v14);
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(a2);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        [v6 addObject:{objc_msgSend(objc_msgSend(v19, "synchronizationMaster"), "portType")}];
        v20 = [array addObjectsFromArray:{objc_msgSend(v19, "activeStreams")}];
      }

      v16 = OUTLINED_FUNCTION_1_66(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    while (v16);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __95__BWMultiCamConfiguration_sortedStreamsForTNRFeatureBasedRegistration_prioritizePrimaryStream___block_invoke;
  v29[3] = &unk_1E79977B0;
  v29[4] = self;
  v29[5] = v6;
  registrationCopy = registration;
  [array sortUsingComparator:v29];
  return array;
}

- (uint64_t)_initWithUnsynchronizedActiveStreamsPortTypes:synchronizedActiveStreamsGroupsPortTypes:withCaptureDevice:readCurrentStateFromCaptureDevice:stereoVideoCaptureEnabled:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (void)_initWithUnsynchronizedActiveStreamsPortTypes:(uint64_t)a1 synchronizedActiveStreamsGroupsPortTypes:(void *)a2 withCaptureDevice:readCurrentStateFromCaptureDevice:stereoVideoCaptureEnabled:.cold.2(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  FigDebugAssert3();
}

- (uint64_t)multiCamConfigurationForDevice:errorOut:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)multiCamConfigurationForDevice:errorOut:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)multiCamConfigurationForDevice:errorOut:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)copyActiveSynchronizedStreamsGroupsForDevice:errorOut:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)copyActiveSynchronizedStreamsGroupsForDevice:errorOut:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

@end