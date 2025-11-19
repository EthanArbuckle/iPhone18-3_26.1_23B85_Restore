@interface CBEDR
+ (float)animatedHeadroomForOrigin:(float)a3 target:(float)a4 andProgress:(float)a5;
- (CBEDR)initWithRampPolicy:(unint64_t)a3 potentialHeadroom:(float)a4 andReferenceHeadroom:(float)a5;
- (float)availableHeadroom;
- (id)copyStatusInfo;
- (id)description;
- (void)dealloc;
@end

@implementation CBEDR

- (id)copyStatusInfo
{
  v19[12] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v15 = objc_alloc(MEMORY[0x1E695DF90]);
  v18[0] = @"PanelMax";
  *&v2 = self->_panelMax;
  v19[0] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v18[1] = @"RampPolicy";
  v19[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_rampPolicy];
  v18[2] = @"MaxHeadroom";
  *&v3 = self->_maxHeadroom;
  v19[2] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v18[3] = @"BrightnessCap";
  *&v4 = self->_brightnessCap;
  v19[3] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v18[4] = @"SDR";
  *&v5 = self->_sdrBrightness;
  v19[4] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v18[5] = @"ReferenceHeadroom";
  *&v6 = self->_referenceHeadroom;
  v19[5] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v18[6] = @"Headroom";
  *&v7 = self->_currentHeadroom;
  v19[6] = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v18[7] = @"AvailableHeadroom";
  v14 = MEMORY[0x1E696AD98];
  [(CBEDR *)self availableHeadroom];
  v19[7] = [v14 numberWithFloat:?];
  v18[8] = @"RequestedHeadroom";
  *&v8 = self->_requestedHeadroom;
  v19[8] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v18[9] = @"HDRMax";
  *&v9 = self->_currentMaxBrightness;
  v19[9] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v18[10] = @"SecPerStop";
  *&v10 = self->_secondsPerStop;
  v19[10] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v18[11] = @"SecPerStopExit";
  *&v11 = self->_secondsPerStopExit;
  v19[11] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v16 = [v15 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v19, v18, 12)}];
  if (self->_headroomModulator)
  {
    [v16 setObject:-[CBEDRModulator description](self->_headroomModulator forKey:{"description"), @"Modulator"}];
  }

  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v16;
}

- (float)availableHeadroom
{
  v4 = 1.0;
  [(CBEDR *)self sanityCheck];
  sdrBrightness = self->_sdrBrightness;
  if (sdrBrightness > 0.0)
  {
    v4 = self->_currentMaxBrightness / self->_sdrBrightness;
  }

  *&sdrBrightness = v4;
  [(CBEDR *)self clampHeadroom:sdrBrightness];
  return result;
}

+ (float)animatedHeadroomForOrigin:(float)a3 target:(float)a4 andProgress:(float)a5
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  if (a4 == 0.0)
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v17 = inited;
    v16 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = v17;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "error: target == 0.0", v15, 2u);
    }

    return 1.0;
  }

  else if (v18 <= 1.0 && v18 >= 0.0)
  {
    if (v18 == 1.0)
    {
      return v19;
    }

    else
    {
      return v20 * powf(fabsf(v20 / v19), -v18);
    }
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v8 = init_default_corebrightness_log();
    }

    v14 = v8;
    v13 = 16;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v6 = v14;
      v7 = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_error_impl(&dword_1DE8E5000, v6, v7, "error: progress out of range", v12, 2u);
    }

    return 1.0;
  }
}

- (CBEDR)initWithRampPolicy:(unint64_t)a3 potentialHeadroom:(float)a4 andReferenceHeadroom:(float)a5
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v6.receiver = self;
  v6.super_class = CBEDR;
  v11 = [(CBEDR *)&v6 init];
  if (v11)
  {
    v11->_rampPolicy = v9;
    v11->_minHeadroom = 1.0;
    v11->_maxHeadroom = v8;
    v11->_referenceHeadroom = v7;
    v11->_currentHeadroom = 1.0;
    v11->_requestedHeadroom = 1.0;
    v11->_secondsPerStop = 1.0;
    v11->_secondsPerStopExit = 1.0;
  }

  return v11;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_headroomModulator).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBEDR;
  [(CBEDR *)&v3 dealloc];
}

- (id)description
{
  v4 = self;
  v3 = a2;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: r.policy: %lu | h.max: %f | h.ref=%f | h.req: %f | SDR: %f | cap: %f | p.max: %f | sec.per.stop: %f | sec.per.stop.exit: %f", "CBEDR", self->_rampPolicy, self->_maxHeadroom, self->_referenceHeadroom, self->_requestedHeadroom, self->_sdrBrightness, self->_brightnessCap, self->_panelMax, self->_secondsPerStop, self->_secondsPerStopExit, a2, self];
}

@end