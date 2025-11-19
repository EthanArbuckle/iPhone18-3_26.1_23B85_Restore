@interface MADVideoRemoveBackgroundPreviewResult
- ($1C75447F214D9465CD650DD956230C7F)timeRange;
- (CGRect)normalizedCropRect;
- (MADVideoRemoveBackgroundPreviewResult)initWithCoder:(id)a3;
- (MADVideoRemoveBackgroundPreviewResult)initWithTimeRange:(id *)a3 frames:(id)a4 normalizedCropRect:(CGRect)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVideoRemoveBackgroundPreviewResult

- (MADVideoRemoveBackgroundPreviewResult)initWithTimeRange:(id *)a3 frames:(id)a4 normalizedCropRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = MADVideoRemoveBackgroundPreviewResult;
  v13 = [(MADVideoRemoveBackgroundPreviewResult *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v16 = *&a3->var0.var3;
    v15 = *&a3->var1.var1;
    *&v13->_timeRange.start.value = *&a3->var0.var0;
    *&v13->_timeRange.start.epoch = v16;
    *&v13->_timeRange.duration.timescale = v15;
    objc_storeStrong(&v13->_frames, a4);
    v14->_normalizedCropRect.origin.x = x;
    v14->_normalizedCropRect.origin.y = y;
    v14->_normalizedCropRect.size.width = width;
    v14->_normalizedCropRect.size.height = height;
  }

  return v14;
}

- (MADVideoRemoveBackgroundPreviewResult)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MADVideoRemoveBackgroundPreviewResult;
  v5 = [(MADVideoResult *)&v16 initWithCoder:v4];
  if (v5)
  {
    v5->_timeRange.start.value = [v4 decodeInt64ForKey:@"TimeRangeStartValue"];
    v5->_timeRange.start.timescale = [v4 decodeInt32ForKey:@"TimeRangeStartScale"];
    v5->_timeRange.start.flags = [v4 decodeInt32ForKey:@"TimeRangeStartFlags"];
    v5->_timeRange.start.epoch = [v4 decodeInt64ForKey:@"TimeRangeStartEpoch"];
    v5->_timeRange.duration.value = [v4 decodeInt64ForKey:@"TimeRangeDurationValue"];
    v5->_timeRange.duration.timescale = [v4 decodeInt32ForKey:@"TimeRangeDurationScale"];
    v5->_timeRange.duration.flags = [v4 decodeInt32ForKey:@"TimeRangeDurationFlags"];
    v5->_timeRange.duration.epoch = [v4 decodeInt64ForKey:@"TimeRangeDurationEpoch"];
    v6 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Frames"];
    frames = v5->_frames;
    v5->_frames = v9;

    [v4 decodeRectForKey:@"NormalizedCropRect"];
    v5->_normalizedCropRect.origin.x = v11;
    v5->_normalizedCropRect.origin.y = v12;
    v5->_normalizedCropRect.size.width = v13;
    v5->_normalizedCropRect.size.height = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MADVideoRemoveBackgroundPreviewResult;
  [(MADVideoResult *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_timeRange.start.value forKey:@"TimeRangeStartValue"];
  [v4 encodeInt32:self->_timeRange.start.timescale forKey:@"TimeRangeStartScale"];
  [v4 encodeInt32:self->_timeRange.start.flags forKey:@"TimeRangeStartFlags"];
  [v4 encodeInt64:self->_timeRange.start.epoch forKey:@"TimeRangeStartEpoch"];
  [v4 encodeInt64:self->_timeRange.duration.value forKey:@"TimeRangeDurationValue"];
  [v4 encodeInt32:self->_timeRange.duration.timescale forKey:@"TimeRangeDurationScale"];
  [v4 encodeInt32:self->_timeRange.duration.flags forKey:@"TimeRangeDurationFlags"];
  [v4 encodeInt64:self->_timeRange.duration.epoch forKey:@"TimeRangeDurationEpoch"];
  [v4 encodeObject:self->_frames forKey:@"Frames"];
  [v4 encodeRect:@"NormalizedCropRect" forKey:{self->_normalizedCropRect.origin.x, self->_normalizedCropRect.origin.y, self->_normalizedCropRect.size.width, self->_normalizedCropRect.size.height}];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  timescale = self->_timeRange.start.timescale;
  time = self->_timeRange.start;
  [v3 appendFormat:@"start: %lld/%d (%0.3fs), ", time.value, timescale, CMTimeGetSeconds(&time)];
  v7 = self->_timeRange.duration.timescale;
  time = self->_timeRange.duration;
  [v3 appendFormat:@"duration: %lld/%d (%0.3fs), ", time.value, v7, CMTimeGetSeconds(&time)];
  [v3 appendFormat:@"frames: %@, ", self->_frames];
  [v3 appendFormat:@"normalizedCropRect: (%0.3f, %0.3f) to (%0.3f, %0.3f)>", *&self->_normalizedCropRect.origin.x, *&self->_normalizedCropRect.origin.y, self->_normalizedCropRect.origin.x + self->_normalizedCropRect.size.width, self->_normalizedCropRect.origin.y + self->_normalizedCropRect.size.height];

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

- (CGRect)normalizedCropRect
{
  x = self->_normalizedCropRect.origin.x;
  y = self->_normalizedCropRect.origin.y;
  width = self->_normalizedCropRect.size.width;
  height = self->_normalizedCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end