@interface _DPPrioPlusPlusNoiseGenerator
+ (id)randomize:(id)randomize dimension:(unint64_t)dimension stddev:(double)stddev;
@end

@implementation _DPPrioPlusPlusNoiseGenerator

+ (id)randomize:(id)randomize dimension:(unint64_t)dimension stddev:(double)stddev
{
  randomizeCopy = randomize;
  v8 = +[_DPGaussianPRNG generateSeed];
  v9 = [_DPGaussianPRNG randomFloatVectorFromSeed:v8 length:dimension mean:0.0 stddev:stddev];
  if (v9)
  {
    mutableBytes = [randomizeCopy mutableBytes];
    for (i = [v9 bytes]; dimension; --dimension)
    {
      v12 = *i++;
      *mutableBytes = *mutableBytes - v12;
      ++mutableBytes;
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