@interface BWFigVideoCaptureSynchronizedStreamsGroup
+ (void)initialize;
- (BWFigVideoCaptureSynchronizedStreamsGroup)initWithSynchronizedStreamsGroup:(id)a3 activeStreams:(id)a4 readOnly:(BOOL)a5 baseZoomFactorOverrides:(id)a6 clientBaseZoomFactorsByPortType:(id)a7 error:(int *)a8;
- (int)setCameraControlsStatisticsMasterStream:(id)a3;
- (int)setMasterStream:(id)a3 allStreams:(id)a4;
- (uint64_t)_computeBaseZoomFactorsWithOverrides:(void *)a3 clientBaseZoomFactorsByPortType:;
- (uint64_t)_getViewAndPoseMatrices;
- (uint64_t)_slaveConfigurationForStream:(uint64_t)result;
- (uint64_t)_worldPortType;
- (unsigned)minimumMasterToSlaveFrameRateRatio;
- (void)dealloc;
- (void)setBaseZoomFactorsByPortType:(id)a3;
- (void)setMaximumNumberOfEnabledSlaveTimeMachines:(int)a3;
- (void)setMaximumNumberOfSlaveStreamsWithFrameProcessingEnabled:(int)a3;
- (void)setMaximumNumberOfSlaveStreamsWithoutFrameSkipping:(int)a3;
- (void)setMinimumMasterToSlaveFrameRateRatio:(unsigned int)a3;
@end

@implementation BWFigVideoCaptureSynchronizedStreamsGroup

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWFigVideoCaptureSynchronizedStreamsGroup;
  [(BWFigVideoCaptureSynchronizedStreamsGroup *)&v3 dealloc];
}

- (unsigned)minimumMasterToSlaveFrameRateRatio
{
  v2 = [(BWFigCaptureSynchronizedStreamsGroup *)self->_synchronizedStreamsGroup getProperty:*off_1E798CCD0 error:0];

  return [v2 intValue];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWFigVideoCaptureSynchronizedStreamsGroup)initWithSynchronizedStreamsGroup:(id)a3 activeStreams:(id)a4 readOnly:(BOOL)a5 baseZoomFactorOverrides:(id)a6 clientBaseZoomFactorsByPortType:(id)a7 error:(int *)a8
{
  v38[0] = 0;
  if (![a4 count])
  {
    [BWFigVideoCaptureSynchronizedStreamsGroup initWithSynchronizedStreamsGroup:activeStreams:readOnly:baseZoomFactorOverrides:clientBaseZoomFactorsByPortType:error:];
    goto LABEL_33;
  }

  v37.receiver = self;
  v37.super_class = BWFigVideoCaptureSynchronizedStreamsGroup;
  self = [(BWFigVideoCaptureSynchronizedStreamsGroup *)&v37 init];
  if (!self)
  {
    return self;
  }

  v31 = a3;
  v27 = a8;
  v29 = a7;
  self->_activeStreams = a4;
  v14 = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v15 = a4 != 0;
  v35 = 0u;
  v36 = 0u;
  v16 = [a4 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    v19 = *off_1E798BD38;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(a4);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        [v14 addObject:{objc_msgSend(v21, "portType", v27)}];
        v15 &= [objc_msgSend(v21 "supportedProperties")] != 0;
      }

      v17 = [a4 countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v17);
  }

  self->_activePortTypes = [v14 copy];
  v22 = v31;
  self->_synchronizedStreamsGroup = v22;
  if (v22)
  {
    self->_readOnly = a5;
    if (!a5 && (v38[0] = [(BWFigCaptureSynchronizedStreamsGroup *)v22 setActiveStreams:a4]) != 0)
    {
      [BWFigVideoCaptureSynchronizedStreamsGroup initWithSynchronizedStreamsGroup:activeStreams:readOnly:baseZoomFactorOverrides:clientBaseZoomFactorsByPortType:error:];
    }

    else if ((v15 & 1) != 0 || (v38[0] = [(BWFigVideoCaptureSynchronizedStreamsGroup *)self _getViewAndPoseMatrices]) == 0)
    {
      if ([(NSArray *)self->_activeStreams count]< 2 || (v38[0] = [(BWFigVideoCaptureSynchronizedStreamsGroup *)self _computeBaseZoomFactorsWithOverrides:a6 clientBaseZoomFactorsByPortType:v29]) == 0)
      {
        if (![(NSArray *)self->_activePortTypes containsObject:*off_1E798A0E8])
        {
          v23 = [(NSDictionary *)[(BWFigCaptureSynchronizedStreamsGroup *)self->_synchronizedStreamsGroup supportedProperties] objectForKeyedSubscript:*off_1E798CCA0];
          self->_masterConfigurationSupported = v23 != 0;
          if (v23)
          {
            v24 = [(BWFigCaptureSynchronizedStreamsGroup *)self->_synchronizedStreamsGroup getProperty:*off_1E798CCA8 error:v38];
            if (v38[0])
            {
              [BWFigVideoCaptureSynchronizedStreamsGroup initWithSynchronizedStreamsGroup:activeStreams:readOnly:baseZoomFactorOverrides:clientBaseZoomFactorsByPortType:error:];
              goto LABEL_32;
            }

            if (self->_masterConfigurationSupported)
            {
              v25 = [v24 containsObject:*off_1E798CC58];
            }

            else
            {
              v25 = 0;
            }

            self->_atomicMasterSlaveReconfigurationSupported = v25;
          }
        }

        *&self->_maximumNumberOfSlaveStreamsWithoutFrameSkipping = -1;
        self->_maximumNumberOfEnabledSlaveTimeMachines = -1;
        return self;
      }

      [BWFigVideoCaptureSynchronizedStreamsGroup initWithSynchronizedStreamsGroup:activeStreams:readOnly:baseZoomFactorOverrides:clientBaseZoomFactorsByPortType:error:];
    }

    else
    {
      [BWFigVideoCaptureSynchronizedStreamsGroup initWithSynchronizedStreamsGroup:activeStreams:readOnly:baseZoomFactorOverrides:clientBaseZoomFactorsByPortType:error:];
    }
  }

  else
  {
    [BWFigVideoCaptureSynchronizedStreamsGroup initWithSynchronizedStreamsGroup:v38 activeStreams:? readOnly:? baseZoomFactorOverrides:? clientBaseZoomFactorsByPortType:? error:?];
  }

LABEL_32:
  a8 = v28;
LABEL_33:

  self = 0;
  if (a8)
  {
    *a8 = v38[0];
  }

  return self;
}

- (void)setBaseZoomFactorsByPortType:(id)a3
{
  v5 = [(NSDictionary *)self->_baseZoomFactorsByPortType mutableCopy];
  [v5 addEntriesFromDictionary:a3];

  self->_baseZoomFactorsByPortType = [v5 copy];
}

- (void)setMinimumMasterToSlaveFrameRateRatio:(unsigned int)a3
{
  if (!self->_readOnly)
  {
    synchronizedStreamsGroup = self->_synchronizedStreamsGroup;
    v5 = *off_1E798CCD0;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];

    [(BWFigCaptureSynchronizedStreamsGroup *)synchronizedStreamsGroup setProperty:v5 value:v6];
  }
}

- (void)setMaximumNumberOfSlaveStreamsWithoutFrameSkipping:(int)a3
{
  if (!self->_readOnly)
  {
    v3 = *&a3;
    if ([(BWFigVideoCaptureSynchronizedStreamsGroup *)self maximumNumberOfSlaveStreamsWithoutFrameSkippingSupported])
    {
      if (self->_maximumNumberOfSlaveStreamsWithoutFrameSkipping != v3 && !-[BWFigCaptureSynchronizedStreamsGroup setProperty:value:](self->_synchronizedStreamsGroup, "setProperty:value:", *off_1E798CCC0, [MEMORY[0x1E696AD98] numberWithInt:v3]))
      {
        self->_maximumNumberOfSlaveStreamsWithoutFrameSkipping = v3;
      }
    }
  }
}

- (void)setMaximumNumberOfSlaveStreamsWithFrameProcessingEnabled:(int)a3
{
  if (!self->_readOnly)
  {
    v3 = *&a3;
    if ([(BWFigVideoCaptureSynchronizedStreamsGroup *)self maximumNumberOfSlaveStreamsWithFrameProcessingEnabledSupported])
    {
      if (self->_maximumNumberOfSlaveStreamsWithFrameProcessingEnabled != v3 && !-[BWFigCaptureSynchronizedStreamsGroup setProperty:value:](self->_synchronizedStreamsGroup, "setProperty:value:", *off_1E798CCB8, [MEMORY[0x1E696AD98] numberWithInt:v3]))
      {
        self->_maximumNumberOfSlaveStreamsWithFrameProcessingEnabled = v3;
      }
    }
  }
}

- (void)setMaximumNumberOfEnabledSlaveTimeMachines:(int)a3
{
  if (!self->_readOnly && self->_atomicMasterSlaveReconfigurationSupported)
  {
    v4 = *&a3;
    v5 = [(BWFigCaptureSynchronizedStreamsGroup *)self->_synchronizedStreamsGroup supportedProperties];
    v6 = *off_1E798CCB0;
    if ([(NSDictionary *)v5 objectForKeyedSubscript:*off_1E798CCB0])
    {
      if (self->_maximumNumberOfEnabledSlaveTimeMachines != v4 && !-[BWFigCaptureSynchronizedStreamsGroup setProperty:value:](self->_synchronizedStreamsGroup, "setProperty:value:", v6, [MEMORY[0x1E696AD98] numberWithInt:v4]))
      {
        self->_maximumNumberOfEnabledSlaveTimeMachines = v4;
      }
    }
  }
}

- (uint64_t)_getViewAndPoseMatrices
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v28[0] = 0;
  v17 = [(BWFigVideoCaptureSynchronizedStreamsGroup *)result _worldPortType];
  memset(v27, 0, sizeof(v27));
  v26 = 0u;
  v25 = 1065353216;
  v27[0] = 1065353216;
  v27[5] = 1065353216;
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:&v25 length:48];
  v16 = [*(v1 + 8) getProperty:*off_1E798CC98 error:v28];
  if (v28[0])
  {
    FigDebugAssert3();
    goto LABEL_26;
  }

  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v1;
  obj = *(v1 + 24);
  v5 = [obj countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v5;
  v7 = *v22;
  v8 = *off_1E798A0C0;
  v9 = *off_1E798A0E0;
  v18 = *off_1E798A0F8;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v21 + 1) + 8 * i);
      v12 = v2;
      if (([v11 isEqualToString:v8] & 1) == 0)
      {
        v12 = v2;
        if ([v11 isEqualToString:v9])
        {
          goto LABEL_15;
        }

        v12 = v2;
        if ([v11 isEqualToString:v18])
        {
          goto LABEL_15;
        }

        if (![objc_msgSend(v16 "allKeys")])
        {
          v12 = [objc_msgSend(v16 objectForKeyedSubscript:{v17), "objectForKeyedSubscript:", v11}];
LABEL_15:
          [v3 setObject:0 forKeyedSubscript:v11];
          if (v12)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

        v12 = [objc_msgSend(v16 objectForKeyedSubscript:{v11), "objectForKeyedSubscript:", v17}];
      }

      [v3 setObject:v12 forKeyedSubscript:v11];
LABEL_16:
      if ([v12 length] == 48)
      {
        v12 = BWInvertRowMajorViewMatrixData(v12);
      }

      else
      {
        v12 = 0;
      }

LABEL_19:
      [v4 setObject:v12 forKeyedSubscript:v11];
    }

    v6 = [obj countByEnumeratingWithState:&v21 objects:v20 count:16];
  }

  while (v6);
LABEL_21:
  v13 = [v3 count];
  if (v13)
  {
    v13 = [v3 copy];
  }

  *(v15 + 32) = v13;
  v14 = [v4 count];
  if (v14)
  {
    v14 = [v4 copy];
  }

  *(v15 + 40) = v14;
LABEL_26:
  if (v28[0] == -12782)
  {
    return 0;
  }

  else
  {
    return v28[0];
  }
}

- (uint64_t)_computeBaseZoomFactorsWithOverrides:(void *)a3 clientBaseZoomFactorsByPortType:
{
  if (result)
  {
    v5 = result;
    v51[0] = 0;
    v6 = [objc_msgSend(*(result + 8) getProperty:*off_1E798CC90 error:{v51), "mutableCopy"}];
    v7 = v6;
    if (v51[0])
    {
      FigDebugAssert3();
    }

    else
    {
      v8 = [v6 copy];
      v5[8] = v8;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v9 = v5[3];
      v11 = OUTLINED_FUNCTION_1_0(v8, v10, &v47, v46);
      if (v11)
      {
        v13 = v11;
        v14 = *v48;
        v15 = 3.4028e38;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v48 != v14)
            {
              objc_enumerationMutation(v9);
            }

            v17 = *(*(&v47 + 1) + 8 * i);
            v18 = [objc_msgSend(v7 "allKeys")];
            if (v18)
            {
              v18 = [objc_msgSend(v7 objectForKeyedSubscript:{v17), "floatValue"}];
              if (v15 >= v20)
              {
                v18 = [objc_msgSend(v7 objectForKeyedSubscript:{v17), "floatValue"}];
                v15 = v21;
              }
            }
          }

          v13 = OUTLINED_FUNCTION_1_0(v18, v19, &v47, v46);
        }

        while (v13);
      }

      else
      {
        v15 = 3.4028e38;
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v22 = v5[2];
      v23 = OUTLINED_FUNCTION_1_0(0, v12, &v42, v41);
      if (v23)
      {
        v24 = v23;
        v25 = *v43;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [objc_msgSend(v7 objectForKeyedSubscript:{objc_msgSend(*(*(&v42 + 1) + 8 * j), "portType")), "floatValue"}];
            if (*&v27 == 0.0)
            {
              *&v27 = 1.0;
            }

            *&v27 = *&v27 / v15;
            [MEMORY[0x1E696AD98] numberWithFloat:v27];
            v28 = [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
          }

          v24 = OUTLINED_FUNCTION_1_0(v28, v29, &v42, v41);
        }

        while (v24);
      }

      if (a3)
      {
        v30 = a3;
      }

      else
      {
        v30 = v7;
      }

      v5[7] = [v30 copy];
      if (a2)
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v31 = [a2 allKeys];
        v32 = [v31 countByEnumeratingWithState:&v37 objects:v36 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v38;
          do
          {
            for (k = 0; k != v33; ++k)
            {
              if (*v38 != v34)
              {
                objc_enumerationMutation(v31);
              }

              [a2 objectForKeyedSubscript:*(*(&v37 + 1) + 8 * k)];
              [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
            }

            v33 = [v31 countByEnumeratingWithState:&v37 objects:v36 count:16];
          }

          while (v33);
        }
      }

      v5[6] = [v7 copy];
    }

    return v51[0];
  }

  return result;
}

- (int)setMasterStream:(id)a3 allStreams:(id)a4
{
  if (!self->_readOnly)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v16 = OUTLINED_FUNCTION_3_25(v8, v9, v10, v11, v12, v13, v14, v15, v42, v44, v46, v48, v50, v52, v54, v56, v58, v4, v61, v63, v65, v67, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, *(&v85 + 1), v86, *(&v86 + 1), v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
    if (v16)
    {
      v24 = v16;
      v25 = *v107;
      do
      {
        v26 = 0;
        do
        {
          if (*v107 != v25)
          {
            objc_enumerationMutation(a4);
          }

          v27 = *(*(&v106 + 1) + 8 * v26);
          if (v27 != a3)
          {
            v16 = [v8 setObject:-[BWFigVideoCaptureSynchronizedStreamsGroup _slaveConfigurationForStream:](self forKeyedSubscript:{*(*(&v106 + 1) + 8 * v26)), objc_msgSend(v27, "portType")}];
          }

          ++v26;
        }

        while (v24 != v26);
        v16 = OUTLINED_FUNCTION_3_25(v16, v17, v18, v19, v20, v21, v22, v23, v43, v45, v47, v49, v51, v53, v55, v57, v59, v60, v62, v64, v66, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, *(&v85 + 1), v86, *(&v86 + 1), v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
        v24 = v16;
      }

      while (v16);
    }

    if (self->_currentMasterStream == a3 && ([v8 isEqualToDictionary:self->_currentSlaveConfigurationsByPortType] & 1) != 0)
    {
      return 0;
    }

    if (dword_1EB58E180)
    {
      HIDWORD(v90) = 0;
      BYTE3(v90) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (self->_atomicMasterSlaveReconfigurationSupported)
    {
      [a3 stream];
      v29 = [OUTLINED_FUNCTION_17() setMasterStream:? slaveConfigurationsByPortType:?];
      if (v29)
      {
        v30 = v29;
        OUTLINED_FUNCTION_1_5();
LABEL_32:
        FigDebugAssert3();
        return v30;
      }

LABEL_29:

      self->_currentMasterStream = a3;
      v30 = 0;
      self->_currentSlaveConfigurationsByPortType = v8;
      return v30;
    }

    v31 = a4;
    v32 = v8;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v33 = v31;
    v34 = [v31 countByEnumeratingWithState:&v85 objects:&v69 count:16];
    if (v34)
    {
      v36 = v34;
      v37 = *v86;
      v38 = *off_1E798C1D0;
LABEL_20:
      v39 = 0;
      while (1)
      {
        if (*v86 != v37)
        {
          objc_enumerationMutation(v33);
        }

        v40 = *(*(&v85 + 1) + 8 * v39);
        if (v40 != a3)
        {
          v34 = [objc_msgSend(v40 "stream")];
          if (v34)
          {
            break;
          }
        }

        if (v36 == ++v39)
        {
          v34 = OUTLINED_FUNCTION_1_0(v34, v35, &v85, &v69);
          v36 = v34;
          if (v34)
          {
            goto LABEL_20;
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      v8 = v32;
      if (!self->_masterConfigurationSupported)
      {
        goto LABEL_29;
      }

      [a3 stream];
      LODWORD(v34) = [OUTLINED_FUNCTION_17() setMasterStream:? slaveConfigurationsByPortType:?];
      if (!v34)
      {
        goto LABEL_29;
      }
    }

    v30 = v34;
    OUTLINED_FUNCTION_1_5();
    goto LABEL_32;
  }

  FigDebugAssert3();

  return FigSignalErrorAtGM();
}

- (uint64_t)_slaveConfigurationForStream:(uint64_t)result
{
  if (result)
  {
    if ([a2 streamingRequiredWhenConfiguredAsSlave])
    {
      v3 = 1;
    }

    else
    {
      v3 = [a2 visionDataRequiredWhenConfiguredAsSlave];
    }

    v4 = [a2 firmwareTimeMachineEnabledWhenConfiguredAsSlave];
    v5 = [a2 masterToSlaveFrameRateRatio];
    v7[0] = [MEMORY[0x1E696AD98] numberWithBool:{v3, *off_1E798C730}];
    v6[1] = *off_1E798C728;
    v7[1] = [MEMORY[0x1E696AD98] numberWithInt:v5];
    v6[2] = *off_1E798C720;
    v7[2] = [MEMORY[0x1E696AD98] numberWithInt:v5 > 1];
    v6[3] = *off_1E798C738;
    v7[3] = [MEMORY[0x1E696AD98] numberWithBool:v4];
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  }

  return result;
}

- (int)setCameraControlsStatisticsMasterStream:(id)a3
{
  if (self->_statsMasterHasBeenSet && self->_cameraControlsStatisticsMasterStream == a3)
  {
    return 0;
  }

  if (self->_readOnly || !self->_masterConfigurationSupported)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    result = -[BWFigCaptureSynchronizedStreamsGroup setCameraControlsMasterStream:](self->_synchronizedStreamsGroup, "setCameraControlsMasterStream:", [a3 stream]);
    if (!result)
    {
      self->_cameraControlsStatisticsMasterStream = a3;
      self->_statsMasterHasBeenSet = 1;
    }
  }

  return result;
}

- (uint64_t)_worldPortType
{
  if (!a1)
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [*(a1 + 8) streams];
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    v5 = *off_1E798A0E0;
    v6 = *off_1E798A0F8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if ([objc_msgSend(*(*(&v13 + 1) + 8 * i) "portType")])
        {
          return *off_1E798A0C0;
        }

        if (FigCFEqual())
        {
          return v5;
        }

        if (FigCFEqual())
        {
          return v6;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v10 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(FrameworkRadarComponent, v10, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Utilities/BWFigVideoCaptureSynchronizedStreamsGroup.m", 402, @"LastShownDate:BWFigVideoCaptureSynchronizedStreamsGroup.m:402", @"LastShownBuild:BWFigVideoCaptureSynchronizedStreamsGroup.m:402", 0);
  free(v10);
  return *off_1E798A0E0;
}

- (uint64_t)initWithSynchronizedStreamsGroup:(_DWORD *)a1 activeStreams:readOnly:baseZoomFactorOverrides:clientBaseZoomFactorsByPortType:error:.cold.5(_DWORD *a1)
{
  result = FigDebugAssert3();
  *a1 = -12782;
  return result;
}

@end