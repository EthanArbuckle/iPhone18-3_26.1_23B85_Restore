@interface CAMLiquidShutterRenderer
- ($01BB1521EC52D44A8E7628F5261DCEC8)shadowColor;
- ($7A910D035BC0C83CFFF052A09CDD67E6)centerShape;
- ($7A910D035BC0C83CFFF052A09CDD67E6)dragHandleShape;
- ($E2C29196C7A5C696474C6955C5A9CE06)_fragmentForShape:(id *)a3 scale:(double)a4;
- (CAMLiquidShutterRenderer)initWithDevice:(id)a3 commandQueue:(id)a4 pixelFormat:(unint64_t)a5;
- (CAMetalLayer)metalLayer;
- (float)_orthographicMatrixWithLeft:(float)a1 right:(float)a2 bottom:top:near:far:;
- (void)_applicationWillEnterForeground;
- (void)dealloc;
- (void)markNeedsRender;
- (void)renderIfNecessary;
- (void)setBlurRadius:(double)a3;
- (void)setCenterShape:(id *)a3;
- (void)setDragHandleShape:(id *)a3;
- (void)setShadowColor:(id)a3;
- (void)setShadowSize:(double)a3;
- (void)setShowDragHandle:(BOOL)a3;
@end

@implementation CAMLiquidShutterRenderer

- (CAMLiquidShutterRenderer)initWithDevice:(id)a3 commandQueue:(id)a4 pixelFormat:(unint64_t)a5
{
  v80[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v79.receiver = self;
  v79.super_class = CAMLiquidShutterRenderer;
  v11 = [(CAMLiquidShutterRenderer *)&v79 init];
  if (v11)
  {
    v12 = CAMCameraUIFrameworkBundle();
    v13 = objc_opt_new();
    v14 = [v12 URLForResource:@"ShutterLiquid" withExtension:@"metallib"];
    [v13 setUrl:v14];

    v78 = 0;
    v15 = [v9 newBinaryArchiveWithDescriptor:v13 error:&v78];
    v71 = v78;
    v73 = v15;
    if (!v15)
    {
      v16 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "Couldn't load pre-compiled metal library file: ShutterLiquid.metallib", buf, 2u);
      }
    }

    v76 = 0;
    v72 = v12;
    v17 = [v9 newDefaultLibraryWithBundle:v12 error:&v76];
    v18 = v76;
    v19 = v18;
    if (!v17)
    {
      v20 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(CAMLiquidShutterRenderer *)v19 initWithDevice:v20 commandQueue:v45 pixelFormat:v46, v47, v48, v49, v50];
      }

      v44 = 0;
      goto LABEL_18;
    }

    v69 = v18;
    v70 = v10;
    v20 = objc_alloc_init(MEMORY[0x1E6974148]);
    v21 = [v20 colorAttachments];
    v22 = [v21 objectAtIndexedSubscript:0];
    [v22 setPixelFormat:a5];

    v23 = [v20 colorAttachments];
    v24 = [v23 objectAtIndexedSubscript:0];
    [v24 setBlendingEnabled:1];

    v25 = [v20 colorAttachments];
    v26 = [v25 objectAtIndexedSubscript:0];
    [v26 setRgbBlendOperation:0];

    v27 = [v20 colorAttachments];
    v28 = [v27 objectAtIndexedSubscript:0];
    [v28 setAlphaBlendOperation:0];

    v29 = [v20 colorAttachments];
    v30 = [v29 objectAtIndexedSubscript:0];
    [v30 setSourceRGBBlendFactor:4];

    v31 = [v20 colorAttachments];
    v32 = [v31 objectAtIndexedSubscript:0];
    [v32 setSourceAlphaBlendFactor:4];

    v33 = [v20 colorAttachments];
    v34 = [v33 objectAtIndexedSubscript:0];
    [v34 setDestinationRGBBlendFactor:5];

    v35 = [v20 colorAttachments];
    v36 = [v35 objectAtIndexedSubscript:0];
    [v36 setDestinationAlphaBlendFactor:5];

    v37 = [v17 newFunctionWithName:@"ShutterLiquidVertex"];
    [v20 setVertexFunction:v37];

    v38 = [v17 newFunctionWithName:@"ShutterLiquidFragment"];
    [v20 setFragmentFunction:v38];

    v80[0] = v73;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
    [v20 setBinaryArchives:v39];

    v75 = 0;
    v40 = [v9 newRenderPipelineStateWithDescriptor:v20 options:4 reflection:0 error:&v75];
    v41 = v75;
    v42 = v41;
    if (v40)
    {
      v43 = v41;
    }

    else
    {
      v51 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [(CAMLiquidShutterRenderer *)v42 initWithDevice:v51 commandQueue:v52 pixelFormat:v53, v54, v55, v56, v57];
      }

      [v20 setBinaryArchives:MEMORY[0x1E695E0F0]];
      v74 = v42;
      v40 = [v9 newRenderPipelineStateWithDescriptor:v20 error:&v74];
      v43 = v74;

      if (!v40)
      {
        v59 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          [(CAMLiquidShutterRenderer *)v43 initWithDevice:v59 commandQueue:v63 pixelFormat:v64, v65, v66, v67, v68];
        }

        v44 = 0;
        goto LABEL_17;
      }
    }

    objc_storeStrong(&v11->__device, a3);
    objc_storeStrong(&v11->__commandQueue, a4);
    renderPipelineState = v11->__renderPipelineState;
    v11->__renderPipelineState = v40;
    v59 = v40;

    v11->_showDragHandle = 1;
    *&v11->_blurRadius = xmmword_1A3A6AC00;
    v11->_shadowColor.r = 0.0;
    v11->_shadowColor.g = 0.0;
    v11->_shadowColor.b = 0.0;
    v11->_shadowColor.a = 0.2;
    v60 = [MEMORY[0x1E696AD88] defaultCenter];
    [v60 addObserver:v11 selector:sel__applicationWillEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];

    v61 = [MEMORY[0x1E696AD88] defaultCenter];
    [v61 addObserver:v11 selector:sel__applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

    v44 = v11;
LABEL_17:
    v19 = v69;

    v10 = v70;
LABEL_18:

    goto LABEL_19;
  }

  v44 = 0;
LABEL_19:

  return v44;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CAMLiquidShutterRenderer;
  [(CAMLiquidShutterRenderer *)&v4 dealloc];
}

- (void)setCenterShape:(id *)a3
{
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(self->_centerShape.position, a3->var0), vceqq_f64(*&self->_centerShape.size, *&a3->var1))))) & 1) != 0 || self->_centerShape.power != a3->var4 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_centerShape.color.r, *&a3->var3.var0), vceqq_f64(*&self->_centerShape.color.b, *&a3->var3.var2)))) & 1) == 0)
  {
    self->_centerShape.position = a3->var0;
    v3 = *&a3->var1;
    v4 = *&a3->var3.var0;
    v5 = *&a3->var3.var2;
    self->_centerShape.power = a3->var4;
    *&self->_centerShape.color.r = v4;
    *&self->_centerShape.color.b = v5;
    *&self->_centerShape.size = v3;
    [(CAMLiquidShutterRenderer *)self markNeedsRender];
  }
}

- (void)setDragHandleShape:(id *)a3
{
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(self->_dragHandleShape.position, a3->var0), vceqq_f64(*&self->_dragHandleShape.size, *&a3->var1))))) & 1) != 0 || self->_dragHandleShape.power != a3->var4 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_dragHandleShape.color.r, *&a3->var3.var0), vceqq_f64(*&self->_dragHandleShape.color.b, *&a3->var3.var2)))) & 1) == 0)
  {
    self->_dragHandleShape.position = a3->var0;
    v3 = *&a3->var1;
    v4 = *&a3->var3.var0;
    v5 = *&a3->var3.var2;
    self->_dragHandleShape.power = a3->var4;
    *&self->_dragHandleShape.color.r = v4;
    *&self->_dragHandleShape.color.b = v5;
    *&self->_dragHandleShape.size = v3;
    [(CAMLiquidShutterRenderer *)self markNeedsRender];
  }
}

- (void)setShowDragHandle:(BOOL)a3
{
  if ([(CAMLiquidShutterRenderer *)self showDragHandle]!= a3)
  {
    self->_showDragHandle = a3;

    [(CAMLiquidShutterRenderer *)self markNeedsRender];
  }
}

- (void)setBlurRadius:(double)a3
{
  if (self->_blurRadius != a3)
  {
    self->_blurRadius = a3;
    [(CAMLiquidShutterRenderer *)self markNeedsRender];
  }
}

- (void)setShadowSize:(double)a3
{
  if (self->_shadowSize != a3)
  {
    self->_shadowSize = a3;
    [(CAMLiquidShutterRenderer *)self markNeedsRender];
  }
}

- (void)setShadowColor:(id)a3
{
  v3.f64[0] = a3.var0;
  v3.f64[1] = a3.var1;
  v4.f64[0] = a3.var2;
  v4.f64[1] = a3.var3;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_shadowColor.r, v3), vceqq_f64(*&self->_shadowColor.b, v4)))) & 1) == 0)
  {
    self->_shadowColor = a3;
    [(CAMLiquidShutterRenderer *)self markNeedsRender];
  }
}

- (void)markNeedsRender
{
  v3 = [(CAMLiquidShutterRenderer *)self _neededRenderID]+ 1;

  [(CAMLiquidShutterRenderer *)self set_neededRenderID:v3];
}

- (void)_applicationWillEnterForeground
{
  [(CAMLiquidShutterRenderer *)self _setBackgrounded:0];

  [(CAMLiquidShutterRenderer *)self renderIfNecessary];
}

- (void)renderIfNecessary
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = [(CAMLiquidShutterRenderer *)self _neededRenderID];
  v4 = [(CAMLiquidShutterRenderer *)self _lastRenderedID];
  v5 = [(CAMLiquidShutterRenderer *)self metalLayer];
  if (v5 && v3 > v4)
  {
    v52 = v5;
    v6 = [(CAMLiquidShutterRenderer *)self _backgrounded];

    if (!v6)
    {
      v7 = [(CAMLiquidShutterRenderer *)self metalLayer];
      [v7 drawableSize];
      v9 = v8;
      v11 = v10;

      v12 = [(CAMLiquidShutterRenderer *)self metalLayer];
      [v12 contentsScale];
      v14 = v13;

      v68 = 0u;
      v69 = 0u;
      v67 = 0u;
      [(CAMLiquidShutterRenderer *)self centerShape];
      [(CAMLiquidShutterRenderer *)self _fragmentForShape:v63 scale:v14];
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      [(CAMLiquidShutterRenderer *)self dragHandleShape];
      [(CAMLiquidShutterRenderer *)self _fragmentForShape:v63 scale:v14];
      *&v15 = v9;
      *&v16 = v11;
      LODWORD(v17) = 1120403456;
      [(CAMLiquidShutterRenderer *)self _orthographicMatrixWithLeft:0.0 right:v15 bottom:v16 top:0.0 near:0.0 far:v17];
      v18 = *(MEMORY[0x1E69E9B18] + 16);
      v63[0] = *MEMORY[0x1E69E9B18];
      v63[1] = v18;
      v19 = *(MEMORY[0x1E69E9B18] + 48);
      v63[2] = *(MEMORY[0x1E69E9B18] + 32);
      v63[3] = v19;
      v63[4] = v20;
      v63[5] = v21;
      v63[6] = v22;
      v63[7] = v23;
      v70 = v67;
      v71 = *(&v67 + 2) + (*(&v69 + 1) * 2.0);
      v72 = v64;
      v73 = *(&v64 + 2) + (*(&v66 + 1) * 2.0);
      v57[0] = v67;
      v57[1] = v68;
      v60 = 0;
      v57[2] = v69;
      v57[3] = v64;
      v57[4] = v65;
      v57[5] = v66;
      v58 = [(CAMLiquidShutterRenderer *)self showDragHandle];
      v59 = 1056964608;
      [(CAMLiquidShutterRenderer *)self shadowSize];
      *&v24 = v24;
      v61 = LODWORD(v24);
      [(CAMLiquidShutterRenderer *)self shadowColor];
      v53 = v25;
      [(CAMLiquidShutterRenderer *)self shadowColor];
      v51 = v26;
      [(CAMLiquidShutterRenderer *)self shadowColor];
      v50 = v27;
      [(CAMLiquidShutterRenderer *)self shadowColor];
      v28.f64[0] = v50;
      v28.f64[1] = v29;
      v30.f64[0] = v53;
      v30.f64[1] = v51;
      v62 = vcvt_hight_f32_f64(vcvt_f32_f64(v30), v28);
      v31 = [(CAMLiquidShutterRenderer *)self metalLayer];
      v32 = [v31 nextDrawable];

      v33 = objc_alloc_init(MEMORY[0x1E6974128]);
      v34 = [v33 colorAttachments];
      v35 = [v34 objectAtIndexedSubscript:0];
      [v35 setClearColor:{0.0, 0.0, 0.0, 0.0}];

      v36 = [v33 colorAttachments];
      v37 = [v36 objectAtIndexedSubscript:0];
      [v37 setLoadAction:2];

      v38 = [v33 colorAttachments];
      v39 = [v38 objectAtIndexedSubscript:0];
      [v39 setStoreAction:1];

      v40 = [v32 texture];
      v41 = [v33 colorAttachments];
      v42 = [v41 objectAtIndexedSubscript:0];
      [v42 setTexture:v40];

      v43 = [(CAMLiquidShutterRenderer *)self _commandQueue];
      v44 = [v43 commandBuffer];

      v45 = [v44 renderCommandEncoderWithDescriptor:v33];
      v46 = [(CAMLiquidShutterRenderer *)self _renderPipelineState];
      [v45 setRenderPipelineState:v46];

      [v45 setVertexBytes:v63 length:128 atIndex:0];
      [v45 setVertexBytes:&v70 length:32 atIndex:1];
      [v45 setFragmentBytes:v57 length:128 atIndex:0];
      [v45 drawPrimitives:0 vertexStart:0 vertexCount:2];
      [v45 endEncoding];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __45__CAMLiquidShutterRenderer_renderIfNecessary__block_invoke;
      v55[3] = &unk_1E76FDFC8;
      v56 = v32;
      v47 = v32;
      [v44 addScheduledHandler:v55];
      v48 = [(CAMLiquidShutterRenderer *)self _neededRenderID];
      Current = CFAbsoluteTimeGetCurrent();
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __45__CAMLiquidShutterRenderer_renderIfNecessary__block_invoke_2;
      v54[3] = &unk_1E76FDFF0;
      *&v54[5] = Current;
      v54[4] = self;
      v54[6] = v48;
      [v44 addCompletedHandler:v54];
      [v44 commit];
    }
  }

  else
  {
  }
}

void __45__CAMLiquidShutterRenderer_renderIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 status];
  if (v4 <= 1)
  {
    v9 = @"Enqueued";
    if (v4 != 1)
    {
      v9 = 0;
    }

    if (v4)
    {
      v8 = v9;
    }

    else
    {
      v8 = @"NotEnqueued";
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v8 = @"Committed";
        break;
      case 3:
        v8 = @"Scheduled";
        break;
      case 5:
        v5 = MEMORY[0x1E696AEC0];
        v6 = [v3 error];
        v7 = [v6 description];
        v8 = [v5 stringWithFormat:@"Error: %@", v7];

        break;
      default:
        v8 = 0;
        break;
    }
  }

  v10 = CFAbsoluteTimeGetCurrent() - *(a1 + 40);
  if (v8)
  {
    v11 = os_log_create("com.apple.camera", "DynamicShutter");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __45__CAMLiquidShutterRenderer_renderIfNecessary__block_invoke_2_cold_1(v8, v11, v10);
    }

LABEL_20:

    goto LABEL_21;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __45__CAMLiquidShutterRenderer_renderIfNecessary__block_invoke_37;
  v20[3] = &unk_1E76F7A38;
  v12 = *(a1 + 48);
  v20[4] = *(a1 + 32);
  v20[5] = v12;
  cam_perform_on_main_asap(v20);
  if (v10 > 0.25)
  {
    v11 = os_log_create("com.apple.camera", "DynamicShutter");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __45__CAMLiquidShutterRenderer_renderIfNecessary__block_invoke_2_cold_2(v11, v13, v14, v15, v16, v17, v18, v19);
    }

    goto LABEL_20;
  }

LABEL_21:
}

unint64_t __45__CAMLiquidShutterRenderer_renderIfNecessary__block_invoke_37(uint64_t a1)
{
  result = [*(a1 + 32) _lastRenderedID];
  if (result < *(a1 + 40))
  {
    v3 = *(a1 + 32);

    return [v3 set_lastRenderedID:?];
  }

  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)_fragmentForShape:(id *)a3 scale:(double)a4
{
  v5 = v4;
  v6 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a3->var3.var0), *&a3->var3.var2);
  v7 = vcvt_f32_f64(vmulq_n_f64(a3->var0, a4));
  *v4 = 0u;
  *v4 = v7;
  v8 = a3->var1 * a4;
  *(v4 + 8) = v8;
  *(v4 + 16) = v6;
  *(v4 + 32) = 0u;
  var4 = a3->var4;
  *(v4 + 32) = var4;
  [(CAMLiquidShutterRenderer *)self blurRadius];
  v11 = *&a4;
  v13 = v12 * a4;
  *(v5 + 36) = v13;
  result.var2 = v10;
  result.var1 = v11;
  result.var0 = v13;
  return result;
}

- (float)_orthographicMatrixWithLeft:(float)a1 right:(float)a2 bottom:top:near:far:
{
  __asm { FMOV            V3.4S, #1.0 }

  return 2.0 / (a2 - a1);
}

- ($7A910D035BC0C83CFFF052A09CDD67E6)centerShape
{
  v3 = *&self[2].var1;
  *&retstr->var3.var0 = self[2].var0;
  *&retstr->var3.var2 = v3;
  retstr->var4 = self[2].var3.var0;
  v4 = *&self[1].var3.var3;
  retstr->var0 = *&self[1].var3.var1;
  *&retstr->var1 = v4;
  return self;
}

- ($7A910D035BC0C83CFFF052A09CDD67E6)dragHandleShape
{
  v3 = *&self[2].var3.var3;
  v4 = *&self[3].var1;
  *&retstr->var3.var0 = self[3].var0;
  *&retstr->var3.var2 = v4;
  retstr->var4 = self[3].var3.var0;
  retstr->var0 = *&self[2].var3.var1;
  *&retstr->var1 = v3;
  return self;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)shadowColor
{
  r = self->_shadowColor.r;
  g = self->_shadowColor.g;
  b = self->_shadowColor.b;
  a = self->_shadowColor.a;
  result.var3 = a;
  result.var2 = b;
  result.var1 = g;
  result.var0 = r;
  return result;
}

- (CAMetalLayer)metalLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_metalLayer);

  return WeakRetained;
}

void __45__CAMLiquidShutterRenderer_renderIfNecessary__block_invoke_2_cold_1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a3;
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Dynamic shutter render did not complete successfully. Time: %.4f Command buffer status: %{public}@", &v3, 0x16u);
}

@end