@interface CSFTimeUtils
+ (double)getHostClockFrequency;
+ (double)hostTimeToTimeInterval:(unint64_t)a3;
+ (float)hostTimeToSeconds:(unint64_t)a3;
+ (unint64_t)hostTimeFromSampleCount:(unint64_t)a3 anchorHostTime:(unint64_t)a4 anchorSampleCount:(unint64_t)a5 sampleRate:(float)a6;
+ (unint64_t)macHostTimeFromBridgeHostTime:(unint64_t)a3;
+ (unint64_t)sampleCountFromHostTime:(unint64_t)a3 anchorHostTime:(unint64_t)a4 anchorSampleCount:(unint64_t)a5 sampleRate:(float)a6;
+ (unint64_t)secondsToHostTime:(float)a3;
@end

@implementation CSFTimeUtils

+ (unint64_t)macHostTimeFromBridgeHostTime:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "+[CSFTimeUtils macHostTimeFromBridgeHostTime:]";
    _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Not supported on this platform", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
  return a3;
}

+ (unint64_t)sampleCountFromHostTime:(unint64_t)a3 anchorHostTime:(unint64_t)a4 anchorSampleCount:(unint64_t)a5 sampleRate:(float)a6
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = a6;
  [a1 getHostClockFrequency];
  v11 = llround(v9 / v10 * (a4 - a3));
  result = a5 - v11;
  if (a5 < v11)
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "+[CSFTimeUtils sampleCountFromHostTime:anchorHostTime:anchorSampleCount:sampleRate:]";
      _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s Delta is larger than anchorSampleCount", &v15, 0xCu);
    }

    result = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

+ (unint64_t)hostTimeFromSampleCount:(unint64_t)a3 anchorHostTime:(unint64_t)a4 anchorSampleCount:(unint64_t)a5 sampleRate:(float)a6
{
  v23 = *MEMORY[0x1E69E9840];
  [a1 getHostClockFrequency];
  v11 = llround(v10 / a6 * (a5 - a3));
  result = a4 - v11;
  if (a4 < v11)
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315906;
      v16 = "+[CSFTimeUtils hostTimeFromSampleCount:anchorHostTime:anchorSampleCount:sampleRate:]";
      v17 = 2050;
      v18 = a5;
      v19 = 2050;
      v20 = a3;
      v21 = 2050;
      v22 = a4;
      _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s Delta is larger than anchorHostTime: anchorSampleCount = %{public}lld, sampleTime = %{public}lld, anchorHostTime = %{public}lld", &v15, 0x2Au);
    }

    result = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

+ (double)getHostClockFrequency
{
  if (getHostClockFrequency_onceToken != -1)
  {
    dispatch_once(&getHostClockFrequency_onceToken, &__block_literal_global_7286);
  }

  return *&getHostClockFrequency_frequency;
}

double __37__CSFTimeUtils_getHostClockFrequency__block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  if (info.numer)
  {
    LODWORD(result) = info.denom;
    result = *&result / info.numer * 1000000000.0;
    getHostClockFrequency_frequency = *&result;
  }

  return result;
}

+ (double)hostTimeToTimeInterval:(unint64_t)a3
{
  v3 = a3;
  +[CSFTimeUtils getHostClockFrequency];
  return v3 / v4;
}

+ (float)hostTimeToSeconds:(unint64_t)a3
{
  v3 = a3;
  +[CSFTimeUtils getHostClockFrequency];
  return v3 / v4;
}

+ (unint64_t)secondsToHostTime:(float)a3
{
  v3 = a3;
  +[CSFTimeUtils getHostClockFrequency];
  return (v4 * v3);
}

@end