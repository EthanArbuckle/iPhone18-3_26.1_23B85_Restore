@interface VCPPreAnalysisImage
- (VCPPreAnalysisImage)initWithPixelBuffer:(__CVBuffer *)a3;
- (int)pixelBuffer:(__CVBuffer *)a3 width:(unint64_t)a4 height:(unint64_t)a5;
- (int)preWarmWidth:(unint64_t)a3 andHeight:(unint64_t)a4;
@end

@implementation VCPPreAnalysisImage

- (VCPPreAnalysisImage)initWithPixelBuffer:(__CVBuffer *)a3
{
  v13.receiver = self;
  v13.super_class = VCPPreAnalysisImage;
  v4 = [(VCPPreAnalysisImage *)&v13 init];
  if (v4)
  {
    v12 = CFRetain(a3);
    CF<__CVBuffer *>::operator=(&v4->_sourcePixelBuffer.value_, &v12);
    CF<__CVBuffer *>::~CF(&v12);
    v5 = [MEMORY[0x1E695DF90] dictionary];
    scaledPixelBuffers = v4->_scaledPixelBuffers;
    v4->_scaledPixelBuffers = v5;

    v7 = MEMORY[0x1E696B098];
    Width = CVPixelBufferGetWidth(a3);
    v9 = [v7 valueWithSize:{Width, CVPixelBufferGetHeight(a3)}];
    v10 = [[VCPPreAnalysisImageEntry alloc] initWithPixelBuffer:v4->_sourcePixelBuffer.value_];
    [(VCPPreAnalysisImageEntry *)v10 setCount:1];
    [(NSMutableDictionary *)v4->_scaledPixelBuffers setObject:v10 forKeyedSubscript:v9];
  }

  return v4;
}

- (int)preWarmWidth:(unint64_t)a3 andHeight:(unint64_t)a4
{
  v6 = self;
  objc_sync_enter(v6);
  v7 = [MEMORY[0x1E696B098] valueWithSize:{a3, a4}];
  v8 = [(NSMutableDictionary *)v6->_scaledPixelBuffers objectForKeyedSubscript:v7];
  if (!v8)
  {
    v14 = 0;
    v10 = +[VCPSceneProcessingImageManager imageManager];
    v9 = [v10 scalePixelBuffer:v6->_sourcePixelBuffer.value_ toPixelBuffer:&v14 width:a3 height:a4];

    if (v9)
    {
      CF<__CVBuffer *>::~CF(&v14);
      goto LABEL_5;
    }

    v12 = [VCPPreAnalysisImageEntry alloc];
    v13 = [(VCPPreAnalysisImageEntry *)v12 initWithPixelBuffer:v14];
    [(NSMutableDictionary *)v6->_scaledPixelBuffers setObject:v13 forKeyedSubscript:v7];

    CF<__CVBuffer *>::~CF(&v14);
  }

  v9 = 0;
LABEL_5:

  objc_sync_exit(v6);
  return v9;
}

- (int)pixelBuffer:(__CVBuffer *)a3 width:(unint64_t)a4 height:(unint64_t)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = self;
  objc_sync_enter(v8);
  v9 = [MEMORY[0x1E696B098] valueWithSize:{a4, a5}];
  v10 = [(NSMutableDictionary *)v8->_scaledPixelBuffers objectForKeyedSubscript:v9];
  if (!v10)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LODWORD(v16) = 67109376;
      HIDWORD(v16) = a4;
      v17 = 1024;
      v18 = a5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PreAnalysis] Image not pre-warmed; creating on-demand (%dx%d)", &v16, 0xEu);
    }

    v12 = +[VCPSceneProcessingImageManager imageManager];
    v11 = [v12 scalePixelBuffer:v8->_sourcePixelBuffer.value_ toPixelBuffer:&v16 width:a4 height:a5];

    if (v11)
    {
      CF<__CVBuffer *>::~CF(&v16);
      goto LABEL_8;
    }

    scaledPixelBuffers = v8->_scaledPixelBuffers;
    v15 = [VCPPreAnalysisImageEntry alloc];
    v10 = [(VCPPreAnalysisImageEntry *)v15 initWithPixelBuffer:v16];
    [(NSMutableDictionary *)scaledPixelBuffers setObject:v10 forKeyedSubscript:v9];
    CF<__CVBuffer *>::~CF(&v16);
  }

  [(VCPPreAnalysisImageEntry *)v10 setCount:[(VCPPreAnalysisImageEntry *)v10 count]+ 1];
  *a3 = CFRetain([(VCPPreAnalysisImageEntry *)v10 pixelBuffer]);

  v11 = 0;
LABEL_8:

  objc_sync_exit(v8);
  return v11;
}

@end