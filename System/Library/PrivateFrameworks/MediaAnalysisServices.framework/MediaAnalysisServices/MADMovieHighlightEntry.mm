@interface MADMovieHighlightEntry
+ (id)entryWithTimeRange:(id *)range score:(double)score attributes:(id)attributes;
- ($1C75447F214D9465CD650DD956230C7F)timeRange;
- (MADMovieHighlightEntry)initWithCoder:(id)coder;
- (MADMovieHighlightEntry)initWithTimeRange:(id *)range score:(double)score attributes:(id)attributes;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADMovieHighlightEntry

- (MADMovieHighlightEntry)initWithTimeRange:(id *)range score:(double)score attributes:(id)attributes
{
  attributesCopy = attributes;
  v15.receiver = self;
  v15.super_class = MADMovieHighlightEntry;
  v10 = [(MADMovieHighlightEntry *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&range->var0.var0;
    v13 = *&range->var0.var3;
    *(v10 + 56) = *&range->var1.var1;
    *(v10 + 40) = v13;
    *(v10 + 24) = v12;
    *(v10 + 1) = score;
    objc_storeStrong(v10 + 2, attributes);
  }

  return v11;
}

+ (id)entryWithTimeRange:(id *)range score:(double)score attributes:(id)attributes
{
  attributesCopy = attributes;
  v9 = [self alloc];
  v10 = *&range->var0.var3;
  v13[0] = *&range->var0.var0;
  v13[1] = v10;
  v13[2] = *&range->var1.var1;
  v11 = [v9 initWithTimeRange:v13 score:attributesCopy attributes:score];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = *&self->_timeRange.start.epoch;
  v6[0] = *&self->_timeRange.start.value;
  v6[1] = v5;
  v6[2] = *&self->_timeRange.duration.timescale;
  [coderCopy encodeCMTimeRange:v6 forKey:@"TimeRange"];
  [coderCopy encodeDouble:@"Score" forKey:self->_score];
  [coderCopy encodeObject:self->_attributes forKey:@"Attributes"];
}

- (MADMovieHighlightEntry)initWithCoder:(id)coder
{
  v17[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MADMovieHighlightEntry;
  v5 = [(MADMovieHighlightEntry *)&v16 init];
  if (v5)
  {
    if (coderCopy)
    {
      [coderCopy decodeCMTimeRangeForKey:@"TimeRange"];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    *(v5 + 24) = v13;
    *(v5 + 40) = v14;
    *(v5 + 56) = v15;
    [coderCopy decodeDoubleForKey:{@"Score", v13, v14, v15}];
    *(v5 + 1) = v6;
    v7 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
    v9 = [v7 setWithArray:v8];

    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"Attributes"];
    v11 = *(v5 + 2);
    *(v5 + 2) = v10;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  *&time.start.value = *&self->_timeRange.start.value;
  time.start.epoch = self->_timeRange.start.epoch;
  Seconds = CMTimeGetSeconds(&time.start);
  v7 = *&self->_timeRange.start.epoch;
  *&time.start.value = *&self->_timeRange.start.value;
  *&time.start.epoch = v7;
  *&time.duration.timescale = *&self->_timeRange.duration.timescale;
  CMTimeRangeGetEnd(&v10, &time);
  [string appendFormat:@"%@: %-.4fs-%-.4fs, ", @"TimeRange", *&Seconds, CMTimeGetSeconds(&v10)];
  [string appendFormat:@"%@: %@, ", @"Attributes", self->_attributes];
  [string appendFormat:@"%@: %.2f>", @"Score", *&self->_score];

  return string;
}

- ($1C75447F214D9465CD650DD956230C7F)timeRange
{
  v3 = *&self->var1.var3;
  *&retstr->var0.var0 = *&self->var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var1;
  return self;
}

@end