@interface CMPhotoMetal
- (CMPhotoMetal)initWithDevice:(id)device rotate:(BOOL)rotate intc:(id *)intc;
- (id)prepareTexture:(__IOSurface *)texture usage:(unint64_t)usage;
- (void)encodeComputeCommand:(id)command;
- (void)prepareDst:(__IOSurface *)dst rotate:(BOOL)rotate;
- (void)prepareSrc:(__IOSurface *)src rotate:(BOOL)rotate;
- (void)sendComputeCommand;
- (void)sendRenderCommand;
- (void)setRotation:(int)rotation;
@end

@implementation CMPhotoMetal

- (CMPhotoMetal)initWithDevice:(id)device rotate:(BOOL)rotate intc:(id *)intc
{
  rotateCopy = rotate;
  v35.receiver = self;
  v35.super_class = CMPhotoMetal;
  v8 = [(CMPhotoMetal *)&v35 init];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  v8->_mDevice = device;
  if (!device)
  {
    return 0;
  }

  newCommandQueue = [device newCommandQueue];
  v9->_mCommandQueue = newCommandQueue;
  if (!newCommandQueue)
  {
    return 0;
  }

  v34 = 0;
  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (!v11)
  {
    return 0;
  }

  v12 = [(MTLDevice *)v9->_mDevice newDefaultLibraryWithBundle:v11 error:&v34];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = objc_opt_new();
  v9->_renderToTextureRenderPassDescriptor = v14;
  [[(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)v14 colorAttachments] objectAtIndexedSubscript:0] setLoadAction:0];
  [[(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)v9->_renderToTextureRenderPassDescriptor colorAttachments] objectAtIndexedSubscript:0] setClearColor:1.0, 1.0, 1.0, 1.0];
  [[(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)v9->_renderToTextureRenderPassDescriptor colorAttachments] objectAtIndexedSubscript:0] setStoreAction:1];
  if (!rotateCopy)
  {
    if (!intc)
    {
      return 0;
    }

    if (intc->var2 || intc->var1)
    {
      v21 = intc->var3 == 16;
      v22 = 127;
      v23 = 255;
    }

    else
    {
      v21 = intc->var3 == 16;
      v22 = 31;
      v23 = 63;
    }

    if (v21)
    {
      v22 = v23;
    }

    v9->_mask = v22;
    v24 = objc_alloc_init(MEMORY[0x1E6974148]);
    if (!v24)
    {
      return 0;
    }

    v25 = v24;
    [v24 setVertexFunction:{objc_msgSend(v13, "newFunctionWithName:", @"simple_vs"}];
    if (intc->var0)
    {
      [v25 setLabel:@"Interchange Compact Repack Pipeline"];
      if (intc->var1)
      {
        v26 = @"bayer_repack_fs";
      }

      else if (intc->var2)
      {
        v26 = @"quadra_repack_fs";
      }

      else
      {
        v26 = @"simple_fs";
      }

      [v25 setFragmentFunction:{objc_msgSend(v13, "newFunctionWithName:", v26)}];
      if (intc->var1 || intc->var2)
      {
        v28 = intc->var3 == 16;
        v29 = 70;
        v30 = 110;
        goto LABEL_35;
      }
    }

    else
    {
      [v25 setLabel:@"Interchange Compact Unpack Pipeline"];
      if (intc->var1)
      {
        v27 = @"bayer_unpack_fs";
      }

      else if (intc->var2)
      {
        v27 = @"quadra_unpack_fs";
      }

      else
      {
        v27 = @"simple_fs";
      }

      [v25 setFragmentFunction:{objc_msgSend(v13, "newFunctionWithName:", v27)}];
    }

    v28 = intc->var3 == 16;
    v29 = 10;
    v30 = 20;
LABEL_35:
    if (v28)
    {
      v31 = v30;
    }

    else
    {
      v31 = v29;
    }

    [objc_msgSend(objc_msgSend(v25 "colorAttachments")];
    v32 = [(MTLDevice *)v9->_mDevice newRenderPipelineStateWithDescriptor:v25 error:&v34];
    v9->_renderPipeline = v32;
    if (!v32)
    {
      return 0;
    }

    return v9;
  }

  v15 = objc_alloc_init(MEMORY[0x1E6974070]);
  [v15 setName:@"compute_cs"];
  v16 = [v13 newFunctionWithDescriptor:v15 error:&v34];
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = objc_alloc_init(MEMORY[0x1E6974030]);
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  [v18 setComputeFunction:v17];
  [v19 setLabel:@"Compute Pipeline"];
  v20 = [(MTLDevice *)v9->_mDevice newComputePipelineStateWithDescriptor:v19 options:0 reflection:0 error:&v34];
  v9->_mComputePSO = v20;
  if (!v20)
  {
    return 0;
  }

  return v9;
}

- (void)setRotation:(int)rotation
{
  v3 = 8 * (rotation - 2);
  v4 = 0x10100000101uLL >> v3;
  v5 = 0x1010000010100uLL >> v3;
  v6 = 0x1010101000000uLL >> v3;
  if ((rotation - 2) > 6)
  {
    LOBYTE(v4) = 0;
    LOBYTE(v5) = 0;
  }

  self->config.flip_x = v4;
  if ((rotation - 2) > 6)
  {
    LOBYTE(v6) = 0;
  }

  self->config.flip_y = v5;
  self->config.transpose = v6;
}

- (id)prepareTexture:(__IOSurface *)texture usage:(unint64_t)usage
{
  PixelFormat = IOSurfaceGetPixelFormat(texture);
  Width = IOSurfaceGetWidth(texture);
  Height = IOSurfaceGetHeight(texture);
  v10 = 10;
  if (PixelFormat <= 1278226741)
  {
    if (PixelFormat > 642934848)
    {
      if (PixelFormat > 1278226487)
      {
        if (PixelFormat == 1278226488)
        {
          goto LABEL_33;
        }

        v11 = 1278226536;
        goto LABEL_25;
      }

      if (PixelFormat == 642934849)
      {
        goto LABEL_32;
      }

      if (PixelFormat != 1111970369)
      {
        return 0;
      }
    }

    else
    {
      if (PixelFormat > 642527335)
      {
        if (PixelFormat == 642527336)
        {
          goto LABEL_26;
        }

        v11 = 642527542;
        goto LABEL_25;
      }

      if (PixelFormat != 641877825)
      {
        v12 = 642527288;
        goto LABEL_29;
      }
    }

    v10 = 70;
    goto LABEL_33;
  }

  if (PixelFormat <= 1651798065)
  {
    if (PixelFormat <= 1650946097)
    {
      if (PixelFormat == 1278226742)
      {
        goto LABEL_26;
      }

      if (PixelFormat != 1380411457)
      {
        return 0;
      }

LABEL_32:
      v10 = 110;
      goto LABEL_33;
    }

    if (PixelFormat == 1650946098)
    {
      goto LABEL_31;
    }

    v11 = 1651519798;
LABEL_25:
    if (PixelFormat == v11)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (PixelFormat <= 1651926375)
  {
    if (PixelFormat != 1651798066)
    {
      v12 = 1651925816;
LABEL_29:
      if (PixelFormat == v12)
      {
        goto LABEL_33;
      }

      return 0;
    }

LABEL_31:
    Width = (3 * IOSurfaceGetWidth(texture)) >> 1;
    v10 = 10;
    goto LABEL_33;
  }

  if (PixelFormat == 1751411059)
  {
LABEL_26:
    v10 = 20;
    goto LABEL_33;
  }

  if (PixelFormat != 1652056888)
  {
    v11 = 1651926376;
    goto LABEL_25;
  }

LABEL_33:
  v14 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v10 width:Width height:Height mipmapped:0];
  [v14 setUsage:usage];
  v15 = [(MTLDevice *)self->_mDevice newTextureWithDescriptor:v14 iosurface:texture plane:0];

  return v15;
}

- (void)prepareSrc:(__IOSurface *)src rotate:(BOOL)rotate
{
  rotateCopy = rotate;
  v7 = [(CMPhotoMetal *)self prepareTexture:src usage:1];
  self->_mSrcTex = v7;
  if (v7)
  {
    if (rotateCopy)
    {
      self->config.src_stride = IOSurfaceGetBytesPerRow(src);
      self->_mSrcBuf = [(MTLDevice *)self->_mDevice newBufferWithIOSurface:src];
    }
  }
}

- (void)prepareDst:(__IOSurface *)dst rotate:(BOOL)rotate
{
  rotateCopy = rotate;
  v7 = [(CMPhotoMetal *)self prepareTexture:dst usage:4];
  self->_mDstTex = v7;
  if (v7)
  {
    if (rotateCopy)
    {
      self->config.width = IOSurfaceGetWidth(dst);
      self->config.height = IOSurfaceGetHeight(dst);
      self->config.dst_stride = IOSurfaceGetBytesPerRow(dst);
      self->_mDstBuf = [(MTLDevice *)self->_mDevice newBufferWithIOSurface:dst];
    }

    else if (IOSurfaceGetCompressionTypeOfPlane() == 3)
    {
      OUTLINED_FUNCTION_17();
      self->mb_width = IOSurfaceGetWidthInCompressedTilesOfPlane();
      OUTLINED_FUNCTION_17();
      self->mb_height = IOSurfaceGetHeightInCompressedTilesOfPlane();
      OUTLINED_FUNCTION_17();
      CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
      OUTLINED_FUNCTION_17();
      v9 = (IOSurfaceGetCompressedTileHeightOfPlane() * CompressedTileWidthOfPlane) >> 5;
      v10 = v9 * self->mb_width * self->mb_height;
      self->meta_size = v9;
      self->meta_length = v10;
      OUTLINED_FUNCTION_17();

      IOSurfaceGetBytesPerTileDataOfPlane();
    }
  }
}

- (void)sendComputeCommand
{
  commandBuffer = [(MTLCommandQueue *)self->_mCommandQueue commandBuffer];
  if (commandBuffer)
  {
    v4 = commandBuffer;
    computeCommandEncoder = [commandBuffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      v6 = computeCommandEncoder;
      [(CMPhotoMetal *)self encodeComputeCommand:computeCommandEncoder];
      [v6 endEncoding];
      [v4 commit];

      [v4 waitUntilCompleted];
    }
  }
}

- (void)encodeComputeCommand:(id)command
{
  [command setComputePipelineState:self->_mComputePSO];
  [command setBuffer:self->_mDstBuf offset:0 atIndex:0];
  [command setBuffer:self->_mSrcBuf offset:0 atIndex:1];
  [command setBytes:&self->config length:20 atIndex:2];
  width = [(MTLTexture *)self->_mDstTex width];
  height = [(MTLTexture *)self->_mDstTex height];
  if ([(MTLComputePipelineState *)self->_mComputePSO maxTotalThreadsPerThreadgroup]>= 0x400)
  {
    v9[0] = width;
    v9[1] = height;
    v9[2] = 1;
    v7 = xmmword_1A5ABB850;
    v8 = 1;
    [command dispatchThreads:v9 threadsPerThreadgroup:&v7];
  }
}

- (void)sendRenderCommand
{
  commandBuffer = [(MTLCommandQueue *)self->_mCommandQueue commandBuffer];
  if (commandBuffer)
  {
    v4 = commandBuffer;
    [commandBuffer setLabel:@"Command Buffer"];
    [(MTLTexture *)self->_mDstTex iosurface];
    [(MTLTexture *)self->_mDstTex iosurfacePlane];
    if (IOSurfaceGetCompressionTypeOfPlane() == 3 || ([(MTLTexture *)self->_mSrcTex iosurface], [(MTLTexture *)self->_mSrcTex iosurfacePlane], IOSurfaceGetCompressionTypeOfPlane() == 3))
    {
      [[(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)self->_renderToTextureRenderPassDescriptor colorAttachments] objectAtIndexedSubscript:0] setTexture:self->_mDstTex];
      v5 = [v4 renderCommandEncoderWithDescriptor:self->_renderToTextureRenderPassDescriptor];
      if (v5)
      {
        renderPipeline = self->_renderPipeline;
        if (renderPipeline)
        {
          v7 = v5;
          [v5 setLabel:@"Offscreen Render Pass"];
          [v7 setRenderPipelineState:renderPipeline];
          [v7 setVertexBytes:&sendRenderCommand_quadVertices length:128 atIndex:0];
          [v7 setFragmentTexture:self->_mSrcTex atIndex:0];
          [v7 drawPrimitives:4 vertexStart:0 vertexCount:4];
          [v7 endEncoding];
          [v4 commit];

          [v4 waitUntilCompleted];
        }
      }
    }
  }
}

@end