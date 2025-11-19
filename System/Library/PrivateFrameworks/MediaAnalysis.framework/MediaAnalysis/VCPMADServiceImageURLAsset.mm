@interface VCPMADServiceImageURLAsset
- (CGSize)resolution;
- (VCPMADServiceImageURLAsset)initWithURL:(id)a3 identifier:(id)a4 clientBundleID:(id)a5 clientTeamID:(id)a6;
- (id)cachedParseData;
- (id)documentObservations;
- (int)loadPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int *)a4;
- (void)setCachedParseData:(id)a3 overwriteExisting:(BOOL)a4;
- (void)setDocumentObservations:(id)a3;
@end

@implementation VCPMADServiceImageURLAsset

- (VCPMADServiceImageURLAsset)initWithURL:(id)a3 identifier:(id)a4 clientBundleID:(id)a5 clientTeamID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = VCPMADServiceImageURLAsset;
  v13 = [(VCPMADServiceImageAsset *)&v16 initWithClientBundleID:a5 clientTeamID:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_url, a3);
    objc_storeStrong(&v14->_identifier, a4);
    v14->_orientation = 1;
  }

  return v14;
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
    v13 = CGImageSourceCreateWithURL(self->_url, 0);
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

- (int)loadPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int *)a4
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
      v12 = [(VCPMADServiceImageAsset *)self signpostPayload];
      *v19 = 138412290;
      *&v19[4] = v12;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPMADServiceImageURLAsset_Decode", "%@", v19, 0xCu);
    }

    v13 = +[VCPImageManager sharedImageManager];
    *v19 = [v13 pixelBufferWithFormat:875704422 fromImageURL:self->_url flushCache:1 orientation:&self->_orientation];
    CF<__CVBuffer *>::operator=(&self->_pixelBuffer.value_, v19);
    CF<__CVBuffer *>::~CF(v19);

    v14 = VCPSignPostLog();
    v15 = v14;
    if (v9 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v14))
    {
      v16 = [(VCPMADServiceImageAsset *)self signpostPayload];
      *v19 = 138412290;
      *&v19[4] = v16;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_END, v9, "VCPMADServiceImageURLAsset_Decode", "%@", v19, 0xCu);
    }

    value = self->_pixelBuffer.value_;
    if (!value)
    {
      return -18;
    }
  }

  v17 = CFRetain(value);
  result = 0;
  *a3 = v17;
  *a4 = self->_orientation;
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