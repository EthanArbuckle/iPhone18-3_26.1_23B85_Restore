@interface VCPMotionFlowRequest
- (BOOL)cleanupWithOptions:(id)a3 error:(id *)a4;
- (BOOL)updateWithOptions:(id)a3 error:(id *)a4;
- (CGSize)preferredInputSizeWithOptions:(id)a3 error:(id *)a4;
- (VCPMotionFlowRequest)init;
- (VCPMotionFlowRequest)initWithOptions:(id)a3;
- (VCPMotionFlowRequest)initWithOptions:(id)a3 cancel:(id)a4;
- (id)estimateMotionBetweenFirstImage:(__CVBuffer *)a3 andSecondImage:(__CVBuffer *)a4 error:(id *)a5;
- (id)estimateMotionBetweenFirstImage:(__CVBuffer *)a3 andSecondImage:(__CVBuffer *)a4 withUpsample:(BOOL)a5 withGuidedImage:(__CVBuffer *)a6 error:(id *)a7;
- (int)convertPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 withPixelFormat:(int)a5;
- (int)createPixelBufferWithWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(int)a5 pixelBuffer:(__CVBuffer *)a6;
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

- (VCPMotionFlowRequest)initWithOptions:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = VCPMotionFlowRequest;
  v5 = [(VCPRequest *)&v16 initWithOptions:v4];
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

- (VCPMotionFlowRequest)initWithOptions:(id)a3 cancel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = VCPMotionFlowRequest;
  v8 = [(VCPRequest *)&v19 initWithOptions:v6];
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

    v14 = [VCPImageMotionFlowAnalyzer analyzeWithLightweightOption:0 aspectRatio:v13 computationAccuracy:v10->super._motionFlowComputationAccuracy forceCPU:v10->super._useCPUOnly sharedModel:0 flushModel:0 cancel:v7];
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

- (int)createPixelBufferWithWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(int)a5 pixelBuffer:(__CVBuffer *)a6
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E69660D8];
  v14[0] = MEMORY[0x1E695E0F8];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = CVPixelBufferCreate(0, a3, a4, a5, v10, a6);
  if (v11 && *a6)
  {
    CFRelease(*a6);
    *a6 = 0;
  }

  return v11;
}

- (int)convertPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 withPixelFormat:(int)a5
{
  v5 = *&a5;
  if (self->_transferSession || (result = VTPixelTransferSessionCreate(0, &self->_transferSession)) == 0)
  {
    Width = CVPixelBufferGetWidth(a3);
    result = [(VCPMotionFlowRequest *)self createPixelBufferWithWidth:Width height:CVPixelBufferGetHeight(a3) pixelFormat:v5 pixelBuffer:a4];
    if (!result)
    {
      transferSession = self->_transferSession;
      v12 = *a4;

      return VTPixelTransferSessionTransferImage(transferSession, a3, v12);
    }
  }

  return result;
}

- (id)estimateMotionBetweenFirstImage:(__CVBuffer *)a3 andSecondImage:(__CVBuffer *)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
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

    v13 = [(VCPImageMotionFlowAnalyzer *)self->_motionFlowAnalyzer analyzeImages:a3 secondImage:a4 cancel:&__block_literal_global_30];
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
          a5 = v12;
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

  if (a5)
  {
    v14 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: failed to analyze motion flow"];
    v23[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *a5 = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:v13 userInfo:v16];

    a5 = 0;
  }

LABEL_12:

  return a5;
}

- (id)estimateMotionBetweenFirstImage:(__CVBuffer *)a3 andSecondImage:(__CVBuffer *)a4 withUpsample:(BOOL)a5 withGuidedImage:(__CVBuffer *)a6 error:(id *)a7
{
  v9 = a5;
  v30[1] = *MEMORY[0x1E69E9840];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a6);
  cf = 0;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
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

  v17 = [(VCPImageMotionFlowAnalyzer *)self->_motionFlowAnalyzer analyzeImages:a3 secondImage:a4 cancel:&__block_literal_global_37];
  if (v17)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Fail in generating motion flow", buf, 2u);
    }

    goto LABEL_10;
  }

  v22 = !v9;
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

  if (!a6)
  {
    v23 = [(VCPImageMotionFlowAnalyzer *)self->_motionFlowAnalyzer scaleFlowTo:[(VCPMotionFlowObservation *)v16 pixelBuffer]];
LABEL_26:
    v17 = v23;
    if (!v23)
    {
LABEL_32:
      a7 = v16;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (PixelFormatType == 1111970369)
  {
    cf = a6;
  }

  else
  {
    [(VCPMotionFlowRequest *)self convertPixelBuffer:a6 toPixelBuffer:&cf withPixelFormat:1111970369];
  }

  motionFlowAnalyzer = self->_motionFlowAnalyzer;
  v25 = [(VCPMotionFlowObservation *)v16 pixelBuffer];
  v17 = [(VCPImageMotionFlowAnalyzer *)motionFlowAnalyzer guidedUpsampling:v25 inBGRA:cf];
  if (!v17)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_32;
  }

LABEL_10:
  if (a7)
  {
    v18 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: failed to analyze motion flow"];
    v30[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    *a7 = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:v17 userInfo:v20];

    a7 = 0;
  }

LABEL_12:

  return a7;
}

- (BOOL)updateWithOptions:(id)a3 error:(id *)a4
{
  width = self->super._width;
  height = self->super._height;
  motionFlowComputationAccuracy = self->super._motionFlowComputationAccuracy;
  v15.receiver = self;
  v15.super_class = VCPMotionFlowRequest;
  [(VCPRequest *)&v15 updateWithOptions:a3 error:a4];
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

- (CGSize)preferredInputSizeWithOptions:(id)a3 error:(id *)a4
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

- (BOOL)cleanupWithOptions:(id)a3 error:(id *)a4
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