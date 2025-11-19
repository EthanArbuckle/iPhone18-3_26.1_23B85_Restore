@interface ENExposureCalculationSession
- ($6B14AE857B43CEDA041F2BA42EED81B6)scanInstanceFromAdvertisement:(SEL)a3 key:(id)a4;
- (BOOL)_shouldMatchKey:(id)a3;
- (id)attenuationDurationMapDataForExposureWindows:(id)a3;
- (id)cachedExposuresDifferentialPrivacyRiskParameters;
- (id)exposureInfoForExposureWindows:(id)a3 key:(id)a4;
- (id)exposureInfoForMatchedAdvertisements:(id)a3 key:(id)a4;
- (id)exposureInfosForEachExposureWindow:(id)a3 key:(id)a4;
- (id)exposureWindowsForMatchedAdvertisements:(id)a3 key:(id)a4 options:(int64_t)a5;
- (id)filterAdvertisements:(id)a3 fromKey:(id)a4;
- (id)groupExposureWindowsByDay:(id)a3;
- (id)groupExposureWindowsByInfectiousness:(id)a3;
- (unsigned)weightedAttenuationValueForDurations:(unsigned int *)a3;
- (void)dealloc;
- (void)enumerateCachedExposureInfo:(id)a3 inRange:(_NSRange)a4 withBatchSize:(unsigned int)a5;
- (void)enumerateCachedExposureWindows:(id)a3 inRange:(_NSRange)a4 withBatchSize:(unsigned int)a5 options:(int64_t)a6;
- (void)setExposureConfiguration:(id)a3;
@end

@implementation ENExposureCalculationSession

- (void)dealloc
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 64) description];
  v3 = v4;
  [v4 UTF8String];
  LogPrintF_safe();
}

- (void)setExposureConfiguration:(id)a3
{
  v4 = [a3 copy];
  exposureConfiguration = self->_exposureConfiguration;
  self->_exposureConfiguration = v4;

  v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v7 = [v6 isSensitiveLoggingAllowed];

  if (v7 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
  {
    [ENExposureCalculationSession setExposureConfiguration:?];
  }

  v18 = [(ENExposureConfiguration *)self->_exposureConfiguration attenuationDurationThresholds];
  v8 = [v18 count];
  if ((v8 & 0xFE) == 2)
  {
    v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v10 = [v9 isSensitiveLoggingAllowed];

    if (v10 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureCalculationSession setExposureConfiguration:v18];
    }

    v11 = v8;
    v12 = v18;
    if (v8)
    {
      v13 = 0;
      attenuationDurationThresholds = self->_attenuationDurationThresholds;
      do
      {
        v15 = [v12 objectAtIndex:v13];
        v16 = [v15 unsignedIntValue];

        v12 = v18;
        attenuationDurationThresholds[v13++] = v16;
      }

      while (v11 != v13);
    }
  }

  else
  {
    v12 = v18;
    if (gLogCategory__ENExposureCalculationSession <= 90)
    {
      if (gLogCategory__ENExposureCalculationSession != -1 || (v17 = _LogCategory_Initialize(), v12 = v18, v17))
      {
        [ENExposureCalculationSession setExposureConfiguration:];
        v12 = v18;
      }
    }
  }
}

- (unsigned)weightedAttenuationValueForDurations:(unsigned int *)a3
{
  v4 = [(ENExposureConfiguration *)self->_exposureConfiguration attenuationLevelValues];
  if ([v4 count] == 8)
  {
    v5 = v4;
  }

  else
  {
    if (gLogCategory__ENExposureCalculationSession <= 90 && (gLogCategory__ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureCalculationSession weightedAttenuationValueForDurations:v4];
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB10]);
    v6 = 8;
    do
    {
      [v5 addObject:&unk_285D6E580];
      --v6;
    }

    while (v6);
  }

  v7 = 0;
  v8 = 0;
  v9 = 0.0;
  do
  {
    v10 = a3[v7];
    v11 = [v5 objectAtIndexedSubscript:v7];
    [v11 doubleValue];
    v13 = v12 * v10;

    if (v13 == 0.0)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10;
    }

    v8 += v14;
    if (v13 != 0.0)
    {
      v9 = v9 + v13;
    }

    ++v7;
  }

  while (v7 != 8);
  if (v8)
  {
    v9 = round(v9 / v8);
  }

  v15 = 255.0;
  if (v9 <= 255.0)
  {
    v15 = v9;
  }

  v16 = v15;

  return v16;
}

- (id)exposureInfoForExposureWindows:(id)a3 key:(id)a4
{
  v51[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v51[0] = 0;
  v51[1] = 0;
  memset(v50, 0, sizeof(v50));
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v6;
  v38 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
  v35 = self;
  v8 = 0;
  if (v38)
  {
    v37 = *v45;
    attenuationDurationThresholds = self->_attenuationDurationThresholds;
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(v6);
        }

        v39 = v10;
        v11 = *(*(&v44 + 1) + 8 * v10);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v12 = [v11 scanInstances];
        v13 = [v12 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v41;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v41 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v40 + 1) + 8 * i);
              v18 = [v17 secondsSinceLastScan];
              v8 += v18;
              v19 = [v17 typicalAttenuation];
              v20 = 0;
              while (v19 > attenuationDurationThresholds[v20])
              {
                if (++v20 == 4)
                {
                  goto LABEL_16;
                }
              }

              *(v51 + v20) += v18;
LABEL_16:
              v21 = &byte_24A28BFB8;
              v22 = 28;
              while (1)
              {
                v23 = *v21++;
                if (v19 <= v23)
                {
                  break;
                }

                v22 -= 4;
                if (v22 == -4)
                {
                  goto LABEL_21;
                }
              }

              *(v50 + v22) += v18;
LABEL_21:
              ;
            }

            v14 = [v12 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v14);
        }

        v10 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v38);
  }

  v24 = [(ENExposureCalculationSession *)v35 weightedAttenuationValueForDurations:v50, v35];
  v25 = objc_alloc_init(MEMORY[0x277CBEB10]);
  for (j = 0; j != 16; j += 4)
  {
    if (*(v51 + j) >= 0xFFFFu)
    {
      v27 = 0xFFFF;
    }

    else
    {
      v27 = *(v51 + j);
    }

    *(v51 + j) = v27;
    v28 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:?];
    [v25 addObject:v28];
  }

  if (v8 >= 0xFFFF)
  {
    v29 = 0xFFFF;
  }

  else
  {
    v29 = v8;
  }

  v30 = [v7 rollingStartNumber];
  v31 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:(86400 * (600 * v30 / 0x15180u))];
  v32 = objc_alloc_init(MEMORY[0x277CC5C60]);
  [v32 setDate:v31];
  [v32 setAttenuationValue:v24];
  [v32 setDuration:v29];
  [v32 setAttenuationDurations:v25];
  [v32 setTransmissionRiskLevel:{objc_msgSend(v7, "transmissionRiskLevel")}];
  [v32 setDiagnosisReportType:{objc_msgSend(v7, "diagnosisReportType")}];
  [v32 setDaysSinceOnsetOfSymptoms:{objc_msgSend(v7, "daysSinceOnsetOfSymptoms")}];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)exposureInfosForEachExposureWindow:(id)a3 key:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v41 = a4;
  v40 = [MEMORY[0x277CBEB10] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v5;
  v42 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v42)
  {
    v38 = *v50;
    do
    {
      v6 = 0;
      do
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v49 + 1) + 8 * v6);
        v55[0] = 0;
        v55[1] = 0;
        memset(v54, 0, sizeof(v54));
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v43 = v7;
        v44 = v6;
        v8 = [v7 scanInstances];
        v9 = [v8 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v46;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v46 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v45 + 1) + 8 * i);
              v15 = [v14 secondsSinceLastScan];
              v11 += v15;
              v16 = [v14 typicalAttenuation];
              v17 = 0;
              while (v16 > self->_attenuationDurationThresholds[v17])
              {
                if (++v17 == 4)
                {
                  goto LABEL_16;
                }
              }

              *(v55 + v17) += v15;
LABEL_16:
              v18 = &byte_24A28BFB8;
              v19 = 28;
              while (1)
              {
                v20 = *v18++;
                if (v16 <= v20)
                {
                  break;
                }

                v19 -= 4;
                if (v19 == -4)
                {
                  goto LABEL_21;
                }
              }

              *(v54 + v19) += v15;
LABEL_21:
              ;
            }

            v10 = [v8 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v10);
        }

        else
        {
          v11 = 0;
        }

        v21 = [(ENExposureCalculationSession *)self weightedAttenuationValueForDurations:v54];
        v22 = objc_alloc_init(MEMORY[0x277CBEB10]);
        for (j = 0; j != 16; j += 4)
        {
          if (*(v55 + j) >= 0xFFFFu)
          {
            v24 = 0xFFFF;
          }

          else
          {
            v24 = *(v55 + j);
          }

          *(v55 + j) = v24;
          v25 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:?];
          [v22 addObject:v25];
        }

        if (v11 >= 0xFFFF)
        {
          v26 = 0xFFFF;
        }

        else
        {
          v26 = v11;
        }

        v27 = [v41 rollingStartNumber];
        v28 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:(86400 * (600 * v27 / 0x15180u))];
        v29 = objc_alloc_init(MEMORY[0x277CC5C60]);
        [v29 setDate:v28];
        [v29 setAttenuationValue:v21];
        [v29 setDuration:v26];
        [v29 setAttenuationDurations:v22];
        [v29 setTransmissionRiskLevel:{objc_msgSend(v41, "transmissionRiskLevel")}];
        [v29 setDiagnosisReportType:{objc_msgSend(v41, "diagnosisReportType")}];
        [v29 setDaysSinceOnsetOfSymptoms:{objc_msgSend(v41, "daysSinceOnsetOfSymptoms")}];
        v30 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v31 = [v30 isSensitiveLoggingAllowed];

        if ((v31 & 1) != 0 && gLogCategory_ENExposureCalculationSession <= 10 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
        {
          v35 = v43;
          v36 = v29;
          LogPrintF_safe();
        }

        [v40 addObject:{v29, v35, v36}];

        v6 = v44 + 1;
      }

      while (v44 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v42);
  }

  v32 = [v40 copy];
  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)exposureInfoForMatchedAdvertisements:(id)a3 key:(id)a4
{
  v6 = a4;
  v7 = [(ENExposureCalculationSession *)self exposureWindowsForMatchedAdvertisements:a3 key:v6 options:1];
  if (v7)
  {
    v8 = [(ENExposureCalculationSession *)self exposureInfoForExposureWindows:v7 key:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)enumerateCachedExposureInfo:(id)a3 inRange:(_NSRange)a4 withBatchSize:(unsigned int)a5
{
  length = a4.length;
  location = a4.location;
  v38 = a3;
  if (length)
  {
    cachedScanInstanceCount = self->_cachedScanInstanceCount;
    if (location >= cachedScanInstanceCount)
    {
      v34 = [MEMORY[0x277CCA888] currentHandler];
      [v34 handleFailureInMethod:a2 object:self file:@"ENExposureCalculationSession.m" lineNumber:599 description:{@"Invalid parameter not satisfying: %@", @"range.location < _cachedScanInstanceCount"}];

      cachedScanInstanceCount = self->_cachedScanInstanceCount;
    }

    v35 = a2;
    v11 = 0;
    if (cachedScanInstanceCount)
    {
      scanInstanceBuffer = self->_scanInstanceBuffer;
      while (1)
      {
        var0 = scanInstanceBuffer->var0;
        scanInstanceBuffer = (scanInstanceBuffer + 16);
        if (location <= var0)
        {
          break;
        }

        if (cachedScanInstanceCount == ++v11)
        {
          v11 = cachedScanInstanceCount;
          break;
        }
      }
    }

    v41 = objc_alloc_init(MEMORY[0x277CBEB10]);
    v37 = location + length;
    if (location < location + length)
    {
      v36 = a5;
      do
      {
        v14 = objc_autoreleasePoolPush();
        cachedExposureWindowMetadataCount = self->_cachedExposureWindowMetadataCount;
        context = v14;
        v40 = location + v36;
        if (location + v36 <= cachedExposureWindowMetadataCount)
        {
          v16 = v36;
        }

        else
        {
          v16 = cachedExposureWindowMetadataCount - location;
        }

        v17 = v16 + location;
        if (location >= v16 + location)
        {
          v18 = v11;
        }

        else
        {
          v18 = v11;
          do
          {
            v19 = self->_cachedScanInstanceCount;
            if (v11 < v19)
            {
              v20 = &self->_scanInstanceBuffer->var0 + 4 * v11;
              v18 = v11;
              while (1)
              {
                v21 = *v20;
                v20 += 4;
                if (location != v21)
                {
                  break;
                }

                if (v19 == ++v18)
                {
                  v18 = self->_cachedScanInstanceCount;
                  break;
                }
              }
            }

            if (location >= self->_cachedExposureWindowMetadataCount)
            {
              [ENExposureCalculationSession enumerateCachedExposureInfo:v35 inRange:self withBatchSize:?];
            }

            v22 = &self->_exposureWindowMetadataBuffer[location];
            var1 = v22->var1;
            var2 = v22->var2;
            var3 = v22->var3;
            var4 = v22->var4;
            var5 = v22->var5;
            v28 = *(&v22->var5 + 1);
            v29 = (self->_scanInstanceBuffer + 16 * v11);
            *&v43 = *&v22->var0;
            v42 = v43;
            *(&v43 + 1) = var1;
            v44 = var2;
            v45 = var3;
            v46 = var4;
            v47 = var5;
            v48 = v28;
            v30 = exposureWindowsForScanInstances(v29, (v18 - v11), &v43, 0, 0, 1800.0);
            v31 = objc_alloc_init(MEMORY[0x277CC5D28]);
            [v31 setRollingStartNumber:v42];
            [v31 setTransmissionRiskLevel:var2];
            [v31 setDaysSinceOnsetOfSymptoms:var1];
            [v31 setDiagnosisReportType:var3];
            [v31 setVariantOfConcernType:var5];
            v32 = [(ENExposureCalculationSession *)self exposureConfiguration];
            LOBYTE(var3) = [v32 flags];

            if ((var3 & 2) != 0)
            {
              if (gLogCategory__ENExposureCalculationSession <= 50 && (gLogCategory__ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
              {
                [ENExposureCalculationSession enumerateCachedExposureInfo:inRange:withBatchSize:];
              }

              v33 = [(ENExposureCalculationSession *)self exposureInfosForEachExposureWindow:v30 key:v31];
              [v41 addObjectsFromArray:v33];
            }

            else
            {
              v33 = [(ENExposureCalculationSession *)self exposureInfoForExposureWindows:v30 key:v31];
              [v41 addObject:v33];
            }

            ++location;
            v11 = v18;
          }

          while (location < v17);
        }

        v38[2](v38, v41, 0);
        [v41 removeAllObjects];
        objc_autoreleasePoolPop(context);
        v11 = v18;
        location = v40;
      }

      while (v40 < v37);
    }
  }
}

- (id)filterAdvertisements:(id)a3 fromKey:(id)a4
{
  v111 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 rollingPeriod];
  v9 = v8;
  if (v8 >= 0x91)
  {
    v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v11 = [v10 isSensitiveLoggingAllowed];

    if (v11 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureCalculationSession filterAdvertisements:fromKey:];
    }

    v12 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v13 = [v12 isRPILoggingAllowed];

    if (!v13)
    {
      v90 = MEMORY[0x277CBEBF0];
      goto LABEL_116;
    }

    if (gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureCalculationSession filterAdvertisements:fromKey:];
    }

    goto LABEL_91;
  }

  v14 = malloc_type_malloc(16 * v8, 0x1000040451B5BE8uLL);
  if (!v14)
  {
    if (gLogCategory__ENExposureCalculationSession <= 90 && (gLogCategory__ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureCalculationSession filterAdvertisements:fromKey:];
    }

LABEL_91:
    v90 = MEMORY[0x277CBEBF0];
    goto LABEL_116;
  }

  v15 = v14;
  v91 = self;
  v16 = v9;
  v88 = v7;
  [v7 deriveRollingProximityIdentifiersWithBuffer:v14 count:v9];
  v17 = objc_alloc_init(MEMORY[0x277CBEB10]);
  if (v9)
  {
    v18 = v15;
    do
    {
      v19 = *v18++;
      v110 = v19;
      v20 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBytes:&v110 length:16];
      [v17 addObject:v20];

      --v16;
    }

    while (v16);
  }

  v94 = v17;
  free(v15);
  v21 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v87 = v6;
  v22 = v6;
  v23 = [v22 countByEnumeratingWithState:&v103 objects:v109 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v104;
    do
    {
      v26 = 0;
      do
      {
        if (*v104 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v103 + 1) + 8 * v26);
        v28 = [v27 rpi];
        v29 = [v94 containsObject:v28];

        if (v29)
        {
          [v21 addObject:v27];
        }

        else
        {
          v30 = +[ENLoggingPrefs sharedENLoggingPrefs];
          v31 = [v30 isSensitiveLoggingAllowed];

          if (v31 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            [ENExposureCalculationSession filterAdvertisements:fromKey:];
          }

          v32 = +[ENLoggingPrefs sharedENLoggingPrefs];
          v33 = [v32 isRPILoggingAllowed];

          if (v33 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            [ENExposureCalculationSession filterAdvertisements:fromKey:];
          }
        }

        ++v26;
      }

      while (v24 != v26);
      v34 = [v22 countByEnumeratingWithState:&v103 objects:v109 count:16];
      v24 = v34;
    }

    while (v34);
  }

  v89 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = v21;
  v35 = [obj countByEnumeratingWithState:&v99 objects:v108 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v100;
    do
    {
      v38 = 0;
      do
      {
        if (*v100 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v99 + 1) + 8 * v38);
        v40 = [v39 decryptedMetadataForTemporaryExposureKey:{v88, v85, v86}];
        v41 = [v39 saturated];
        v42 = [v40 attenuationForRSSI:objc_msgSend(v39 saturated:{"typicalRSSI"), v41}];
        v43 = [v40 attenuationForRSSI:objc_msgSend(v39 saturated:{"maxRSSI"), v41}];
        if ([v40 txPower] >= -60 && objc_msgSend(v40, "txPower") < 21)
        {
          if (v42)
          {
            if (v43)
            {
              v48 = [v39 counter];
              v49 = [(NSNumber *)v91->_advertisementSampleCountThreshold unsignedShortValue];
              if (v48 >= v49)
              {
                [v89 addObject:v39];
              }

              else
              {
                v50 = v49;
                v51 = +[ENLoggingPrefs sharedENLoggingPrefs];
                v52 = [v51 isSensitiveLoggingAllowed];

                if (v52 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
                {
                  v85 = v48;
                  v86 = v50;
                  LogPrintF_safe();
                }
              }
            }

            else
            {
              v57 = +[ENLoggingPrefs sharedENLoggingPrefs];
              v58 = [v57 isSensitiveLoggingAllowed];

              if (v58 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
              {
                [ENExposureCalculationSession filterAdvertisements:fromKey:];
              }

              v59 = +[ENLoggingPrefs sharedENLoggingPrefs];
              v60 = [v59 isRPILoggingAllowed];

              if (v60 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
              {
                [ENExposureCalculationSession filterAdvertisements:fromKey:];
              }
            }
          }

          else
          {
            v53 = +[ENLoggingPrefs sharedENLoggingPrefs];
            v54 = [v53 isSensitiveLoggingAllowed];

            if (v54 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
            {
              [ENExposureCalculationSession filterAdvertisements:fromKey:];
            }

            v55 = +[ENLoggingPrefs sharedENLoggingPrefs];
            v56 = [v55 isRPILoggingAllowed];

            if (v56 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
            {
              [ENExposureCalculationSession filterAdvertisements:fromKey:];
            }
          }
        }

        else
        {
          v44 = +[ENLoggingPrefs sharedENLoggingPrefs];
          v45 = [v44 isSensitiveLoggingAllowed];

          if (v45 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            [ENExposureCalculationSession filterAdvertisements:fromKey:];
          }

          v46 = +[ENLoggingPrefs sharedENLoggingPrefs];
          v47 = [v46 isRPILoggingAllowed];

          if (v47 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            [ENExposureCalculationSession filterAdvertisements:v40 fromKey:?];
          }
        }

        ++v38;
      }

      while (v36 != v38);
      v61 = [obj countByEnumeratingWithState:&v99 objects:v108 count:16];
      v36 = v61;
    }

    while (v61);
  }

  v62 = objc_alloc_init(MEMORY[0x277CBEB30]);
  v90 = objc_alloc_init(MEMORY[0x277CBEB10]);
  [(NSNumber *)v91->_allowedRPIBroadcastDuration floatValue];
  if (v63 >= 1200.0)
  {
    v65 = 1200.0;
  }

  else
  {
    [(NSNumber *)v91->_allowedRPIBroadcastDuration floatValue];
    v65 = v64;
  }

  [v89 sortedArrayUsingComparator:{&__block_literal_global_7, v85, v86}];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v92 = v98 = 0u;
  v66 = [v92 countByEnumeratingWithState:&v95 objects:v107 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v96;
    do
    {
      v69 = 0;
      do
      {
        if (*v96 != v68)
        {
          objc_enumerationMutation(v92);
        }

        v70 = *(*(&v95 + 1) + 8 * v69);
        v71 = [v70 rpi];
        v72 = [v62 objectForKey:v71];

        if (!v72)
        {
          v73 = MEMORY[0x277CBEAA0];
          [v70 timestamp];
          v72 = [v73 dateWithTimeIntervalSince1970:?];
          v74 = [v70 rpi];
          [v62 setObject:v72 forKey:v74];
        }

        v75 = MEMORY[0x277CBEAA0];
        [v70 timestamp];
        v76 = [v75 dateWithTimeIntervalSince1970:?];
        [v76 timeIntervalSinceDate:v72];
        if (v77 <= v65)
        {
          [v90 addObject:v70];
        }

        else
        {
          v78 = +[ENLoggingPrefs sharedENLoggingPrefs];
          v79 = [v78 isSensitiveLoggingAllowed];

          if (v79 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            [ENExposureCalculationSession filterAdvertisements:fromKey:];
          }

          v80 = +[ENLoggingPrefs sharedENLoggingPrefs];
          v81 = [v80 isRPILoggingAllowed];

          if (v81 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            [ENExposureCalculationSession filterAdvertisements:fromKey:];
          }
        }

        ++v69;
      }

      while (v67 != v69);
      v82 = [v92 countByEnumeratingWithState:&v95 objects:v107 count:16];
      v67 = v82;
    }

    while (v82);
  }

  v6 = v87;
  v7 = v88;
LABEL_116:

  v83 = *MEMORY[0x277D85DE8];

  return v90;
}

- ($6B14AE857B43CEDA041F2BA42EED81B6)scanInstanceFromAdvertisement:(SEL)a3 key:(id)a4
{
  v6 = a4;
  v7 = [v6 decryptedMetadataForTemporaryExposureKey:a5];
  v8 = [v6 saturated];
  [v7 attenuationForRSSI:objc_msgSend(v6 saturated:{"typicalRSSI"), v8}];
  [v7 attenuationForRSSI:objc_msgSend(v6 saturated:{"maxRSSI"), v8}];
  LODWORD(v11) = 0;
  [v6 timestamp];
  HIDWORD(v11) = v9;
  [v6 scanInterval];

  return v11;
}

- (id)exposureWindowsForMatchedAdvertisements:(id)a3 key:(id)a4 options:(int64_t)a5
{
  v5 = a5;
  v74 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v64 = v8;
  if (![(ENExposureCalculationSession *)self _shouldMatchKey:v9])
  {
    v50 = 0;
    goto LABEL_58;
  }

  v62 = v5;
  v63 = [(ENExposureCalculationSession *)self filterAdvertisements:v8 fromKey:v9];
  v10 = v63;
  if ([v63 count])
  {
    v11 = v63;
    v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_7];
    v13 = objc_alloc_init(MEMORY[0x277CBEB10]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v14 = v12;
    v15 = 0;
    v16 = [v14 countByEnumeratingWithState:&v67 objects:&v71 count:16];
    if (v16)
    {
      v17 = *v68;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v68 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v67 + 1) + 8 * i);
          if (v15 && ([*(*(&v67 + 1) + 8 * i) timestamp], v21 = v20, objc_msgSend(v15, "timestamp"), v21 - v22 <= 4.0))
          {
            [v15 combineWithAdvertisement:v19];
          }

          else
          {
            [v13 addObject:v19];
            v23 = v19;

            v15 = v23;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v67 objects:&v71 count:16];
      }

      while (v16);
    }

    if ([v13 count] != 1)
    {
      v24 = 0;
      do
      {
        v25 = [v13 objectAtIndex:v24];
        v26 = [v13 objectAtIndex:++v24];
        [v25 timestamp];
        v28 = v27;
        [v26 timestamp];
        if (v28 > v29 - [v26 scanInterval])
        {
          [v26 timestamp];
          v31 = v30;
          [v25 timestamp];
          [v26 setScanInterval:(v31 - v32)];
        }
      }

      while (v24 < [v13 count] - 1);
    }

    if ([v13 count])
    {
      v33 = [v13 count];
      v34 = malloc_type_calloc(v33, 0x10uLL, 0x1000040451B5BE8uLL);
      v35 = v34;
      if (v34)
      {
        if (v33)
        {
          v36 = 0;
          v37 = v34 + 1;
          do
          {
            v38 = objc_autoreleasePoolPush();
            v39 = [v13 objectAtIndex:v36];
            *(v37 - 1) = [(ENExposureCalculationSession *)self scanInstanceFromAdvertisement:v39 key:v9];
            *v37 = v40;

            objc_autoreleasePoolPop(v38);
            ++v36;
            v37 += 2;
          }

          while (v33 != v36);
        }

        v41 = [v13 lastObject];
        v42 = [v41 decryptedMetadataForTemporaryExposureKey:v9];
        v43 = v9;
        v44 = [v43 rollingStartNumber];
        v61 = [v43 daysSinceOnsetOfSymptoms];
        v60 = [v43 transmissionRiskLevel];
        v59 = [v43 diagnosisReportType];
        v58 = [v43 variantOfConcernType];

        v45 = [v42 calibrationConfidence];
        v46 = v45;
        if ((v62 & 2) != 0)
        {
          v47 = INFINITY;
        }

        else
        {
          v47 = 1800.0;
        }

        if (!self->_cacheExposureWindows && !self->_cacheExposureInfo)
        {
          goto LABEL_55;
        }

        *&v71 = 0;
        *(&v71 + 1) = &v71;
        v72 = 0x2020000000;
        v73 = 0;
        if (self->_cachedScanInstanceCount >= self->_scanInstanceBufferSize)
        {
          if (gLogCategory__ENExposureCalculationSession <= 90 && (gLogCategory__ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          v51 = *(&v71 + 1);
          v52 = *(*(&v71 + 1) + 24) + v33;
          *(*(&v71 + 1) + 24) = v52;
          if (!v52)
          {
            goto LABEL_54;
          }
        }

        else
        {
          cachedExposureWindowMetadataCount = self->_cachedExposureWindowMetadataCount;
          self->_cachedExposureWindowMetadataCount = cachedExposureWindowMetadataCount + 1;
          v49 = &self->_exposureWindowMetadataBuffer[cachedExposureWindowMetadataCount];
          v49->var0 = v44;
          *(&v49->var0 + 1) = 0;
          v49->var1 = v61;
          v49->var2 = v60;
          v49->var3 = v59;
          v49->var4 = v45;
          v49->var5 = v58;
          *(&v49->var5 + 1) = 0;
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __84__ENExposureCalculationSession_exposureWindowsForMatchedAdvertisements_key_options___block_invoke;
          v65[3] = &unk_278FD2AA0;
          v66 = cachedExposureWindowMetadataCount;
          v65[4] = self;
          v65[5] = &v71;
          groupScanInstances(v35, v33, v65, v47);
          if (*(*(&v71 + 1) + 24) && gLogCategory__ENExposureCalculationSession <= 90 && (gLogCategory__ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          v51 = *(&v71 + 1);
          if (!*(*(&v71 + 1) + 24))
          {
            goto LABEL_54;
          }
        }

        if (gLogCategory__ENExposureCalculationSession <= 90)
        {
          if (gLogCategory__ENExposureCalculationSession == -1)
          {
            v53 = _LogCategory_Initialize();
            v51 = *(&v71 + 1);
            if (!v53)
            {
              goto LABEL_53;
            }

            v57 = *(*(&v71 + 1) + 24);
          }

          LogPrintF_safe();
          v51 = *(&v71 + 1);
        }

LABEL_53:
        self->_droppedScanInstanceCount += *(v51 + 24);
LABEL_54:
        _Block_object_dispose(&v71, 8);
LABEL_55:
        exposureConfiguration = self->_exposureConfiguration;
        *&v71 = v44;
        *(&v71 + 1) = v61;
        LOBYTE(v72) = v60;
        BYTE1(v72) = v59;
        BYTE2(v72) = v46;
        BYTE3(v72) = v58;
        HIDWORD(v72) = 0;
        v50 = exposureWindowsForScanInstances(v35, v33, &v71, (v62 & 1) == 0, exposureConfiguration, v47);
        free(v35);

        goto LABEL_56;
      }

      if (gLogCategory__ENExposureCalculationSession <= 90 && (gLogCategory__ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
      {
        [ENExposureCalculationSession exposureWindowsForMatchedAdvertisements:key:options:];
      }
    }

    v50 = 0;
LABEL_56:

    v10 = v63;
    goto LABEL_57;
  }

  v50 = 0;
LABEL_57:

LABEL_58:
  v55 = *MEMORY[0x277D85DE8];

  return v50;
}

uint64_t __84__ENExposureCalculationSession_exposureWindowsForMatchedAdvertisements_key_options___block_invoke(uint64_t result, uint64_t a2, unsigned int a3)
{
  ++*(*(result + 32) + 88);
  if (a3)
  {
    v3 = a3;
    v4 = (a2 + 4);
    do
    {
      v8 = *v4;
      v9 = *(v4 + 2);
      v5 = *(result + 32);
      v6 = *(v5 + 48);
      if (v6 >= *(v5 + 20))
      {
        ++*(*(*(result + 40) + 8) + 24);
      }

      else
      {
        v7 = *(v5 + 40) + 16 * v6;
        *v7 = *(result + 48);
        *(v7 + 4) = v8;
        *(v7 + 12) = v9;
        ++*(*(result + 32) + 48);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

- (BOOL)_shouldMatchKey:(id)a3
{
  v4 = [a3 diagnosisReportType];
  if (v4 == 5)
  {
    return 0;
  }

  else
  {
    return v4 != 4 || self->_allowRecursiveReportType;
  }
}

- (void)enumerateCachedExposureWindows:(id)a3 inRange:(_NSRange)a4 withBatchSize:(unsigned int)a5 options:(int64_t)a6
{
  location = a4.location;
  v41 = a4.location + a4.length;
  v42 = a3;
  cachedExposureWindowCount = self->_cachedExposureWindowCount;
  if (v41 <= cachedExposureWindowCount)
  {
    if ((a6 & 2) != 0)
    {
      v11 = INFINITY;
    }

    else
    {
      v11 = 1800.0;
    }

    if ((a6 & 2) != 0)
    {
      cachedExposureWindowCount = self->_cachedExposureWindowMetadataCount;
    }

    v44 = a5;
    scanInstanceBuffer = self->_scanInstanceBuffer;
    p_scanInstanceBuffer = &self->_scanInstanceBuffer;
    v38 = a2;
    if (location)
    {
      v13 = 0;
      v14 = 0;
      v15 = *&scanInstanceBuffer->var1;
      v16 = *&scanInstanceBuffer->var0;
      v17 = HIDWORD(*&scanInstanceBuffer->var0);
      v46 = self->_scanInstanceBuffer;
      do
      {
        v18 = (scanInstanceBuffer + 16 * v14);
        v20 = *v18;
        v19 = v18[1];
        v21 = v16;
        v22 = v17;
        v23 = v15;
        if (scanInstancesInDifferentWindows(v16 | (v17 << 32), v15, *v18, v19, v11))
        {
          v16 = v20;
          v17 = HIDWORD(v20);
          ++v13;
          v15 = v19;
        }

        else
        {
          v16 = v21;
          v17 = v22;
          v15 = v23;
        }

        if (v13 != location)
        {
          ++v14;
        }

        scanInstanceBuffer = v46;
      }

      while (v13 < location);
    }

    else
    {
      v14 = 0;
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB10]);
    if (location < v41)
    {
      v39 = v44;
      v47 = v24;
      do
      {
        context = objc_autoreleasePoolPush();
        v45 = location + v39;
        if (location + v39 <= cachedExposureWindowCount)
        {
          v25 = v39;
        }

        else
        {
          v25 = cachedExposureWindowCount - location;
        }

        if ([v24 count] >= v25)
        {
          v26 = v14;
        }

        else
        {
          v26 = v14;
          do
          {
            v27 = self->_scanInstanceBuffer;
            v28 = (v27 + 16 * v14);
            v29 = *v28;
            cachedScanInstanceCount = self->_cachedScanInstanceCount;
            if (v14 < cachedScanInstanceCount)
            {
              v31 = v25;
              v32 = a6;
              v33 = v28[1];
              v34 = v28 + 1;
              v26 = v14;
              while (!scanInstancesInDifferentWindows(v29, v33, *(v34 - 1), *v34, v11))
              {
                v34 += 2;
                if (cachedScanInstanceCount == ++v26)
                {
                  v26 = cachedScanInstanceCount;
                  break;
                }
              }

              a6 = v32;
              v25 = v31;
              v24 = v47;
            }

            if (self->_cachedExposureWindowMetadataCount <= v29)
            {
              [ENExposureCalculationSession enumerateCachedExposureWindows:v38 inRange:self withBatchSize:p_scanInstanceBuffer options:&v48];
              v27 = v48;
            }

            v35 = &self->_exposureWindowMetadataBuffer[v29];
            v48 = *&v35->var0;
            v49 = *&v35->var2;
            v36 = exposureWindowsForScanInstances(v27 + 2 * v14, (v26 - v14), &v48, (a6 & 1) == 0, self->_exposureConfiguration, v11);
            [v24 addObjectsFromArray:v36];

            v14 = v26;
          }

          while ([v24 count] < v25);
        }

        v42[2](v42, v24, 0);
        [v24 removeAllObjects];
        objc_autoreleasePoolPop(context);
        location = v45;
        v14 = v26;
      }

      while (v45 < v41);
    }
  }
}

- (id)groupExposureWindowsByDay:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEA88] calendarWithIdentifier:*MEMORY[0x277CBE5B8]];
  v25 = [MEMORY[0x277CBEBA8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:?];
  v5 = [MEMORY[0x277CBEAA0] date];
  v26 = v4;
  v6 = [v4 startOfDayForDate:v5];

  v7 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v8 = 7;
  do
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB10]);
    [v7 addObject:v9];

    --v8;
  }

  while (v8);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [v14 date];
        [v6 timeIntervalSinceDate:v15];
        v17 = v16 / 0x15180;

        v18 = -1;
        v19 = &qword_24A28BFC0;
        do
        {
          v20 = *v19++;
        }

        while (v17 >= v20 && v18++ != 5);
        v22 = [v7 objectAtIndex:v18];
        [v22 addObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)groupExposureWindowsByInfectiousness:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v5 = 3;
  do
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB10]);
    [v4 addObject:v6];

    --v5;
  }

  while (v5);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = 0;
        v13 = *(*(&v17 + 1) + 8 * i);
        while (qword_24A28BFF8[v12] < [v13 infectiousness])
        {
          if (++v12 == 3)
          {
            v12 = 0;
            break;
          }
        }

        v14 = [v4 objectAtIndex:v12];
        [v14 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)attenuationDurationMapDataForExposureWindows:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v33 + 1) + 8 * i) scanInstances];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v7);
  }

  memset(v38, 0, sizeof(v38));
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = 0;
        v17 = *(*(&v29 + 1) + 8 * j);
        do
        {
          v18 = v16 * 8 + 8;
          if (qword_24A28C010[v16] >= [v17 typicalAttenuation])
          {
            break;
          }
        }

        while (v16++ != 7);
        *&v37[v18 + 120] += [v17 secondsSinceLastScan];
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v13);
  }

  v20 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
  v21 = 0;
  v22 = v20;
  do
  {
    v23 = 0;
    v24 = *(v38 + v21);
    v25 = v24;
    while (!v24 || dbl_24A28C050[v23] < v25)
    {
      if (++v23 == 8)
      {
        goto LABEL_26;
      }
    }

    v22[v23] = 1;
LABEL_26:
    ++v21;
    v22 += 8;
  }

  while (v21 != 8);
  v26 = [MEMORY[0x277CBEA98] dataWithBytesNoCopy:v20 length:{64, v25}];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)cachedExposuresDifferentialPrivacyRiskParameters
{
  v35 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__8;
  v31 = __Block_byref_object_dispose__8;
  v32 = 0;
  cachedExposureWindowCount = self->_cachedExposureWindowCount;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __80__ENExposureCalculationSession_cachedExposuresDifferentialPrivacyRiskParameters__block_invoke;
  v26[3] = &unk_278FD2AC8;
  v26[4] = &v27;
  [(ENExposureCalculationSession *)self enumerateCachedExposureWindows:v26 inRange:0 withBatchSize:cachedExposureWindowCount options:cachedExposureWindowCount, 3];
  v4 = [(ENExposureCalculationSession *)self groupExposureWindowsByDay:v28[5]];
  v5 = objc_alloc_init(MEMORY[0x277CBEB20]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(ENExposureCalculationSession *)self groupExposureWindowsByInfectiousness:*(*(&v22 + 1) + 8 * i)];
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v33 count:16];
        if (v11)
        {
          v12 = *v19;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = [(ENExposureCalculationSession *)self attenuationDurationMapDataForExposureWindows:*(*(&v18 + 1) + 8 * j)];
              [v5 appendData:v14];
            }

            v11 = [v10 countByEnumeratingWithState:&v18 objects:v33 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v27, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

void __80__ENExposureCalculationSession_cachedExposuresDifferentialPrivacyRiskParameters__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setExposureConfiguration:(id *)a1 .cold.1(id *a1)
{
  v2 = [*a1 description];
  v1 = v2;
  [v2 UTF8String];
  LogPrintF_safe();
}

- (void)setExposureConfiguration:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  LogPrintF_safe();
}

- (void)enumerateCachedExposureInfo:(uint64_t)a1 inRange:(uint64_t)a2 withBatchSize:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENExposureCalculationSession.m" lineNumber:626 description:{@"Invalid parameter not satisfying: %@", @"metadataIndex < _cachedExposureWindowMetadataCount"}];
}

- (void)enumerateCachedExposureWindows:(uint64_t)a1 inRange:(uint64_t)a2 withBatchSize:(void *)a3 options:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA888] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"ENExposureCalculationSession.m" lineNumber:967 description:{@"Invalid parameter not satisfying: %@", @"metadataIndex < _cachedExposureWindowMetadataCount"}];

  *a4 = *a3;
}

@end