@interface _DPPrioPlusPlusNoiseGenerator
+ (id)randomize:(id)a3 dimension:(unint64_t)a4 stddev:(double)a5;
@end

@implementation _DPPrioPlusPlusNoiseGenerator

+ (id)randomize:(id)a3 dimension:(unint64_t)a4 stddev:(double)a5
{
  v7 = a3;
  v8 = +[_DPGaussianPRNG generateSeed];
  v9 = [_DPGaussianPRNG randomFloatVectorFromSeed:v8 length:a4 mean:0.0 stddev:a5];
  if (v9)
  {
    v10 = [v7 mutableBytes];
    for (i = [v9 bytes]; a4; --a4)
    {
      v12 = *i++;
      *v10 = *v10 - v12;
      ++v10;
    }

    v13 = v8;
  }

  else
  {
    v14 = +[_DPLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioPlusPlusNoiseGenerator randomize:v14 dimension:? stddev:?];
    }

    v13 = 0;
  }

  return v13;
}

@end