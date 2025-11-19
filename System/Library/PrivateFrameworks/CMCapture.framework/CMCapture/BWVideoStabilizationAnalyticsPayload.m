@interface BWVideoStabilizationAnalyticsPayload
- (BWVideoStabilizationAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
- (void)setOverscanHistogram:(id)a3 BinningFactor:(int)a4 Histogram:(id)a5;
- (void)setSigmaHistogram:(id)a3;
@end

@implementation BWVideoStabilizationAnalyticsPayload

- (BWVideoStabilizationAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWVideoStabilizationAnalyticsPayload;
  v2 = [(BWVideoStabilizationAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWVideoStabilizationAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  v3 = 0;
  portType = self->_portType;
  do
  {

    portType[v3++] = 0;
  }

  while (v3 != 6);
  *&self->_overscanHistogram[0][0] = 0u;
  overscanHistogram = self->_overscanHistogram;
  (*overscanHistogram)[-26] = 0.0;
  *&(*overscanHistogram)[43] = 0;
  *&(*overscanHistogram)[-11] = 0;
  *&(*overscanHistogram)[-13] = 0;
  *&(*overscanHistogram)[-7] = 0;
  *&(*overscanHistogram)[-9] = 0;
  *&(*overscanHistogram)[-3] = 0;
  *&(*overscanHistogram)[-5] = 0;
  (*overscanHistogram)[-1] = 0.0;
  *&(*overscanHistogram)[4] = 0u;
  *&(*overscanHistogram)[8] = 0u;
  *&(*overscanHistogram)[12] = 0u;
  *&(*overscanHistogram)[16] = 0u;
  *&(*overscanHistogram)[20] = 0u;
  *&(*overscanHistogram)[24] = 0u;
  *&(*overscanHistogram)[28] = 0u;
  *&(*overscanHistogram)[32] = 0u;
  *&(*overscanHistogram)[36] = 0u;
  *&(*overscanHistogram)[40] = 0;
}

- (void)dealloc
{
  for (i = 40; i != 88; i += 8)
  {
  }

  v4.receiver = self;
  v4.super_class = BWVideoStabilizationAnalyticsPayload;
  [(BWVideoStabilizationAnalyticsPayload *)&v4 dealloc];
}

- (void)setSigmaHistogram:(id)a3
{
  if ([a3 count] > 6)
  {
    v5 = 7;
  }

  else
  {
    v5 = [a3 count];
    if (!v5)
    {
      return;
    }
  }

  v6 = 0;
  sigmaHistogram = self->_sigmaHistogram;
  do
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v6), "floatValue"}];
    sigmaHistogram[v6++] = v8;
  }

  while (v5 != v6);
}

- (void)setOverscanHistogram:(id)a3 BinningFactor:(int)a4 Histogram:(id)a5
{
  count = self->_count;
  if (count <= 5)
  {
    self->_portType[count] = a3;
    self->_binningFactor[count] = a4;
    if ([a5 count] > 6)
    {
      v8 = 7;
    }

    else
    {
      v8 = [a5 count];
      if (!v8)
      {
        v9 = self->_count;
LABEL_8:
        self->_count = v9 + 1;
        return;
      }
    }

    v10 = 0;
    overscanHistogram = self->_overscanHistogram;
    do
    {
      [objc_msgSend(a5 objectAtIndexedSubscript:{v10), "floatValue"}];
      v9 = self->_count;
      overscanHistogram[v9][0] = v12;
      ++v10;
      overscanHistogram = (overscanHistogram + 4);
    }

    while (v8 != v10);
    goto LABEL_8;
  }
}

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_devicePosition), @"devicePosition"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_height), @"height"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_width), @"width"}];
  *&v4 = self->_startingUIZoom;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v4), @"startingUIZoom"}];
  *&v5 = self->_minUIZoom;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v5), @"minUIZoom"}];
  *&v6 = self->_maxUIZoom;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v6), @"maxUIZoom"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_averageLuxValue), @"averageLuxValue"}];
  [v3 setObject:self->_videoType forKeyedSubscript:@"videoType"];
  for (i = 0; i != 7; ++i)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sigmaHist%d", i];
    *&v9 = self->_sigmaHistogram[i];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v9), v8}];
  }

  if (self->_count)
  {
    v10 = 0;
    overscanHistogram = self->_overscanHistogram;
    do
    {
      v12 = 0;
      v13 = self->_portType[v10];
      v14 = LOWORD(self->_binningFactor[v10]);
      do
      {
        v15 = [(NSString *)v13 stringByAppendingFormat:@"%doverscanHist%d", v14, v12];
        *&v16 = (*overscanHistogram)[v12];
        [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v16), v15}];
        ++v12;
      }

      while (v12 != 7);
      ++v10;
      ++overscanHistogram;
    }

    while (v10 < self->_count);
  }

  return v3;
}

@end