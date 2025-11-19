@interface JFXImageMTKView
+ (id)buildRenderPipelineWithLabel:(id)a3 vertexFunction:(id)a4 fragmentFunction:(id)a5 device:(id)a6 view:(id)a7 error:(id *)a8;
+ (id)buildSamplerStateWithDevice:(id)a3 addressMode:(unint64_t)a4 filter:(unint64_t)a5;
- (JFXImageMTKView)initWithCoder:(id)a3;
- (JFXImageMTKView)initWithFrame:(CGRect)a3 device:(id)a4;
- (void)JFXImageMTKView_commonInit;
- (void)cleanupTextureCache;
- (void)cleanupTextures;
- (void)configureRenderPipelineForColorAttachments:(void *)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)a3;
- (void)setEnableDebugDrawing:(BOOL)a3;
- (void)setFlipX:(BOOL)a3;
- (void)setFlipY:(BOOL)a3;
- (void)setJtImage:(id)a3;
- (void)setRenderingType:(int64_t)a3;
- (void)setupTextureCache;
- (void)updateDebugDrawing;
- (void)updateTexture;
- (void)updateVertices;
@end

@implementation JFXImageMTKView

- (void)dealloc
{
  [(JFXImageMTKView *)self cleanupTextures];
  [(JFXImageMTKView *)self cleanupTextureCache];
  v3.receiver = self;
  v3.super_class = JFXImageMTKView;
  [(MTKView *)&v3 dealloc];
}

- (void)JFXImageMTKView_commonInit
{
  [(MTKView *)self setEnableSetNeedsDisplay:1];
  [(JFXImageMTKView *)self setUserInteractionEnabled:0];
  v3 = [MEMORY[0x277D75348] clearColor];
  [(JFXImageMTKView *)self setBackgroundColor:v3];

  [(MTKView *)self setColorPixelFormat:80];
  [(MTKView *)self setClearColor:0.0, 0.0, 0.0, 0.0];
  [(JFXImageMTKView *)self bounds];
  self->_viewSize.width = v4;
  self->_viewSize.height = v5;
  self->_textureSize = *MEMORY[0x277CBF3A8];
  self->_needsUpdateVertices = 1;
  self->_needsUpdateTexture = 1;
  v6 = [MEMORY[0x277CCA8D8] jfxBundle];
  v7 = [(MTKView *)self device];
  v21 = 0;
  v8 = [v7 newDefaultLibraryWithBundle:v6 error:&v21];
  v9 = v21;
  library = self->_library;
  self->_library = v8;

  v11 = [(MTKView *)self device];
  v12 = [v11 newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = v12;

  v14 = objc_alloc(MEMORY[0x277CD71F0]);
  v15 = [(MTKView *)self device];
  v16 = [v14 initWithDevice:v15];
  textureLoader = self->_textureLoader;
  self->_textureLoader = v16;

  [(JFXImageMTKView *)self setupTextureCache];
  v18 = [(MTKView *)self device];
  v19 = [JFXImageMTKView buildSamplerStateWithDevice:v18 addressMode:0 filter:1];
  sampler = self->_sampler;
  self->_sampler = v19;

  self->_pixelBufferColorAttachments = 0;
  if (JFXImageMTKView_commonInit_onceToken != -1)
  {
    [JFXImageMTKView JFXImageMTKView_commonInit];
  }

  BYTE2(self->_jtImage) = JFXImageMTKView_commonInit_s_enableDebugDrawing;
  [(JFXImageMTKView *)self setRenderingType:-1];
}

void __45__JFXImageMTKView_JFXImageMTKView_commonInit__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 valueForKey:@"JTImageViewDebugDraw"];

  if (v1)
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    JFXImageMTKView_commonInit_s_enableDebugDrawing = [v2 BOOLForKey:@"JTImageViewDebugDraw"];
  }
}

- (JFXImageMTKView)initWithFrame:(CGRect)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = JFXImageMTKView;
  v4 = [(MTKView *)&v7 initWithFrame:a4 device:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(JFXImageMTKView *)v4 JFXImageMTKView_commonInit];
  }

  return v5;
}

- (JFXImageMTKView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = JFXImageMTKView;
  v3 = [(MTKView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(JFXImageMTKView *)v3 JFXImageMTKView_commonInit];
  }

  return v4;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = JFXImageMTKView;
  [(MTKView *)&v6 layoutSubviews];
  [(JFXImageMTKView *)self bounds];
  if (self->_viewSize.width != v3 || self->_viewSize.height != v4)
  {
    self->_viewSize.width = v3;
    self->_viewSize.height = v4;
    self->_needsUpdateVertices = 1;
  }
}

- (void)cleanupTextures
{
  self->_textureSize = *MEMORY[0x277CBF3A8];
  texture_RGBA = self->_texture_RGBA;
  if (texture_RGBA)
  {
    CFRelease(texture_RGBA);
    self->_texture_RGBA = 0;
  }

  texture_YUV_Luma = self->_texture_YUV_Luma;
  if (texture_YUV_Luma)
  {
    CFRelease(texture_YUV_Luma);
    self->_texture_YUV_Luma = 0;
  }

  texture_YUV_Chroma = self->_texture_YUV_Chroma;
  if (texture_YUV_Chroma)
  {
    CFRelease(texture_YUV_Chroma);
    self->_texture_YUV_Chroma = 0;
  }

  textureCache = self->_textureCache;
  if (textureCache)
  {

    CVMetalTextureCacheFlush(textureCache, 0);
  }
}

- (void)cleanupTextureCache
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CVMetalTextureCacheFlush(textureCache, 0);
    CFRelease(self->_textureCache);
    self->_textureCache = 0;
  }
}

- (void)setupTextureCache
{
  v3 = *MEMORY[0x277CBECE8];
  v4 = [(MTKView *)self device];
  CVMetalTextureCacheCreate(v3, 0, v4, 0, &self->_textureCache);
}

- (void)updateTexture
{
  self->_needsUpdateTexture = 0;
  [(JFXImageMTKView *)self cleanupTextures];
  v3 = [self->_renderingType pvImageBuffer];
  v4 = [v3 cvPixelBuffer];

  if (v4)
  {
    Width = CVPixelBufferGetWidth(v4);
    Height = CVPixelBufferGetHeight(v4);
    self->_textureSize.width = Width;
    self->_textureSize.height = Height;
    v7 = CVBufferCopyAttachment(v4, *MEMORY[0x277CC4D10], 0);
    [(JFXImageMTKView *)self configureRenderPipelineForColorAttachments:v7];
    v8 = *MEMORY[0x277CBECE8];
    textureCache = self->_textureCache;
    if (v7)
    {
      CVMetalTextureCacheCreateTextureFromImage(v8, textureCache, v4, 0, MTLPixelFormatR8Unorm, Width, Height, 0, &self->_texture_YUV_Luma);
      v10 = CVMetalTextureGetTexture(self->_texture_YUV_Luma);
      mtlTexture_YUV_Luma = self->_mtlTexture_YUV_Luma;
      self->_mtlTexture_YUV_Luma = v10;

      CVMetalTextureCacheCreateTextureFromImage(v8, self->_textureCache, v4, 0, MTLPixelFormatRG8Unorm, Width >> 1, Height >> 1, 1uLL, &self->_texture_YUV_Chroma);
      v12 = CVMetalTextureGetTexture(self->_texture_YUV_Chroma);
      mtlTexture_YUV_Chroma = self->_mtlTexture_YUV_Chroma;
      self->_mtlTexture_YUV_Chroma = v12;

      CFRelease(v7);
    }

    else
    {
      CVMetalTextureCacheCreateTextureFromImage(v8, textureCache, v4, 0, MTLPixelFormatBGRA8Unorm, Width, Height, 0, &self->_texture_RGBA);
      self->_mtlTexture_RGBA = CVMetalTextureGetTexture(self->_texture_RGBA);

      MEMORY[0x2821F96F8]();
    }
  }

  else
  {
    [(JFXImageMTKView *)self setRenderingType:-1];
    self->_pixelBufferColorAttachments = 0;
    renderPipelineState = self->_renderPipelineState;
    self->_renderPipelineState = 0;
  }
}

- (void)updateVertices
{
  if ([JFXImageView normalizedQuadVertices:&self->_anon_470[6] viewSize:[(JFXImageMTKView *)self contentMode] textureSize:self->_viewSize.width contentMode:self->_viewSize.height, self->_textureSize.width, self->_textureSize.height])
  {
    self->_needsUpdateVertices = 0;
  }
}

- (void)configureRenderPipelineForColorAttachments:(void *)a3
{
  if (self->_pixelBufferColorAttachments != a3)
  {
    self->_pixelBufferColorAttachments = a3;
    renderPipelineState = self->_renderPipelineState;
    self->_renderPipelineState = 0;
  }

  if (!self->_renderPipelineState)
  {
    v6 = [(MTLLibrary *)self->_library newFunctionWithName:@"JFX_vertex_Pos2Tex2_transform"];
    v7 = 1;
    if (*MEMORY[0x277CC4D20] != a3)
    {
      v7 = 2;
    }

    v8 = @"JFX_fragment_YUV709_Pos4Tex2_texture2D";
    if (*MEMORY[0x277CC4D20] == a3)
    {
      v8 = @"JFX_fragment_YUV601_Pos4Tex2_texture2D";
    }

    if (a3)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (a3)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"JFX_fragment_Pos4Tex2_texture2D";
    }

    [(JFXImageMTKView *)self setRenderingType:v9];
    v11 = [(MTLLibrary *)self->_library newFunctionWithName:v10];
    v12 = [(MTKView *)self device];
    v16 = 0;
    v13 = [JFXImageMTKView buildRenderPipelineWithLabel:@"JFXImageMTKView Pipeline" vertexFunction:v6 fragmentFunction:v11 device:v12 view:self error:&v16];
    v14 = v16;
    v15 = self->_renderPipelineState;
    self->_renderPipelineState = v13;

    if (v14)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"JFXImageMTKView failed to build render pipeline: %@", v14];
    }
  }
}

- (void)drawRect:(CGRect)a3
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[CFXApplicationState sharedInstance];
  v6 = [v5 applicationState];

  if (v6 != 2)
  {
    if (!self->_needsUpdateTexture || ([(JFXImageMTKView *)self updateTexture], !self->_needsUpdateTexture))
    {
      if (!self->_needsUpdateVertices || ([(JFXImageMTKView *)self updateVertices], !self->_needsUpdateVertices))
      {
        if (self->_renderPipelineState && self[1].super.super.super.super.isa != -1 && (self->_texture_RGBA || self->_texture_YUV_Luma && self->_texture_YUV_Chroma) && (self->_textureSize.width != *MEMORY[0x277CBF3A8] || self->_textureSize.height != *(MEMORY[0x277CBF3A8] + 8)))
        {
          v8 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
          v9 = [(MTKView *)self currentRenderPassDescriptor];
          if (v9)
          {
            v10 = [v8 renderCommandEncoderWithDescriptor:v9];
            [v10 setLabel:@"JFXImageMTKView Encoder"];
            [v10 pushDebugGroup:@"JFXImageMTKView"];
            [v10 setRenderPipelineState:self->_renderPipelineState];
            [v10 setVertexBytes:&self->_anon_470[6] length:64 atIndex:0];
            pv_simd_matrix_make_orthographic();
            if (LOBYTE(self->_jtImage))
            {
              v12 = -1.0;
            }

            else
            {
              v12 = 1.0;
            }

            if (BYTE1(self->_jtImage))
            {
              v13 = -1.0;
            }

            else
            {
              v13 = 1.0;
            }

            pv_simd_matrix_scale(v11, v12, v13, 1.0);
            v21[0] = v14;
            v21[1] = v15;
            v21[2] = v16;
            v21[3] = v17;
            [v10 setVertexBytes:v21 length:64 atIndex:1];
            if (self[1].super.super.super.super.isa)
            {
              [v10 setFragmentTexture:self->_mtlTexture_YUV_Luma atIndex:0];
              v18 = &OBJC_IVAR___JFXImageMTKView__mtlTexture_YUV_Chroma;
              v19 = 1;
            }

            else
            {
              v19 = 0;
              v18 = &OBJC_IVAR___JFXImageMTKView__mtlTexture_RGBA;
            }

            [v10 setFragmentTexture:*(&self->super.super.super.super.isa + *v18) atIndex:v19];
            [v10 setFragmentSamplerState:self->_sampler atIndex:0];
            [v10 drawPrimitives:4 vertexStart:0 vertexCount:4];
            [v10 popDebugGroup];
            [v10 endEncoding];
            v20 = [(MTKView *)self currentDrawable];
            if (v20)
            {
              [v8 presentDrawable:v20];
            }
          }

          [v8 commit];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)setJtImage:(id)a3
{
  v5 = a3;
  if (self->_renderingType != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_renderingType, a3);
    renderingType = self->_renderingType;
    if (renderingType)
    {
      v7 = [renderingType pvImageBuffer];
      [v7 canCreateCVPixelBuffer];
    }

    self->_needsUpdateTexture = 1;
    self->_needsUpdateVertices = 1;
    [(JFXImageMTKView *)self updateDebugDrawing];
    [(JFXImageMTKView *)self setNeedsDisplay];
    v5 = v8;
  }
}

- (void)setRenderingType:(int64_t)a3
{
  if (self[1].super.super.super.super.isa != a3)
  {
    self[1].super.super.super.super.isa = a3;
    [(JFXImageMTKView *)self updateDebugDrawing];
  }
}

- (void)setFlipX:(BOOL)a3
{
  if (LOBYTE(self->_jtImage) != a3)
  {
    LOBYTE(self->_jtImage) = a3;
    [(JFXImageMTKView *)self setNeedsDisplay];
  }
}

- (void)setFlipY:(BOOL)a3
{
  if (BYTE1(self->_jtImage) != a3)
  {
    BYTE1(self->_jtImage) = a3;
    [(JFXImageMTKView *)self setNeedsDisplay];
  }
}

- (void)setContentMode:(int64_t)a3
{
  v5 = [(JFXImageMTKView *)self contentMode];
  if (a3 != 3 && v5 != a3)
  {
    v6.receiver = self;
    v6.super_class = JFXImageMTKView;
    [(JFXImageMTKView *)&v6 setContentMode:a3];
    self->_needsUpdateVertices = 1;
    [(JFXImageMTKView *)self setNeedsDisplay];
  }
}

- (void)setEnableDebugDrawing:(BOOL)a3
{
  if (BYTE2(self->_jtImage) != a3)
  {
    BYTE2(self->_jtImage) = a3;
    [(JFXImageMTKView *)self updateDebugDrawing];
  }
}

- (void)updateDebugDrawing
{
  v3 = 0.0;
  if (BYTE2(self->_jtImage) == 1)
  {
    v4 = [JFXImageView colorFromRenderingType:self[1].super.super.super.super.isa];
    v5 = [v4 CGColor];
    v6 = [(JFXImageMTKView *)self layer];
    [v6 setBorderColor:v5];

    v3 = 4.0;
  }

  v7 = [(JFXImageMTKView *)self layer];
  [v7 setBorderWidth:v3];
}

+ (id)buildRenderPipelineWithLabel:(id)a3 vertexFunction:(id)a4 fragmentFunction:(id)a5 device:(id)a6 view:(id)a7 error:(id *)a8
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_opt_new();
  [v18 setLabel:v17];

  [v18 setRasterSampleCount:{objc_msgSend(v13, "sampleCount")}];
  [v18 setVertexFunction:v16];

  [v18 setFragmentFunction:v15];
  v19 = [v13 colorPixelFormat];
  v20 = [v18 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript:0];
  [v21 setPixelFormat:v19];

  v22 = [v13 depthStencilPixelFormat];
  [v18 setDepthAttachmentPixelFormat:v22];
  v23 = [v14 newRenderPipelineStateWithDescriptor:v18 error:a8];

  return v23;
}

+ (id)buildSamplerStateWithDevice:(id)a3 addressMode:(unint64_t)a4 filter:(unint64_t)a5
{
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setSAddressMode:a4];
  [v8 setTAddressMode:a4];
  [v8 setMinFilter:a5];
  [v8 setMagFilter:a5];
  v9 = [v7 newSamplerStateWithDescriptor:v8];

  return v9;
}

@end