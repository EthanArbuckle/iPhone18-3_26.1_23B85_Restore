@interface VCPPreAnalysisImageLoader
- (VCPPreAnalysisImageLoader)initWithMonochromeBufferCreator:(id)creator;
- (int)_convertFromBuffer:(__CVBuffer *)buffer toLumaPixelBuffer:(__CVBuffer *)pixelBuffer abnormalDimension:(unint64_t)dimension;
- (int)_createPixelBufferWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(int)format pixelBuffer:(__CVBuffer *)buffer;
- (int)loadImageURL:(id)l abnormalDimension:(unint64_t)dimension withNonPanoPreWarmSizes:(id)sizes toColorPixelBuffer:(__CVBuffer *)buffer lumaPixelBuffer:(__CVBuffer *)pixelBuffer andImage:(id *)image;
@end

@implementation VCPPreAnalysisImageLoader

- (VCPPreAnalysisImageLoader)initWithMonochromeBufferCreator:(id)creator
{
  creatorCopy = creator;
  v10.receiver = self;
  v10.super_class = VCPPreAnalysisImageLoader;
  v6 = [(VCPPreAnalysisImageLoader *)&v10 init];
  if (v6)
  {
    v7 = +[VCPSceneProcessingImageManager imageManager];
    imageManager = v6->_imageManager;
    v6->_imageManager = v7;

    objc_storeStrong(&v6->_monochromeBufferCreator, creator);
  }

  return v6;
}

- (int)_createPixelBufferWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(int)format pixelBuffer:(__CVBuffer *)buffer
{
  bufferCopy = buffer;
  v13[1] = *MEMORY[0x1E69E9840];
  *buffer = 0;
  v12 = *MEMORY[0x1E69660D8];
  v13[0] = MEMORY[0x1E695E0F8];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  LODWORD(bufferCopy) = CVPixelBufferCreate(0, width, height, format, v10, bufferCopy);

  return bufferCopy;
}

- (int)_convertFromBuffer:(__CVBuffer *)buffer toLumaPixelBuffer:(__CVBuffer *)pixelBuffer abnormalDimension:(unint64_t)dimension
{
  *pixelBuffer = 0;
  cf = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (dimension)
  {
    Width = CVPixelBufferGetWidth(buffer);
    v10 = [(VCPPreAnalysisImageLoader *)selfCopy _createPixelBufferWithWidth:Width height:CVPixelBufferGetHeight(buffer) pixelFormat:1278226488 pixelBuffer:&cf];
  }

  else
  {
    v10 = [(VCPPoolBasedPixelBufferCreator *)selfCopy->_monochromeBufferCreator createPixelBuffer:&cf];
  }

  v11 = v10;
  if (v10)
  {
    goto LABEL_11;
  }

  value = selfCopy->_transferSession.value_;
  if (!value)
  {
    v11 = VTPixelTransferSessionCreate(0, &selfCopy->_transferSession.value_);
    if (v11)
    {
      goto LABEL_11;
    }

    value = selfCopy->_transferSession.value_;
  }

  v11 = VTPixelTransferSessionTransferImage(value, buffer, cf);
  if (v11)
  {
LABEL_11:
    objc_sync_exit(selfCopy);
    goto LABEL_12;
  }

  v13 = cf;
  if (cf)
  {
    v13 = CFRetain(cf);
  }

  *pixelBuffer = v13;
  objc_sync_exit(selfCopy);
  v11 = 0;
LABEL_12:

  CF<__CVBuffer *>::~CF(&cf);
  return v11;
}

- (int)loadImageURL:(id)l abnormalDimension:(unint64_t)dimension withNonPanoPreWarmSizes:(id)sizes toColorPixelBuffer:(__CVBuffer *)buffer lumaPixelBuffer:(__CVBuffer *)pixelBuffer andImage:(id *)image
{
  v48 = *MEMORY[0x1E69E9840];
  sizesCopy = sizes;
  pixelBuffer = 0;
  v15 = [(VCPSceneProcessingImageManager *)self->_imageManager loadFullPixelBuffer:&pixelBuffer scaledPixelBuffer299:0 scaledPixelBuffer360:0 fromImageURL:l abnormalDimension:dimension];
  if (!v15)
  {
    bufferCopy = buffer;
    selfCopy = self;
    pixelBufferCopy = pixelBuffer;
    v40 = sizesCopy;
    v16 = [VCPPreAnalysisImage alloc];
    *image = [(VCPPreAnalysisImage *)v16 initWithPixelBuffer:pixelBuffer];
    v17 = 299;
    if (dimension)
    {
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      v20 = bufferCopy;
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
      v26 = sizesCopy;
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
            v32 = *image;
            [v30 sizeValue];
            v34 = v33;
            [v30 sizeValue];
            v15 = [v32 preWarmWidth:v34 andHeight:v35];
            objc_autoreleasePoolPop(v31);
            if (v15)
            {

              sizesCopy = v40;
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
      pixelBuffer = pixelBufferCopy;
      sizesCopy = v40;
      v20 = bufferCopy;
      self = selfCopy;
    }

    v15 = [*image preWarmWidth:v17 andHeight:v24];
    if (!v15)
    {
      v41 = 0;
      [*image pixelBuffer:&v41 width:v17 height:v24];
      pixelBufferCopy2 = pixelBuffer;
      if (pixelBuffer)
      {
        pixelBufferCopy2 = CFRetain(pixelBuffer);
      }

      *v20 = pixelBufferCopy2;
      v15 = [(VCPPreAnalysisImageLoader *)self _convertFromBuffer:v41 toLumaPixelBuffer:pixelBuffer abnormalDimension:dimension];
      CF<__CVBuffer *>::~CF(&v41);
    }
  }

LABEL_24:
  CF<__CVBuffer *>::~CF(&pixelBuffer);

  return v15;
}

@end