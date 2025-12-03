@interface VCPPreAnalysisImageEntry
- (VCPPreAnalysisImageEntry)initWithPixelBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
@end

@implementation VCPPreAnalysisImageEntry

- (VCPPreAnalysisImageEntry)initWithPixelBuffer:(__CVBuffer *)buffer
{
  v7.receiver = self;
  v7.super_class = VCPPreAnalysisImageEntry;
  v4 = [(VCPPreAnalysisImageEntry *)&v7 init];
  if (v4)
  {
    v6 = CFRetain(buffer);
    CF<__CVBuffer *>::operator=(&v4->_pixelBuffer.value_, &v6);
    CF<__CVBuffer *>::~CF(&v6);
  }

  return v4;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_count && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    Width = CVPixelBufferGetWidth(self->_pixelBuffer.value_);
    Height = CVPixelBufferGetHeight(self->_pixelBuffer.value_);
    *buf = 67109376;
    v7 = Width;
    v8 = 1024;
    v9 = Height;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PreAnalysis] Pre-warmed image unused (%dx%d)", buf, 0xEu);
  }

  v5.receiver = self;
  v5.super_class = VCPPreAnalysisImageEntry;
  [(VCPPreAnalysisImageEntry *)&v5 dealloc];
}

@end