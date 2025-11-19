@interface MADVideoSessionFrameProperties
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timestamp;
- (CGRect)regionOfInterest;
- (MADVideoSessionFrameProperties)init;
- (MADVideoSessionFrameProperties)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setTimestamp:(id *)a3;
@end

@implementation MADVideoSessionFrameProperties

- (MADVideoSessionFrameProperties)init
{
  v5.receiver = self;
  v5.super_class = MADVideoSessionFrameProperties;
  result = [(MADVideoSessionFrameProperties *)&v5 init];
  if (result)
  {
    result->_orientation = 1;
    v3 = *MEMORY[0x1E6960CC0];
    *&result->_timestamp.flags = *(MEMORY[0x1E6960CC0] + 16);
    *(&result->_orientation + 1) = v3;
    v4 = *(MEMORY[0x1E695F058] + 16);
    result->_regionOfInterest.origin = *MEMORY[0x1E695F058];
    result->_regionOfInterest.size = v4;
  }

  return result;
}

- (MADVideoSessionFrameProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MADVideoSessionFrameProperties;
  v5 = [(MADVideoSessionFrameProperties *)&v13 init];
  if (v5)
  {
    *(v5 + 2) = [v4 decodeInt32ForKey:@"Orientation"];
    if (v4)
    {
      [v4 decodeCMTimeForKey:@"Timestamp"];
    }

    else
    {
      v11 = 0uLL;
      v12 = 0;
    }

    *(v5 + 28) = v12;
    *(v5 + 12) = v11;
    [v4 decodeRectForKey:@"RegionOfInterest"];
    *(v5 + 5) = v6;
    *(v5 + 6) = v7;
    *(v5 + 7) = v8;
    *(v5 + 8) = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:self->_orientation forKey:@"Orientation"];
  v5 = *(&self->_orientation + 1);
  v6 = *&self->_timestamp.flags;
  [v4 encodeCMTime:&v5 forKey:@"Timestamp"];
  [v4 encodeRect:@"RegionOfInterest" forKey:{self->_regionOfInterest.origin.x, self->_regionOfInterest.origin.y, self->_regionOfInterest.size.width, self->_regionOfInterest.size.height}];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"orientation: %u", self->_orientation];
  *&time.value = *(&self->_orientation + 1);
  time.epoch = *&self->_timestamp.flags;
  [v3 appendFormat:@"timestamp: %.4f", CMTimeGetSeconds(&time)];
  [v3 appendFormat:@"regionOfInterest: origin(%.4f, %.4f), size(%.4f, %.4f)>", *&self->_regionOfInterest.origin.x, *&self->_regionOfInterest.origin.y, *&self->_regionOfInterest.size.width, *&self->_regionOfInterest.size.height];

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timestamp
{
  *&retstr->var0 = *&self->var2;
  retstr->var3 = *(&self[1].var0 + 4);
  return self;
}

- (void)setTimestamp:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_timestamp.flags = a3->var3;
  *(&self->_orientation + 1) = v3;
}

- (CGRect)regionOfInterest
{
  x = self->_regionOfInterest.origin.x;
  y = self->_regionOfInterest.origin.y;
  width = self->_regionOfInterest.size.width;
  height = self->_regionOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end