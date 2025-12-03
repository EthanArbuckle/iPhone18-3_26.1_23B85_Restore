@interface BWImageControlModeTransitionMonitor
+ (void)initialize;
- (BOOL)isTransitionCompleteWithSampleBuffer:(opaqueCMSampleBuffer *)buffer masterCaptureStreamPortType:(id)type activeSlaveStreamPortType:(id)portType;
- (BWImageControlModeTransitionMonitor)init;
- (id)description;
- (void)dealloc;
@end

@implementation BWImageControlModeTransitionMonitor

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWImageControlModeTransitionMonitor)init
{
  v5.receiver = self;
  v5.super_class = BWImageControlModeTransitionMonitor;
  v2 = [(BWImageControlModeTransitionMonitor *)&v5 init];
  if (v2)
  {
    *(v2 + 8) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v2 + 9) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v2 + 10) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v2 + 6) = 0;
    v3 = MEMORY[0x1E6960C70];
    *(v2 + 92) = *MEMORY[0x1E6960C70];
    *(v2 + 108) = *(v3 + 16);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWImageControlModeTransitionMonitor;
  [(BWImageControlModeTransitionMonitor *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p> Frame wait count %d.\nExpectedSphereModes %@, Actual %@\nExpectedMinimumFrameRates %@, ExpectedMaximumFrameRates %@, ActualFramerates %@", NSStringFromClass(v4), self, HIDWORD(self->_firstFramePTS.epoch), self->_expectedSphereModesByPortType, self->_currentSphereModesByPortType, self->_expectedMinimumFrameRatesByPortType, self->_expectedMaximumFrameRatesByPortType, self->_currentFrameRatesByPortType];
}

- (BOOL)isTransitionCompleteWithSampleBuffer:(opaqueCMSampleBuffer *)buffer masterCaptureStreamPortType:(id)type activeSlaveStreamPortType:(id)portType
{
  v8 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  v9 = [v8 objectForKeyedSubscript:*off_1E798B540];
  v65 = [v8 objectForKeyedSubscript:*off_1E798B710];
  v66 = v9;
  if (self->_expectedSphereModesByPortType)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_currentSphereModesByPortType, "setObject:forKeyedSubscript:", [v8 objectForKeyedSubscript:*off_1E798B6B0], v9);
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    expectedSphereModesByPortType = self->_expectedSphereModesByPortType;
    v11 = [(NSDictionary *)expectedSphereModesByPortType countByEnumeratingWithState:&v97 objects:v96 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v98;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v98 != v13)
          {
            objc_enumerationMutation(expectedSphereModesByPortType);
          }

          v15 = *(*(&v97 + 1) + 8 * i);
          if ((([v15 isEqualToString:type] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", portType)) && !objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_expectedSphereModesByPortType, "objectForKeyedSubscript:", v15), "isEqualToString:", -[NSMutableDictionary objectForKeyedSubscript:](self->_currentSphereModesByPortType, "objectForKeyedSubscript:", v15)))
          {
            v16 = 0;
            v9 = v66;
            goto LABEL_16;
          }
        }

        v12 = [(NSDictionary *)expectedSphereModesByPortType countByEnumeratingWithState:&v97 objects:v96 count:16];
        v16 = 1;
        v9 = v66;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_16:
  if (([objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B068), "BOOLValue"}] & 1) == 0)
  {
    v17 = off_1E798B210;
    if (self->_expectedMinimumFrameRatesByPortType)
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_currentFrameRatesByPortType, "setObject:forKeyedSubscript:", [v8 objectForKeyedSubscript:*off_1E798B210], v9);
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      expectedMinimumFrameRatesByPortType = self->_expectedMinimumFrameRatesByPortType;
      v19 = [(NSDictionary *)expectedMinimumFrameRatesByPortType countByEnumeratingWithState:&v92 objects:v91 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v93;
        while (2)
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v93 != v21)
            {
              objc_enumerationMutation(expectedMinimumFrameRatesByPortType);
            }

            v23 = *(*(&v92 + 1) + 8 * j);
            if (([v23 isEqualToString:type] & 1) != 0 || objc_msgSend(v23, "isEqualToString:", portType))
            {
              [-[NSDictionary objectForKeyedSubscript:](self->_expectedMinimumFrameRatesByPortType objectForKeyedSubscript:{v23), "floatValue"}];
              v25 = v24;
              [-[NSMutableDictionary objectForKeyedSubscript:](self->_currentFrameRatesByPortType objectForKeyedSubscript:{v23), "floatValue"}];
              if ((v26 + 0.1) < v25)
              {
                LOBYTE(v16) = 0;
                goto LABEL_30;
              }
            }
          }

          v20 = [(NSDictionary *)expectedMinimumFrameRatesByPortType countByEnumeratingWithState:&v92 objects:v91 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }

LABEL_30:
        v9 = v66;
        v17 = off_1E798B210;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }

    if (self->_expectedMaximumFrameRatesByPortType)
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_currentFrameRatesByPortType, "setObject:forKeyedSubscript:", [v8 objectForKeyedSubscript:*v17], v9);
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      expectedMaximumFrameRatesByPortType = self->_expectedMaximumFrameRatesByPortType;
      v28 = [(NSDictionary *)expectedMaximumFrameRatesByPortType countByEnumeratingWithState:&v87 objects:v86 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v88;
LABEL_35:
        v31 = 0;
        while (1)
        {
          if (*v88 != v30)
          {
            objc_enumerationMutation(expectedMaximumFrameRatesByPortType);
          }

          v32 = *(*(&v87 + 1) + 8 * v31);
          if (([v32 isEqualToString:type] & 1) != 0 || objc_msgSend(v32, "isEqualToString:", portType))
          {
            [-[NSDictionary objectForKeyedSubscript:](self->_expectedMaximumFrameRatesByPortType objectForKeyedSubscript:{v32), "floatValue"}];
            v34 = v33;
            [-[NSMutableDictionary objectForKeyedSubscript:](self->_currentFrameRatesByPortType objectForKeyedSubscript:{v32), "floatValue"}];
            if ((v35 + 0.1) < v34)
            {
              break;
            }
          }

          if (v29 == ++v31)
          {
            v29 = [(NSDictionary *)expectedMaximumFrameRatesByPortType countByEnumeratingWithState:&v87 objects:v86 count:16];
            if (v29)
            {
              goto LABEL_35;
            }

            goto LABEL_43;
          }
        }
      }

      else
      {
LABEL_43:
        if (v16)
        {
          v16 = 1;
LABEL_46:
          v9 = v66;
          goto LABEL_48;
        }
      }

      v16 = SHIDWORD(self->_firstFramePTS.epoch) > 10;
      goto LABEL_46;
    }

    v16 = 0;
  }

LABEL_48:
  if (!self->_expectedLTMCurvesByPortType)
  {
    v16 = 0;
    goto LABEL_64;
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_currentLTMCurvesByPortType, "setObject:forKeyedSubscript:", [v8 objectForKeyedSubscript:*off_1E798B438], v9);
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  expectedLTMCurvesByPortType = self->_expectedLTMCurvesByPortType;
  v37 = [(NSDictionary *)expectedLTMCurvesByPortType countByEnumeratingWithState:&v82 objects:v81 count:16];
  if (v37)
  {
    v38 = v37;
    v67 = v16;
    v39 = *v83;
    while (2)
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v83 != v39)
        {
          objc_enumerationMutation(expectedLTMCurvesByPortType);
        }

        v41 = *(*(&v82 + 1) + 8 * k);
        if (([v41 isEqualToString:type] & 1) != 0 || objc_msgSend(v41, "isEqualToString:", portType))
        {
          v42 = [-[NSDictionary objectForKeyedSubscript:](self->_expectedLTMCurvesByPortType objectForKeyedSubscript:{v41), "intValue"}];
          if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_currentLTMCurvesByPortType objectForKeyedSubscript:{v41), "intValue"}] != v42)
          {
            ltmCurvesTransitionFrameCount = self->_ltmCurvesTransitionFrameCount;
            if (ltmCurvesTransitionFrameCount > 0)
            {
              v44 = 0;
              v45 = v65;
              LOBYTE(v16) = v67;
              goto LABEL_67;
            }

            v45 = v65;
            v16 = v67;
            goto LABEL_69;
          }
        }
      }

      v38 = [(NSDictionary *)expectedLTMCurvesByPortType countByEnumeratingWithState:&v82 objects:v81 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }

    ltmCurvesTransitionFrameCount = self->_ltmCurvesTransitionFrameCount;
    v16 = v67;
    if (ltmCurvesTransitionFrameCount > 0)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  ltmCurvesTransitionFrameCount = self->_ltmCurvesTransitionFrameCount;
  if (ltmCurvesTransitionFrameCount < 1)
  {
LABEL_64:
    v45 = v65;
    goto LABEL_69;
  }

LABEL_66:
  v44 = self->_ltmCurvesTransitionFrameWaitCount + 1;
  v45 = v65;
LABEL_67:
  self->_ltmCurvesTransitionFrameWaitCount = v44;
  v16 = (v44 >= ltmCurvesTransitionFrameCount) & v16;
LABEL_69:
  if (self->_coarseFocusCheckTimeout > 0.0 && (self->_frameWaitCount & 1) == 0)
  {
    v46 = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B0A8), "intValue"}];
    LOBYTE(self->_frameWaitCount) = v46 != 2;
    if (v46 == 2)
    {
      memset(v68, 0, 24);
      CMSampleBufferGetPresentationTimeStamp(v68, buffer);
      if (self->_firstFramePTS.timescale)
      {
        lhs = *v68;
        rhs = *(&self->_ltmCurvesTransitionFrameWaitCount + 1);
        CMTimeSubtract(&time, &lhs, &rhs);
        if (CMTimeGetSeconds(&time) > self->_coarseFocusCheckTimeout)
        {
          LODWORD(rhs.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          value = rhs.value;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v49 = value;
          }

          else
          {
            v49 = value & 0xFFFFFFFE;
          }

          if (v49)
          {
            coarseFocusCheckTimeout = self->_coarseFocusCheckTimeout;
            LODWORD(lhs.value) = 136315394;
            *(&lhs.value + 4) = "[BWImageControlModeTransitionMonitor isTransitionCompleteWithSampleBuffer:masterCaptureStreamPortType:activeSlaveStreamPortType:]";
            LOWORD(lhs.flags) = 2048;
            *(&lhs.flags + 2) = coarseFocusCheckTimeout;
            LODWORD(v63) = 22;
            p_lhs = &lhs;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          LOBYTE(self->_frameWaitCount) = 1;
        }
      }

      else
      {
        CMSampleBufferGetPresentationTimeStamp(&time, buffer);
        *(&self->_ltmCurvesTransitionFrameWaitCount + 1) = time;
      }

      v16 = (LOBYTE(self->_frameWaitCount) & v16);
    }
  }

  if (self->_waitForTorchToRampUp)
  {
    if (([CMGetAttachment(buffer @"DropFrameWaitingForTorchToRampUp"] ^ 1) & v16)
    {
LABEL_84:
      v51 = 1;
      goto LABEL_94;
    }
  }

  else if (v16)
  {
    goto LABEL_84;
  }

  if (SHIDWORD(self->_firstFramePTS.epoch) < 45)
  {
    v51 = 0;
  }

  else
  {
    LODWORD(lhs.value) = 0;
    LOBYTE(rhs.value) = 0;
    v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v53 = lhs.value;
    if (os_log_type_enabled(v52, rhs.value))
    {
      v54 = v53;
    }

    else
    {
      v54 = v53 & 0xFFFFFFFE;
    }

    if (v54)
    {
      epoch_high = HIDWORD(self->_firstFramePTS.epoch);
      v56 = self->_expectedSphereModesByPortType;
      v57 = self->_expectedMinimumFrameRatesByPortType;
      v58 = self->_expectedMaximumFrameRatesByPortType;
      currentSphereModesByPortType = self->_currentSphereModesByPortType;
      currentFrameRatesByPortType = self->_currentFrameRatesByPortType;
      *v68 = 136316674;
      *&v68[4] = "[BWImageControlModeTransitionMonitor isTransitionCompleteWithSampleBuffer:masterCaptureStreamPortType:activeSlaveStreamPortType:]";
      *&v68[12] = 1024;
      *&v68[14] = epoch_high;
      *&v68[18] = 2112;
      *&v68[20] = v56;
      v69 = 2112;
      v70 = currentSphereModesByPortType;
      v71 = 2112;
      v72 = v57;
      v73 = 2112;
      v74 = v58;
      v75 = 2112;
      v76 = currentFrameRatesByPortType;
      LODWORD(v63) = 68;
      p_lhs = v68;
      _os_log_send_and_compose_impl();
    }

    v51 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_94:
  if (([v45 BOOLValue] & 1) != 0 || !v45)
  {
    ++HIDWORD(self->_firstFramePTS.epoch);
  }

  return v51;
}

@end