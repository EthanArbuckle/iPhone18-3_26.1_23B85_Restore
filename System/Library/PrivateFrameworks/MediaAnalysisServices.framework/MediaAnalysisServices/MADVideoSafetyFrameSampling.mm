@interface MADVideoSafetyFrameSampling
- (MADVideoSafetyFrameSampling)initWithCoder:(id)coder;
- (MADVideoSafetyFrameSampling)initWithFramesPerSync:(unint64_t)sync frameLimit:(unint64_t)limit uniformSampling:(BOOL)sampling;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVideoSafetyFrameSampling

- (MADVideoSafetyFrameSampling)initWithFramesPerSync:(unint64_t)sync frameLimit:(unint64_t)limit uniformSampling:(BOOL)sampling
{
  v9.receiver = self;
  v9.super_class = MADVideoSafetyFrameSampling;
  result = [(MADVideoSafetyFrameSampling *)&v9 init];
  if (result)
  {
    result->_framesPerSync = sync;
    result->_frameLimit = limit;
    result->_uniformSampling = sampling;
  }

  return result;
}

- (MADVideoSafetyFrameSampling)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MADVideoSafetyFrameSampling;
  v5 = [(MADVideoSafetyFrameSampling *)&v7 init];
  if (v5)
  {
    v5->_framesPerSync = [coderCopy decodeIntegerForKey:@"FramesPerSync"];
    v5->_frameLimit = [coderCopy decodeIntegerForKey:@"FrameLimit"];
    v5->_uniformSampling = [coderCopy decodeBoolForKey:@"UniformSampling"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  framesPerSync = self->_framesPerSync;
  coderCopy = coder;
  [coderCopy encodeInteger:framesPerSync forKey:@"FramesPerSync"];
  [coderCopy encodeInteger:self->_frameLimit forKey:@"FrameLimit"];
  [coderCopy encodeBool:self->_uniformSampling forKey:@"UniformSampling"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p", v5, self];

  [string appendFormat:@", framesPerSync: %lu", self->_framesPerSync];
  [string appendFormat:@", frameLimit: %lu", self->_frameLimit];
  if (self->_uniformSampling)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [string appendFormat:@", uniformSampling: %@", v6];
  [string appendString:@">"];

  return string;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  framesPerSync = self->_framesPerSync;
  frameLimit = self->_frameLimit;
  uniformSampling = self->_uniformSampling;

  return [v4 initWithFramesPerSync:framesPerSync frameLimit:frameLimit uniformSampling:uniformSampling];
}

@end