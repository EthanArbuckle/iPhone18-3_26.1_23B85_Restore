@interface ETGLSketchRenderer
+ (void)warmupShaders;
- (BOOL)resizeFromCachedLayer;
- (CGImage)createRenderedFrameImageUsingAlpha:(BOOL)alpha;
- (ETGLSketchRenderer)initWithContext:(id)context andDrawable:(id)drawable;
- (ETGLSketchRendererDelegate)delegate;
- (int)linkProgramWithVShader:(int)shader FShader:(int)fShader;
- (int)loadOneShaderOfType:(unsigned int)type withCString:(const char *)string length:(int)length;
- (void)_warmupShaders;
- (void)animateOutWithCompletion:(id)completion;
- (void)appendDualPointArray:(ETGLSketchRenderer *)self length:(SEL)length controlPoint:alternatePoints:alternateLength:alternateControlPoint:unitSize:segmentIndex:segmentCount:;
- (void)appendPointArray:(ETGLSketchRenderer *)self length:(SEL)length;
- (void)dealloc;
- (void)erase;
- (void)render;
- (void)reset;
- (void)setLineWidthScaleFactor:(double)factor;
- (void)setupFBOs:(id)os;
- (void)setupTexture;
- (void)setupVAOs;
- (void)updateGLWithCurrentTime;
- (void)updateGLWithTime:(float)time;
- (void)updateVertexBufferWithVertexCount:(unint64_t)count;
@end

@implementation ETGLSketchRenderer

- (ETGLSketchRenderer)initWithContext:(id)context andDrawable:(id)drawable
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  drawableCopy = drawable;
  v14.receiver = self;
  v14.super_class = ETGLSketchRenderer;
  v8 = [(ETGLSketchRenderer *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(ETGLSketchRenderer *)v8 setIsDying:0];
    *&v9->_allocatedWidth = 0;
    v9->_lineWidthScaleFactor = 1.0;
    v9->_cometScaleFactor = 1.0;
    v9->_context = contextCopy;
    if (drawableCopy)
    {
      [(ETGLSketchRenderer *)v9 setupFBOs:drawableCopy];
      [(ETGLSketchRenderer *)v9 setupVAOs];
    }

    [(ETGLSketchRenderer *)v9 setupShaders];
    [(ETGLSketchRenderer *)v9 setupTexture];
    glEnable(0xBE2u);
    glBlendFunc(1u, 0x303u);
    Error = glGetError();
    if (Error && IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v16 = "[ETGLSketchRenderer initWithContext:andDrawable:]";
        v17 = 1024;
        v18 = Error;
        _os_log_impl(&dword_248D00000, v11, OS_LOG_TYPE_INFO, "%s: glGetError(0x%x)", buf, 0x12u);
      }
    }

    *&v9->_vertexBufferCount = 0;
    *&v9->_currentTimeClock = 0;
    v12 = v9;
  }

  return v9;
}

- (void)dealloc
{
  allVertices = self->_allVertices;
  if (allVertices)
  {
    free(allVertices);
    self->_allVertices = 0;
  }

  currentContext = [MEMORY[0x277CD9388] currentContext];
  context = self->_context;

  if (currentContext == context)
  {
    [MEMORY[0x277CD9388] setCurrentContext:0];
  }

  v6.receiver = self;
  v6.super_class = ETGLSketchRenderer;
  [(ETGLSketchRenderer *)&v6 dealloc];
}

- (void)animateOutWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__ETGLSketchRenderer_animateOutWithCompletion___block_invoke;
  v12[3] = &unk_278F7A318;
  objc_copyWeak(&v14, &location);
  v5 = completionCopy;
  v13 = v5;
  v6 = MEMORY[0x24C1E9BB0](v12);
  v7 = v6;
  wispDelay = self->_wispDelay;
  if (wispDelay == 0.0)
  {
    (*(v6 + 16))(v6);
  }

  else
  {
    v9 = dispatch_time(0, (wispDelay * 1000000000.0));
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__ETGLSketchRenderer_animateOutWithCompletion___block_invoke_2;
    v10[3] = &unk_278F7A248;
    v11 = v7;
    dispatch_after(v9, MEMORY[0x277D85CD0], v10);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __47__ETGLSketchRenderer_animateOutWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsDying:1];

  v4 = [*(a1 + 32) copy];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setCompletionBlock:v4];
}

- (void)updateGLWithTime:(float)time
{
  self->_currentTimeClock = time;
  if (![(ETGLSketchRenderer *)self isDying])
  {
    self->_deathTime = self->_currentTimeClock;
  }
}

- (void)updateGLWithCurrentTime
{
  self->_currentTimeClock = self->_currentTimeClock + 0.016667;
  if (![(ETGLSketchRenderer *)self isDying])
  {
    self->_deathTime = self->_currentTimeClock;
  }
}

- (void)setupFBOs:(id)os
{
  v14 = *MEMORY[0x277D85DE8];
  osCopy = os;
  glGenFramebuffers(1, &self->_viewFramebuffer);
  glGenRenderbuffers(1, &self->_viewRenderbuffer);
  glBindFramebuffer(0x8D40u, self->_viewFramebuffer);
  glBindRenderbuffer(0x8D41u, self->_viewRenderbuffer);
  [(EAGLContext *)self->_context renderbufferStorage:36161 fromDrawable:osCopy];
  glFramebufferRenderbuffer(0x8D40u, 0x8CE0u, 0x8D41u, self->_viewRenderbuffer);
  *params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D42u, &params[1]);
  glGetRenderbufferParameteriv(0x8D41u, 0x8D43u, params);
  v5 = params[0];
  self->_backingWidth = params[1];
  self->_backingHeight = v5;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v11 = params[1];
      v12 = 1024;
      v13 = params[0];
      _os_log_impl(&dword_248D00000, v6, OS_LOG_TYPE_INFO, "w and h -  %i %i", buf, 0xEu);
    }
  }

  if (self->_backingWidth && self->_backingHeight)
  {
    if (glCheckFramebufferStatus(0x8D40u) != 36053 && IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = glCheckFramebufferStatus(0x8D40u);
        *buf = 67109120;
        v11 = v8;
        _os_log_impl(&dword_248D00000, v7, OS_LOG_TYPE_INFO, "failed to make complete framebuffer object %x", buf, 8u);
      }
    }

    glViewport(0, 0, self->_backingWidth, self->_backingHeight);
  }
}

- (void)setupTexture
{
  textures = 0;
  if ((setupTexture_alreadyGeneratedStaticPixelsData & 1) == 0)
  {
    v3 = 0;
    __asm
    {
      FMOV            V4.4S, #-4.0
      FMOV            V5.4S, #1.0
    }

    v10 = vdupq_n_s32(0x437F0000u);
    do
    {
      *v2.i32 = ((v3 / 7.0) + -0.5) * ((v3 / 7.0) + -0.5);
      v11 = vdupq_lane_s32(v2, 0);
      v12 = vmlaq_f32(_Q5, _Q4, vaddq_f32(v11, xmmword_248D32E40));
      v13 = vmlaq_f32(_Q5, _Q4, vaddq_f32(v11, xmmword_248D32E30));
      v2 = vand_s8(vorr_s8(vmovn_s16(vuzp1q_s16(vcvtq_s32_f32(vmulq_f32(v12, v10)), vcvtq_s32_f32(vmulq_f32(v13, v10)))), vmovn_s16(vuzp1q_s16(vcgeq_f32(v12, _Q5), vcgeq_f32(v13, _Q5)))), vmovn_s16(vmvnq_s8(vuzp1q_s16(vclezq_f32(v12), vclezq_f32(v13)))));
      setupTexture_pixels[v3++] = v2;
    }

    while (v3 != 8);
    setupTexture_alreadyGeneratedStaticPixelsData = 1;
  }

  glGenTextures(1, &textures);
  glBindTexture(0xDE1u, textures);
  glPixelStorei(0xCF5u, 1);
  glTexParameteri(0xDE1u, 0x2801u, 9729);
  glTexParameteri(0xDE1u, 0x2800u, 9729);
  glTexParameteri(0xDE1u, 0x2802u, 33071);
  glTexParameteri(0xDE1u, 0x2803u, 33071);
  glTexImage2D(0xDE1u, 0, 6403, 8, 8, 0, 0x1903u, 0x1401u, setupTexture_pixels);
}

- (int)loadOneShaderOfType:(unsigned int)type withCString:(const char *)string length:(int)length
{
  string = string;
  v8 = 0;
  length = length;
  params = 0;
  Shader = glCreateShader(type);
  glShaderSource(Shader, 1, &string, &length);
  glCompileShader(Shader);
  glGetShaderiv(Shader, 0x8B81u, &params);
  glGetShaderiv(Shader, 0x8B84u, &v8);
  return Shader;
}

- (int)linkProgramWithVShader:(int)shader FShader:(int)fShader
{
  *params = 0;
  Program = glCreateProgram();
  glAttachShader(Program, shader);
  glAttachShader(Program, fShader);
  glLinkProgram(Program);
  glGetProgramiv(Program, 0x8B82u, params);
  glGetProgramiv(Program, 0x8B84u, &params[1]);
  glDetachShader(Program, shader);
  glDetachShader(Program, fShader);
  glDeleteShader(shader);
  glDeleteShader(fShader);
  return Program;
}

- (void)setupVAOs
{
  glGenVertexArraysOES();
  glBindVertexArrayOES();
  glGenBuffers(1, &self->_vboVertLineId);
  glBindBuffer(0x8892u, self->_vboVertLineId);
  self->_allVertices = malloc_type_calloc(0x5000uLL, 0x50uLL, 0x10000404247E4FDuLL);
  glBufferData(0x8892u, 1638400, 0, 0x88E8u);
  glEnableVertexAttribArray(0);
  glVertexAttribPointer(0, 4, 0x1406u, 0, 80, 0);
  glEnableVertexAttribArray(1u);
  glVertexAttribPointer(1u, 4, 0x1406u, 0, 80, 0x10);
  glEnableVertexAttribArray(2u);
  glVertexAttribPointer(2u, 4, 0x1406u, 0, 80, 0x20);
  glEnableVertexAttribArray(3u);
  glVertexAttribPointer(3u, 4, 0x1406u, 0, 80, 0x30);
  glEnableVertexAttribArray(4u);

  glVertexAttribPointer(4u, 4, 0x1406u, 0, 80, 0x40);
}

- (BOOL)resizeFromCachedLayer
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_allocatedWidth)
  {
    [(CAEAGLLayer *)self->_cachedLayer bounds];
    if (*&self->_backingWidth == __PAIR64__(v4, v3))
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_248D00000, v5, OS_LOG_TYPE_INFO, "Redundantly resizing Sketch renderer", buf, 2u);
        }
      }
    }
  }

  glBindFramebuffer(0x8D40u, self->_viewFramebuffer);
  glBindRenderbuffer(0x8D41u, self->_viewRenderbuffer);
  [(EAGLContext *)self->_context renderbufferStorage:36161 fromDrawable:self->_cachedLayer];
  *params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D42u, &params[1]);
  glGetRenderbufferParameteriv(0x8D41u, 0x8D43u, params);
  v6 = params[0];
  self->_backingWidth = params[1];
  self->_backingHeight = v6;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v18 = params[1];
      *&v18[4] = 1024;
      *&v18[6] = params[0];
      _os_log_impl(&dword_248D00000, v7, OS_LOG_TYPE_INFO, "resizing layer -  %i %i", buf, 0xEu);
    }
  }

  backingWidth = self->_backingWidth;
  if (!backingWidth)
  {
    goto LABEL_24;
  }

  backingHeight = self->_backingHeight;
  if (!backingHeight)
  {
    goto LABEL_24;
  }

  glViewport(0, 0, backingWidth, backingHeight);
  if (glCheckFramebufferStatus(0x8D40u) != 36053)
  {
    v12 = IMOSLoggingEnabled();
    if (!v12)
    {
      return v12;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = glCheckFramebufferStatus(0x8D40u);
      *buf = 67109120;
      *v18 = v14;
      _os_log_impl(&dword_248D00000, v13, OS_LOG_TYPE_INFO, "failed to make complete framebuffer object %x", buf, 8u);
    }

LABEL_24:
    LOBYTE(v12) = 0;
    return v12;
  }

  Error = glGetError();
  if (Error && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v18 = "[ETGLSketchRenderer resizeFromCachedLayer]";
      *&v18[8] = 1024;
      v19 = Error;
      _os_log_impl(&dword_248D00000, v11, OS_LOG_TYPE_INFO, "%s: glGetError(0x%x)", buf, 0x12u);
    }
  }

  *&self->_allocatedWidth = *&self->_backingWidth;
  LOBYTE(v12) = 1;
  return v12;
}

- (void)reset
{
  p_viewFramebuffer = &self->_viewFramebuffer;
  if (self->_viewFramebuffer)
  {
    glDeleteFramebuffers(1, p_viewFramebuffer);
    *p_viewFramebuffer = 0;
  }

  if (self->_viewRenderbuffer)
  {
    glDeleteRenderbuffers(1, &self->_viewRenderbuffer);
    self->_viewRenderbuffer = 0;
  }

  if (self->_vboVertLineId)
  {
    glDeleteBuffers(1, &self->_vboVertLineId);
    self->_vboVertLineId = 0;
  }

  vaoLineID = self->_vaoLineID;
  p_vaoLineID = &self->_vaoLineID;
  if (vaoLineID)
  {
    glDeleteVertexArraysOES();
    *p_vaoLineID = 0;
  }
}

- (void)erase
{
  *&self->_vertexBufferCount = 0;
  *&self->_currentTimeClock = 0;
  *&self->_deathTime = 0;
}

- (void)appendPointArray:(ETGLSketchRenderer *)self length:(SEL)length
{
  vertexBufferCount = self->_vertexBufferCount;
  v6 = vertexBufferCount + v3;
  v7 = 20479 - vertexBufferCount;
  if (v6 >> 12 <= 4)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    v9 = v2;
    v10 = 0;
    __asm { FMOV            V0.2S, #6.0 }

    v37 = _D0;
    v38 = vdup_n_s32(0x2F800000u);
    __asm
    {
      FMOV            V12.2S, #-15.0
      FMOV            V13.2S, #10.0
    }

    v18 = vdup_n_s32(0x3E19999Au);
    v19 = vdup_n_s32(0x3C23D70Au);
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      *&v21 = *(v9 + 8 * v10);
      allVertices = self->_allVertices;
      v23 = 80 * (v10 + self->_vertexBufferCount);
      *(&v21 + 1) = vextq_s8(*(allVertices + v23), *(allVertices + v23), 8uLL).u64[0];
      *(allVertices + v23) = v21;
      v24 = self->_allVertices;
      v25 = 80 * (v10 + self->_vertexBufferCount);
      v26 = *(v24 + v25);
      *(&v26 + 1) = *(v9 + 8 * v10);
      *(v24 + v25) = v26;
      v27 = self->_currentTimeClock + ((v10 / v8) * 0.016667);
      v28 = arc4random();
      v29 = vmul_f32(vcvt_f32_u32(__PAIR64__(arc4random(), v28)), v38);
      v30 = vmla_f32(v19, v18, vmul_f32(vmla_f32(_D13, vmla_f32(_D12, v37, v29), v29), vmul_f32(v29, vmul_f32(v29, vmul_f32(v29, vmul_f32(v29, v29))))));
      srdnoise2();
      v31 = self->_allVertices + 80 * v10 + 80 * self->_vertexBufferCount;
      v32 = *(v31 + 3);
      *(&v32 + 1) = vmul_f32(v30, 0);
      *(v31 + 3) = v32;
      *(self->_allVertices + 20 * v10 + 20 * self->_vertexBufferCount + 12) = v27;
      v33 = self->_currentTimeIndex + 0.016667;
      self->_currentTimeIndex = v33;
      *(self->_allVertices + 20 * v10 + 20 * self->_vertexBufferCount + 13) = v33;
      v34 = self->_lineWidthScaleFactor * 8.0;
      *(self->_allVertices + 20 * v10 + 20 * self->_vertexBufferCount + 16) = v34;
      cometScaleFactor = self->_cometScaleFactor;
      *(self->_allVertices + 20 * v10 + 20 * self->_vertexBufferCount + 17) = cometScaleFactor;
      v36 = 0.0;
      if (self->_useFastVerticalWisp)
      {
        v36 = 3.0;
      }

      *(self->_allVertices + 20 * v10 + 20 * self->_vertexBufferCount + 18) = v36;
      *(self->_allVertices + 5 * v10 + 5 * self->_vertexBufferCount + 1) = *self->_brushColorForInitialColor;
      *(self->_allVertices + 5 * v10++ + 5 * self->_vertexBufferCount + 2) = *self->_brushColorForFinalColor;
    }

    while (v8 > v10);
  }

  self->_lastBirth = self->_currentTimeIndex;
  self->_vertexCount = v8;
  [(ETGLSketchRenderer *)self updateVertexBufferWithVertexCount:v8, *&v37, *&v38];
}

- (void)appendDualPointArray:(ETGLSketchRenderer *)self length:(SEL)length controlPoint:alternatePoints:alternateLength:alternateControlPoint:unitSize:segmentIndex:segmentCount:
{
  if (v5 == 1)
  {
    self->_currentTimeIndex = fmaxf(self->_currentTimeIndex + -0.83333, 0.0);
  }

  else if (v3 >= 2 && v5)
  {
    v12 = v9;
    v13 = v4;
    v14 = v8;
    v15 = v2;
    v16 = vsub_f32(*v2, v8);
    v17 = vmul_f32(v16, v16);
    v18 = &v2[v3];
    v19 = vsub_f32(v14, v18[-1]);
    v20 = vmul_f32(v19, v19);
    v21 = vsqrt_f32(vadd_f32(vzip1_s32(v17, v20), vzip2_s32(v17, v20)));
    v22 = vsub_f32(*v4, v12);
    v23 = vmul_f32(v22, v22);
    v24 = &v4[v5];
    v25 = vsub_f32(v12, v24[-1]);
    v26 = vmul_f32(v25, v25);
    v27 = (vaddv_f32(v21) / v10);
    v28 = (vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v23, v26), vzip2_s32(v23, v26)))) / v10);
    if (v27 <= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    if (v29 < 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = 0;
      v31 = 1.0 / v7;
      v60 = v6;
      __asm { FMOV            V14.2S, #1.0 }

      v59 = vdup_n_s32(0x3DCCCCCDu);
      while (1)
      {
        vertexBufferCount = self->_vertexBufferCount;
        if ((v30 - 20479 + vertexBufferCount) <= 0xFFFFFFFFFFFFAFFFLL)
        {
          break;
        }

        v38 = v30 / v29;
        allVertices = self->_allVertices;
        v40 = 80 * (v30 + vertexBufferCount);
        *&v41 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v14, v38 * ((1.0 - v38) + (1.0 - v38))), *v15, (1.0 - v38) * (1.0 - v38)), v18[-1], v38 * v38);
        *(&v41 + 1) = vextq_s8(*(allVertices + v40), *(allVertices + v40), 8uLL).u64[0];
        *(allVertices + v40) = v41;
        v42 = (v31 * v38) + (v31 * v60);
        v43 = self->_allVertices;
        v44 = 80 * (v30 + self->_vertexBufferCount);
        v45 = *(v43 + v44);
        *(&v45 + 1) = vmla_n_f32(vmla_n_f32(vmul_n_f32(v12, v42 * ((1.0 - v42) + (1.0 - v42))), *v13, (1.0 - v42) * (1.0 - v42)), v24[-1], v42 * v42);
        *(v43 + v44) = v45;
        currentTimeClock = self->_currentTimeClock;
        v47 = arc4random();
        v48 = v30 + self->_vertexBufferCount;
        if (v48 <= 0)
        {
          v52 = 0;
        }

        else
        {
          v49 = vsubq_f32(*(self->_allVertices + 5 * v48), *(self->_allVertices + 5 * v48 - 5));
          v50 = vextq_s8(v49, v49, 8uLL).u64[0];
          v51 = vmulq_f32(v49, v49);
          *v51.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v51.f32[2] + v51.f32[3]));
          *v51.f32 = vmul_f32(*v51.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v51.f32[2] + v51.f32[3]), vmul_f32(*v51.f32, *v51.f32)));
          v52 = vmul_f32(vmul_n_f32(v50, vmul_f32(*v51.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v51.f32[2] + v51.f32[3]), vmul_f32(*v51.f32, *v51.f32))).f32[0]), v59);
        }

        v62 = v52;
        v53 = vcvts_n_f32_u32(v47, 0x20uLL) * 0.1 + 0.9;
        v54 = v53 * 0.1;
        v61 = v54;
        srdnoise2();
        v55 = self->_allVertices + 80 * v30 + 80 * self->_vertexBufferCount;
        v56 = *(v55 + 3);
        *(&v56 + 1) = vmla_n_f32(v62, 0, v61);
        *(v55 + 3) = v56;
        *(self->_allVertices + 20 * v30 + 20 * self->_vertexBufferCount + 12) = currentTimeClock + (v38 * 0.016667);
        *&v56 = self->_currentTimeIndex + 0.016667;
        LODWORD(self->_currentTimeIndex) = v56;
        *(self->_allVertices + 20 * v30 + 20 * self->_vertexBufferCount + 13) = v56;
        *&v56 = self->_lineWidthScaleFactor * 5.0;
        *(self->_allVertices + 20 * v30 + 20 * self->_vertexBufferCount + 16) = v56;
        *&v56 = self->_cometScaleFactor;
        *(self->_allVertices + 20 * v30 + 20 * self->_vertexBufferCount + 17) = v56;
        v57 = 0.0;
        if (self->_useFastVerticalWisp)
        {
          v57 = 3.0;
        }

        *(self->_allVertices + 20 * v30 + 20 * self->_vertexBufferCount + 18) = v57;
        *(self->_allVertices + 5 * v30 + 5 * self->_vertexBufferCount + 1) = *self->_brushColorForInitialColor;
        *(self->_allVertices + 5 * v30++ + 5 * self->_vertexBufferCount + 2) = *self->_brushColorForFinalColor;
        if (v29 == v30)
        {
          v30 = v29;
          goto LABEL_20;
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sketchRendererDidReachVertexLimit:self];
    }

LABEL_20:
    self->_lastBirth = self->_currentTimeIndex;
    [(ETGLSketchRenderer *)self updateVertexBufferWithVertexCount:v30];
  }
}

- (void)updateVertexBufferWithVertexCount:(unint64_t)count
{
  countCopy = count;
  v12 = *MEMORY[0x277D85DE8];
  glBufferSubData(0x8892u, 80 * self->_vertexBufferCount, 80 * count, self->_allVertices + 80 * self->_vertexBufferCount);
  Error = glGetError();
  if (Error)
  {
    v6 = Error;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 136315394;
        v9 = "[ETGLSketchRenderer updateVertexBufferWithVertexCount:]";
        v10 = 1024;
        v11 = v6;
        _os_log_impl(&dword_248D00000, v7, OS_LOG_TYPE_INFO, "%s: glGetError(0x%x)", &v8, 0x12u);
      }
    }
  }

  self->_vertexBufferCount += countCopy;
}

- (void)_warmupShaders
{
  v19 = *MEMORY[0x277D85DE8];
  framebuffers = 0;
  glGenFramebuffers(1, &framebuffers);
  glBindFramebuffer(0x8D40u, framebuffers);
  renderbuffers = 0;
  glGenRenderbuffers(1, &renderbuffers);
  glBindRenderbuffer(0x8D41u, renderbuffers);
  Error = glGetError();
  if (Error && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[ETGLSketchRenderer _warmupShaders]";
      v17 = 1024;
      v18 = Error;
      _os_log_impl(&dword_248D00000, v4, OS_LOG_TYPE_INFO, "%s: glGetError(0x%x)", buf, 0x12u);
    }
  }

  glRenderbufferStorage(0x8D41u, 0x8058u, 32, 32);
  v5 = glGetError();
  if (v5 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[ETGLSketchRenderer _warmupShaders]";
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_248D00000, v6, OS_LOG_TYPE_INFO, "%s: glGetError(0x%x)", buf, 0x12u);
    }
  }

  glFramebufferRenderbuffer(0x8D40u, 0x8CE0u, 0x8D41u, renderbuffers);
  glViewport(0, 0, 32, 32);
  if (glCheckFramebufferStatus(0x8D40u) != 36053 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = glCheckFramebufferStatus(0x8D40u);
      *buf = 67109120;
      LODWORD(v16) = v8;
      _os_log_impl(&dword_248D00000, v7, OS_LOG_TYPE_INFO, "Unexpected failure to make complete framebuffer object during warmup (0x%04x)", buf, 8u);
    }
  }

  glClear(0x4000u);
  glBindVertexArrayOES();
  glUseProgram(self->_shaderProgram);
  v9 = glGetError();
  if (v9 && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[ETGLSketchRenderer _warmupShaders]";
      v17 = 1024;
      v18 = v9;
      _os_log_impl(&dword_248D00000, v10, OS_LOG_TYPE_INFO, "%s: glGetError(0x%x)", buf, 0x12u);
    }
  }

  glDrawArrays(0, 0, 1);
  v11 = glGetError();
  if (v11 && IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[ETGLSketchRenderer _warmupShaders]";
      v17 = 1024;
      v18 = v11;
      _os_log_impl(&dword_248D00000, v12, OS_LOG_TYPE_INFO, "%s: glGetError(0x%x)", buf, 0x12u);
    }
  }

  glDiscardFramebufferEXT();
}

+ (void)warmupShaders
{
  if ((warmupShaders_alreadyWarmedUp & 1) == 0)
  {
    v2 = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:2];
    if (v2 && ([MEMORY[0x277CD9388] setCurrentContext:v2] & 1) != 0)
    {
      v3 = [[ETGLSketchRenderer alloc] initWithContext:v2 andDrawable:0];
      v3->_useThisRendererOnlyForWarmup = 1;
      [(ETGLSketchRenderer *)v3 _warmupShaders];
      warmupShaders_alreadyWarmedUp = 1;
      [MEMORY[0x277CD9388] setCurrentContext:0];

      v2 = 0;
    }

    else if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_248D00000, v4, OS_LOG_TYPE_INFO, "Unexpected failure to create context during shader warmup", v5, 2u);
      }
    }
  }
}

- (CGImage)createRenderedFrameImageUsingAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  v5 = 4 * self->_backingWidth;
  v6 = self->_backingHeight * v5;
  v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
  v8 = malloc_type_malloc(v6, 0x100004077774924uLL);
  glReadPixels(0, 0, self->_backingWidth, self->_backingHeight, 0x1908u, 0x1401u, v7);
  backingHeight = self->_backingHeight;
  v10 = v5;
  if (backingHeight)
  {
    v11 = 0;
    v12 = -1;
    v13 = v8;
    do
    {
      memcpy(v13, &v7[(backingHeight + v12) * v10], v10);
      backingHeight = self->_backingHeight;
      v13 += v10;
      --v12;
      ++v11;
    }

    while (backingHeight > v11);
  }

  free(v7);
  v14 = CGDataProviderCreateWithData(0, v8, v6, releasePixels);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (alphaCopy)
  {
    v16 = 1;
  }

  else
  {
    v16 = 5;
  }

  v17 = CGImageCreate(self->_backingWidth, self->_backingHeight, 8uLL, 0x20uLL, v10, DeviceRGB, v16, v14, 0, 0, kCGRenderingIntentDefault);
  if (v14)
  {
    CFRelease(v14);
  }

  CGColorSpaceRelease(DeviceRGB);
  return v17;
}

- (void)render
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_backingWidth && self->_backingHeight)
  {
    goto LABEL_45;
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_248D00000, v3, OS_LOG_TYPE_INFO, "Error: GLSketch being asked to -render into a 0x0 viewport!", &v21, 2u);
    }
  }

  [(ETGLSketchRenderer *)self resizeFromCachedLayer];
  if (self->_backingWidth)
  {
    if (self->_backingHeight)
    {
LABEL_45:
      glClear(0x4000u);
      if (self->_vertexBufferBegin < self->_vertexBufferCount - 1)
      {
        [(ETGLSketchRenderer *)self updateGLWithCurrentTime];
        Error = glGetError();
        if (Error && IMOSLoggingEnabled())
        {
          v5 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            v21 = 136315394;
            v22 = "[ETGLSketchRenderer render]";
            v23 = 1024;
            v24 = Error;
            _os_log_impl(&dword_248D00000, v5, OS_LOG_TYPE_INFO, "%s: glGetError(0x%x)", &v21, 0x12u);
          }
        }

        glUseProgram(self->_shaderProgram);
        v6 = glGetError();
        if (v6 && IMOSLoggingEnabled())
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v21 = 136315394;
            v22 = "[ETGLSketchRenderer render]";
            v23 = 1024;
            v24 = v6;
            _os_log_impl(&dword_248D00000, v7, OS_LOG_TYPE_INFO, "%s: glGetError(0x%x)", &v21, 0x12u);
          }
        }

        glVertexAttrib1f(5u, self->_currentTimeClock);
        glVertexAttrib1f(6u, self->_deathTime);
        glVertexAttrib1f(7u, self->_lastBirth);
        glVertexAttrib1f(8u, 1.75);
        glVertexAttrib1f(9u, 3.0);
        v8 = glGetError();
        if (v8 && IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v21 = 136315394;
            v22 = "[ETGLSketchRenderer render]";
            v23 = 1024;
            v24 = v8;
            _os_log_impl(&dword_248D00000, v9, OS_LOG_TYPE_INFO, "%s: glGetError(0x%x)", &v21, 0x12u);
          }
        }

        glDrawArrays(0, self->_vertexBufferBegin, self->_vertexBufferCount - self->_vertexBufferBegin);
        v10 = glGetError();
        if (v10 && IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v21 = 136315394;
            v22 = "[ETGLSketchRenderer render]";
            v23 = 1024;
            v24 = v10;
            _os_log_impl(&dword_248D00000, v11, OS_LOG_TYPE_INFO, "%s: glGetError(0x%x)", &v21, 0x12u);
          }
        }

        if (!self->_renderingOffscreen)
        {
          [(EAGLContext *)self->_context presentRenderbuffer:36161];
        }

        if ([(ETGLSketchRenderer *)self isDying])
        {
          lastBirth = self->_lastBirth;
          v13 = (self->_currentTimeClock - self->_deathTime);
          vertexBufferBegin = self->_vertexBufferBegin;
          v15 = (self->_allVertices + 80 * vertexBufferBegin + 52);
          v16 = vertexBufferBegin - 1;
          while ((v13 + (*v15 / lastBirth) * -1.25) / 1.75 > 1.0)
          {
            self->_vertexBufferBegin = v16 + 2;
            v15 += 20;
            if (++v16 == self->_vertexBufferCount - 2)
            {
              completionBlock = self->_completionBlock;
              if (completionBlock)
              {
                completionBlock[2]();
                v18 = self->_completionBlock;
                self->_completionBlock = 0;
              }

              break;
            }
          }
        }

        v19 = glGetError();
        if (v19 && IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = 136315394;
            v22 = "[ETGLSketchRenderer render]";
            v23 = 1024;
            v24 = v19;
            _os_log_impl(&dword_248D00000, v20, OS_LOG_TYPE_INFO, "%s: glGetError(0x%x)", &v21, 0x12u);
          }
        }
      }
    }
  }
}

- (void)setLineWidthScaleFactor:(double)factor
{
  v19 = *MEMORY[0x277D85DE8];
  lineWidthScaleFactor = self->_lineWidthScaleFactor;
  self->_lineWidthScaleFactor = factor;
  self->_cometScaleFactor = 1.0 / factor;
  if (self->_vertexBufferCount >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = factor / lineWidthScaleFactor;
    do
    {
      v7 = (self->_allVertices + v4);
      v8 = v6 * v7[16];
      v7[16] = v8;
      cometScaleFactor = self->_cometScaleFactor;
      *(self->_allVertices + v4 + 68) = cometScaleFactor;
      if (self->_useFastVerticalWisp)
      {
        v10 = 3.0;
      }

      else
      {
        v10 = 0.0;
      }

      *(self->_allVertices + v4 + 72) = v10;
      ++v5;
      vertexBufferCount = self->_vertexBufferCount;
      v4 += 80;
    }

    while (v5 < vertexBufferCount);
    glBufferSubData(0x8892u, 0, 80 * vertexBufferCount, self->_allVertices);
    Error = glGetError();
    if (Error)
    {
      v13 = Error;
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = 136315394;
          v16 = "[ETGLSketchRenderer setLineWidthScaleFactor:]";
          v17 = 1024;
          v18 = v13;
          _os_log_impl(&dword_248D00000, v14, OS_LOG_TYPE_INFO, "%s: glGetError(0x%x)", &v15, 0x12u);
        }
      }
    }
  }
}

- (ETGLSketchRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end