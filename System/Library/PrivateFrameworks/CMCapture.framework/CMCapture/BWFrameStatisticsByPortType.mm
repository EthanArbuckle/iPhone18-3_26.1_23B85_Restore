@interface BWFrameStatisticsByPortType
- (BOOL)isEqual:(id)a3;
- (BWFrameStatisticsByPortType)initWithCoder:(id)a3;
- (BWFrameStatisticsByPortType)initWithPortTypes:(id)a3 autoFocusRecommendedPrimaryPortTypeEnabled:(BOOL)a4;
- (id)description;
- (uint64_t)_updateAutoFocusRecommendedPortTypesWithFrameMetadata:(uint64_t)result;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
- (void)updateWithFrameMetadata:(id)a3 updateFocusDistance:(BOOL)a4;
@end

@implementation BWFrameStatisticsByPortType

- (BWFrameStatisticsByPortType)initWithPortTypes:(id)a3 autoFocusRecommendedPrimaryPortTypeEnabled:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = BWFrameStatisticsByPortType;
  v6 = [(BWFrameStatisticsByPortType *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a3, "count")}];
    v8 = malloc_type_calloc([a3 count], 0x120uLL, 0x10800402CD05F45uLL);
    if ([a3 count])
    {
      [(BWFrameStatisticsByPortType *)a3 initWithPortTypes:v8 autoFocusRecommendedPrimaryPortTypeEnabled:v7];
    }

    v6->_portTypes = a3;
    v6->_portTypeToFrameStatistics = [v7 copy];
    v6->_frameStatisticsStoragesForPortTypes = v8;
    v6->_autoFocusRecommendedPrimaryPortTypeEnabled = a4;
  }

  return v6;
}

- (void)dealloc
{
  free(self->_frameStatisticsStoragesForPortTypes);
  v3.receiver = self;
  v3.super_class = BWFrameStatisticsByPortType;
  [(BWFrameStatisticsByPortType *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v25 = v3;
    v26 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_frameCount == *(a3 + 4) && self->_adrcExposureRealizedGain == *(a3 + 10) && self->_autoFocusRecommendedPrimaryPortTypeEnabled == *(a3 + 44) && (v7 = -[NSDictionary count](self->_portTypeToFrameStatistics, "count"), (([*(a3 + 2) count] ^ v7) & 0x7FFFFFFFFFFFFFFLL) == 0))
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      portTypeToFrameStatistics = self->_portTypeToFrameStatistics;
      v10 = [(NSDictionary *)portTypeToFrameStatistics countByEnumeratingWithState:&v21 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
LABEL_12:
        v13 = 0;
        while (1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(portTypeToFrameStatistics);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          v8 = [*(a3 + 2) objectForKeyedSubscript:v14];
          if (!v8)
          {
            break;
          }

          v15 = [-[NSDictionary objectForKeyedSubscript:](self->_portTypeToFrameStatistics objectForKeyedSubscript:{v14), "aeStatistics"}];
          v16 = [objc_msgSend(*(a3 + 2) objectForKeyedSubscript:{v14), "aeStatistics"}];
          if (v15 != v16)
          {
            LODWORD(v8) = [v15 isEqualToDictionary:v16];
            if (!v8)
            {
              break;
            }
          }

          v17 = [-[NSDictionary objectForKeyedSubscript:](self->_portTypeToFrameStatistics objectForKeyedSubscript:{v14), "displayStrobeRGBEstimate"}];
          v18 = [objc_msgSend(*(a3 + 2) objectForKeyedSubscript:{v14), "displayStrobeRGBEstimate"}];
          if (v17 != v18)
          {
            LODWORD(v8) = [v17 isEqualToArray:v18];
            if (!v8)
            {
              break;
            }
          }

          if (v11 == ++v13)
          {
            v11 = [(NSDictionary *)portTypeToFrameStatistics countByEnumeratingWithState:&v21 objects:v20 count:16];
            if (v11)
            {
              goto LABEL_12;
            }

            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        LOBYTE(v8) = memcmp(self->_frameStatisticsStoragesForPortTypes, *(a3 + 3), 288 * v7) == 0;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (BWFrameStatisticsByPortType)initWithCoder:(id)a3
{
  v5 = MEMORY[0x1E695DFD8];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v6 = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v34, 2)), @"portTypes"}];
  v33 = 0;
  v7 = [a3 decodeBytesForKey:@"frameStatisticsStoragesForPortTypes" returnedLength:&v33];
  v8 = v33;
  if (v8 == 288 * [v6 count])
  {
    v9 = [(BWFrameStatisticsByPortType *)self initWithPortTypes:v6];
    v10 = v9;
    if (v9)
    {
      memcpy(v9->_frameStatisticsStoragesForPortTypes, v7, v33);
      v10->_frameCount = [a3 decodeInt64ForKey:@"frameCount"];
      [a3 decodeFloatForKey:@"adrcExposureRealizedGain"];
      v10->_adrcExposureRealizedGain = v11;
      v10->_autoFocusRecommendedPrimaryPortTypeEnabled = [a3 decodeBoolForKey:@"AFRecommendedPrimaryPortTypeEnabled"];
      v12 = MEMORY[0x1E695DFD8];
      v32[0] = objc_opt_class();
      v32[1] = objc_opt_class();
      v32[2] = objc_opt_class();
      v32[3] = objc_opt_class();
      v32[4] = objc_opt_class();
      v13 = [a3 decodeObjectOfClasses:objc_msgSend(v12 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v32, 5)), @"AEStatisticsByPortType"}];
      v14 = MEMORY[0x1E695DFD8];
      v31[0] = objc_opt_class();
      v31[1] = objc_opt_class();
      v31[2] = objc_opt_class();
      v31[3] = objc_opt_class();
      v15 = [a3 decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v31, 4)), @"DisplayStrobeRGBEstimateByPortType"}];
      v16 = MEMORY[0x1E695DFD8];
      v30[0] = objc_opt_class();
      v30[1] = objc_opt_class();
      v30[2] = objc_opt_class();
      v17 = [a3 decodeObjectOfClasses:objc_msgSend(v16 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v30, 3)), @"ColorCorrectionMatrixByPortType"}];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      portTypeToFrameStatistics = v10->_portTypeToFrameStatistics;
      v19 = [(NSDictionary *)portTypeToFrameStatistics countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v27;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(portTypeToFrameStatistics);
            }

            v23 = *(*(&v26 + 1) + 8 * i);
            [-[NSDictionary objectForKeyedSubscript:](v10->_portTypeToFrameStatistics objectForKeyedSubscript:{v23), "_setAEStatistics:", objc_msgSend(v13, "objectForKeyedSubscript:", v23)}];
            [-[NSDictionary objectForKeyedSubscript:](v10->_portTypeToFrameStatistics objectForKeyedSubscript:{v23), "_setDisplayStrobeRGBEstimate:", objc_msgSend(v15, "objectForKeyedSubscript:", v23)}];
            [-[NSDictionary objectForKeyedSubscript:](v10->_portTypeToFrameStatistics objectForKeyedSubscript:{v23), "_setColorCorrectionMatrix:", objc_msgSend(v17, "objectForKeyedSubscript:", v23)}];
          }

          v20 = [(NSDictionary *)portTypeToFrameStatistics countByEnumeratingWithState:&v26 objects:v25 count:16];
        }

        while (v20);
      }
    }
  }

  else
  {

    return 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_portTypes forKey:@"portTypes"];
  [a3 encodeBytes:self->_frameStatisticsStoragesForPortTypes length:288 * -[NSDictionary count](self->_portTypeToFrameStatistics forKey:{"count"), @"frameStatisticsStoragesForPortTypes"}];
  [a3 encodeInt64:self->_frameCount forKey:@"frameCount"];
  *&v5 = self->_adrcExposureRealizedGain;
  [a3 encodeFloat:@"adrcExposureRealizedGain" forKey:v5];
  [a3 encodeBool:self->_autoFocusRecommendedPrimaryPortTypeEnabled forKey:@"AFRecommendedPrimaryPortTypeEnabled"];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  portTypeToFrameStatistics = self->_portTypeToFrameStatistics;
  v10 = [(NSDictionary *)portTypeToFrameStatistics countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(portTypeToFrameStatistics);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        [v6 setObject:objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_portTypeToFrameStatistics forKeyedSubscript:{"objectForKeyedSubscript:", v14), "aeStatistics"), v14}];
        [v7 setObject:objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_portTypeToFrameStatistics forKeyedSubscript:{"objectForKeyedSubscript:", v14), "displayStrobeRGBEstimate"), v14}];
        [v8 setObject:objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_portTypeToFrameStatistics forKeyedSubscript:{"objectForKeyedSubscript:", v14), "colorCorrectionMatrix"), v14}];
      }

      v11 = [(NSDictionary *)portTypeToFrameStatistics countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v11);
  }

  if ([v6 count])
  {
    [a3 encodeObject:v6 forKey:@"AEStatisticsByPortType"];
  }

  if ([v7 count])
  {
    [a3 encodeObject:v7 forKey:@"DisplayStrobeRGBEstimateByPortType"];
  }

  if ([v8 count])
  {
    [a3 encodeObject:v8 forKey:@"ColorCorrectionMatrixByPortType"];
  }
}

- (void)updateWithFrameMetadata:(id)a3 updateFocusDistance:(BOOL)a4
{
  if (a3)
  {
    memset(&v26, 0, sizeof(v26));
    CMTimeMakeFromDictionary(&v26, [a3 objectForKeyedSubscript:*off_1E798A420]);
    v6 = -[NSDictionary objectForKeyedSubscript:](self->_portTypeToFrameStatistics, "objectForKeyedSubscript:", [a3 objectForKeyedSubscript:*off_1E798B540]);
    v27 = v26;
    fs_updateFrameStatisticsWithFrameMetadata(v6, a3);
    v20 = a3;
    v7 = [a3 objectForKeyedSubscript:*off_1E798B730];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      v11 = *off_1E798A0E8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if (([v13 isEqualToString:v11] & 1) == 0)
          {
            v14 = [(NSDictionary *)self->_portTypeToFrameStatistics objectForKeyedSubscript:v13];
            v15 = [v7 objectForKeyedSubscript:v13];
            v27 = v26;
            fs_updateFrameStatisticsWithFrameMetadata(v14, v15);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v21 count:16];
      }

      while (v9);
    }

    if (self->_autoFocusRecommendedPrimaryPortTypeEnabled)
    {
      if ([objc_msgSend(v20 objectForKeyedSubscript:{*off_1E798B710), "BOOLValue"}])
      {
        [(BWFrameStatisticsByPortType *)self _updateAutoFocusRecommendedPortTypesWithFrameMetadata:v20];
      }
    }

    ++self->_frameCount;
    [objc_msgSend(v20 objectForKeyedSubscript:{@"ADRCExposureRealizedGain", "floatValue"}];
    self->_adrcExposureRealizedGain = v16;
  }

  else
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v19 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v19, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWFrameStatistics.m", 680, @"LastShownDate:BWFrameStatistics.m:680", @"LastShownBuild:BWFrameStatistics.m:680", 0);
    free(v19);
  }
}

- (void)reset
{
  bzero(self->_frameStatisticsStoragesForPortTypes, 288 * [(NSDictionary *)self->_portTypeToFrameStatistics count]);
  self->_frameCount = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  portTypeToFrameStatistics = self->_portTypeToFrameStatistics;
  v4 = [(NSDictionary *)portTypeToFrameStatistics countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(portTypeToFrameStatistics);
        }

        [(BWFrameStatistics *)[(NSDictionary *)self->_portTypeToFrameStatistics objectForKeyedSubscript:*(*(&v9 + 1) + 8 * i)] reset];
      }

      v5 = [(NSDictionary *)portTypeToFrameStatistics countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@ : %p> Frame count: %lld\n", NSStringFromClass(v4), self, self->_frameCount];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  portTypeToFrameStatistics = self->_portTypeToFrameStatistics;
  v7 = [(NSDictionary *)portTypeToFrameStatistics countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(portTypeToFrameStatistics);
        }

        [v5 appendFormat:@"%@\n", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_portTypeToFrameStatistics, "objectForKeyedSubscript:", *(*(&v13 + 1) + 8 * i)), "description")];
      }

      v8 = [(NSDictionary *)portTypeToFrameStatistics countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }

  return v5;
}

- (uint64_t)_updateAutoFocusRecommendedPortTypesWithFrameMetadata:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [a2 objectForKeyedSubscript:*off_1E798B198];
    if (!v4)
    {
      v4 = [a2 objectForKeyedSubscript:*off_1E798B540];
    }

    v5 = [a2 objectForKeyedSubscript:*off_1E798B170];
    if ((_NSIsNSCFConstantString() & 1) != 0 || (v6 = *off_1E798A0D8, v14[0] = *off_1E798A0C0, v14[1] = v6, v7 = *off_1E798A0E0, v14[2] = *off_1E798A0D0, v14[3] = v7, v14[4] = *off_1E798A0F8, v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5], result = objc_msgSend(v8, "indexOfObject:", v4), result != 0x7FFFFFFFFFFFFFFFLL) && (result = objc_msgSend(v8, "objectAtIndexedSubscript:", result), (v4 = result) != 0))
    {
      if (v5 && !_NSIsNSCFConstantString())
      {
        v5 = 0;
      }

      result = [*(v3 + 16) objectForKeyedSubscript:v4];
      if (result)
      {
        if (!v5 || (result = [*(v3 + 16) objectForKeyedSubscript:v5]) != 0)
        {
          v9 = *(v3 + 16);
          OUTLINED_FUNCTION_43();
          result = [v9 countByEnumeratingWithState:? objects:? count:?];
          if (result)
          {
            v10 = result;
            v11 = MEMORY[0];
            do
            {
              v12 = 0;
              do
              {
                if (MEMORY[0] != v11)
                {
                  objc_enumerationMutation(v9);
                }

                if (v4)
                {
                  if (([v4 isEqual:{*(objc_msgSend(OUTLINED_FUNCTION_3_71(), "frameStatisticsStorage") + 224)}] & 1) == 0)
                  {
                    v13 = mach_absolute_time();
                    *([OUTLINED_FUNCTION_3_71() frameStatisticsStorage] + 232) = v13;
                  }
                }

                *([OUTLINED_FUNCTION_3_71() frameStatisticsStorage] + 224) = v4;
                *([OUTLINED_FUNCTION_3_71() frameStatisticsStorage] + 240) = v5;
                ++v12;
              }

              while (v10 != v12);
              OUTLINED_FUNCTION_43();
              result = [v9 countByEnumeratingWithState:? objects:? count:?];
              v10 = result;
            }

            while (result);
          }
        }
      }
    }
  }

  return result;
}

- (void)copyTo:(id)a3
{
  v5 = [(NSDictionary *)self->_portTypeToFrameStatistics count];
  if (v5 == [*(a3 + 2) count])
  {
    memcpy(*(a3 + 3), self->_frameStatisticsStoragesForPortTypes, 288 * v5);
    *(a3 + 4) = self->_frameCount;
    *(a3 + 44) = self->_autoFocusRecommendedPrimaryPortTypeEnabled;
    portTypes = self->_portTypes;
    OUTLINED_FUNCTION_43();
    v7 = [NSArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(portTypes);
          }

          v11 = *(8 * i);
          v12 = [(NSDictionary *)self->_portTypeToFrameStatistics objectForKeyedSubscript:v11];
          v13 = [*(a3 + 2) objectForKeyedSubscript:v11];
          [v13 _setAEStatistics:{objc_msgSend(v12, "aeStatistics")}];
          [v13 _setDisplayStrobeRGBEstimate:{objc_msgSend(v12, "displayStrobeRGBEstimate")}];
          [v13 _setColorCorrectionMatrix:{objc_msgSend(v12, "colorCorrectionMatrix")}];
        }

        OUTLINED_FUNCTION_43();
        v8 = [NSArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
      }

      while (v8);
    }
  }
}

- (unint64_t)initWithPortTypes:(void *)a3 autoFocusRecommendedPrimaryPortTypeEnabled:.cold.1(void *a1, uint64_t a2, void *a3)
{
  v6 = 0;
  do
  {
    v7 = -[BWFrameStatistics initWthPortType:storage:]([BWFrameStatistics alloc], [a1 objectAtIndexedSubscript:v6], a2);
    [a3 setObject:v7 forKeyedSubscript:{objc_msgSend(a1, "objectAtIndexedSubscript:", v6)}];

    ++v6;
    result = [a1 count];
    a2 += 288;
  }

  while (result > v6);
  return result;
}

@end