@interface BWIOSurfaceCompressionHistogramAnalyticsPayload
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
- (void)setChromaCompressionHistogram:(unint64_t)histogram[16];
- (void)setLumaCompressionHistogram:(unint64_t)histogram[16];
@end

@implementation BWIOSurfaceCompressionHistogramAnalyticsPayload

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWIOSurfaceCompressionHistogramAnalyticsPayload;
  [(BWIOSurfaceCompressionHistogramAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_portType = 0;
  *self->_lumaCompressionHistogram = 0u;
  *&self->_lumaCompressionHistogram[2] = 0u;
  *&self->_lumaCompressionHistogram[4] = 0u;
  *&self->_lumaCompressionHistogram[6] = 0u;
  *&self->_lumaCompressionHistogram[8] = 0u;
  *&self->_lumaCompressionHistogram[10] = 0u;
  *&self->_lumaCompressionHistogram[12] = 0u;
  *&self->_lumaCompressionHistogram[14] = 0u;
  *self->_chromaCompressionHistogram = 0u;
  *&self->_chromaCompressionHistogram[2] = 0u;
  *&self->_chromaCompressionHistogram[4] = 0u;
  *&self->_chromaCompressionHistogram[6] = 0u;
  *&self->_chromaCompressionHistogram[8] = 0u;
  *&self->_chromaCompressionHistogram[10] = 0u;
  *&self->_chromaCompressionHistogram[12] = 0u;
  *&self->_chromaCompressionHistogram[14] = 0u;
}

- (void)setLumaCompressionHistogram:(unint64_t)histogram[16]
{
  v3 = *histogram;
  v4 = *(histogram + 1);
  v5 = *(histogram + 3);
  *&self->_lumaCompressionHistogram[4] = *(histogram + 2);
  *&self->_lumaCompressionHistogram[6] = v5;
  *self->_lumaCompressionHistogram = v3;
  *&self->_lumaCompressionHistogram[2] = v4;
  v6 = *(histogram + 4);
  v7 = *(histogram + 5);
  v8 = *(histogram + 7);
  *&self->_lumaCompressionHistogram[12] = *(histogram + 6);
  *&self->_lumaCompressionHistogram[14] = v8;
  *&self->_lumaCompressionHistogram[8] = v6;
  *&self->_lumaCompressionHistogram[10] = v7;
}

- (void)setChromaCompressionHistogram:(unint64_t)histogram[16]
{
  v3 = *histogram;
  v4 = *(histogram + 1);
  v5 = *(histogram + 3);
  *&self->_chromaCompressionHistogram[4] = *(histogram + 2);
  *&self->_chromaCompressionHistogram[6] = v5;
  *self->_chromaCompressionHistogram = v3;
  *&self->_chromaCompressionHistogram[2] = v4;
  v6 = *(histogram + 4);
  v7 = *(histogram + 5);
  v8 = *(histogram + 7);
  *&self->_chromaCompressionHistogram[12] = *(histogram + 6);
  *&self->_chromaCompressionHistogram[14] = v8;
  *&self->_chromaCompressionHistogram[8] = v6;
  *&self->_chromaCompressionHistogram[10] = v7;
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_portType forKeyedSubscript:@"portType"];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_nodeType), @"nodeType"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_pixelFormatIsTenBit), @"pixelFormatIsTenBit"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfSamples), @"numberOfSamples"}];
  bufferHeight = self->_bufferHeight;
  if (bufferHeight - 1080 < 0x438)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (bufferHeight > 0x86F);
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v5), @"resolution"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", vaddvq_s64(vaddq_s64(*self->_lumaCompressionHistogram, *&self->_lumaCompressionHistogram[2]))), @"luma_128_to_512"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_lumaCompressionHistogram[4]), @"luma_640"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_lumaCompressionHistogram[5]), @"luma_768"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_lumaCompressionHistogram[6]), @"luma_896"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_lumaCompressionHistogram[7]), @"luma_1024"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_lumaCompressionHistogram[8]), @"luma_1152"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_lumaCompressionHistogram[9]), @"luma_1280"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_chromaCompressionHistogram[1] + self->_chromaCompressionHistogram[0]), @"chroma_128_to_256"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_chromaCompressionHistogram[2]), @"chroma_384"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_chromaCompressionHistogram[3]), @"chroma_512"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_chromaCompressionHistogram[4]), @"chroma_640"}];
  return dictionary;
}

@end