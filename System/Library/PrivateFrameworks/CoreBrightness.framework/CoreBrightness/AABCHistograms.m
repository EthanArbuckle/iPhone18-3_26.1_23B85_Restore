@interface AABCHistograms
- (AABCHistograms)init;
- (void)dealloc;
- (void)luminanceHistLogNitsSDR:(float)a3 andNitsEDR:(float)a4;
- (void)submit;
@end

@implementation AABCHistograms

- (AABCHistograms)init
{
  v17 = self;
  v16 = a2;
  v15.receiver = self;
  v15.super_class = AABCHistograms;
  v17 = [(AABCHistograms *)&v15 init];
  if (v17)
  {
    context = objc_autoreleasePoolPush();
    v2 = [[CBHistogramBuilder alloc] initWithEdges:&unk_1F59C93C0];
    v17->_L = v2;
    v3 = [[CBHistogramBuilder alloc] initWithEdges:&unk_1F59C93C0];
    v17->_LOff = v3;
    v4 = [[CBHistogramBuilder alloc] initWithEdges:&unk_1F59C93C0];
    v17->_LDevice = v4;
    v5 = [[CBHistogramBuilder alloc] initWithEdges:&unk_1F59C93C0];
    v17->_LDeviceOff = v5;
    v6 = [[CBHistogramBuilder alloc] initWithEdges:&unk_1F59C93C0];
    v17->_LLPM = v6;
    v7 = [[CBHistogramBuilder alloc] initWithEdges:&unk_1F59C93C0];
    v17->_L_EDR = v7;
    v8 = [[CBHistogramBuilder alloc] initWithEdges:&unk_1F59C93C0];
    v17->_LOff_EDR = v8;
    v9 = [[CBHistogramBuilder alloc] initWithEdges:&unk_1F59C93C0];
    v17->_LDevice_EDR = v9;
    v10 = [[CBHistogramBuilder alloc] initWithEdges:&unk_1F59C93C0];
    v17->_LDeviceOff_EDR = v10;
    v11 = [[CBHistogramBuilder alloc] initWithEdges:&unk_1F59C93C0];
    v17->_LLPM_EDR = v11;
    v12 = [[CBHistogramBuilder alloc] initWithEdges:&unk_1F59C93D8];
    v17->_E = v12;
    objc_autoreleasePoolPop(context);
  }

  return v17;
}

- (void)submit
{
  v5[10] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v4[0] = @"standard";
  v5[0] = self->_L;
  v4[1] = @"off";
  v5[1] = self->_LOff;
  v4[2] = @"display2";
  v5[2] = self->_LDevice;
  v4[3] = @"display2.off";
  v5[3] = self->_LDeviceOff;
  v4[4] = @"LPM";
  v5[4] = self->_LLPM;
  v4[5] = @"standard_EDR";
  v5[5] = self->_L_EDR;
  v4[6] = @"off_EDR";
  v5[6] = self->_LOff_EDR;
  v4[7] = @"display2_EDR";
  v5[7] = self->_LDevice_EDR;
  v4[8] = @"display2.off_EDR";
  v5[8] = self->_LDeviceOff_EDR;
  v4[9] = @"LPM_EDR";
  v5[9] = self->_LLPM_EDR;
  [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:{10), "enumerateKeysAndObjectsUsingBlock:", &__block_literal_global_574}];
  [CBAnalytics illuminanceHistogram:self->_E];
  [(CBHistogramBuilder *)self->_E reset];
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
}

- (void)luminanceHistLogNitsSDR:(float)a3 andNitsEDR:(float)a4
{
  context = objc_autoreleasePoolPush();
  v12 = mach_time_now_in_seconds();
  if (self->_firstBrightnessUpdate)
  {
    self->_lastBrightnessUpdateNits = a3;
    self->_lastBrightnessUpdateTimestamp = v12;
    self->_firstBrightnessUpdate = 0;
  }

  else
  {
    v11 = (v12 - self->_lastBrightnessUpdateTimestamp);
    if (self->_builtInDisplay)
    {
      if (self->_ecoModeOn)
      {
        LLPM = self->_LLPM;
        LLPM_EDR = self->_LLPM_EDR;
      }

      else
      {
        if (self->_autoBrightnessOn)
        {
          L = self->_L;
        }

        else
        {
          L = self->_LOff;
        }

        LLPM = L;
        if (self->_autoBrightnessOn)
        {
          L_EDR = self->_L_EDR;
        }

        else
        {
          L_EDR = self->_LOff_EDR;
        }

        LLPM_EDR = L_EDR;
      }
    }

    else
    {
      if (self->_autoBrightnessOn)
      {
        LDevice = self->_LDevice;
      }

      else
      {
        LDevice = self->_LDeviceOff;
      }

      LLPM = LDevice;
      if (self->_autoBrightnessOn)
      {
        LDevice_EDR = self->_LDevice_EDR;
      }

      else
      {
        LDevice_EDR = self->_LDeviceOff_EDR;
      }

      LLPM_EDR = LDevice_EDR;
    }

    [(CBHistogramBuilder *)LLPM pushNumberWeighted:self->_lastBrightnessUpdateNits withWeight:v11];
    [(CBHistogramBuilder *)LLPM_EDR pushNumberWeighted:self->_lastBrightnessUpdateNitsEDR withWeight:v11];
    self->_lastBrightnessUpdateNits = a3;
    self->_lastBrightnessUpdateNitsEDR = a4;
    self->_lastBrightnessUpdateTimestamp = v12;
  }

  objc_autoreleasePoolPop(context);
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_L);
  MEMORY[0x1E69E5920](v5->_LOff);
  MEMORY[0x1E69E5920](v5->_LDevice);
  MEMORY[0x1E69E5920](v5->_LDeviceOff);
  MEMORY[0x1E69E5920](v5->_LLPM);
  MEMORY[0x1E69E5920](v5->_L_EDR);
  MEMORY[0x1E69E5920](v5->_LOff_EDR);
  MEMORY[0x1E69E5920](v5->_LDevice_EDR);
  MEMORY[0x1E69E5920](v5->_LDeviceOff_EDR);
  MEMORY[0x1E69E5920](v5->_LLPM_EDR);
  *&v2 = MEMORY[0x1E69E5920](v5->_E).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = AABCHistograms;
  [(AABCHistograms *)&v3 dealloc];
}

@end