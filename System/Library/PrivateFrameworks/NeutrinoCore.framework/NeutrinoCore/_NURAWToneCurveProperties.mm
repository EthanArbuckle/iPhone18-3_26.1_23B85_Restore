@interface _NURAWToneCurveProperties
- (NSData)boostCurveData;
- (_NURAWToneCurveProperties)initWithToneCurveFilter:(id)filter gainMapTableFilter:(id)tableFilter;
- (float)_curveValueAt:(float)result data:(id)data;
- (float)_inverseCurveValueAt:(float)at data:(id)data;
- (float)baselineExposure;
- (float)boostCurveValueAt:(float)at;
- (float)inverseAggregatedCurveValueAt:(float)at;
- (id)_generateCurveDataFromFilters:(id)filters sampleCount:(unint64_t)count;
- (id)_generateGainMapExposure;
- (id)aggregateCurveData;
- (id)localAverageCurveData;
@end

@implementation _NURAWToneCurveProperties

- (id)_generateGainMapExposure
{
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = self->_rawGainTableMapFilter;
  v4 = self->_rawTRCFilter;
  v6 = v4;
  v7 = 1.0;
  if (v3)
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = 0x1E696A000uLL;
  if (v8)
  {
    v10 = v3;
  }

  else
  {
    if (_generateGainMapExposure_once != -1)
    {
      dispatch_once(&_generateGainMapExposure_once, &__block_literal_global_676);
    }

    v10 = averageLTMFilter(v3);

    v30 = _generateGainMapExposure_s_synthGainInputKernel;
    v11 = *MEMORY[0x1E695FAB0];
    v12 = *MEMORY[0x1E695F918];
    v13 = 1.0;
    v14 = 0.0;
    v15 = -12;
    do
    {
      v16 = objc_autoreleasePoolPush();
      *&v17 = (v13 + v14) * 0.5;
      [*(v9 + 3480) numberWithFloat:v17];
      v19 = v18 = v9;
      v32[0] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      v21 = [v30 applyWithExtent:v20 arguments:{0.0, 0.0, 1.0, 1.0}];

      [v10 setValue:v21 forKey:v11];
      outputImage = [v10 outputImage];

      [v10 setValue:0 forKey:v11];
      [(CIFilter *)v6 setValue:outputImage forKey:v11];
      outputImage2 = [(CIFilter *)v6 outputImage];

      [(CIFilter *)v6 setValue:0 forKey:v11];
      memset(v31, 0, sizeof(v31));
      v24 = _generateGainMapExposure_ctx;
      workingColorSpace = [_generateGainMapExposure_ctx workingColorSpace];
      v26 = v24;
      v9 = v18;
      [v26 render:outputImage2 toBitmap:v31 rowBytes:32 bounds:v12 format:workingColorSpace colorSpace:{0.0, 0.0, 1.0, 1.0}];
      if (*v31 < 0.18)
      {
        v14 = (v13 + v14) * 0.5;
      }

      else
      {
        v13 = (v13 + v14) * 0.5;
      }

      objc_autoreleasePoolPop(v16);
    }

    while (!__CFADD__(v15++, 1));
    v7 = 0.18 / ((v13 + v14) * 0.5);
  }

  *&v5 = v7;
  v28 = [*(v9 + 3480) numberWithFloat:v5];

  return v28;
}

- (float)_inverseCurveValueAt:(float)at data:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy)
  {
    v7 = [dataCopy length];
    bytes = [v6 bytes];
    v9 = *bytes;
    atCopy = 0.0;
    if (*bytes < at)
    {
      v11 = v7 >> 2;
      v12 = (v7 >> 2) - 1;
      v13 = bytes[v12];
      atCopy = 1.0;
      if (v13 > at)
      {
        v14 = 0.0;
        if (v11 >= 3)
        {
          v15 = 0;
          do
          {
            if (bytes[(v15 + v12) / 2] <= at)
            {
              v15 = (v15 + v12) / 2;
            }

            else
            {
              v12 = (v15 + v12) / 2;
            }
          }

          while (v12 - v15 > 1);
          v9 = bytes[v15];
          v13 = bytes[v12];
          v14 = v15;
        }

        atCopy = (((v12 / (v11 - 1)) * (at - v9)) + ((v14 / (v11 - 1)) * (v13 - at))) / (v13 - v9);
      }
    }
  }

  else
  {
    atCopy = at;
  }

  return atCopy;
}

- (float)inverseAggregatedCurveValueAt:(float)at
{
  aggregateCurveData = [(_NURAWToneCurveProperties *)self aggregateCurveData];
  *&v6 = at;
  [(_NURAWToneCurveProperties *)self _inverseCurveValueAt:aggregateCurveData data:v6];
  v8 = v7;

  return v8;
}

- (float)_curveValueAt:(float)result data:(id)data
{
  v4 = result;
  if (data)
  {
    dataCopy = data;
    v6 = [dataCopy length] >> 2;
    bytes = [dataCopy bytes];

    v8 = fminf(fmaxf(v4, 0.0), 1.0) * (v6 - 1);
    v9 = vcvtms_s32_f32(v8);
    v10 = vcvtps_s32_f32(v8);
    v11 = v8 - floorf(v8);
    return (*(bytes + 4 * v9) * (1.0 - v11)) + (v11 * *(bytes + 4 * v10));
  }

  return result;
}

- (float)boostCurveValueAt:(float)at
{
  boostCurveData = [(_NURAWToneCurveProperties *)self boostCurveData];
  *&v6 = at;
  [(_NURAWToneCurveProperties *)self _curveValueAt:boostCurveData data:v6];
  v8 = v7;

  return v8;
}

- (id)_generateCurveDataFromFilters:(id)filters sampleCount:(unint64_t)count
{
  v44 = *MEMORY[0x1E69E9840];
  filtersCopy = filters;
  v6 = 4 * count;
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * count];
  mutableBytes = [v7 mutableBytes];
  if (count)
  {
    v10 = 0;
    *v9.i32 = (count - 1);
    v11 = vdupq_n_s64(count - 1);
    v12 = xmmword_1C03C2730;
    v13 = xmmword_1C03C2740;
    v14 = (mutableBytes + 8);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, v9).u8[0])
      {
        *(v14 - 2) = v10 / *v9.i32;
      }

      if (vuzp1_s16(v16, v9).i8[2])
      {
        *(v14 - 1) = (v10 + 1) / *v9.i32;
      }

      if (vuzp1_s16(v9, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = (v10 + 2) / *v9.i32;
        v14[1] = (v10 + 3) / *v9.i32;
      }

      v10 += 4;
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 4;
    }

    while (((count + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  v17 = objc_alloc(MEMORY[0x1E695F658]);
  countCopy = count;
  v36 = v7;
  v35 = *MEMORY[0x1E695F8C8];
  v19 = [v17 initWithBitmapData:v7 bytesPerRow:4 * count size:count format:1.0 colorSpace:?];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v20 = filtersCopy;
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v43 count:16];
  outputImage = v19;
  if (v21)
  {
    v23 = v21;
    v24 = *v38;
    v25 = *MEMORY[0x1E695FAB0];
    outputImage = v19;
    do
    {
      v26 = 0;
      v27 = outputImage;
      do
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v28 = *(*(&v37 + 1) + 8 * v26);
        [v28 setValue:v27 forKey:v25];
        outputImage = [v28 outputImage];

        [v28 setValue:0 forKey:v25];
        ++v26;
        v27 = outputImage;
      }

      while (v23 != v26);
      v23 = [v20 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v23);
  }

  v29 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v6];
  v30 = MEMORY[0x1E695F620];
  v31 = *MEMORY[0x1E695F830];
  v41[0] = *MEMORY[0x1E695F7F0];
  v41[1] = v31;
  v42[0] = MEMORY[0x1E695E110];
  v42[1] = @"_NURAWToneCurveProperties";
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v33 = [v30 contextWithOptions:v32];

  [v33 render:outputImage toBitmap:objc_msgSend(v29 rowBytes:"mutableBytes") bounds:v6 format:v35 colorSpace:{0, 0.0, 0.0, countCopy, 1.0}];

  return v29;
}

- (id)aggregateCurveData
{
  v21[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_aggregateCurveData && selfCopy->_rawGainTableMapFilter)
  {
    v3 = +[NUGlobalSettings meteorGainMapExposureCompensationMode];
    v4 = averageLTMFilter(selfCopy->_rawGainTableMapFilter);
    v5 = selfCopy->_rawTRCFilter;
    if (v3 && ([v3 isEqualToString:@"default"] & 1) == 0)
    {
      v8 = [v3 isEqualToString:@"local"];
      if (v4)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        goto LABEL_6;
      }
    }

    else if (v4)
    {
LABEL_6:
      v21[0] = v4;
      v6 = v21;
      v7 = 1;
      goto LABEL_17;
    }

    v10 = [v3 isEqualToString:@"total"];
    if (v4)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11 != 1 || !v5)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_714);
      }

      v13 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = v3;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Unsupported gain map exposure compensation mode: %@", &v18, 0xCu);
      }

      v12 = MEMORY[0x1E695E0F0];
      goto LABEL_23;
    }

    v20[0] = v4;
    v20[1] = v5;
    v6 = v20;
    v7 = 2;
LABEL_17:
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:v7];
LABEL_23:
    v14 = [(_NURAWToneCurveProperties *)selfCopy _generateCurveDataFromFilters:v12 sampleCount:128];
    aggregateCurveData = selfCopy->_aggregateCurveData;
    selfCopy->_aggregateCurveData = v14;
  }

  objc_sync_exit(selfCopy);

  v16 = selfCopy->_aggregateCurveData;

  return v16;
}

- (id)localAverageCurveData
{
  v10[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_localAverageCurveData)
  {
    rawGainTableMapFilter = selfCopy->_rawGainTableMapFilter;
    if (rawGainTableMapFilter)
    {
      v4 = averageLTMFilter(rawGainTableMapFilter);
      v10[0] = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      v6 = [(_NURAWToneCurveProperties *)selfCopy _generateCurveDataFromFilters:v5 sampleCount:128];
      localAverageCurveData = selfCopy->_localAverageCurveData;
      selfCopy->_localAverageCurveData = v6;
    }
  }

  objc_sync_exit(selfCopy);

  v8 = selfCopy->_localAverageCurveData;

  return v8;
}

- (NSData)boostCurveData
{
  v8[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_boostCurveData && selfCopy->_rawTRCFilter)
  {
    v8[0] = selfCopy->_rawTRCFilter;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v4 = [(_NURAWToneCurveProperties *)selfCopy _generateCurveDataFromFilters:v3 sampleCount:11];
    boostCurveData = selfCopy->_boostCurveData;
    selfCopy->_boostCurveData = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_boostCurveData;

  return v6;
}

- (float)baselineExposure
{
  localAverageCurveData = [(_NURAWToneCurveProperties *)self localAverageCurveData];
  LODWORD(v4) = 1043878380;
  if (localAverageCurveData)
  {
    LODWORD(v4) = 1043878380;
    [(_NURAWToneCurveProperties *)self _inverseCurveValueAt:localAverageCurveData data:v4];
  }

  v5 = 0.18 / *&v4;

  return log2f(v5);
}

- (_NURAWToneCurveProperties)initWithToneCurveFilter:(id)filter gainMapTableFilter:(id)tableFilter
{
  filterCopy = filter;
  tableFilterCopy = tableFilter;
  v13.receiver = self;
  v13.super_class = _NURAWToneCurveProperties;
  v8 = [(_NURAWToneCurveProperties *)&v13 init];
  rawTRCFilter = v8->_rawTRCFilter;
  v8->_rawTRCFilter = filterCopy;
  v10 = filterCopy;

  rawGainTableMapFilter = v8->_rawGainTableMapFilter;
  v8->_rawGainTableMapFilter = tableFilterCopy;

  return v8;
}

@end