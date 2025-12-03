@interface VCPMADServiceImagePixelBufferAsset
- (CGSize)resolution;
- (VCPMADServiceImagePixelBufferAsset)initWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation andIdentifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD;
- (id)cachedParseData;
- (id)documentObservations;
- (int)loadPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation;
- (void)setCachedParseData:(id)data overwriteExisting:(BOOL)existing;
- (void)setDocumentObservations:(id)observations;
@end

@implementation VCPMADServiceImagePixelBufferAsset

- (VCPMADServiceImagePixelBufferAsset)initWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation andIdentifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = VCPMADServiceImagePixelBufferAsset;
  v14 = [(VCPMADServiceImageAsset *)&v18 initWithClientBundleID:d clientTeamID:iD];
  if (v14)
  {
    if (buffer)
    {
      v15 = CFRetain(buffer);
    }

    else
    {
      v15 = 0;
    }

    v17 = v15;
    CF<__CVBuffer *>::operator=(&v14->_pixelBuffer.value_, &v17);
    CF<__CVBuffer *>::~CF(&v17);
    v14->_orientation = orientation;
    objc_storeStrong(&v14->_identifier, identifier);
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

- (int)loadPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation
{
  value = self->_pixelBuffer.value_;
  if (value)
  {
    value = CFRetain(value);
  }

  *buffer = value;
  *orientation = self->_orientation;
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

- (void)setDocumentObservations:(id)observations
{
  observationsCopy = observations;
  v4 = [observationsCopy copy];
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

- (void)setCachedParseData:(id)data overwriteExisting:(BOOL)existing
{
  dataCopy = data;
  v5 = [dataCopy copy];
  cachedParseData = self->_cachedParseData;
  self->_cachedParseData = v5;

  self->_hasCachedParseData = 1;
}

@end