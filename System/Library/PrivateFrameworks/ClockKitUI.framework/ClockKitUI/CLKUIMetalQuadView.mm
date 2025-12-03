@interface CLKUIMetalQuadView
+ (id)allocateDepthTextureWithWidth:(unint64_t)width height:(unint64_t)height sampleCount:(unint64_t)count;
+ (id)allocateMsaaTextureWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unint64_t)format sampleCount:(unint64_t)count;
- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor;
- (BOOL)_displayAndCheckForDrawable:(BOOL)drawable renderDiscontinuity:(BOOL)discontinuity withCompletion:(id)completion;
- (BOOL)prewarmWithCompletion:(id)completion;
- (CGSize)drawableSize;
- (CLKUIMetalQuadView)initWithFrame:(CGRect)frame identifier:(id)identifier options:(unint64_t)options colorSpace:(int64_t)space asyncRenderQueue:(id)queue;
- (float)computeAPLAndSnapshot:(id *)snapshot;
- (id)_getDimmingPipelineState;
- (id)_newRenderPassDescriptor;
- (id)_snapshotTextureInRect:(CGRect)rect scale:(double)scale time:(double)time withAdditionalPasses:(id)passes;
- (id)snapshotInRect:(CGRect)rect scale:(double)scale time:(double)time;
- (id)snapshotTextureInRect:(CGRect)rect scale:(double)scale time:(double)time;
- (void)_handleQuadArrayChange:(id)change;
- (void)_renderQuads:(id)quads toScreenWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)_updateDrawableSizeIfNecessary;
- (void)_updateFramebufferOnly;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setClearColor:(id)color;
- (void)setOpaque:(BOOL)opaque;
- (void)setSingleBufferMode:(BOOL)mode;
- (void)snapshotAndFreeze;
@end

@implementation CLKUIMetalQuadView

- (CLKUIMetalQuadView)initWithFrame:(CGRect)frame identifier:(id)identifier options:(unint64_t)options colorSpace:(int64_t)space asyncRenderQueue:(id)queue
{
  optionsCopy = options;
  v39.receiver = self;
  v39.super_class = CLKUIMetalQuadView;
  v9 = [(CLKUIQuadView *)&v39 initWithFrame:identifier identifier:options options:queue asyncRenderQueue:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v10 = v9;
  if (v9)
  {
    if ((space - 1) > 3)
    {
      v11 = 81;
    }

    else
    {
      v11 = qword_1E4A0AA98[space - 1];
    }

    v9->_colorPixelFormat = v11;
    v9->_maxAPL = 1.0;
    v9->_aplFilterAmount = 0.0;
    if ((optionsCopy & 8) != 0)
    {
      _msaaCount = [(CLKUIMetalQuadView *)v9 _msaaCount];
    }

    else
    {
      _msaaCount = 1;
    }

    v10->_msaaCount = _msaaCount;
    *(v10 + 552) = *(v10 + 552) & 0xFE | optionsCopy & 1;
    *(v10 + 552) = *(v10 + 552) & 0xF7 | (optionsCopy >> 2) & 8;
    *(v10 + 552) = *(v10 + 552) & 0xDF | (optionsCopy >> 1) & 0x20;
    *(v10 + 552) = *(v10 + 552) & 0xBF | (optionsCopy >> 2) & 0x40;
    *(v10 + 553) = *(v10 + 553) & 0xFE | ((optionsCopy & 0x200) != 0);
    *(v10 + 552) = optionsCopy & 0x80 | *(v10 + 552) & 0x7F;
    *(v10 + 552) = *(v10 + 552) & 0xFD | optionsCopy & 2;
    *(v10 + 552) = *(v10 + 552) & 0xFB | (optionsCopy >> 2) & 4;
    if (*(v10 + 552))
    {
      v13 = objc_opt_new();
      [v13 setDepthCompareFunction:3];
      [v13 setDepthWriteEnabled:1];
      v14 = +[CLKUIMetalResourceManager sharedDevice];
      v15 = [v14 newDepthStencilStateWithDescriptor:v13];
      depthStencilState = v10->_depthStencilState;
      v10->_depthStencilState = v15;
    }

    v17 = objc_alloc_init(MEMORY[0x1E69793F0]);
    if ((*(v10 + 552) & 4) != 0)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v21 = v22;
    }

    else
    {
      mainScreen = [MEMORY[0x1E695B530] sharedRenderingContext];
      device = [mainScreen device];
      [device screenScale];
      v21 = v20;
    }

    [(CAMetalLayer *)v17 setContentsScale:v21];
    v23 = +[CLKUIMetalResourceManager sharedDevice];
    [(CAMetalLayer *)v17 setDevice:v23];

    [(CAMetalLayer *)v17 setPixelFormat:v10->_colorPixelFormat];
    if (*(v10 + 553))
    {
      [(CAMetalLayer *)v17 setWantsIOSurfaceCompression:1];
    }

    v24 = 4;
    if ((*(v10 + 552) & 0x20) != 0)
    {
      v24 = 5;
    }

    if ((*(v10 + 552) & 0x40) != 0)
    {
      v25 = v24 | 2;
    }

    else
    {
      v25 = v24;
    }

    [(CAMetalLayer *)v17 setFramebufferOnly:(*(v10 + 552) & 0x40 | *(v10 + 552) & 0x20) == 0];
    [(CAMetalLayer *)v17 setTextureUsage:v25];
    [(CAMetalLayer *)v17 setFenceEnabled:1];
    [(CAMetalLayer *)v17 setPresentsWithTransaction:(*(v10 + 552) >> 1) & 1];
    if (*(v10 + 552) < 0)
    {
      v26 = 2;
    }

    else
    {
      v26 = 3;
    }

    [(CAMetalLayer *)v17 setMaximumDrawableCount:v26];
    [(CAMetalLayer *)v17 setDrawsAsynchronously:1];
    [(CAMetalLayer *)v17 setAllowsDisplayCompositing:0];
    [(CAMetalLayer *)v17 setOpaque:1];
    metalLayer = v10->_metalLayer;
    v10->_metalLayer = v17;
    v28 = v17;

    v29 = v10->_metalLayer;
    [(CLKUIMetalQuadView *)v10 bounds];
    [(CAMetalLayer *)v29 setFrame:?];
    layer = [(CLKUIMetalQuadView *)v10 layer];
    [layer addSublayer:v28];

    v31 = +[CLKUIMetalResourceManager sharedCommandQueue];
    commandQueue = v10->_commandQueue;
    v10->_commandQueue = v31;

    _newRenderPassDescriptor = [(CLKUIMetalQuadView *)v10 _newRenderPassDescriptor];
    renderPassDescriptor = v10->_renderPassDescriptor;
    v10->_renderPassDescriptor = _newRenderPassDescriptor;

    *(v10 + 552) |= 0x10u;
    v35 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(CLKUIMetalQuadView *)v10 bounds];
    v36 = [v35 initWithFrame:?];
    snapshotView = v10->_snapshotView;
    v10->_snapshotView = v36;

    [(CLKUIMetalQuadView *)v10 addSubview:v10->_snapshotView];
    [(UIImageView *)v10->_snapshotView setHidden:1];
  }

  return v10;
}

+ (id)allocateDepthTextureWithWidth:(unint64_t)width height:(unint64_t)height sampleCount:(unint64_t)count
{
  v5 = 0;
  if (width && height)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69741C0]);
    v10 = v9;
    if (count >= 2)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    [v9 setTextureType:v11];
    [v10 setPixelFormat:252];
    [v10 setWidth:width];
    [v10 setHeight:height];
    [v10 setSampleCount:count];
    [v10 setUsage:4];
    [v10 setStorageMode:3];
    v12 = +[CLKUIMetalResourceManager sharedDevice];
    v5 = [v12 newTextureWithDescriptor:v10];
  }

  return v5;
}

+ (id)allocateMsaaTextureWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unint64_t)format sampleCount:(unint64_t)count
{
  v6 = 0;
  if (height && width && count >= 2)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69741C0]);
    [v11 setTextureType:4];
    [v11 setPixelFormat:format];
    [v11 setWidth:width];
    [v11 setHeight:height];
    [v11 setStorageMode:3];
    [v11 setUsage:4];
    [v11 setSampleCount:count];
    [v11 setMipmapLevelCount:1];
    v12 = +[CLKUIMetalResourceManager sharedDevice];
    v6 = [v12 newTextureWithDescriptor:v11];
  }

  return v6;
}

- (void)layoutSubviews
{
  [(CLKUIMetalQuadView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CAMetalLayer *)self->_metalLayer frame];
  self->_quadSize.width = v8;
  self->_quadSize.height = v10;
  if (v8 != v12 || v10 != v11)
  {
    *(self + 552) |= 0x10u;
    [(CAMetalLayer *)self->_metalLayer setFrame:v4, v6, v8, v10];
  }

  [(CLKUIMetalQuadView *)self bounds];
  snapshotView = self->_snapshotView;

  [(UIImageView *)snapshotView setFrame:?];
}

- (void)setOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  v6.receiver = self;
  v6.super_class = CLKUIMetalQuadView;
  if ([(CLKUIMetalQuadView *)&v6 isOpaque]!= opaque)
  {
    v5.receiver = self;
    v5.super_class = CLKUIMetalQuadView;
    [(CLKUIMetalQuadView *)&v5 setOpaque:opaqueCopy];
    [(CAMetalLayer *)self->_metalLayer setOpaque:opaqueCopy];
  }
}

- (void)setClearColor:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
  v7 = [colorAttachments objectAtIndexedSubscript:0];
  [v7 setClearColor:{var0, var1, var2, var3}];
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor
{
  colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
  v3 = [colorAttachments objectAtIndexedSubscript:0];
  [v3 clearColor];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.var3 = v15;
  result.var2 = v14;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (void)_handleQuadArrayChange:(id)change
{
  changeCopy = change;
  v6.receiver = self;
  v6.super_class = CLKUIMetalQuadView;
  [(CLKUIQuadView *)&v6 _handleQuadArrayChange:changeCopy];
  quads = self->_quads;
  self->_quads = changeCopy;
}

- (void)snapshotAndFreeze
{
  [(CLKUIMetalQuadView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  currentDevice = [MEMORY[0x1E695B4F8] currentDevice];
  [currentDevice screenScale];
  v13 = [(CLKUIMetalQuadView *)self snapshotInRect:v4 scale:v6 time:v8, v10, v12, CACurrentMediaTime()];

  [(UIImageView *)self->_snapshotView setImage:v13];
  [(UIImageView *)self->_snapshotView setHidden:0];
}

- (void)setSingleBufferMode:(BOOL)mode
{
  modeCopy = mode;
  v5.receiver = self;
  v5.super_class = CLKUIMetalQuadView;
  [(CLKUIQuadView *)&v5 setSingleBufferMode:?];
  if (modeCopy)
  {
    [(CAMetalLayer *)self->_metalLayer removeBackBuffers];
  }
}

- (id)snapshotInRect:(CGRect)rect scale:(double)scale time:(double)time
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CLKUIMetalQuadView_snapshotInRect_scale_time___block_invoke;
  v7[3] = &unk_1E8762C60;
  rectCopy = rect;
  scaleCopy = scale;
  timeCopy = time;
  v7[4] = self;
  v7[5] = &v11;
  [(CLKUIQuadView *)self _runOnRenderQueueIfNeeded:v7];
  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __48__CLKUIMetalQuadView_snapshotInRect_scale_time___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  if ((*(v4 + 632) | 2) == 0x22B)
  {
    v5 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:71 width:(*(a1 + 64) * *(a1 + 80)) height:(*(a1 + 80) * *(a1 + 72)) mipmapped:0];
    [v5 setUsage:3];
    v6 = +[CLKUIMetalResourceManager sharedDevice];
    v7 = [v6 newTextureWithDescriptor:v5];

    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __48__CLKUIMetalQuadView_snapshotInRect_scale_time___block_invoke_2;
    v18 = &unk_1E8762C38;
    v19 = *(a1 + 32);
    v8 = v7;
    v20 = v8;
    v9 = _Block_copy(&v15);

    v4 = *(a1 + 32);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *(v4 + 616) = 1;
  v10 = [*(a1 + 32) _snapshotTextureInRect:v9 scale:*(a1 + 48) time:*(a1 + 56) withAdditionalPasses:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), v15, v16, v17, v18, v19}];
  *(*(a1 + 32) + 616) = 0;
  if (v8)
  {
    v11 = v8;

    v10 = v11;
  }

  objc_autoreleasePoolPop(v3);
  v12 = [*(a1 + 32) _textureToImage:v10 scale:*(a1 + 80)];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  objc_autoreleasePoolPop(v2);
}

void __48__CLKUIMetalQuadView_snapshotInRect_scale_time___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 568);
  v7 = v11;
  CLKUIConvertTextureFromXRSRGBtoP3(a3, v6, a2, &v11);
  v8 = v11;

  v9 = *(a1 + 32);
  v10 = *(v9 + 568);
  *(v9 + 568) = v8;
}

- (id)snapshotTextureInRect:(CGRect)rect scale:(double)scale time:(double)time
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CLKUIMetalQuadView_snapshotTextureInRect_scale_time___block_invoke;
  v7[3] = &unk_1E8762C88;
  v7[4] = self;
  v7[5] = &v11;
  rectCopy = rect;
  scaleCopy = scale;
  timeCopy = time;
  [(CLKUIQuadView *)self _runOnRenderQueueIfNeeded:v7];
  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

uint64_t __55__CLKUIMetalQuadView_snapshotTextureInRect_scale_time___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _snapshotTextureInRect:0 scale:*(a1 + 48) time:*(a1 + 56) withAdditionalPasses:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_snapshotTextureInRect:(CGRect)rect scale:(double)scale time:(double)time withAdditionalPasses:(id)passes
{
  height = rect.size.height;
  width = rect.size.width;
  v55 = *MEMORY[0x1E69E9840];
  passesCopy = passes;
  [(CLKUIQuadView *)self _prerenderForTime:time];
  v11 = objc_autoreleasePoolPush();
  v41 = (height * scale);
  v42 = (width * scale);
  v12 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:self->_colorPixelFormat width:? height:? mipmapped:?];
  [v12 setUsage:5];
  v13 = +[CLKUIMetalResourceManager sharedDevice];
  v44 = [v13 newTextureWithDescriptor:v12];

  v14 = CACurrentMediaTime();
  v15 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v16 = self->_quads;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v50;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v49 + 1) + 8 * i);
        if ([v21 prepareForTime:v14])
        {
          [v15 addObject:v21];
        }
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v18);
  }

  if ([v15 count])
  {
    v40 = v11;
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    v23 = MEMORY[0x1E696AEC0];
    debugIdentifier = [(CLKUIQuadView *)self debugIdentifier];
    v25 = [v23 stringWithFormat:@"FaceSnapshot-%@", debugIdentifier];

    v39 = v25;
    [CLKUIMetalResourceManager addCompletedErrorCheckToCommandBuffer:commandBuffer forCase:v25];
    [CLKUIMetalResourceManager setSynchronousTextureStreamingEnabled:1];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v26 = v15;
    v27 = [v26 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v46;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v45 + 1) + 8 * j) performOffscreenPassesWithCommandBuffer:commandBuffer];
        }

        v28 = [v26 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v28);
    }

    msaaCount = self->_msaaCount;
    colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v33 = [colorAttachments objectAtIndexedSubscript:0];
    v34 = v33;
    if (msaaCount < 2)
    {
      [v33 setTexture:v44];
    }

    else
    {
      v35 = [CLKUIMetalQuadView allocateMsaaTextureWithWidth:v42 height:v41 pixelFormat:[(CLKUIMetalQuadView *)self colorPixelFormat] sampleCount:self->_msaaCount];
      [v34 setTexture:v35];

      colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
      v34 = [colorAttachments objectAtIndexedSubscript:0];
      [v34 setResolveTexture:v44];
    }

    if (*(self + 552))
    {
      depthAttachment = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor depthAttachment];
      v37 = [CLKUIMetalQuadView allocateDepthTextureWithWidth:v42 height:v41 sampleCount:self->_msaaCount];
      [depthAttachment setTexture:v37];
    }

    [(CLKUIMetalQuadView *)self _renderQuads:v26 toScreenWithCommandBuffer:commandBuffer passDescriptor:self->_renderPassDescriptor];
    if (passesCopy)
    {
      passesCopy[2]();
    }

    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];

    v11 = v40;
  }

  objc_autoreleasePoolPop(v11);

  return v44;
}

- (BOOL)prewarmWithCompletion:(id)completion
{
  completionCopy = completion;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CLKUIMetalQuadView_prewarmWithCompletion___block_invoke;
  v7[3] = &unk_1E8762CD8;
  v7[4] = self;
  v5 = completionCopy;
  v8 = v5;
  v9 = &v10;
  [(CLKUIQuadView *)self _runOnRenderQueueIfNeeded:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __44__CLKUIMetalQuadView_prewarmWithCompletion___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = CACurrentMediaTime();
  v4 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = *(*(a1 + 32) + 528);
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        if ([v10 prepareForTime:v3])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    context = v2;
    v11 = [*(*(a1 + 32) + 496) commandBuffer];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [*(a1 + 32) debugIdentifier];
    v14 = [v12 stringWithFormat:@"FacePrewarm-%@", v13];

    [CLKUIMetalResourceManager addCompletedErrorCheckToCommandBuffer:v11 forCase:v14];
    v15 = *(a1 + 40);
    if (v15)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __44__CLKUIMetalQuadView_prewarmWithCompletion___block_invoke_2;
      v38[3] = &unk_1E8762CB0;
      v39 = v15;
      [v11 addCompletedHandler:v38];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = v4;
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v34 + 1) + 8 * j) performOffscreenPassesWithCommandBuffer:v11];
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v18);
    }

    v21 = *(a1 + 32);
    if (*(v21 + 552))
    {
      v22 = [*(v21 + 504) depthAttachment];
      v23 = [v22 texture];
      v24 = *(*(a1 + 32) + 536);

      v21 = *(a1 + 32);
      if (v23 != v24)
      {
        v25 = [*(v21 + 504) depthAttachment];
        [v25 setTexture:*(*(a1 + 32) + 536)];

        v21 = *(a1 + 32);
      }
    }

    if (!*(v21 + 600))
    {
      v26 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:*(v21 + 632) width:32 height:32 mipmapped:0];
      [v26 setUsage:5];
      v27 = +[CLKUIMetalResourceManager sharedDevice];
      v28 = [v27 newTextureWithDescriptor:v26];
      v29 = *(a1 + 32);
      v30 = *(v29 + 600);
      *(v29 + 600) = v28;

      v21 = *(a1 + 32);
    }

    v31 = [*(v21 + 504) colorAttachments];
    v32 = [v31 objectAtIndexedSubscript:0];
    [v32 setTexture:*(*(a1 + 32) + 600)];

    [*(a1 + 32) _renderQuads:v16 toScreenWithCommandBuffer:v11 passDescriptor:*(*(a1 + 32) + 504)];
    [v11 commit];

    objc_autoreleasePoolPop(context);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 48) + 8) + 24) = 0;

    objc_autoreleasePoolPop(v2);
  }
}

- (void)_renderQuads:(id)quads toScreenWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  v32 = *MEMORY[0x1E69E9840];
  quadsCopy = quads;
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  if ((*(self + 552) & 8) != 0)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [quadsCopy countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        v21 = 0;
        do
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(quadsCopy);
          }

          [*(*(&v26 + 1) + 8 * v21++) renderWithCommandBuffer:bufferCopy passDescriptor:descriptorCopy];
        }

        while (v19 != v21);
        v19 = [quadsCopy countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v11 = [bufferCopy renderCommandEncoderWithDescriptor:descriptorCopy];
    v12 = v11;
    if (*(self + 552))
    {
      [v11 setDepthStencilState:self->_depthStencilState];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = quadsCopy;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v22 + 1) + 8 * v17++) renderForDisplayWithEncoder:{v12, v22}];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }

    [v12 endEncoding];
  }
}

- (BOOL)_displayAndCheckForDrawable:(BOOL)drawable renderDiscontinuity:(BOOL)discontinuity withCompletion:(id)completion
{
  discontinuityCopy = discontinuity;
  drawableCopy = drawable;
  v106 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = objc_autoreleasePoolPush();
  [(CLKUIMetalQuadView *)self _updateDrawableSizeIfNecessary];
  v8 = CACurrentMediaTime();
  v9 = objc_opt_new();
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v10 = self->_quads;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v98 objects:v105 count:16];
  if (v11)
  {
    v12 = *v99;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v99 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v98 + 1) + 8 * i);
        if ([v14 prepareForTime:v8])
        {
          [v9 addObject:v14];
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v98 objects:v105 count:16];
    }

    while (v11);
  }

  if ([v9 count])
  {
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    v16 = MEMORY[0x1E696AEC0];
    debugIdentifier = [(CLKUIQuadView *)self debugIdentifier];
    v66 = [v16 stringWithFormat:@"FaceDisplay-%@", debugIdentifier];

    [CLKUIMetalResourceManager addCompletedErrorCheckToCommandBuffer:commandBuffer forCase:v66];
    [(UIImageView *)self->_snapshotView setHidden:1];
    [(UIImageView *)self->_snapshotView setImage:0];
    if (completionCopy)
    {
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __85__CLKUIMetalQuadView__displayAndCheckForDrawable_renderDiscontinuity_withCompletion___block_invoke;
      v96[3] = &unk_1E8762CB0;
      v97 = completionCopy;
      [commandBuffer addScheduledHandler:v96];
    }

    if ([(CLKUIQuadView *)self singleBufferMode])
    {
      objc_initWeak(location, self);
      v94[0] = MEMORY[0x1E69E9820];
      v94[1] = 3221225472;
      v94[2] = __85__CLKUIMetalQuadView__displayAndCheckForDrawable_renderDiscontinuity_withCompletion___block_invoke_2;
      v94[3] = &unk_1E8762D00;
      objc_copyWeak(&v95, location);
      [commandBuffer addCompletedHandler:v94];
      objc_destroyWeak(&v95);
      objc_destroyWeak(location);
    }

    [CLKUIMetalResourceManager setSynchronousTextureStreamingEnabled:discontinuityCopy];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v90 objects:v104 count:16];
    if (v19)
    {
      v20 = *v91;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v91 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v90 + 1) + 8 * j) performOffscreenPassesWithCommandBuffer:commandBuffer];
        }

        v19 = [v18 countByEnumeratingWithState:&v90 objects:v104 count:16];
      }

      while (v19);
    }

    if (drawableCopy && (*(self + 552) & 2) == 0 && ([(CAMetalLayer *)self->_metalLayer isDrawableAvailable]& 1) == 0)
    {
      v55 = _CLKUILoggingObjectForDomain(0, "CLKUILoggingDomainMetalQuadView");
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        [CLKUIMetalQuadView _displayAndCheckForDrawable:v55 renderDiscontinuity:? withCompletion:?];
      }

      [commandBuffer commit];
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      date = v18;
      v56 = [date countByEnumeratingWithState:&v86 objects:v103 count:16];
      if (v56)
      {
        v57 = *v87;
        do
        {
          for (k = 0; k != v56; ++k)
          {
            if (*v87 != v57)
            {
              objc_enumerationMutation(date);
            }

            [*(*(&v86 + 1) + 8 * k) renderFailedForReason:0];
          }

          v56 = [date countByEnumeratingWithState:&v86 objects:v103 count:16];
        }

        while (v56);
      }

      v67 = 0;
      goto LABEL_75;
    }

    date = [MEMORY[0x1E695DF00] date];
    nextDrawable = [(CAMetalLayer *)self->_metalLayer nextDrawable];
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:date];
    if (v23 <= 1.0)
    {
      if (v23 <= 0.0333333333)
      {
        goto LABEL_34;
      }

      v24 = _CLKUILoggingObjectForDomain(0, "CLKUILoggingDomainMetalQuadView");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [CLKUIMetalQuadView _displayAndCheckForDrawable:renderDiscontinuity:withCompletion:];
      }
    }

    else
    {
      v24 = _CLKUILoggingObjectForDomain(0, "CLKUILoggingDomainMetalQuadView");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [CLKUIMetalQuadView _displayAndCheckForDrawable:renderDiscontinuity:withCompletion:];
      }
    }

LABEL_34:
    v67 = nextDrawable != 0;
    if (!nextDrawable)
    {
      v28 = _CLKUILoggingObjectForDomain(0, "CLKUILoggingDomainMetalQuadView");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [CLKUIMetalQuadView _displayAndCheckForDrawable:v28 renderDiscontinuity:? withCompletion:?];
      }

      [commandBuffer commit];
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v26 = v18;
      v29 = [v26 countByEnumeratingWithState:&v82 objects:v102 count:16];
      if (v29)
      {
        v30 = *v83;
        do
        {
          for (m = 0; m != v29; ++m)
          {
            if (*v83 != v30)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v82 + 1) + 8 * m) renderFailedForReason:1];
          }

          v29 = [v26 countByEnumeratingWithState:&v82 objects:v102 count:16];
        }

        while (v29);
      }

      goto LABEL_74;
    }

    colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v26 = [colorAttachments objectAtIndexedSubscript:0];

    if (self->_msaaCount < 2)
    {
      texture = [nextDrawable texture];
      [v26 setTexture:texture];
    }

    else
    {
      [v26 setTexture:self->_msaaTexture];
      texture = [nextDrawable texture];
      [v26 setResolveTexture:texture];
    }

    if (*(self + 552))
    {
      depthAttachment = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor depthAttachment];
      texture2 = [depthAttachment texture];
      v34 = texture2 == self->_depthTexture;

      if (!v34)
      {
        [depthAttachment setTexture:self->_depthTexture];
      }
    }

    [(CLKUIMetalQuadView *)self _renderQuads:v18 toScreenWithCommandBuffer:commandBuffer passDescriptor:self->_renderPassDescriptor];
    if ([(CLKUIMetalQuadView *)self _shouldApplyAPLFilter])
    {
      v35 = self->_aplPipelineState;
      texture3 = [nextDrawable texture];
      v81 = v35;
      v63 = _CLKUIComputeTextureAPL(texture3, commandBuffer, &v81);
      v37 = v81;

      aplPipelineState = self->_aplPipelineState;
      self->_aplPipelineState = v37;
      v62 = v37;

      _getDimmingPipelineState = [(CLKUIMetalQuadView *)self _getDimmingPipelineState];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:_getDimmingPipelineState];
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      *location = 0u;
      aplFilterAmount = self->_aplFilterAmount;
      *&v80 = self->_maxAPL;
      *(&v80 + 1) = aplFilterAmount;
      *&v41 = CLKUINativeToAPLCoeff();
      v79 = v41;
      v42 = sRGBtoNative();
      LODWORD(location[1]) = v43;
      DWORD2(v77) = v44;
      location[0] = *&v42;
      *&v77 = v45;
      DWORD2(v78) = v46;
      *&v78 = v47;
      [computeCommandEncoder setBytes:location length:80 atIndex:2];
      [computeCommandEncoder setBuffer:v63 offset:0 atIndex:1];
      texture4 = [nextDrawable texture];
      [computeCommandEncoder setTexture:texture4 atIndex:0];

      threadExecutionWidth = [_getDimmingPipelineState threadExecutionWidth];
      maxTotalThreadsPerThreadgroup = [_getDimmingPipelineState maxTotalThreadsPerThreadgroup];
      texture5 = [nextDrawable texture];
      width = [texture5 width];
      texture6 = [nextDrawable texture];

      LODWORD(texture4) = [texture6 height];
      v75[0] = (threadExecutionWidth + width - 1) / threadExecutionWidth;
      v75[1] = (maxTotalThreadsPerThreadgroup / threadExecutionWidth + texture4 - 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth);
      v75[2] = 1;
      v74[0] = threadExecutionWidth;
      v74[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
      v74[2] = 1;
      [computeCommandEncoder dispatchThreadgroups:v75 threadsPerThreadgroup:v74];
      [computeCommandEncoder endEncoding];
    }

    if ((*(self + 552) & 2) == 0)
    {
      [commandBuffer presentDrawable:nextDrawable];
      [commandBuffer commit];
LABEL_74:

LABEL_75:
      goto LABEL_76;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__CLKUIMetalQuadView__displayAndCheckForDrawable_renderDiscontinuity_withCompletion___block_invoke_36;
    aBlock[3] = &unk_1E8762A30;
    v52 = commandBuffer;
    v72 = v52;
    v73 = nextDrawable;
    v53 = _Block_copy(aBlock);
    [v52 commit];
    currentPhase = [MEMORY[0x1E6979518] currentPhase];
    if (currentPhase)
    {
      if (currentPhase == 1)
      {
        v53[2](v53);
LABEL_73:

        goto LABEL_74;
      }

      if (![MEMORY[0x1E6979518] currentState])
      {
        [MEMORY[0x1E6979518] activate];
      }
    }

    [MEMORY[0x1E6979518] addCommitHandler:v53 forPhase:1];
    goto LABEL_73;
  }

  completionCopy[2]();
  v67 = 0;
LABEL_76:

  objc_autoreleasePoolPop(context);
  return v67;
}

uint64_t __85__CLKUIMetalQuadView__displayAndCheckForDrawable_renderDiscontinuity_withCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([WeakRetained singleBufferMode])
    {
      [v3[65] removeBackBuffers];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __85__CLKUIMetalQuadView__displayAndCheckForDrawable_renderDiscontinuity_withCompletion___block_invoke_36(uint64_t a1)
{
  [*(a1 + 32) waitUntilScheduled];
  v2 = *(a1 + 40);

  return [v2 present];
}

- (void)_updateFramebufferOnly
{
  if ((*(self + 552) & 0x20) != 0 || [(CLKUIMetalQuadView *)self _shouldApplyAPLFilter])
  {
    v3 = 0;
    v4 = 5;
  }

  else
  {
    v3 = 1;
    v4 = 4;
  }

  if ((*(self + 552) & 0x40) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if ((*(self + 552) & 0x40) != 0)
  {
    v6 = v4 | 2;
  }

  else
  {
    v6 = v4;
  }

  [(CAMetalLayer *)self->_metalLayer setFramebufferOnly:v5];
  metalLayer = self->_metalLayer;

  [(CAMetalLayer *)metalLayer setTextureUsage:v6];
}

- (float)computeAPLAndSnapshot:(id *)snapshot
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__38;
  v10[4] = __Block_byref_object_dispose__39;
  v11 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__0;
  v8[4] = __Block_byref_object_dispose__0;
  v9 = self->_aplPipelineState;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CLKUIMetalQuadView_computeAPLAndSnapshot___block_invoke;
  v7[3] = &unk_1E8762D50;
  v7[4] = self;
  v7[5] = v10;
  v7[7] = &v12;
  v7[8] = snapshot;
  v7[6] = v8;
  [(CLKUIQuadView *)self _runOnRenderQueueIfNeeded:v7];
  v5 = v13[6];
  _Block_object_dispose(v8, 8);

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void __44__CLKUIMetalQuadView_computeAPLAndSnapshot___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E695B4F8] currentDevice];
  [v11 screenScale];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__CLKUIMetalQuadView_computeAPLAndSnapshot___block_invoke_2;
  v16[3] = &unk_1E8762D28;
  v17 = *(a1 + 40);
  v13 = [v2 _snapshotTextureInRect:v16 scale:v4 time:v6 withAdditionalPasses:{v8, v10, v12, 0.0}];

  objc_storeStrong((*(a1 + 32) + 560), *(*(*(a1 + 48) + 8) + 40));
  if (*(a1 + 64))
  {
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x1E695B4F8] currentDevice];
    [v15 screenScale];
    **(a1 + 64) = [v14 _textureToImage:v13 scale:?];
  }

  *(*(*(a1 + 56) + 8) + 24) = (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
}

void __44__CLKUIMetalQuadView_computeAPLAndSnapshot___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = CLKUIComputeTextureAPL(a3, a2, &obj);
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_getDimmingPipelineState
{
  dimmingPipelineState = self->_dimmingPipelineState;
  if (!dimmingPipelineState)
  {
    v4 = +[CLKUIMetalResourceManager sharedDevice];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = 0;
    v6 = [v4 newDefaultLibraryWithBundle:v5 error:&v14];
    v7 = v14;

    v8 = [v6 newFunctionWithName:@"compute_apply_dimming"];
    v13 = v7;
    v9 = [v4 newComputePipelineStateWithFunction:v8 error:&v13];
    v10 = v13;

    v11 = self->_dimmingPipelineState;
    self->_dimmingPipelineState = v9;

    dimmingPipelineState = self->_dimmingPipelineState;
  }

  return dimmingPipelineState;
}

- (id)_newRenderPassDescriptor
{
  renderPassDescriptor = [MEMORY[0x1E6974128] renderPassDescriptor];
  colorAttachments = [renderPassDescriptor colorAttachments];
  v5 = [colorAttachments objectAtIndexedSubscript:0];

  [v5 setLoadAction:2];
  [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  if (self->_msaaCount <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [v5 setStoreAction:v6];
  if (*(self + 552))
  {
    depthAttachment = [renderPassDescriptor depthAttachment];
    [depthAttachment setLoadAction:2];
    [depthAttachment setClearDepth:1.0];
    [depthAttachment setStoreAction:0];
  }

  return renderPassDescriptor;
}

- (CGSize)drawableSize
{
  [(CAMetalLayer *)self->_metalLayer drawableSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateDrawableSizeIfNecessary
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(self + 552) & 0x10) != 0)
  {
    v3 = self->_metalLayer;
    if ((*(self + 552) & 4) != 0)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v7 = v8;
    }

    else
    {
      mainScreen = [MEMORY[0x1E695B530] sharedRenderingContext];
      device = [mainScreen device];
      [device screenScale];
      v7 = v6;
    }

    [(CAMetalLayer *)v3 bounds];
    v10 = v7 * v9;
    v12 = v7 * v11;
    self->_quadSize.width = v10;
    self->_quadSize.height = v12;
    [(CAMetalLayer *)v3 setDrawableSize:v10, v12];
    v13 = _CLKUILoggingObjectForDomain(0, "CLKUILoggingDomainMetalQuadView");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v21 = v10;
      *&v21[1] = v12;
      v20 = [MEMORY[0x1E696B098] valueWithBytes:v21 objCType:"{CGSize=dd}"];
      *buf = 138412290;
      v23 = v20;
      _os_log_debug_impl(&dword_1E49C8000, v13, OS_LOG_TYPE_DEBUG, "drawableSize (%@)", buf, 0xCu);
    }

    if (self->_msaaCount >= 2)
    {
      msaaTexture = self->_msaaTexture;
      if (!msaaTexture || v10 != [(MTLTexture *)msaaTexture width]|| v12 != [(MTLTexture *)self->_msaaTexture height])
      {
        v15 = [CLKUIMetalQuadView allocateMsaaTextureWithWidth:v10 height:v12 pixelFormat:[(CLKUIMetalQuadView *)self colorPixelFormat] sampleCount:self->_msaaCount];
        v16 = self->_msaaTexture;
        self->_msaaTexture = v15;
      }
    }

    if (*(self + 552))
    {
      depthTexture = self->_depthTexture;
      if (!depthTexture || v10 != [(MTLTexture *)depthTexture width]|| v12 != [(MTLTexture *)self->_depthTexture height])
      {
        v18 = [CLKUIMetalQuadView allocateDepthTextureWithWidth:v10 height:v12 sampleCount:self->_msaaCount];
        v19 = self->_depthTexture;
        self->_depthTexture = v18;
      }
    }

    *(self + 552) &= ~0x10u;
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _CLKUILoggingObjectForDomain(0, "CLKUILoggingDomainMetalQuadView");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E49C8000, v3, OS_LOG_TYPE_DEFAULT, "dealloc CLKUIMetalQuadView subclass %@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = CLKUIMetalQuadView;
  [(CLKUIQuadView *)&v6 dealloc];
}

- (void)_displayAndCheckForDrawable:(void *)a1 renderDiscontinuity:(NSObject *)a2 withCompletion:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 debugIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1E49C8000, a2, OS_LOG_TYPE_DEBUG, "(%@) isDrawableAvailable returned NO, skipping render", &v4, 0xCu);
}

- (void)_displayAndCheckForDrawable:renderDiscontinuity:withCompletion:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_1E49C8000, v0, OS_LOG_TYPE_ERROR, "nextDrawable took longer than expected (%lf sec), checkedForDrawable: %@", v1, 0x16u);
}

- (void)_displayAndCheckForDrawable:renderDiscontinuity:withCompletion:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_fault_impl(&dword_1E49C8000, v0, OS_LOG_TYPE_FAULT, "nextDrawable took much longer than expected (%lf sec), checkedForDrawable: %@", v1, 0x16u);
}

- (void)_displayAndCheckForDrawable:(void *)a1 renderDiscontinuity:(NSObject *)a2 withCompletion:.cold.4(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 debugIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E49C8000, a2, OS_LOG_TYPE_ERROR, "(%@) nextDrawable returned nil", &v4, 0xCu);
}

@end