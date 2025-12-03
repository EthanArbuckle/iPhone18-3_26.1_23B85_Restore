@interface iAP2KalmanFilter
- (BOOL)updateMeasurementNoiseEstimate:(double)estimate;
- (iAP2KalmanFilter)initWithReseedTimeout:(double)timeout AndCountForNoiseTraining:(unint64_t)training;
- (int)iAP2KalmanFilterUpdateDeviceTime:(double)time Offset:(double)offset FilteredOffset:(double *)filteredOffset OffsetUncertainty:(double *)uncertainty;
- (void)reseedWithInternalTime:(double)time RawOffset:(double)offset FilteredOffset:(double *)filteredOffset OffsetUncertainty:(double *)uncertainty;
- (void)reset;
@end

@implementation iAP2KalmanFilter

- (iAP2KalmanFilter)initWithReseedTimeout:(double)timeout AndCountForNoiseTraining:(unint64_t)training
{
  v11.receiver = self;
  v11.super_class = iAP2KalmanFilter;
  v6 = [(iAP2KalmanFilter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    *&v6->fIsMeasurementNoiseTrained = 0;
    *&v6->f_P = xmmword_1001C3830;
    v6->fLastInternalTime = -1.0;
    v6->fTimeout = timeout;
    v6->fMeasurementVar = 0.0;
    v6->fMinCountForMeasNoiseTraining = training;
    v8 = objc_alloc_init(NSMutableArray);
    fOffsetHistory = v7->fOffsetHistory;
    v7->fOffsetHistory = v8;
  }

  return v7;
}

- (void)reset
{
  if (_iAP2LogEnableMask)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 20;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v5 = &_os_log_default;
      v4 = &_os_log_default;
    }

    else
    {
      v5 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ERROR: Resetting Kalman Filter", v6, 2u);
    }
  }

  self->fMeasurementVar = 0.0;
  *&self->fIsMeasurementNoiseTrained = 0;
  *&self->f_P = xmmword_1001C3830;
  self->fLastInternalTime = -1.0;
}

- (void)reseedWithInternalTime:(double)time RawOffset:(double)offset FilteredOffset:(double *)filteredOffset OffsetUncertainty:(double *)uncertainty
{
  self->fFilterOffsetEstimate = offset;
  self->f_P = 51840000.0;
  *uncertainty = 7200.0;
  *filteredOffset = self->fFilterOffsetEstimate;
  self->fIsSeeded = 1;
  self->fLastInternalTime = time;
}

- (BOOL)updateMeasurementNoiseEstimate:(double)estimate
{
  v5 = [(NSMutableArray *)self->fOffsetHistory count];
  if ((_iAP2LogEnableMask & 4) != 0)
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 20;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v7 = &_os_log_default;
    }

    else
    {
      v8 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(iAP2KalmanFilter *)v5 updateMeasurementNoiseEstimate:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  fOffsetHistory = self->fOffsetHistory;
  v16 = [NSNumber numberWithDouble:estimate];
  [(NSMutableArray *)fOffsetHistory addObject:v16];

  v18 = v5 >= self->fMinCountForMeasNoiseTraining && v5 > 1;
  if (v18)
  {
    v19 = 0;
    v20 = 0.0;
    do
    {
      v21 = [(NSMutableArray *)self->fOffsetHistory objectAtIndex:v19];
      [v21 doubleValue];
      v23 = v22;

      v20 = v20 + v23;
      ++v19;
    }

    while (v5 != v19);
    if ((_iAP2LogEnableMask & 4) != 0)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v24 = *(gLogObjects + 152);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v24 = &_os_log_default;
        v25 = &_os_log_default;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [(iAP2KalmanFilter *)v24 updateMeasurementNoiseEstimate:v26, v27, v28, v29, v30, v31, v32];
      }
    }

    v33 = 0;
    v34 = v5;
    v35 = v20 / v5;
    v36 = 0.0;
    do
    {
      v37 = [(NSMutableArray *)self->fOffsetHistory objectAtIndex:v33];
      [v37 doubleValue];
      v39 = v38 - v35;

      v36 = v36 + v39 * v39;
      ++v33;
    }

    while (v5 != v33);
    if ((_iAP2LogEnableMask & 4) != 0)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v40 = *(gLogObjects + 152);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v40 = &_os_log_default;
        v41 = &_os_log_default;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [(iAP2KalmanFilter *)v40 updateMeasurementNoiseEstimate:v42, v43, v44, v45, v46, v47, v48];
      }
    }

    self->fMeasurementVar = v36 / (v34 + -1.0);
    self->fIsMeasurementNoiseTrained = 1;
    [(NSMutableArray *)self->fOffsetHistory removeAllObjects];
  }

  return v18;
}

- (int)iAP2KalmanFilterUpdateDeviceTime:(double)time Offset:(double)offset FilteredOffset:(double *)filteredOffset OffsetUncertainty:(double *)uncertainty
{
  if (self->fIsMeasurementNoiseTrained)
  {
    goto LABEL_2;
  }

  if (![(iAP2KalmanFilter *)self updateMeasurementNoiseEstimate:offset])
  {
LABEL_52:
    result = 0;
    *filteredOffset = offset;
    *uncertainty = 7200.0;
    self->fLastInternalTime = time;
    return result;
  }

  if ((_iAP2LogEnableMask & 4) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v13 = *(gLogObjects + 152);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v13 = &_os_log_default;
      v22 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [iAP2KalmanFilter iAP2KalmanFilterUpdateDeviceTime:? Offset:? FilteredOffset:? OffsetUncertainty:?];
    }
  }

  fMeasurementVar = self->fMeasurementVar;
  if (fMeasurementVar <= 0.0 || fMeasurementVar >= 0.25)
  {
    if ((_iAP2LogEnableMask & 4) != 0)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v25 = *(gLogObjects + 152);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v25 = &_os_log_default;
        v30 = &_os_log_default;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [iAP2KalmanFilter iAP2KalmanFilterUpdateDeviceTime:? Offset:? FilteredOffset:? OffsetUncertainty:?];
      }
    }

    self->fIsMeasurementNoiseTrained = 0;
    goto LABEL_52;
  }

  if ((_iAP2LogEnableMask & 4) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v26 = *(gLogObjects + 152);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v26 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [iAP2KalmanFilter iAP2KalmanFilterUpdateDeviceTime:? Offset:? FilteredOffset:? OffsetUncertainty:?];
    }
  }

LABEL_2:
  if (!self->fIsSeeded || (v11 = time - self->fLastInternalTime, v11 > self->fTimeout))
  {
    [(iAP2KalmanFilter *)self reseedWithInternalTime:filteredOffset RawOffset:uncertainty FilteredOffset:time OffsetUncertainty:offset];
    return 0;
  }

  p_fFilterOffsetEstimate = &self->fFilterOffsetEstimate;
  fFilterOffsetEstimate = self->fFilterOffsetEstimate;
  self->fLastInternalTime = time;
  v16 = self->fMeasurementVar;
  f_P = self->f_P;
  if (v16 + f_P <= 0.0)
  {
    [(iAP2KalmanFilter *)self resetWithInternalTimeSecs:filteredOffset RawOffset:uncertainty FilteredOffset:time OffsetUncertainty:offset];
    if ((_iAP2LogEnableMask & 4) != 0)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v21 = *(gLogObjects + 152);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v21 = &_os_log_default;
        v32 = &_os_log_default;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [iAP2KalmanFilter iAP2KalmanFilterUpdateDeviceTime:v21 Offset:? FilteredOffset:? OffsetUncertainty:?];
      }
    }

    return 0;
  }

  v18 = offset - fFilterOffsetEstimate;
  v19 = v18 * v18 / (v16 + f_P);
  if (v19 <= 20.25)
  {
    v20 = v11 * 0.00005625;
    if (v19 > 9.0)
    {
      v16 = v16 + v16;
    }
  }

  else if (v18 <= 7200.0)
  {
    v20 = v18 * v18;
  }

  else
  {
    v20 = 51840000.0;
  }

  v27 = f_P + v20;
  self->f_P = v27;
  v28 = v27 / (v27 + v16);
  if ((_iAP2LogEnableMask & 4) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v29 = *(gLogObjects + 152);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v29 = &_os_log_default;
      v33 = &_os_log_default;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v50 = 134218496;
      timeCopy = fFilterOffsetEstimate;
      v52 = 2048;
      offsetCopy = v28;
      v54 = 2048;
      v55 = offset - fFilterOffsetEstimate;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "fFilterOffsetPrior = %.3lf K = %.3lf v = %.3lf", &v50, 0x20u);
    }

    v34 = _iAP2LogEnableMask;
    *p_fFilterOffsetEstimate = fFilterOffsetEstimate + v28 * v18;
    if ((v34 & 4) != 0)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v38 = *(gLogObjects + 152);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v38 = &_os_log_default;
        v39 = &_os_log_default;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [iAP2KalmanFilter iAP2KalmanFilterUpdateDeviceTime:? Offset:? FilteredOffset:? OffsetUncertainty:?];
      }

      v40 = _iAP2LogEnableMask;
      v41 = (1.0 - v28) * self->f_P;
      self->f_P = v41;
      v42 = sqrt(v41);
      if (v41 >= 0.00000225)
      {
        v43 = v42;
      }

      else
      {
        v43 = 0.00000225;
      }

      *uncertainty = v43;
      *filteredOffset = self->fFilterOffsetEstimate;
      if ((v40 & 4) != 0)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v44 = *(gLogObjects + 152);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v44 = &_os_log_default;
          v45 = &_os_log_default;
        }

        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          [iAP2KalmanFilter iAP2KalmanFilterUpdateDeviceTime:filteredOffset Offset:? FilteredOffset:? OffsetUncertainty:?];
        }

        if ((_iAP2LogEnableMask & 4) != 0)
        {
          if (gLogObjects && gNumLogObjects >= 20)
          {
            v46 = *(gLogObjects + 152);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v46 = &_os_log_default;
            v47 = &_os_log_default;
          }

          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v48 = *filteredOffset;
            v49 = *uncertainty;
            v50 = 134219776;
            timeCopy = time;
            v52 = 2048;
            offsetCopy = offset;
            v54 = 2048;
            v55 = v48;
            v56 = 2048;
            v57 = v49;
            v58 = 2048;
            v59 = v16;
            v60 = 2048;
            v61 = v20;
            v62 = 2048;
            v63 = offset - fFilterOffsetEstimate;
            v64 = 2048;
            v65 = v19;
            _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "internalTimeSecs,%.6lf,rawOffset,%.6lf,filteredOffsetSecs,%.6lf,offsetUncertaintySecs,%.6lf,R,%.6lf,Q,%.6lf,v,%.6lf,vtest2,%.6lf\n", &v50, 0x52u);
          }
        }
      }

      return 1;
    }
  }

  else
  {
    *p_fFilterOffsetEstimate = fFilterOffsetEstimate + v28 * v18;
  }

  v35 = (1.0 - v28) * self->f_P;
  self->f_P = v35;
  v36 = sqrt(v35);
  if (v35 >= 0.00000225)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0.00000225;
  }

  *uncertainty = v37;
  *filteredOffset = self->fFilterOffsetEstimate;
  return 1;
}

- (void)iAP2KalmanFilterUpdateDeviceTime:(uint64_t)a1 Offset:FilteredOffset:OffsetUncertainty:.cold.2(uint64_t a1)
{
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, v2, v3, "Measurement Variance %.3lf\n", v4, v5, v6, v7, v8);
}

- (void)iAP2KalmanFilterUpdateDeviceTime:(uint64_t *)a1 Offset:FilteredOffset:OffsetUncertainty:.cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_14(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, v1, v2, "Unacceptable,time offset measurement variance(s^2),%.3lf\n", v3, v4, v5, v6, v7);
}

- (void)iAP2KalmanFilterUpdateDeviceTime:(uint64_t *)a1 Offset:FilteredOffset:OffsetUncertainty:.cold.6(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_14(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, v1, v2, "Estimated,time offset measurement variance(s^2),%.3lf\n", v3, v4, v5, v6, v7);
}

- (void)iAP2KalmanFilterUpdateDeviceTime:(uint64_t *)a1 Offset:FilteredOffset:OffsetUncertainty:.cold.11(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_14(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, v1, v2, "fFilterOffsetEstimate = %.3lf", v3, v4, v5, v6, v7);
}

- (void)iAP2KalmanFilterUpdateDeviceTime:(uint64_t *)a1 Offset:FilteredOffset:OffsetUncertainty:.cold.13(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_14(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, v1, v2, "filteredOffsetSecs = %.3lf", v3, v4, v5, v6, v7);
}

@end