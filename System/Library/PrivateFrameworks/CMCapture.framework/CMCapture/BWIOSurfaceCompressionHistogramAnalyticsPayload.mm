@interface BWIOSurfaceCompressionHistogramAnalyticsPayload
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
- (void)setChromaCompressionHistogram:(unint64_t)a3[16];
- (void)setLumaCompressionHistogram:(unint64_t)a3[16];
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

- (void)setLumaCompressionHistogram:(unint64_t)a3[16]
{
  v3 = *a3;
  v4 = *(a3 + 1);
  v5 = *(a3 + 3);
  *&self->_lumaCompressionHistogram[4] = *(a3 + 2);
  *&self->_lumaCompressionHistogram[6] = v5;
  *self->_lumaCompressionHistogram = v3;
  *&self->_lumaCompressionHistogram[2] = v4;
  v6 = *(a3 + 4);
  v7 = *(a3 + 5);
  v8 = *(a3 + 7);
  *&self->_lumaCompressionHistogram[12] = *(a3 + 6);
  *&self->_lumaCompressionHistogram[14] = v8;
  *&self->_lumaCompressionHistogram[8] = v6;
  *&self->_lumaCompressionHistogram[10] = v7;
}

- (void)setChromaCompressionHistogram:(unint64_t)a3[16]
{
  v3 = *a3;
  v4 = *(a3 + 1);
  v5 = *(a3 + 3);
  *&self->_chromaCompressionHistogram[4] = *(a3 + 2);
  *&self->_chromaCompressionHistogram[6] = v5;
  *self->_chromaCompressionHistogram = v3;
  *&self->_chromaCompressionHistogram[2] = v4;
  v6 = *(a3 + 4);
  v7 = *(a3 + 5);
  v8 = *(a3 + 7);
  *&self->_chromaCompressionHistogram[12] = *(a3 + 6);
  *&self->_chromaCompressionHistogram[14] = v8;
  *&self->_chromaCompressionHistogram[8] = v6;
  *&self->_chromaCompressionHistogram[10] = v7;
}

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_portType forKeyedSubscript:@"portType"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_nodeType), @"nodeType"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_pixelFormatIsTenBit), @"pixelFormatIsTenBit"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfSamples), @"numberOfSamples"}];
  bufferHeight = self->_bufferHeight;
  if (bufferHeight - 1080 < 0x438)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (bufferHeight > 0x86F);
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v5), @"resolution"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", vaddvq_s64(vaddq_s64(*self->_lumaCompressionHistogram, *&self->_lumaCompressionHistogram[2]))), @"luma_128_to_512"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_lumaCompressionHistogram[4]), @"luma_640"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_lumaCompressionHistogram[5]), @"luma_768"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_lumaCompressionHistogram[6]), @"luma_896"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_lumaCompressionHistogram[7]), @"luma_1024"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_lumaCompressionHistogram[8]), @"luma_1152"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_lumaCompressionHistogram[9]), @"luma_1280"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_chromaCompressionHistogram[1] + self->_chromaCompressionHistogram[0]), @"chroma_128_to_256"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_chromaCompressionHistogram[2]), @"chroma_384"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_chromaCompressionHistogram[3]), @"chroma_512"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", self->_chromaCompressionHistogram[4]), @"chroma_640"}];
  return v3;
}

@end