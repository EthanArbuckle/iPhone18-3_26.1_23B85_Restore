@interface VCPMADServiceImageDataAsset
- (CGSize)resolution;
- (VCPMADServiceImageDataAsset)initWithImageData:(id)data uniformTypeIdentifier:(id)identifier identifier:(id)a5 clientBundleID:(id)d clientTeamID:(id)iD;
- (id)cachedParseData;
- (id)documentObservations;
- (int)loadPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation;
- (void)setCachedParseData:(id)data overwriteExisting:(BOOL)existing;
- (void)setDocumentObservations:(id)observations;
@end

@implementation VCPMADServiceImageDataAsset

- (VCPMADServiceImageDataAsset)initWithImageData:(id)data uniformTypeIdentifier:(id)identifier identifier:(id)a5 clientBundleID:(id)d clientTeamID:(id)iD
{
  dataCopy = data;
  identifierCopy = identifier;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = VCPMADServiceImageDataAsset;
  v16 = [(VCPMADServiceImageAsset *)&v19 initWithClientBundleID:d clientTeamID:iD];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_imageData, data);
    v17->_orientation = 1;
    objc_storeStrong(&v17->_identifier, a5);
    objc_storeStrong(&v17->_uniformTypeIdentifier, identifier);
  }

  return v17;
}

- (CGSize)resolution
{
  value = self->_pixelBuffer.value_;
  if (value)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetWidth(value)];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetHeight(self->_pixelBuffer.value_)];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_orientation];
    Size = CGSizeWithOrientation(v4, v5, v6);
    v9 = v8;
  }

  else
  {
    v13 = CGImageSourceCreateWithData(self->_imageData, 0);
    Size = CGImageSourceGetSize(v13);
    v9 = v10;
    CF<__CVBuffer *>::~CF(&v13);
  }

  v11 = Size;
  v12 = v9;
  result.height = v12;
  result.width = v11;
  return result;
}

- (int)loadPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation
{
  v20 = *MEMORY[0x1E69E9840];
  value = self->_pixelBuffer.value_;
  if (!value)
  {
    v8 = VCPSignPostLog();
    v9 = os_signpost_id_generate(v8);

    v10 = VCPSignPostLog();
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      signpostPayload = [(VCPMADServiceImageAsset *)self signpostPayload];
      *v19 = 138412290;
      *&v19[4] = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPMADServiceImageDataAsset_Decode", "%@", v19, 0xCu);
    }

    v13 = +[VCPImageManager sharedImageManager];
    *v19 = [v13 pixelBufferWithFormat:875704422 andMaxDimension:0 fromData:self->_imageData withUniformTypeIdentifier:self->_uniformTypeIdentifier flushCache:1 orientation:&self->_orientation];
    CF<__CVBuffer *>::operator=(&self->_pixelBuffer.value_, v19);
    CF<__CVBuffer *>::~CF(v19);

    v14 = VCPSignPostLog();
    v15 = v14;
    if (v9 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v14))
    {
      signpostPayload2 = [(VCPMADServiceImageAsset *)self signpostPayload];
      *v19 = 138412290;
      *&v19[4] = signpostPayload2;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_END, v9, "VCPMADServiceImageDataAsset_Decode", "%@", v19, 0xCu);
    }

    value = self->_pixelBuffer.value_;
    if (!value)
    {
      return -18;
    }
  }

  v17 = CFRetain(value);
  result = 0;
  *buffer = v17;
  *orientation = self->_orientation;
  return result;
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