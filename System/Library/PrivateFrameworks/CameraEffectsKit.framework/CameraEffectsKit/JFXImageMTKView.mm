@interface JFXImageMTKView
+ (id)buildRenderPipelineWithLabel:(id)label vertexFunction:(id)function fragmentFunction:(id)fragmentFunction device:(id)device view:(id)view error:(id *)error;
+ (id)buildSamplerStateWithDevice:(id)device addressMode:(unint64_t)mode filter:(unint64_t)filter;
- (JFXImageMTKView)initWithCoder:(id)coder;
- (JFXImageMTKView)initWithFrame:(CGRect)frame device:(id)device;
- (void)JFXImageMTKView_commonInit;
- (void)cleanupTextureCache;
- (void)cleanupTextures;
- (void)configureRenderPipelineForColorAttachments:(void *)attachments;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)mode;
- (void)setEnableDebugDrawing:(BOOL)drawing;
- (void)setFlipX:(BOOL)x;
- (void)setFlipY:(BOOL)y;
- (void)setJtImage:(id)image;
- (void)setRenderingType:(int64_t)type;
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
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(JFXImageMTKView *)self setBackgroundColor:clearColor];

  [(MTKView *)self setColorPixelFormat:80];
  [(MTKView *)self setClearColor:0.0, 0.0, 0.0, 0.0];
  [(JFXImageMTKView *)self bounds];
  self->_viewSize.width = v4;
  self->_viewSize.height = v5;
  self->_textureSize = *MEMORY[0x277CBF3A8];
  self->_needsUpdateVertices = 1;
  self->_needsUpdateTexture = 1;
  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  device = [(MTKView *)self device];
  v21 = 0;
  v8 = [device newDefaultLibraryWithBundle:jfxBundle error:&v21];
  v9 = v21;
  library = self->_library;
  self->_library = v8;

  device2 = [(MTKView *)self device];
  newCommandQueue = [device2 newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = newCommandQueue;

  v14 = objc_alloc(MEMORY[0x277CD71F0]);
  device3 = [(MTKView *)self device];
  v16 = [v14 initWithDevice:device3];
  textureLoader = self->_textureLoader;
  self->_textureLoader = v16;

  [(JFXImageMTKView *)self setupTextureCache];
  device4 = [(MTKView *)self device];
  v19 = [JFXImageMTKView buildSamplerStateWithDevice:device4 addressMode:0 filter:1];
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

- (JFXImageMTKView)initWithFrame:(CGRect)frame device:(id)device
{
  v7.receiver = self;
  v7.super_class = JFXImageMTKView;
  v4 = [(MTKView *)&v7 initWithFrame:device device:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(JFXImageMTKView *)v4 JFXImageMTKView_commonInit];
  }

  return v5;
}

- (JFXImageMTKView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = JFXImageMTKView;
  v3 = [(MTKView *)&v6 initWithCoder:coder];
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
  device = [(MTKView *)self device];
  CVMetalTextureCacheCreate(v3, 0, device, 0, &self->_textureCache);
}

- (void)updateTexture
{
  self->_needsUpdateTexture = 0;
  [(JFXImageMTKView *)self cleanupTextures];
  pvImageBuffer = [self->_renderingType pvImageBuffer];
  cvPixelBuffer = [pvImageBuffer cvPixelBuffer];

  if (cvPixelBuffer)
  {
    Width = CVPixelBufferGetWidth(cvPixelBuffer);
    Height = CVPixelBufferGetHeight(cvPixelBuffer);
    self->_textureSize.width = Width;
    self->_textureSize.height = Height;
    v7 = CVBufferCopyAttachment(cvPixelBuffer, *MEMORY[0x277CC4D10], 0);
    [(JFXImageMTKView *)self configureRenderPipelineForColorAttachments:v7];
    v8 = *MEMORY[0x277CBECE8];
    textureCache = self->_textureCache;
    if (v7)
    {
      CVMetalTextureCacheCreateTextureFromImage(v8, textureCache, cvPixelBuffer, 0, MTLPixelFormatR8Unorm, Width, Height, 0, &self->_texture_YUV_Luma);
      v10 = CVMetalTextureGetTexture(self->_texture_YUV_Luma);
      mtlTexture_YUV_Luma = self->_mtlTexture_YUV_Luma;
      self->_mtlTexture_YUV_Luma = v10;

      CVMetalTextureCacheCreateTextureFromImage(v8, self->_textureCache, cvPixelBuffer, 0, MTLPixelFormatRG8Unorm, Width >> 1, Height >> 1, 1uLL, &self->_texture_YUV_Chroma);
      v12 = CVMetalTextureGetTexture(self->_texture_YUV_Chroma);
      mtlTexture_YUV_Chroma = self->_mtlTexture_YUV_Chroma;
      self->_mtlTexture_YUV_Chroma = v12;

      CFRelease(v7);
    }

    else
    {
      CVMetalTextureCacheCreateTextureFromImage(v8, textureCache, cvPixelBuffer, 0, MTLPixelFormatBGRA8Unorm, Width, Height, 0, &self->_texture_RGBA);
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

- (void)configureRenderPipelineForColorAttachments:(void *)attachments
{
  if (self->_pixelBufferColorAttachments != attachments)
  {
    self->_pixelBufferColorAttachments = attachments;
    renderPipelineState = self->_renderPipelineState;
    self->_renderPipelineState = 0;
  }

  if (!self->_renderPipelineState)
  {
    v6 = [(MTLLibrary *)self->_library newFunctionWithName:@"JFX_vertex_Pos2Tex2_transform"];
    v7 = 1;
    if (*MEMORY[0x277CC4D20] != attachments)
    {
      v7 = 2;
    }

    v8 = @"JFX_fragment_YUV709_Pos4Tex2_texture2D";
    if (*MEMORY[0x277CC4D20] == attachments)
    {
      v8 = @"JFX_fragment_YUV601_Pos4Tex2_texture2D";
    }

    if (attachments)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (attachments)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"JFX_fragment_Pos4Tex2_texture2D";
    }

    [(JFXImageMTKView *)self setRenderingType:v9];
    v11 = [(MTLLibrary *)self->_library newFunctionWithName:v10];
    device = [(MTKView *)self device];
    v16 = 0;
    v13 = [JFXImageMTKView buildRenderPipelineWithLabel:@"JFXImageMTKView Pipeline" vertexFunction:v6 fragmentFunction:v11 device:device view:self error:&v16];
    v14 = v16;
    v15 = self->_renderPipelineState;
    self->_renderPipelineState = v13;

    if (v14)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"JFXImageMTKView failed to build render pipeline: %@", v14];
    }
  }
}

- (void)drawRect:(CGRect)rect
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[CFXApplicationState sharedInstance];
  applicationState = [v5 applicationState];

  if (applicationState != 2)
  {
    if (!self->_needsUpdateTexture || ([(JFXImageMTKView *)self updateTexture], !self->_needsUpdateTexture))
    {
      if (!self->_needsUpdateVertices || ([(JFXImageMTKView *)self updateVertices], !self->_needsUpdateVertices))
      {
        if (self->_renderPipelineState && self[1].super.super.super.super.isa != -1 && (self->_texture_RGBA || self->_texture_YUV_Luma && self->_texture_YUV_Chroma) && (self->_textureSize.width != *MEMORY[0x277CBF3A8] || self->_textureSize.height != *(MEMORY[0x277CBF3A8] + 8)))
        {
          commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
          currentRenderPassDescriptor = [(MTKView *)self currentRenderPassDescriptor];
          if (currentRenderPassDescriptor)
          {
            v10 = [commandBuffer renderCommandEncoderWithDescriptor:currentRenderPassDescriptor];
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
            currentDrawable = [(MTKView *)self currentDrawable];
            if (currentDrawable)
            {
              [commandBuffer presentDrawable:currentDrawable];
            }
          }

          [commandBuffer commit];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)setJtImage:(id)image
{
  imageCopy = image;
  if (self->_renderingType != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_renderingType, image);
    renderingType = self->_renderingType;
    if (renderingType)
    {
      pvImageBuffer = [renderingType pvImageBuffer];
      [pvImageBuffer canCreateCVPixelBuffer];
    }

    self->_needsUpdateTexture = 1;
    self->_needsUpdateVertices = 1;
    [(JFXImageMTKView *)self updateDebugDrawing];
    [(JFXImageMTKView *)self setNeedsDisplay];
    imageCopy = v8;
  }
}

- (void)setRenderingType:(int64_t)type
{
  if (self[1].super.super.super.super.isa != type)
  {
    self[1].super.super.super.super.isa = type;
    [(JFXImageMTKView *)self updateDebugDrawing];
  }
}

- (void)setFlipX:(BOOL)x
{
  if (LOBYTE(self->_jtImage) != x)
  {
    LOBYTE(self->_jtImage) = x;
    [(JFXImageMTKView *)self setNeedsDisplay];
  }
}

- (void)setFlipY:(BOOL)y
{
  if (BYTE1(self->_jtImage) != y)
  {
    BYTE1(self->_jtImage) = y;
    [(JFXImageMTKView *)self setNeedsDisplay];
  }
}

- (void)setContentMode:(int64_t)mode
{
  contentMode = [(JFXImageMTKView *)self contentMode];
  if (mode != 3 && contentMode != mode)
  {
    v6.receiver = self;
    v6.super_class = JFXImageMTKView;
    [(JFXImageMTKView *)&v6 setContentMode:mode];
    self->_needsUpdateVertices = 1;
    [(JFXImageMTKView *)self setNeedsDisplay];
  }
}

- (void)setEnableDebugDrawing:(BOOL)drawing
{
  if (BYTE2(self->_jtImage) != drawing)
  {
    BYTE2(self->_jtImage) = drawing;
    [(JFXImageMTKView *)self updateDebugDrawing];
  }
}

- (void)updateDebugDrawing
{
  v3 = 0.0;
  if (BYTE2(self->_jtImage) == 1)
  {
    v4 = [JFXImageView colorFromRenderingType:self[1].super.super.super.super.isa];
    cGColor = [v4 CGColor];
    layer = [(JFXImageMTKView *)self layer];
    [layer setBorderColor:cGColor];

    v3 = 4.0;
  }

  layer2 = [(JFXImageMTKView *)self layer];
  [layer2 setBorderWidth:v3];
}

+ (id)buildRenderPipelineWithLabel:(id)label vertexFunction:(id)function fragmentFunction:(id)fragmentFunction device:(id)device view:(id)view error:(id *)error
{
  viewCopy = view;
  deviceCopy = device;
  fragmentFunctionCopy = fragmentFunction;
  functionCopy = function;
  labelCopy = label;
  v18 = objc_opt_new();
  [v18 setLabel:labelCopy];

  [v18 setRasterSampleCount:{objc_msgSend(viewCopy, "sampleCount")}];
  [v18 setVertexFunction:functionCopy];

  [v18 setFragmentFunction:fragmentFunctionCopy];
  colorPixelFormat = [viewCopy colorPixelFormat];
  colorAttachments = [v18 colorAttachments];
  v21 = [colorAttachments objectAtIndexedSubscript:0];
  [v21 setPixelFormat:colorPixelFormat];

  depthStencilPixelFormat = [viewCopy depthStencilPixelFormat];
  [v18 setDepthAttachmentPixelFormat:depthStencilPixelFormat];
  v23 = [deviceCopy newRenderPipelineStateWithDescriptor:v18 error:error];

  return v23;
}

+ (id)buildSamplerStateWithDevice:(id)device addressMode:(unint64_t)mode filter:(unint64_t)filter
{
  deviceCopy = device;
  v8 = objc_opt_new();
  [v8 setSAddressMode:mode];
  [v8 setTAddressMode:mode];
  [v8 setMinFilter:filter];
  [v8 setMagFilter:filter];
  v9 = [deviceCopy newSamplerStateWithDescriptor:v8];

  return v9;
}

@end