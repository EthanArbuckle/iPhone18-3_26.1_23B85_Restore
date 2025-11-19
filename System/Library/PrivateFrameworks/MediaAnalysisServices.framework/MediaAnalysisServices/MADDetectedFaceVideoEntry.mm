@interface MADDetectedFaceVideoEntry
+ (id)entryWithTimeRange:(id *)a3 confidence:(double)a4 boundingBox:(CGRect)a5;
- ($1C75447F214D9465CD650DD956230C7F)timeRange;
- (CGRect)boundingBox;
- (MADDetectedFaceVideoEntry)initWithCoder:(id)a3;
- (MADDetectedFaceVideoEntry)initWithTimeRange:(id *)a3 confidence:(double)a4 boundingBox:(CGRect)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADDetectedFaceVideoEntry

- (MADDetectedFaceVideoEntry)initWithTimeRange:(id *)a3 confidence:(double)a4 boundingBox:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14.receiver = self;
  v14.super_class = MADDetectedFaceVideoEntry;
  result = [(MADDetectedFaceVideoEntry *)&v14 init];
  if (result)
  {
    v12 = *&a3->var0.var0;
    v13 = *&a3->var1.var1;
    *&result->_timeRange.start.epoch = *&a3->var0.var3;
    *&result->_timeRange.duration.timescale = v13;
    *&result->_timeRange.start.value = v12;
    result->_boundingBox.origin.y = y;
    result->_boundingBox.size.width = width;
    result->_boundingBox.size.height = height;
    result->_confidence = a4;
    result->_boundingBox.origin.x = x;
  }

  return result;
}

+ (id)entryWithTimeRange:(id *)a3 confidence:(double)a4 boundingBox:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = [a1 alloc];
  v12 = *&a3->var0.var3;
  v15[0] = *&a3->var0.var0;
  v15[1] = v12;
  v15[2] = *&a3->var1.var1;
  v13 = [v11 initWithTimeRange:v15 confidence:a4 boundingBox:{x, y, width, height}];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = *&self->_timeRange.start.epoch;
  v6[0] = *&self->_timeRange.start.value;
  v6[1] = v5;
  v6[2] = *&self->_timeRange.duration.timescale;
  [v4 encodeCMTimeRange:v6 forKey:@"TimeRange"];
  [v4 encodeDouble:@"Confidence" forKey:self->_confidence];
  [v4 encodeRect:@"BoundingBox" forKey:{self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height}];
}

- (MADDetectedFaceVideoEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MADDetectedFaceVideoEntry;
  v5 = [(MADDetectedFaceVideoEntry *)&v15 init];
  if (v5)
  {
    if (v4)
    {
      [v4 decodeCMTimeRangeForKey:@"TimeRange"];
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
    }

    *&v5->_timeRange.start.value = v12;
    *&v5->_timeRange.start.epoch = v13;
    *&v5->_timeRange.duration.timescale = v14;
    [v4 decodeDoubleForKey:{@"Confidence", v12, v13, v14}];
    v5->_confidence = v6;
    [v4 decodeRectForKey:@"BoundingBox"];
    v5->_boundingBox.origin.x = v7;
    v5->_boundingBox.origin.y = v8;
    v5->_boundingBox.size.width = v9;
    v5->_boundingBox.size.height = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  *&time.start.value = *&self->_timeRange.start.value;
  time.start.epoch = self->_timeRange.start.epoch;
  Seconds = CMTimeGetSeconds(&time.start);
  v7 = *&self->_timeRange.start.epoch;
  *&time.start.value = *&self->_timeRange.start.value;
  *&time.start.epoch = v7;
  *&time.duration.timescale = *&self->_timeRange.duration.timescale;
  CMTimeRangeGetEnd(&v12, &time);
  [v3 appendFormat:@"%@: %-.4fs-%-.4fs, ", @"TimeRange", *&Seconds, CMTimeGetSeconds(&v12)];
  [(MADDetectedFaceVideoEntry *)self boundingBox];
  v8 = NSStringFromRect(v14);
  [v3 appendFormat:@"%@: %@, ", @"BoundingBox", v8];

  [(MADDetectedFaceVideoEntry *)self confidence];
  [v3 appendFormat:@"%@: %.2f>", @"Confidence", v9];

  return v3;
}

- ($1C75447F214D9465CD650DD956230C7F)timeRange
{
  v3 = *&self[1].var0.var3;
  *&retstr->var0.var0 = *&self[1].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var1;
  return self;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end