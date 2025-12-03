@interface SaturationDetection
- (BOOL)add:(float)add;
- (SaturationDetection)initWithConfig:(id)config withScalingFactor:(float)factor;
@end

@implementation SaturationDetection

- (SaturationDetection)initWithConfig:(id)config withScalingFactor:(float)factor
{
  configCopy = config;
  v23.receiver = self;
  v23.super_class = SaturationDetection;
  v8 = [(SaturationDetection *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, config);
    v9->_scalingFactor = factor;
    v10 = [MovingAverage alloc];
    movingAveragePeriod = [(NetworkQualityConfiguration *)v9->_config movingAveragePeriod];
    *&v12 = v9->_scalingFactor;
    v13 = [(MovingAverage *)v10 initWithSize:movingAveragePeriod withScalingFactor:v12];
    movingAvg = v9->_movingAvg;
    v9->_movingAvg = v13;

    v15 = [MovingAverage alloc];
    v16 = [(NetworkQualityConfiguration *)v9->_config movingAveragePeriod]/ 0.2;
    v17 = v16;
    *&v16 = v9->_scalingFactor;
    v18 = [(MovingAverage *)v15 initWithSize:v17 withScalingFactor:v16];
    instAvg = v9->_instAvg;
    v9->_instAvg = v18;

    v9->_instValues = 0;
    *&v9->_currentAverage = 0;
    v9->_saturated = 0;
    v20 = [MEMORY[0x277CBEAA8] now];
    start = v9->_start;
    v9->_start = v20;
  }

  return v9;
}

- (BOOL)add:(float)add
{
  v56 = *MEMORY[0x277D85DE8];
  [(MovingAverage *)self->_instAvg add:self->_saturated overflow:?];
  v5 = self->_instValues + 1;
  self->_instValues = v5;
  if (0xCCCCCCCCCCCCCCCDLL * v5 + 0x1999999999999999 > 0x3333333333333332)
  {
LABEL_2:
    LOBYTE(v6) = 0;
    goto LABEL_3;
  }

  v8 = v4;
  [(MovingAverage *)self->_movingAvg add:0 overflow:?];
  self->_currentAverage = v9;
  [(MovingAverage *)self->_movingAvg getStdDev];
  v11 = v10;
  if (v10 < 0.0)
  {
    netqual_log_init();
    v12 = os_log_netqual;
    v6 = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      goto LABEL_3;
    }

    name = self->name;
    v14 = v12;
    uTF8String = [(NSString *)name UTF8String];
    v38 = 136316162;
    scalingFactor = self->_scalingFactor;
    v39 = "[SaturationDetection add:]";
    v40 = 1024;
    v41 = 162;
    v42 = 2080;
    v43 = uTF8String;
    v44 = 2048;
    v45 = (v8 / scalingFactor);
    v46 = 2048;
    v47 = v11;
    _os_log_impl(&dword_25B962000, v14, OS_LOG_TYPE_DEFAULT, "%s:%u - %s - Not enough samples with instantaneous moving average val %.2f stddev=%.2f", &v38, 0x30u);

    goto LABEL_2;
  }

  v17 = v10 / self->_currentAverage;
  v18 = [(NetworkQualityConfiguration *)self->_config standardDeviationThreshold]/ 100.0;
  netqual_log_init();
  v19 = os_log_netqual;
  v6 = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT);
  if (v17 > v18)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

    v20 = self->name;
    v21 = v19;
    uTF8String2 = [(NSString *)v20 UTF8String];
    v23 = self->_scalingFactor;
    v24 = (v8 / v23);
    v25 = (v11 / v23);
    v26 = ((v11 / self->_currentAverage) * 100.0);
    v27 = [MEMORY[0x277CBEAA8] now];
    [v27 timeIntervalSinceDate:self->_start];
    v29 = v28;
    v30 = (v11 / self->_currentAverage);
    standardDeviationThreshold = [(NetworkQualityConfiguration *)self->_config standardDeviationThreshold];
    v38 = 136317186;
    v39 = "[SaturationDetection add:]";
    v40 = 1024;
    v41 = 177;
    v42 = 2080;
    v43 = uTF8String2;
    v44 = 2048;
    v45 = v24;
    v46 = 2048;
    v47 = v25;
    v48 = 2048;
    v49 = v26;
    v50 = 2048;
    v51 = v29;
    v52 = 2048;
    v53 = v30;
    v54 = 2048;
    v55 = (standardDeviationThreshold / 100.0);
    _os_log_impl(&dword_25B962000, v21, OS_LOG_TYPE_DEFAULT, "%s:%u - %s - Didn't yet reach stability with instantaneous val %.2f stddev %.2f (%.2f %%), running for %.2f sec std/avg: %.2f thres: %.2f", &v38, 0x58u);

    goto LABEL_2;
  }

  if (v6)
  {
    v32 = self->name;
    v33 = (v8 / self->_scalingFactor);
    v34 = (v11 / self->_currentAverage);
    config = self->_config;
    v36 = v19;
    v38 = 136316418;
    v39 = "[SaturationDetection add:]";
    v40 = 1024;
    v41 = 168;
    v42 = 2112;
    v43 = v32;
    v44 = 2048;
    v45 = v33;
    v46 = 2048;
    v47 = v34;
    v48 = 2048;
    v49 = ([(NetworkQualityConfiguration *)config standardDeviationThreshold]/ 100.0);
    _os_log_impl(&dword_25B962000, v36, OS_LOG_TYPE_DEFAULT, "%s:%u - %@ - Reached stability with last instantaneous val %.2f std/avg: %.2f thres: %.2f", &v38, 0x3Au);
  }

  self->_saturationValue = self->_currentAverage;
  LOBYTE(v6) = 1;
  self->_saturated = 1;
LABEL_3:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end