@interface CBEDRModulator
- (BOOL)isConfigured;
- (BOOL)modulatedHeadroom:(float *)a3 forHeadroom:(float)a4 forSDRNits:(float)a5;
- (CBEDRModulator)init;
- (id)description;
- (void)dealloc;
@end

@implementation CBEDRModulator

- (CBEDRModulator)init
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = CBEDRModulator;
  v6 = [(CBEDRModulator *)&v4 init];
  if (v6)
  {
    v2 = os_log_create("com.apple.CoreBrightness.EDR", "modulator");
    v6->_logHandle = v2;
  }

  return v6;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](v5->_logHandle);
    v5->_logHandle = 0;
  }

  MEMORY[0x1E69E5920](v5->_headroomDataPointsConfig);
  *&v2 = MEMORY[0x1E69E5920](v5->_nitsDataPointsConfig).n128_u64[0];
  v3.receiver = v5;
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

- (BOOL)modulatedHeadroom:(float *)a3 forHeadroom:(float)a4 forSDRNits:(float)a5
{
  v32 = *MEMORY[0x1E69E9840];
  *a3 = a4;
  if ([(CBEDRModulator *)self isConfigured])
  {
    [-[NSArray objectAtIndexedSubscript:](self->_nitsDataPointsConfig objectAtIndexedSubscript:{0), "floatValue"}];
    v5 = *&v6;
    *&v6 = a5;
    if (a5 > v5)
    {
      [-[NSArray objectAtIndexedSubscript:](self->_nitsDataPointsConfig objectAtIndexedSubscript:{-[NSArray count](self->_nitsDataPointsConfig, "count") - 1), "floatValue"}];
      v8 = *&v9;
      *&v9 = a5;
      if (a5 < v8)
      {
        v24 = 0;
        v23 = [(NSArray *)self->_nitsDataPointsConfig count]- 1;
        while (v23 - v24 > 1)
        {
          [-[NSArray objectAtIndexedSubscript:](self->_nitsDataPointsConfig objectAtIndexedSubscript:{(v23 - v24) / 2 + v24), "floatValue"}];
          if (a5 > v11)
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
        v25 = linear_interpolation(a5, v20, v21, v22, v15);
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
      __os_log_helper_16_0_3_8_0_8_0_8_0(v31, COERCE__INT64(a4), COERCE__INT64(a5), COERCE__INT64(v25));
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "headroom = %f | SDR = %f | modulated cap = %f", v31, 0x20u);
    }

    if (a4 >= v25)
    {
      v17 = v25;
    }

    else
    {
      v17 = a4;
    }

    *a3 = v17;
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