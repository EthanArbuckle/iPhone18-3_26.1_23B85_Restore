@interface MADVideoRemoveBackgroundRequest
- (MADVideoRemoveBackgroundRequest)init;
- (MADVideoRemoveBackgroundRequest)initWithCoder:(id)coder;
- (MADVideoRemoveBackgroundResult)result;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setMaskTime:(id *)time;
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

- (MADVideoRemoveBackgroundRequest)initWithCoder:(id)coder
{
  v23[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = MADVideoRemoveBackgroundRequest;
  v5 = [(MADVideoRequest *)&v22 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MaxDimension"];
    maxDimension = v5->_maxDimension;
    v5->_maxDimension = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MinDimension"];
    minDimension = v5->_minDimension;
    v5->_minDimension = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MaxFileSize"];
    maxFileSize = v5->_maxFileSize;
    v5->_maxFileSize = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InstancePoint"];
    instancePoint = v5->_instancePoint;
    v5->_instancePoint = v12;

    v5->_maskTime.value = [coderCopy decodeInt64ForKey:@"MaskTimeValue"];
    v5->_maskTime.timescale = [coderCopy decodeInt32ForKey:@"MaskTimeScale"];
    v5->_maskTime.flags = [coderCopy decodeInt32ForKey:@"MaskTimeFlags"];
    v5->_maskTime.epoch = [coderCopy decodeInt64ForKey:@"MaskTimeEpoch"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OutputType"];
    outputType = v5->_outputType;
    v5->_outputType = v14;

    v16 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v18 = [v16 setWithArray:v17];

    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"StickerIdentifiers"];
    stickerIdentifiers = v5->_stickerIdentifiers;
    v5->_stickerIdentifiers = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVideoRemoveBackgroundRequest;
  coderCopy = coder;
  [(MADVideoRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_maxDimension forKey:{@"MaxDimension", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_minDimension forKey:@"MinDimension"];
  [coderCopy encodeObject:self->_maxFileSize forKey:@"MaxFileSize"];
  [coderCopy encodeObject:self->_instancePoint forKey:@"InstancePoint"];
  [coderCopy encodeInt64:self->_maskTime.value forKey:@"MaskTimeValue"];
  [coderCopy encodeInt32:self->_maskTime.timescale forKey:@"MaskTimeScale"];
  [coderCopy encodeInt32:self->_maskTime.flags forKey:@"MaskTimeFlags"];
  [coderCopy encodeInt64:self->_maskTime.epoch forKey:@"MaskTimeEpoch"];
  [coderCopy encodeObject:self->_outputType forKey:@"OutputType"];
  [coderCopy encodeObject:self->_stickerIdentifiers forKey:@"StickerIdentifiers"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p", v5, self];

  maxDimension = self->_maxDimension;
  if (maxDimension)
  {
    [string appendFormat:@", maxDimension: %d", -[NSNumber unsignedIntegerValue](maxDimension, "unsignedIntegerValue")];
  }

  minDimension = self->_minDimension;
  if (minDimension)
  {
    [string appendFormat:@", minDimension: %d", -[NSNumber unsignedIntegerValue](minDimension, "unsignedIntegerValue")];
  }

  maxFileSize = self->_maxFileSize;
  if (maxFileSize)
  {
    [string appendFormat:@", maxFileSize: %d", -[NSNumber unsignedIntegerValue](maxFileSize, "unsignedIntegerValue")];
  }

  instancePoint = self->_instancePoint;
  if (instancePoint)
  {
    [(NSValue *)instancePoint pointValue];
    [string appendFormat:@", instancePoint: (%0.3f, %0.3f)", v10, v11];
  }

  if (self->_maskTime.flags)
  {
    timescale = self->_maskTime.timescale;
    time = self->_maskTime;
    [string appendFormat:@", maskTime: %lld/%d (%0.3fs)", time.value, timescale, CMTimeGetSeconds(&time)];
  }

  [string appendFormat:@", outputType: %@", self->_outputType];
  if ([(NSArray *)self->_stickerIdentifiers count])
  {
    [string appendFormat:@", stickerIdentifiers: %@", self->_stickerIdentifiers];
  }

  results = [(MADVideoRequest *)self results];
  [string appendFormat:@", results: %@", results];

  error = [(MADVideoRequest *)self error];
  [string appendFormat:@", error: %@>", error];

  return string;
}

- (MADVideoRemoveBackgroundResult)result
{
  results = [(MADVideoRequest *)self results];
  firstObject = [results firstObject];

  return firstObject;
}

- (void)setMaskTime:(id *)time
{
  var3 = time->var3;
  *&self->_maskTime.value = *&time->var0;
  self->_maskTime.epoch = var3;
}

@end