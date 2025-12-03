@interface BWIOSurfaceCompressionStatisticsAnalyticsPayload
- (id)eventDictionary;
@end

@implementation BWIOSurfaceCompressionStatisticsAnalyticsPayload

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_averageRatio;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v4), @"avgRatio"}];
  *&v5 = self->_minRatio;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v5), @"minRatio"}];
  *&v6 = self->_maxRatio;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v6), @"maxRatio"}];
  *&v7 = self->_standardDeviation;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v7), @"stdDev"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_compressionType), @"compressionType"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfSamples), @"numFrames"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_totalCompressedSize), @"totalCompressedSize"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_totalUncompressedSize), @"totalUncompressedSize"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_nodeType), @"nodeType"}];
  bufferHeight = self->_bufferHeight;
  if (bufferHeight - 1080 < 0x438)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (bufferHeight > 0x86F);
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v9), @"resolution"}];
  return dictionary;
}

@end