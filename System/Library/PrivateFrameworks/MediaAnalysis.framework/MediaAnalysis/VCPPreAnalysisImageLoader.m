@interface VCPPreAnalysisImageLoader
- (VCPPreAnalysisImageLoader)initWithMonochromeBufferCreator:(id)a3;
- (int)_convertFromBuffer:(__CVBuffer *)a3 toLumaPixelBuffer:(__CVBuffer *)a4 abnormalDimension:(unint64_t)a5;
- (int)_createPixelBufferWithWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(int)a5 pixelBuffer:(__CVBuffer *)a6;
- (int)loadImageURL:(id)a3 abnormalDimension:(unint64_t)a4 withNonPanoPreWarmSizes:(id)a5 toColorPixelBuffer:(__CVBuffer *)a6 lumaPixelBuffer:(__CVBuffer *)a7 andImage:(id *)a8;
@end

@implementation VCPPreAnalysisImageLoader

- (VCPPreAnalysisImageLoader)initWithMonochromeBufferCreator:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = VCPPreAnalysisImageLoader;
  v6 = [(VCPPreAnalysisImageLoader *)&v10 init];
  if (v6)
  {
    v7 = +[VCPSceneProcessingImageManager imageManager];
    imageManager = v6->_imageManager;
    v6->_imageManager = v7;

    objc_storeStrong(&v6->_monochromeBufferCreator, a3);
  }

  return v6;
}

- (int)_createPixelBufferWithWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(int)a5 pixelBuffer:(__CVBuffer *)a6
{
  v6 = a6;
  v13[1] = *MEMORY[0x1E69E9840];
  *a6 = 0;
  v12 = *MEMORY[0x1E69660D8];
  v13[0] = MEMORY[0x1E695E0F8];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  LODWORD(v6) = CVPixelBufferCreate(0, a3, a4, a5, v10, v6);

  return v6;
}

- (int)_convertFromBuffer:(__CVBuffer *)a3 toLumaPixelBuffer:(__CVBuffer *)a4 abnormalDimension:(unint64_t)a5
{
  *a4 = 0;
  cf = 0;
  v8 = self;
  objc_sync_enter(v8);
  if (a5)
  {
    Width = CVPixelBufferGetWidth(a3);
    v10 = [(VCPPreAnalysisImageLoader *)v8 _createPixelBufferWithWidth:Width height:CVPixelBufferGetHeight(a3) pixelFormat:1278226488 pixelBuffer:&cf];
  }

  else
  {
    v10 = [(VCPPoolBasedPixelBufferCreator *)v8->_monochromeBufferCreator createPixelBuffer:&cf];
  }

  v11 = v10;
  if (v10)
  {
    goto LABEL_11;
  }

  value = v8->_transferSession.value_;
  if (!value)
  {
    v11 = VTPixelTransferSessionCreate(0, &v8->_transferSession.value_);
    if (v11)
    {
      goto LABEL_11;
    }

    value = v8->_transferSession.value_;
  }

  v11 = VTPixelTransferSessionTransferImage(value, a3, cf);
  if (v11)
  {
LABEL_11:
    objc_sync_exit(v8);
    goto LABEL_12;
  }

  v13 = cf;
  if (cf)
  {
    v13 = CFRetain(cf);
  }

  *a4 = v13;
  objc_sync_exit(v8);
  v11 = 0;
LABEL_12:

  CF<__CVBuffer *>::~CF(&cf);
  return v11;
}

- (int)loadImageURL:(id)a3 abnormalDimension:(unint64_t)a4 withNonPanoPreWarmSizes:(id)a5 toColorPixelBuffer:(__CVBuffer *)a6 lumaPixelBuffer:(__CVBuffer *)a7 andImage:(id *)a8
{
  v48 = *MEMORY[0x1E69E9840];
  v14 = a5;
  pixelBuffer = 0;
  v15 = [(VCPSceneProcessingImageManager *)self->_imageManager loadFullPixelBuffer:&pixelBuffer scaledPixelBuffer299:0 scaledPixelBuffer360:0 fromImageURL:a3 abnormalDimension:a4];
  if (!v15)
  {
    v37 = a6;
    v38 = self;
    v39 = a7;
    v40 = v14;
    v16 = [VCPPreAnalysisImage alloc];
    *a8 = [(VCPPreAnalysisImage *)v16 initWithPixelBuffer:pixelBuffer];
    v17 = 299;
    if (a4)
    {
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      v20 = v37;
      v21 = Width > Height;
      v22 = Height / Width;
      if (Width > Height)
      {
        v22 = Width / Height;
      }

      v23 = 299 * v22;
      if (Width <= Height)
      {
        v24 = v23;
      }

      else
      {
        v24 = 299;
      }

      if (v21)
      {
        v17 = v23;
      }
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v26 = v14;
      v27 = [v26 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v27)
      {
        v28 = *v43;
        while (2)
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v43 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v42 + 1) + 8 * i);
            v31 = objc_autoreleasePoolPush();
            v32 = *a8;
            [v30 sizeValue];
            v34 = v33;
            [v30 sizeValue];
            v15 = [v32 preWarmWidth:v34 andHeight:v35];
            objc_autoreleasePoolPop(v31);
            if (v15)
            {

              v14 = v40;
              goto LABEL_24;
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v42 objects:v47 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      v24 = 299;
      a7 = v39;
      v14 = v40;
      v20 = v37;
      self = v38;
    }

    v15 = [*a8 preWarmWidth:v17 andHeight:v24];
    if (!v15)
    {
      v41 = 0;
      [*a8 pixelBuffer:&v41 width:v17 height:v24];
      v25 = pixelBuffer;
      if (pixelBuffer)
      {
        v25 = CFRetain(pixelBuffer);
      }

      *v20 = v25;
      v15 = [(VCPPreAnalysisImageLoader *)self _convertFromBuffer:v41 toLumaPixelBuffer:a7 abnormalDimension:a4];
      CF<__CVBuffer *>::~CF(&v41);
    }
  }

LABEL_24:
  CF<__CVBuffer *>::~CF(&pixelBuffer);

  return v15;
}

@end