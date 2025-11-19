@interface MADVideoRemoveBackgroundRequest
- (MADVideoRemoveBackgroundRequest)init;
- (MADVideoRemoveBackgroundRequest)initWithCoder:(id)a3;
- (MADVideoRemoveBackgroundResult)result;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setMaskTime:(id *)a3;
@end

@implementation MADVideoRemoveBackgroundRequest

- (MADVideoRemoveBackgroundRequest)init
{
  v8.receiver = self;
  v8.super_class = MADVideoRemoveBackgroundRequest;
  v2 = [(MADVideoRemoveBackgroundRequest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E6960C70];
    *(v2 + 72) = *MEMORY[0x1E6960C70];
    *(v2 + 11) = *(v4 + 16);
    v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"public.heics"];
    outputType = v3->_outputType;
    v3->_outputType = v5;
  }

  return v3;
}

- (MADVideoRemoveBackgroundRequest)initWithCoder:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MADVideoRemoveBackgroundRequest;
  v5 = [(MADVideoRequest *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MaxDimension"];
    maxDimension = v5->_maxDimension;
    v5->_maxDimension = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MinDimension"];
    minDimension = v5->_minDimension;
    v5->_minDimension = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MaxFileSize"];
    maxFileSize = v5->_maxFileSize;
    v5->_maxFileSize = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InstancePoint"];
    instancePoint = v5->_instancePoint;
    v5->_instancePoint = v12;

    v5->_maskTime.value = [v4 decodeInt64ForKey:@"MaskTimeValue"];
    v5->_maskTime.timescale = [v4 decodeInt32ForKey:@"MaskTimeScale"];
    v5->_maskTime.flags = [v4 decodeInt32ForKey:@"MaskTimeFlags"];
    v5->_maskTime.epoch = [v4 decodeInt64ForKey:@"MaskTimeEpoch"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OutputType"];
    outputType = v5->_outputType;
    v5->_outputType = v14;

    v16 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v18 = [v16 setWithArray:v17];

    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"StickerIdentifiers"];
    stickerIdentifiers = v5->_stickerIdentifiers;
    v5->_stickerIdentifiers = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVideoRemoveBackgroundRequest;
  v4 = a3;
  [(MADVideoRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_maxDimension forKey:{@"MaxDimension", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_minDimension forKey:@"MinDimension"];
  [v4 encodeObject:self->_maxFileSize forKey:@"MaxFileSize"];
  [v4 encodeObject:self->_instancePoint forKey:@"InstancePoint"];
  [v4 encodeInt64:self->_maskTime.value forKey:@"MaskTimeValue"];
  [v4 encodeInt32:self->_maskTime.timescale forKey:@"MaskTimeScale"];
  [v4 encodeInt32:self->_maskTime.flags forKey:@"MaskTimeFlags"];
  [v4 encodeInt64:self->_maskTime.epoch forKey:@"MaskTimeEpoch"];
  [v4 encodeObject:self->_outputType forKey:@"OutputType"];
  [v4 encodeObject:self->_stickerIdentifiers forKey:@"StickerIdentifiers"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p", v5, self];

  maxDimension = self->_maxDimension;
  if (maxDimension)
  {
    [v3 appendFormat:@", maxDimension: %d", -[NSNumber unsignedIntegerValue](maxDimension, "unsignedIntegerValue")];
  }

  minDimension = self->_minDimension;
  if (minDimension)
  {
    [v3 appendFormat:@", minDimension: %d", -[NSNumber unsignedIntegerValue](minDimension, "unsignedIntegerValue")];
  }

  maxFileSize = self->_maxFileSize;
  if (maxFileSize)
  {
    [v3 appendFormat:@", maxFileSize: %d", -[NSNumber unsignedIntegerValue](maxFileSize, "unsignedIntegerValue")];
  }

  instancePoint = self->_instancePoint;
  if (instancePoint)
  {
    [(NSValue *)instancePoint pointValue];
    [v3 appendFormat:@", instancePoint: (%0.3f, %0.3f)", v10, v11];
  }

  if (self->_maskTime.flags)
  {
    timescale = self->_maskTime.timescale;
    time = self->_maskTime;
    [v3 appendFormat:@", maskTime: %lld/%d (%0.3fs)", time.value, timescale, CMTimeGetSeconds(&time)];
  }

  [v3 appendFormat:@", outputType: %@", self->_outputType];
  if ([(NSArray *)self->_stickerIdentifiers count])
  {
    [v3 appendFormat:@", stickerIdentifiers: %@", self->_stickerIdentifiers];
  }

  v13 = [(MADVideoRequest *)self results];
  [v3 appendFormat:@", results: %@", v13];

  v14 = [(MADVideoRequest *)self error];
  [v3 appendFormat:@", error: %@>", v14];

  return v3;
}

- (MADVideoRemoveBackgroundResult)result
{
  v2 = [(MADVideoRequest *)self results];
  v3 = [v2 firstObject];

  return v3;
}

- (void)setMaskTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_maskTime.value = *&a3->var0;
  self->_maskTime.epoch = var3;
}

@end