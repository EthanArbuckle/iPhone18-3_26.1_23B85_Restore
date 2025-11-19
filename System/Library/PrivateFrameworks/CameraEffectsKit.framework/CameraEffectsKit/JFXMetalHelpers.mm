@interface JFXMetalHelpers
+ (__CVBuffer)createCVTextureFromImage:(__CVBuffer *)a3 withTextureCache:(__CVMetalTextureCache *)a4;
+ (id)copyMetalLibraryWithDevice:(id)a3 error:(id *)a4;
+ (unint64_t)metalPixelFormatForImage:(__CVBuffer *)a3;
- (BOOL)runComputeEncoder:(id)a3 pipelineState:(id)a4 referenceTexture:(id)a5;
- (JFXMetalHelpers)initWithDevice:(id)a3;
- (id)newPipelineStateForFunctionWithName:(id)a3;
- (id)newTexture:(id)a3;
- (id)newTextureWithSameSizeAs:(id)a3 pixelFormat:(unint64_t)a4;
- (id)newTextureWithWidth:(unsigned int)a3 height:(unsigned int)a4 pixelFormat:(unint64_t)a5 usage:(unint64_t)a6;
@end

@implementation JFXMetalHelpers

- (JFXMetalHelpers)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = JFXMetalHelpers;
  v6 = [(JFXMetalHelpers *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->m_device, a3);
  }

  return v7;
}

- (id)newTexture:(id)a3
{
  v4 = a3;
  v5 = -[JFXMetalHelpers newTextureWithSameSizeAs:pixelFormat:](self, "newTextureWithSameSizeAs:pixelFormat:", v4, [v4 pixelFormat]);

  return v5;
}

- (id)newTextureWithSameSizeAs:(id)a3 pixelFormat:(unint64_t)a4
{
  v6 = a3;
  v7 = -[JFXMetalHelpers newTextureWithWidth:height:pixelFormat:usage:](self, "newTextureWithWidth:height:pixelFormat:usage:", [v6 width], objc_msgSend(v6, "height"), a4, 3);

  return v7;
}

- (id)newTextureWithWidth:(unsigned int)a3 height:(unsigned int)a4 pixelFormat:(unint64_t)a5 usage:(unint64_t)a6
{
  v8 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a5 width:a3 height:a4 mipmapped:0];
  [v8 setUsage:a6];
  [v8 setStorageMode:2];
  v9 = [(MTLDevice *)self->m_device newTextureWithDescriptor:v8];

  return v9;
}

- (id)newPipelineStateForFunctionWithName:(id)a3
{
  v4 = a3;
  m_device = self->m_device;
  v16 = 0;
  v6 = [JFXMetalHelpers copyMetalLibraryWithDevice:m_device error:&v16];
  v7 = v16;
  if (v6)
  {
    v8 = [v6 newFunctionWithName:v4];
    if (v8)
    {
      v9 = self->m_device;
      v15 = v7;
      v10 = [(MTLDevice *)v9 newComputePipelineStateWithFunction:v8 error:&v15];
      v11 = v15;

      if (v10)
      {
        v10 = v10;
        v12 = v10;
      }

      else
      {
        v13 = JFXLog_matting();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [JFXMetalHelpers newPipelineStateForFunctionWithName:];
        }

        v12 = 0;
      }
    }

    else
    {
      v10 = JFXLog_matting();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [JFXMetalHelpers newPipelineStateForFunctionWithName:];
      }

      v12 = 0;
      v11 = v7;
    }

    v7 = v11;
  }

  else
  {
    v8 = JFXLog_matting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [JFXMetalHelpers newPipelineStateForFunctionWithName:];
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)runComputeEncoder:(id)a3 pipelineState:(id)a4 referenceTexture:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 threadExecutionWidth];
  v11 = [v8 maxTotalThreadsPerThreadgroup];
  if (v10 > v11)
  {
    v12 = JFXLog_matting();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [JFXMetalHelpers runComputeEncoder:pipelineState:referenceTexture:];
    }
  }

  else
  {
    v15[0] = [v9 width];
    v15[1] = [v9 height];
    v15[2] = 1;
    v14[0] = v10;
    v14[1] = v11 / v10;
    v14[2] = 1;
    [v7 dispatchThreads:v15 threadsPerThreadgroup:v14];
  }

  return v10 <= v11;
}

+ (unint64_t)metalPixelFormatForImage:(__CVBuffer *)a3
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType <= 1278226535)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (PixelFormatType == 1111970369)
      {
        return 80;
      }

      if (PixelFormatType != 1278226488)
      {
        if (PixelFormatType == 1278226534)
        {
          return 55;
        }

        goto LABEL_23;
      }
    }

    return 10;
  }

  if (PixelFormatType > 1380411456)
  {
    if (PixelFormatType == 2019963440 || PixelFormatType == 2016686640)
    {
      return 20;
    }

    if (PixelFormatType == 1380411457)
    {
      return 115;
    }
  }

  else
  {
    switch(PixelFormatType)
    {
      case 1278226536:
        return 25;
      case 1380401729:
        return 70;
      case 1380410945:
        return 125;
    }
  }

LABEL_23:
  v5 = JFXLog_matting();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[JFXMetalHelpers metalPixelFormatForImage:];
  }

  return 0;
}

+ (__CVBuffer)createCVTextureFromImage:(__CVBuffer *)a3 withTextureCache:(__CVMetalTextureCache *)a4
{
  if (!a4)
  {
    v10 = JFXLog_matting();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[JFXMetalHelpers createCVTextureFromImage:withTextureCache:];
    }

    goto LABEL_10;
  }

  if (!a3)
  {
    v10 = JFXLog_matting();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[JFXMetalHelpers createCVTextureFromImage:withTextureCache:];
    }

    goto LABEL_10;
  }

  textureOut = 0;
  v6 = *MEMORY[0x277CBECE8];
  v7 = [JFXMetalHelpers metalPixelFormatForImage:a3];
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (CVMetalTextureCacheCreateTextureFromImage(v6, a4, a3, 0, v7, Width, Height, 0, &textureOut))
  {
    v10 = JFXLog_matting();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[JFXMetalHelpers createCVTextureFromImage:withTextureCache:];
    }

LABEL_10:

    return 0;
  }

  return textureOut;
}

+ (id)copyMetalLibraryWithDevice:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:@"default" ofType:@"metallib"];

  if (v7 && ([MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:0], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = 0;
    v9 = [v5 newLibraryWithURL:v8 error:&v15];
    v10 = v15;
    v11 = v10;
    if (v10)
    {
      if (a4)
      {
        v12 = v10;
        v13 = 0;
        *a4 = v11;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = v9;
    }
  }

  else
  {
    v8 = JFXLog_matting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[JFXMetalHelpers copyMetalLibraryWithDevice:error:];
    }

    v13 = 0;
  }

  return v13;
}

- (void)runComputeEncoder:pipelineState:referenceTexture:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createCVTextureFromImage:withTextureCache:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createCVTextureFromImage:withTextureCache:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createCVTextureFromImage:withTextureCache:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)copyMetalLibraryWithDevice:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end