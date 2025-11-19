@interface BWIOSurfaceCompressionStatisticsAnalyticsPayload
- (id)eventDictionary;
@end

@implementation BWIOSurfaceCompressionStatisticsAnalyticsPayload

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_averageRatio;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v4), @"avgRatio"}];
  *&v5 = self->_minRatio;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v5), @"minRatio"}];
  *&v6 = self->_maxRatio;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v6), @"maxRatio"}];
  *&v7 = self->_standardDeviation;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v7), @"stdDev"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_compressionType), @"compressionType"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfSamples), @"numFrames"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_totalCompressedSize), @"totalCompressedSize"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_totalUncompressedSize), @"totalUncompressedSize"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_nodeType), @"nodeType"}];
  bufferHeight = self->_bufferHeight;
  if (bufferHeight - 1080 < 0x438)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (bufferHeight > 0x86F);
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v9), @"resolution"}];
  return v3;
}

@end