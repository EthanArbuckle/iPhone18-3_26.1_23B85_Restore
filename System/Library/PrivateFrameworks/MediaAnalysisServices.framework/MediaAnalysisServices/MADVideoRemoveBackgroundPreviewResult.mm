@interface MADVideoRemoveBackgroundPreviewResult
- ($1C75447F214D9465CD650DD956230C7F)timeRange;
- (CGRect)normalizedCropRect;
- (MADVideoRemoveBackgroundPreviewResult)initWithCoder:(id)coder;
- (MADVideoRemoveBackgroundPreviewResult)initWithTimeRange:(id *)range frames:(id)frames normalizedCropRect:(CGRect)rect;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVideoRemoveBackgroundPreviewResult

- (MADVideoRemoveBackgroundPreviewResult)initWithTimeRange:(id *)range frames:(id)frames normalizedCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  framesCopy = frames;
  v18.receiver = self;
  v18.super_class = MADVideoRemoveBackgroundPreviewResult;
  v13 = [(MADVideoRemoveBackgroundPreviewResult *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v16 = *&range->var0.var3;
    v15 = *&range->var1.var1;
    *&v13->_timeRange.start.value = *&range->var0.var0;
    *&v13->_timeRange.start.epoch = v16;
    *&v13->_timeRange.duration.timescale = v15;
    objc_storeStrong(&v13->_frames, frames);
    v14->_normalizedCropRect.origin.x = x;
    v14->_normalizedCropRect.origin.y = y;
    v14->_normalizedCropRect.size.width = width;
    v14->_normalizedCropRect.size.height = height;
  }

  return v14;
}

- (MADVideoRemoveBackgroundPreviewResult)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MADVideoRemoveBackgroundPreviewResult;
  v5 = [(MADVideoResult *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_timeRange.start.value = [coderCopy decodeInt64ForKey:@"TimeRangeStartValue"];
    v5->_timeRange.start.timescale = [coderCopy decodeInt32ForKey:@"TimeRangeStartScale"];
    v5->_timeRange.start.flags = [coderCopy decodeInt32ForKey:@"TimeRangeStartFlags"];
    v5->_timeRange.start.epoch = [coderCopy decodeInt64ForKey:@"TimeRangeStartEpoch"];
    v5->_timeRange.duration.value = [coderCopy decodeInt64ForKey:@"TimeRangeDurationValue"];
    v5->_timeRange.duration.timescale = [coderCopy decodeInt32ForKey:@"TimeRangeDurationScale"];
    v5->_timeRange.duration.flags = [coderCopy decodeInt32ForKey:@"TimeRangeDurationFlags"];
    v5->_timeRange.duration.epoch = [coderCopy decodeInt64ForKey:@"TimeRangeDurationEpoch"];
    v6 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Frames"];
    frames = v5->_frames;
    v5->_frames = v9;

    [coderCopy decodeRectForKey:@"NormalizedCropRect"];
    v5->_normalizedCropRect.origin.x = v11;
    v5->_normalizedCropRect.origin.y = v12;
    v5->_normalizedCropRect.size.width = v13;
    v5->_normalizedCropRect.size.height = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MADVideoRemoveBackgroundPreviewResult;
  [(MADVideoResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_timeRange.start.value forKey:@"TimeRangeStartValue"];
  [coderCopy encodeInt32:self->_timeRange.start.timescale forKey:@"TimeRangeStartScale"];
  [coderCopy encodeInt32:self->_timeRange.start.flags forKey:@"TimeRangeStartFlags"];
  [coderCopy encodeInt64:self->_timeRange.start.epoch forKey:@"TimeRangeStartEpoch"];
  [coderCopy encodeInt64:self->_timeRange.duration.value forKey:@"TimeRangeDurationValue"];
  [coderCopy encodeInt32:self->_timeRange.duration.timescale forKey:@"TimeRangeDurationScale"];
  [coderCopy encodeInt32:self->_timeRange.duration.flags forKey:@"TimeRangeDurationFlags"];
  [coderCopy encodeInt64:self->_timeRange.duration.epoch forKey:@"TimeRangeDurationEpoch"];
  [coderCopy encodeObject:self->_frames forKey:@"Frames"];
  [coderCopy encodeRect:@"NormalizedCropRect" forKey:{self->_normalizedCropRect.origin.x, self->_normalizedCropRect.origin.y, self->_normalizedCropRect.size.width, self->_normalizedCropRect.size.height}];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  timescale = self->_timeRange.start.timescale;
  time = self->_timeRange.start;
  [string appendFormat:@"start: %lld/%d (%0.3fs), ", time.value, timescale, CMTimeGetSeconds(&time)];
  v7 = self->_timeRange.duration.timescale;
  time = self->_timeRange.duration;
  [string appendFormat:@"duration: %lld/%d (%0.3fs), ", time.value, v7, CMTimeGetSeconds(&time)];
  [string appendFormat:@"frames: %@, ", self->_frames];
  [string appendFormat:@"normalizedCropRect: (%0.3f, %0.3f) to (%0.3f, %0.3f)>", *&self->_normalizedCropRect.origin.x, *&self->_normalizedCropRect.origin.y, self->_normalizedCropRect.origin.x + self->_normalizedCropRect.size.width, self->_normalizedCropRect.origin.y + self->_normalizedCropRect.size.height];

  return string;
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