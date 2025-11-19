@interface MADMovieCurationScoreEntry
+ (id)entryWithTimeRange:(id *)a3 score:(double)a4;
- ($1C75447F214D9465CD650DD956230C7F)timeRange;
- (MADMovieCurationScoreEntry)initWithCoder:(id)a3;
- (MADMovieCurationScoreEntry)initWithTimeRange:(id *)a3 score:(double)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADMovieCurationScoreEntry

- (MADMovieCurationScoreEntry)initWithTimeRange:(id *)a3 score:(double)a4
{
  v9.receiver = self;
  v9.super_class = MADMovieCurationScoreEntry;
  result = [(MADMovieCurationScoreEntry *)&v9 init];
  if (result)
  {
    v7 = *&a3->var0.var0;
    v8 = *&a3->var1.var1;
    *&result->_timeRange.start.epoch = *&a3->var0.var3;
    *&result->_timeRange.duration.timescale = v8;
    *&result->_timeRange.start.value = v7;
    result->_score = a4;
  }

  return result;
}

+ (id)entryWithTimeRange:(id *)a3 score:(double)a4
{
  v6 = [a1 alloc];
  v7 = *&a3->var0.var3;
  v10[0] = *&a3->var0.var0;
  v10[1] = v7;
  v10[2] = *&a3->var1.var1;
  v8 = [v6 initWithTimeRange:v10 score:a4];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = *&self->_timeRange.start.epoch;
  v6[0] = *&self->_timeRange.start.value;
  v6[1] = v5;
  v6[2] = *&self->_timeRange.duration.timescale;
  [v4 encodeCMTimeRange:v6 forKey:@"TimeRange"];
  [v4 encodeDouble:@"Score" forKey:self->_score];
}

- (MADMovieCurationScoreEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADMovieCurationScoreEntry;
  v5 = [(MADMovieCurationScoreEntry *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      [v4 decodeCMTimeRangeForKey:@"TimeRange"];
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
    }

    *&v5->_timeRange.start.value = v8;
    *&v5->_timeRange.start.epoch = v9;
    *&v5->_timeRange.duration.timescale = v10;
    [v4 decodeDoubleForKey:{@"Score", v8, v9, v10}];
    v5->_score = v6;
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
  CMTimeRangeGetEnd(&v10, &time);
  [v3 appendFormat:@"%@: %-.4fs-%-.4fs, ", @"TimeRange", *&Seconds, CMTimeGetSeconds(&v10)];
  [v3 appendFormat:@"%@: %.2f>", @"Score", *&self->_score];

  return v3;
}

- ($1C75447F214D9465CD650DD956230C7F)timeRange
{
  v3 = *&self->var1.var1;
  *&retstr->var0.var0 = *&self->var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var0;
  return self;
}

@end