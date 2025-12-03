@interface VCPMotionFlowRequest
- (BOOL)cleanupWithOptions:(id)options error:(id *)error;
- (BOOL)updateWithOptions:(id)options error:(id *)error;
- (CGSize)preferredInputSizeWithOptions:(id)options error:(id *)error;
- (VCPMotionFlowRequest)init;
- (VCPMotionFlowRequest)initWithOptions:(id)options;
- (VCPMotionFlowRequest)initWithOptions:(id)options cancel:(id)cancel;
- (id)estimateMotionBetweenFirstImage:(__CVBuffer *)image andSecondImage:(__CVBuffer *)secondImage error:(id *)error;
- (id)estimateMotionBetweenFirstImage:(__CVBuffer *)image andSecondImage:(__CVBuffer *)secondImage withUpsample:(BOOL)upsample withGuidedImage:(__CVBuffer *)guidedImage error:(id *)error;
- (int)convertPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer withPixelFormat:(int)format;
- (int)createPixelBufferWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(int)format pixelBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
@end

@implementation VCPMotionFlowRequest

- (VCPMotionFlowRequest)init
{
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Not implemented, please use initWithOptions", v4, 2u);
  }

  return 0;
}

- (VCPMotionFlowRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = VCPMotionFlowRequest;
  v5 = [(VCPRequest *)&v16 initWithOptions:optionsCopy];
  v7 = v5;
  if (v5)
  {
    v5->_transferSession = 0;
    width = v5->super._width;
    if (width < 1 || (height = v5->super._height, height < 1))
    {
      v10 = 0;
    }

    else
    {
      *&v6 = width / height;
      v10 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
    }

    v11 = [VCPImageMotionFlowAnalyzer analyzeWithLightweightOption:0 aspectRatio:v10 computationAccuracy:v7->super._motionFlowComputationAccuracy forceCPU:v7->super._useCPUOnly sharedModel:0 flushModel:0 cancel:&__block_literal_global_30];
    motionFlowAnalyzer = v7->_motionFlowAnalyzer;
    v7->_motionFlowAnalyzer = v11;
  }

  if (v7->_motionFlowAnalyzer)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v14;
}

- (VCPMotionFlowRequest)initWithOptions:(id)options cancel:(id)cancel
{
  optionsCopy = options;
  cancelCopy = cancel;
  v19.receiver = self;
  v19.super_class = VCPMotionFlowRequest;
  v8 = [(VCPRequest *)&v19 initWithOptions:optionsCopy];
  v10 = v8;
  if (v8)
  {
    v8->_transferSession = 0;
    width = v8->super._width;
    if (width < 1 || (height = v8->super._height, height < 1))
    {
      v13 = 0;
    }

    else
    {
      *&v9 = width / height;
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    }

    v14 = [VCPImageMotionFlowAnalyzer analyzeWithLightweightOption:0 aspectRatio:v13 computationAccuracy:v10->super._motionFlowComputationAccuracy forceCPU:v10->super._useCPUOnly sharedModel:0 flushModel:0 cancel:cancelCopy];
    motionFlowAnalyzer = v10->_motionFlowAnalyzer;
    v10->_motionFlowAnalyzer = v14;
  }

  if (v10->_motionFlowAnalyzer)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v17;
}

- (int)createPixelBufferWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(int)format pixelBuffer:(__CVBuffer *)buffer
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E69660D8];
  v14[0] = MEMORY[0x1E695E0F8];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = CVPixelBufferCreate(0, width, height, format, v10, buffer);
  if (v11 && *buffer)
  {
    CFRelease(*buffer);
    *buffer = 0;
  }

  return v11;
}

- (int)convertPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer withPixelFormat:(int)format
{
  v5 = *&format;
  if (self->_transferSession || (result = VTPixelTransferSessionCreate(0, &self->_transferSession)) == 0)
  {
    Width = CVPixelBufferGetWidth(buffer);
    result = [(VCPMotionFlowRequest *)self createPixelBufferWithWidth:Width height:CVPixelBufferGetHeight(buffer) pixelFormat:v5 pixelBuffer:pixelBuffer];
    if (!result)
    {
      transferSession = self->_transferSession;
      v12 = *pixelBuffer;

      return VTPixelTransferSessionTransferImage(transferSession, buffer, v12);
    }
  }

  return result;
}

- (id)estimateMotionBetweenFirstImage:(__CVBuffer *)image andSecondImage:(__CVBuffer *)secondImage error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  v11 = objc_alloc_init(VCPMotionFlowObservation);
  v12 = v11;
  if (v11)
  {
    [(VCPMotionFlowObservation *)v11 setRevision:1];
    if (self->super._width >= 1 && self->super._height > 0)
    {
      Height = self->super._height;
      Width = self->super._width;
    }

    v13 = [(VCPImageMotionFlowAnalyzer *)self->_motionFlowAnalyzer analyzeImages:image secondImage:secondImage cancel:&__block_literal_global_30];
    if (v13)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Fail in generating motion flow", v21, 2u);
      }
    }

    else
    {
      if (self->super._useCPUOnly)
      {
        Height = [(VCPImageMotionFlowAnalyzer *)self->_motionFlowAnalyzer cnnOutputHeight];
        Width = [(VCPImageMotionFlowAnalyzer *)self->_motionFlowAnalyzer cnnOutputWidth];
      }

      [(VCPMotionFlowObservation *)v12 setPixelBuffer:VCPFlowCreatePixelBuffer(Width, Height, 0x32433068u, 32)];
      if ([(VCPMotionFlowObservation *)v12 pixelBuffer])
      {
        useCPUOnly = self->super._useCPUOnly;
        motionFlowAnalyzer = self->_motionFlowAnalyzer;
        if (useCPUOnly)
        {
          v20 = [(VCPImageMotionFlowAnalyzer *)motionFlowAnalyzer getFlowToBuffer:[(VCPMotionFlowObservation *)v12 pixelBuffer]];
        }

        else
        {
          v20 = [(VCPImageMotionFlowAnalyzer *)motionFlowAnalyzer scaleFlowTo:[(VCPMotionFlowObservation *)v12 pixelBuffer]];
        }

        v13 = v20;
        if (!v20)
        {
          error = v12;
          goto LABEL_12;
        }
      }

      else
      {
        v13 = -108;
      }
    }
  }

  else
  {
    v13 = -50;
  }

  if (error)
  {
    v14 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: failed to analyze motion flow"];
    v23[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *error = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:v13 userInfo:v16];

    error = 0;
  }

LABEL_12:

  return error;
}

- (id)estimateMotionBetweenFirstImage:(__CVBuffer *)image andSecondImage:(__CVBuffer *)secondImage withUpsample:(BOOL)upsample withGuidedImage:(__CVBuffer *)guidedImage error:(id *)error
{
  upsampleCopy = upsample;
  v30[1] = *MEMORY[0x1E69E9840];
  PixelFormatType = CVPixelBufferGetPixelFormatType(guidedImage);
  cf = 0;
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  v15 = objc_alloc_init(VCPMotionFlowObservation);
  v16 = v15;
  if (!v15)
  {
    v17 = -50;
    goto LABEL_10;
  }

  [(VCPMotionFlowObservation *)v15 setRevision:1];
  if (self->super._width >= 1 && self->super._height > 0)
  {
    Height = self->super._height;
    Width = self->super._width;
  }

  v17 = [(VCPImageMotionFlowAnalyzer *)self->_motionFlowAnalyzer analyzeImages:image secondImage:secondImage cancel:&__block_literal_global_37];
  if (v17)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Fail in generating motion flow", buf, 2u);
    }

    goto LABEL_10;
  }

  v22 = !upsampleCopy;
  if ((v22 & 1) != 0 || self->super._useCPUOnly)
  {
    Height = [(VCPImageMotionFlowAnalyzer *)self->_motionFlowAnalyzer cnnOutputHeight];
    Width = [(VCPImageMotionFlowAnalyzer *)self->_motionFlowAnalyzer cnnOutputWidth];
  }

  [(VCPMotionFlowObservation *)v16 setPixelBuffer:VCPFlowCreatePixelBuffer(Width, Height, 0x32433068u, 32)];
  if (![(VCPMotionFlowObservation *)v16 pixelBuffer])
  {
    v17 = -108;
    goto LABEL_10;
  }

  if ((v22 | self->super._useCPUOnly))
  {
    v23 = [(VCPImageMotionFlowAnalyzer *)self->_motionFlowAnalyzer getFlowToBuffer:[(VCPMotionFlowObservation *)v16 pixelBuffer]];
    goto LABEL_26;
  }

  if (!guidedImage)
  {
    v23 = [(VCPImageMotionFlowAnalyzer *)self->_motionFlowAnalyzer scaleFlowTo:[(VCPMotionFlowObservation *)v16 pixelBuffer]];
LABEL_26:
    v17 = v23;
    if (!v23)
    {
LABEL_32:
      error = v16;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (PixelFormatType == 1111970369)
  {
    cf = guidedImage;
  }

  else
  {
    [(VCPMotionFlowRequest *)self convertPixelBuffer:guidedImage toPixelBuffer:&cf withPixelFormat:1111970369];
  }

  motionFlowAnalyzer = self->_motionFlowAnalyzer;
  pixelBuffer = [(VCPMotionFlowObservation *)v16 pixelBuffer];
  v17 = [(VCPImageMotionFlowAnalyzer *)motionFlowAnalyzer guidedUpsampling:pixelBuffer inBGRA:cf];
  if (!v17)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_32;
  }

LABEL_10:
  if (error)
  {
    v18 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: failed to analyze motion flow"];
    v30[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    *error = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:v17 userInfo:v20];

    error = 0;
  }

LABEL_12:

  return error;
}

- (BOOL)updateWithOptions:(id)options error:(id *)error
{
  width = self->super._width;
  height = self->super._height;
  motionFlowComputationAccuracy = self->super._motionFlowComputationAccuracy;
  v15.receiver = self;
  v15.super_class = VCPMotionFlowRequest;
  [(VCPRequest *)&v15 updateWithOptions:options error:error];
  v9 = self->super._width;
  if (__PAIR64__(height, width) == *&self->super._width)
  {
    if (width < 1 || motionFlowComputationAccuracy == self->super._motionFlowComputationAccuracy)
    {
      return 1;
    }
  }

  else
  {
    if (v9 < 1)
    {
      return 1;
    }

    height = self->super._height;
  }

  if (height >= 1)
  {
    motionFlowAnalyzer = self->_motionFlowAnalyzer;
    *&v8 = v9 / height;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    v13 = [(VCPImageMotionFlowAnalyzer *)motionFlowAnalyzer updateModelForAspectRatio:v12 computationAccuracy:self->super._motionFlowComputationAccuracy];

    return v13 == 0;
  }

  return 1;
}

- (CGSize)preferredInputSizeWithOptions:(id)options error:(id *)error
{
  motionFlowAnalyzer = self->_motionFlowAnalyzer;
  if (motionFlowAnalyzer)
  {
    [(VCPImageMotionFlowAnalyzer *)motionFlowAnalyzer preferredInputFormat:&self->_preferredWidth height:&self->_preferredHeight format:&self->_preferredFormat];
  }

  preferredWidth = self->_preferredWidth;
  preferredHeight = self->_preferredHeight;
  result.height = preferredHeight;
  result.width = preferredWidth;
  return result;
}

- (BOOL)cleanupWithOptions:(id)options error:(id *)error
{
  motionFlowAnalyzer = self->_motionFlowAnalyzer;
  self->_motionFlowAnalyzer = 0;

  return 1;
}

- (void)dealloc
{
  transferSession = self->_transferSession;
  if (transferSession)
  {
    CFRelease(transferSession);
  }

  motionFlowAnalyzer = self->_motionFlowAnalyzer;
  self->_motionFlowAnalyzer = 0;

  v5.receiver = self;
  v5.super_class = VCPMotionFlowRequest;
  [(VCPMotionFlowRequest *)&v5 dealloc];
}

@end