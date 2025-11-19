@interface VCPMADServiceImagePixelBufferAsset
- (CGSize)resolution;
- (VCPMADServiceImagePixelBufferAsset)initWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 andIdentifier:(id)a5 clientBundleID:(id)a6 clientTeamID:(id)a7;
- (id)cachedParseData;
- (id)documentObservations;
- (int)loadPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int *)a4;
- (void)setCachedParseData:(id)a3 overwriteExisting:(BOOL)a4;
- (void)setDocumentObservations:(id)a3;
@end

@implementation VCPMADServiceImagePixelBufferAsset

- (VCPMADServiceImagePixelBufferAsset)initWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 andIdentifier:(id)a5 clientBundleID:(id)a6 clientTeamID:(id)a7
{
  v13 = a5;
  v18.receiver = self;
  v18.super_class = VCPMADServiceImagePixelBufferAsset;
  v14 = [(VCPMADServiceImageAsset *)&v18 initWithClientBundleID:a6 clientTeamID:a7];
  if (v14)
  {
    if (a3)
    {
      v15 = CFRetain(a3);
    }

    else
    {
      v15 = 0;
    }

    v17 = v15;
    CF<__CVBuffer *>::operator=(&v14->_pixelBuffer.value_, &v17);
    CF<__CVBuffer *>::~CF(&v17);
    v14->_orientation = a4;
    objc_storeStrong(&v14->_identifier, a5);
  }

  return v14;
}

- (CGSize)resolution
{
  Width = CVPixelBufferGetWidth(self->_pixelBuffer.value_);
  Height = CVPixelBufferGetHeight(self->_pixelBuffer.value_);
  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (int)loadPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int *)a4
{
  value = self->_pixelBuffer.value_;
  if (value)
  {
    value = CFRetain(value);
  }

  *a3 = value;
  *a4 = self->_orientation;
  return 0;
}

- (id)documentObservations
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_documentObservations && MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v6 = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[OCR][%@] Re-using cached results", &v6, 0xCu);
  }

  documentObservations = self->_documentObservations;

  return documentObservations;
}

- (void)setDocumentObservations:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  documentObservations = self->_documentObservations;
  self->_documentObservations = v4;
}

- (id)cachedParseData
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_hasCachedParseData && MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    v6 = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VS][%@] Re-using cached results", &v6, 0xCu);
  }

  cachedParseData = self->_cachedParseData;

  return cachedParseData;
}

- (void)setCachedParseData:(id)a3 overwriteExisting:(BOOL)a4
{
  v7 = a3;
  v5 = [v7 copy];
  cachedParseData = self->_cachedParseData;
  self->_cachedParseData = v5;

  self->_hasCachedParseData = 1;
}

@end