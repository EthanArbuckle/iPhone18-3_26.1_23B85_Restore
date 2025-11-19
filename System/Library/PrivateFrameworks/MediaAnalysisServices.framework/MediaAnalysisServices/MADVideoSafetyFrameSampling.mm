@interface MADVideoSafetyFrameSampling
- (MADVideoSafetyFrameSampling)initWithCoder:(id)a3;
- (MADVideoSafetyFrameSampling)initWithFramesPerSync:(unint64_t)a3 frameLimit:(unint64_t)a4 uniformSampling:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVideoSafetyFrameSampling

- (MADVideoSafetyFrameSampling)initWithFramesPerSync:(unint64_t)a3 frameLimit:(unint64_t)a4 uniformSampling:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = MADVideoSafetyFrameSampling;
  result = [(MADVideoSafetyFrameSampling *)&v9 init];
  if (result)
  {
    result->_framesPerSync = a3;
    result->_frameLimit = a4;
    result->_uniformSampling = a5;
  }

  return result;
}

- (MADVideoSafetyFrameSampling)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MADVideoSafetyFrameSampling;
  v5 = [(MADVideoSafetyFrameSampling *)&v7 init];
  if (v5)
  {
    v5->_framesPerSync = [v4 decodeIntegerForKey:@"FramesPerSync"];
    v5->_frameLimit = [v4 decodeIntegerForKey:@"FrameLimit"];
    v5->_uniformSampling = [v4 decodeBoolForKey:@"UniformSampling"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  framesPerSync = self->_framesPerSync;
  v5 = a3;
  [v5 encodeInteger:framesPerSync forKey:@"FramesPerSync"];
  [v5 encodeInteger:self->_frameLimit forKey:@"FrameLimit"];
  [v5 encodeBool:self->_uniformSampling forKey:@"UniformSampling"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p", v5, self];

  [v3 appendFormat:@", framesPerSync: %lu", self->_framesPerSync];
  [v3 appendFormat:@", frameLimit: %lu", self->_frameLimit];
  if (self->_uniformSampling)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@", uniformSampling: %@", v6];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  framesPerSync = self->_framesPerSync;
  frameLimit = self->_frameLimit;
  uniformSampling = self->_uniformSampling;

  return [v4 initWithFramesPerSync:framesPerSync frameLimit:frameLimit uniformSampling:uniformSampling];
}

@end