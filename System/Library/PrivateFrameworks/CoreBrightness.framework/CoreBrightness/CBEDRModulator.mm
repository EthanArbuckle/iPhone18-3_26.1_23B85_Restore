@interface CBEDRModulator
- (BOOL)isConfigured;
- (BOOL)modulatedHeadroom:(float *)headroom forHeadroom:(float)forHeadroom forSDRNits:(float)nits;
- (CBEDRModulator)init;
- (id)description;
- (void)dealloc;
@end

@implementation CBEDRModulator

- (CBEDRModulator)init
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = CBEDRModulator;
  selfCopy = [(CBEDRModulator *)&v4 init];
  if (selfCopy)
  {
    v2 = os_log_create("com.apple.CoreBrightness.EDR", "modulator");
    selfCopy->_logHandle = v2;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  MEMORY[0x1E69E5920](selfCopy->_headroomDataPointsConfig);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_nitsDataPointsConfig).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBEDRModulator;
  [(CBEDRModulator *)&v3 dealloc];
}

- (BOOL)isConfigured
{
  v5 = 0;
  if (self->_enabled)
  {
    if (self->_headroomDataPointsConfig)
    {
      if (self->_nitsDataPointsConfig)
      {
        v3 = [(NSArray *)self->_headroomDataPointsConfig count];
        if (v3 == [(NSArray *)self->_nitsDataPointsConfig count])
        {
          return 1;
        }
      }
    }
  }

  return v5;
}

- (BOOL)modulatedHeadroom:(float *)headroom forHeadroom:(float)forHeadroom forSDRNits:(float)nits
{
  v32 = *MEMORY[0x1E69E9840];
  *headroom = forHeadroom;
  if ([(CBEDRModulator *)self isConfigured])
  {
    [-[NSArray objectAtIndexedSubscript:](self->_nitsDataPointsConfig objectAtIndexedSubscript:{0), "floatValue"}];
    v5 = *&v6;
    *&v6 = nits;
    if (nits > v5)
    {
      [-[NSArray objectAtIndexedSubscript:](self->_nitsDataPointsConfig objectAtIndexedSubscript:{-[NSArray count](self->_nitsDataPointsConfig, "count") - 1), "floatValue"}];
      v8 = *&v9;
      *&v9 = nits;
      if (nits < v8)
      {
        v24 = 0;
        v23 = [(NSArray *)self->_nitsDataPointsConfig count]- 1;
        while (v23 - v24 > 1)
        {
          [-[NSArray objectAtIndexedSubscript:](self->_nitsDataPointsConfig objectAtIndexedSubscript:{(v23 - v24) / 2 + v24), "floatValue"}];
          if (nits > v11)
          {
            v24 += (v23 - v24) / 2;
          }

          else
          {
            v23 = (v23 - v24) / 2 + v24;
          }
        }

        [-[NSArray objectAtIndexedSubscript:](self->_nitsDataPointsConfig objectAtIndexedSubscript:{v24), "floatValue"}];
        v20 = v12;
        [-[NSArray objectAtIndexedSubscript:](self->_headroomDataPointsConfig objectAtIndexedSubscript:{v24), "floatValue"}];
        v21 = v13;
        [-[NSArray objectAtIndexedSubscript:](self->_nitsDataPointsConfig objectAtIndexedSubscript:{v23), "floatValue"}];
        v22 = v14;
        [-[NSArray objectAtIndexedSubscript:](self->_headroomDataPointsConfig objectAtIndexedSubscript:{v23), "floatValue"}];
        v25 = linear_interpolation(nits, v20, v21, v22, v15);
      }

      else
      {
        [-[NSArray objectAtIndexedSubscript:](self->_headroomDataPointsConfig objectAtIndexedSubscript:{-[NSArray count](self->_nitsDataPointsConfig, "count", v9) - 1), "floatValue"}];
        v25 = v10;
      }
    }

    else
    {
      [-[NSArray objectAtIndexedSubscript:](self->_headroomDataPointsConfig objectAtIndexedSubscript:{0, v6), "floatValue"}];
      v25 = v7;
    }

    if (self->_logHandle)
    {
      logHandle = self->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v31, COERCE__INT64(forHeadroom), COERCE__INT64(nits), COERCE__INT64(v25));
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "headroom = %f | SDR = %f | modulated cap = %f", v31, 0x20u);
    }

    if (forHeadroom >= v25)
    {
      forHeadroomCopy = v25;
    }

    else
    {
      forHeadroomCopy = forHeadroom;
    }

    *headroom = forHeadroomCopy;
    v30 = 1;
  }

  else
  {
    v30 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v30 & 1;
}

- (id)description
{
  if (self->_enabled)
  {
    v2 = "enabled";
  }

  else
  {
    v2 = "disabled";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"CBEDRModulator: state = %s\n nits datapoints:    %@\n headroom datapoints:%@", v2, self->_nitsDataPointsConfig, self->_headroomDataPointsConfig];
}

@end