@interface DKOpenGLRenderer
- (BOOL)detectCollision:(DKOpenGLRenderer *)self :(SEL)a2;
- (BOOL)initGL;
- (CGRect)bounds;
- (CGRect)getVertexBounds;
- (CGRect)regionWithVertices:()vector<Vertex withInflationAmount:(std:(float)a4 :allocator<Vertex>> *)a3;
- (CGSize)contentSize;
- (DKOpenGLRenderer)init;
- (DKOpenGLRenderer)initWithBounds:(CGRect)a3 scale:(double)a4 bufferSize:(int)a5 sharedContext:(BOOL)a6;
- (DKOpenGLRendererDelegate)delegate;
- (id).cxx_construct;
- (id)snapshotImage;
- (void)addPoints:(id)a3 withSegmentLength:(unint64_t)a4;
- (void)appendVertexHistoryElement;
- (void)clear;
- (void)clearComposite;
- (void)clearDryPaintBuffer;
- (void)clearWetPaintBuffer;
- (void)dealloc;
- (void)destroyFrameBuffers;
- (void)didBeginNewStroke;
- (void)didResize;
- (void)draw;
- (void)drawComposite;
- (void)drawContiguousVertexStorageImmediatelyWithLayeredBlending:(BOOL)a3;
- (void)initializeFrameBuffers;
- (void)removeVertexHistoryElement;
- (void)renderToComposite:(BOOL)a3;
- (void)renderToDryPaintBuffer;
- (void)renderToWetPaintBufferWithRange:(_NSRange)a3;
- (void)resetRendererState;
- (void)setAllowWetComposite:(BOOL)a3;
- (void)setBackingScale:(double)a3;
- (void)setBounds:(CGRect)a3;
- (void)setDrawingEnabled:(BOOL)a3;
- (void)setInkColor:(id)a3;
- (void)setNumPages:(int64_t)a3;
- (void)teardown;
- (void)undo;
- (void)update;
- (void)updateDryCycleIncludingComposite:(BOOL)a3;
- (void)updateDryForcefully;
- (void)updateVertexControllerWithData:()vector<Vertex range:(std:(_NSRange)a4 :(BOOL)a5 allocator<Vertex>> *)a3 allowWet:;
- (void)updateVertexControllerWithDataRange:(_NSRange)a3 allowWet:(BOOL)a4;
@end

@implementation DKOpenGLRenderer

- (DKOpenGLRenderer)initWithBounds:(CGRect)a3 scale:(double)a4 bufferSize:(int)a5 sharedContext:(BOOL)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17.receiver = self;
  v17.super_class = DKOpenGLRenderer;
  v13 = [(DKOpenGLRenderer *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_bounds.origin.x = x;
    v13->_bounds.origin.y = y;
    v13->_bounds.size.width = width;
    v13->_bounds.size.height = height;
    v13->_backingScale = a4;
    v13->_lineWidthScale = 1.0;
    v13->_didNotifyRendererDelegate = 0;
    v13->mSharedContext = a6;
    if (a5 <= 8000)
    {
      v15 = 8000;
    }

    else
    {
      v15 = a5;
    }

    if (v15 >= 65534)
    {
      v15 = 65534;
    }

    v13->mBufferSize = v15;
    [(DKOpenGLRenderer *)v13 initGL];
  }

  return v14;
}

- (DKOpenGLRenderer)init
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];
  v5 = v4;

  return [(DKOpenGLRenderer *)self initWithBounds:*MEMORY[0x277CBF3A0] scale:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v5];
}

- (void)dealloc
{
  if (+[DKGLUtilities gpuAvailable])
  {
    [(DKOpenGLRenderer *)self teardown];
  }

  self->mPages.__end_ = self->mPages.__begin_;
  self->mContiguousVertexStorage.__end_ = self->mContiguousVertexStorage.__begin_;
  self->mVertexHistory.__end_ = self->mVertexHistory.__begin_;
  v3.receiver = self;
  v3.super_class = DKOpenGLRenderer;
  [(DKOpenGLRenderer *)&v3 dealloc];
}

- (void)teardown
{
  [(DKOpenGLRenderer *)self destroyFrameBuffers];
  if (self->mVbo)
  {
    [DKGLUtilities deleteVBO:&self->mVbo];
  }

  if (!self->mPaperTexIsShared)
  {
    mPaperTex = self->mPaperTex;
    p_mPaperTex = &self->mPaperTex;
    if (mPaperTex)
    {
      [DKGLUtilities deleteTexture:p_mPaperTex];
    }
  }

  glFinish();
}

- (BOOL)initGL
{
  *self->U_COLOR = xmmword_249D9D860;
  U_COLOR = self->U_COLOR;
  *self->mWinSize = vmovn_s64(vcvtq_s64_f64(self->_bounds.size));
  [(DKOpenGLRenderer *)self setNumPages:1];
  *self->mCanvasSize = *self->mWinSize;
  *self->mCanvasOffset = 0;
  v4 = [(DKOpenGLRenderer *)self numPages];
  v5 = *self->mCanvasSize;
  self->_contentSize.width = (v4 * v5);
  self->_contentSize.height = SHIDWORD(v5);
  self->mTime = 0.0;
  [(DKOpenGLRenderer *)self setDrawingEnabled:1];
  [(DKOpenGLRenderer *)self setAllowWetComposite:1];
  glDisable(0xBE2u);
  glDisable(0xB71u);
  glDepthMask(0);
  if (self->mSharedContext)
  {
    [DKGLUtilities createSharedRepeatableTexture:&self->mPaperTex withImageName:@"paper_texture" ofType:@"jpg"];
    mPaperTex = self->mPaperTex;
    self->mPaperTexIsShared = mPaperTex != 0;
    if (!mPaperTex)
    {
      goto LABEL_5;
    }
  }

  else if (!self->mPaperTex)
  {
LABEL_5:
    [DKGLUtilities createRepeatableTexture:&self->mPaperTex withImageName:@"paper_texture" ofType:@"jpg"];
    self->mPaperTexIsShared = 0;
  }

  self->mParticleLifespan = 2.0;
  glGenBuffers(1, &self->mVbo);
  glBindBuffer(0x8892u, self->mVbo);
  glBufferData(0x8892u, 24 * self->mBufferSize, 0, 0x88E8u);
  glGenVertexArraysOES();
  glBindVertexArrayOES();
  glBindBuffer(0x8892u, self->mVbo);
  glEnableVertexAttribArray(0);
  glEnableVertexAttribArray(1u);
  glEnableVertexAttribArray(2u);
  glEnableVertexAttribArray(3u);
  glEnableVertexAttribArray(4u);
  glVertexAttribPointer(0, 2, 0x1406u, 0, 24, 0);
  glVertexAttribPointer(1u, 1, 0x1406u, 0, 24, 8);
  glVertexAttribPointer(2u, 1, 0x1406u, 0, 24, 0xC);
  glVertexAttribPointer(3u, 1, 0x1406u, 0, 24, 0x10);
  glVertexAttribPointer(4u, 1, 0x1406u, 0, 24, 0x14);
  glGetError();
  Program = glCreateProgram();
  self->mWetPaintProg = Program;
  glAttachShader(Program, [DKGLUtilities compileShader:@"wet_paint" ofType:@"vert"]);
  glAttachShader(self->mWetPaintProg, [DKGLUtilities compileShader:@"wet_paint" ofType:@"frag"]);
  glBindAttribLocation(self->mWetPaintProg, 0, "iPosition");
  glBindAttribLocation(self->mWetPaintProg, 1u, "iSpeed");
  glBindAttribLocation(self->mWetPaintProg, 2u, "iBirth");
  glBindAttribLocation(self->mWetPaintProg, 3u, "iForce");
  glBindAttribLocation(self->mWetPaintProg, 4u, "iEndPoint");
  glLinkProgram(self->mWetPaintProg);
  params = 0;
  glGetProgramiv(self->mWetPaintProg, 0x8B82u, &params);
  if (params
    && (glUseProgram(self->mWetPaintProg), self->mWetPaintProgTimeUniformLocation = glGetUniformLocation(self->mWetPaintProg, "uTime"), self->mWetPaintProgSubtractEndPointsOnlyUniformLocation = glGetUniformLocation(self->mWetPaintProg, "uSubtractEndPointsOnly"), self->mWetPaintProgLifespanUniformLocation = glGetUniformLocation(self->mWetPaintProg, "uLifespan"), UniformLocation = glGetUniformLocation(self->mWetPaintProg, "uSize"), backingScale = self->_backingScale, glUniform1f(UniformLocation, backingScale * 10.0), glUniform1f(self->mWetPaintProgTimeUniformLocation, 0.0), glUniform1f(self->mWetPaintProgLifespanUniformLocation, self->mParticleLifespan), glUniform1i(self->mWetPaintProgSubtractEndPointsOnlyUniformLocation, 0), v10 = self->_backingScale, *v = vmul_n_f32(vcvt_f32_s32(*self->mCanvasSize), v10), v11 = glCreateProgram(), self->mDryPaintProg = v11, glAttachShader(v11, [DKGLUtilities compileShader:@"dry_paint" ofType:@"vert"]), glAttachShader(self->mDryPaintProg, [DKGLUtilities compileShader:@"dry_paint" ofType:@"frag"]), glBindAttribLocation(self->mDryPaintProg, 0, "iPosition"), glBindAttribLocation(self->mDryPaintProg, 1u, "iTexCoord0"), glLinkProgram(self->mDryPaintProg), glGetProgramiv(self->mDryPaintProg, 0x8B82u, &params), params)
    && (glUseProgram(self->mDryPaintProg), self->mDryPaintProgXCoordOffsetUniformLocation = glGetUniformLocation(self->mDryPaintProg, "uXCoordOffset"), v12 = glGetUniformLocation(self->mDryPaintProg, "texture_src"), glUniform1i(v12, 0), v13 = glGetUniformLocation(self->mDryPaintProg, "texture_dest"), glUniform1i(v13, 1), v14 = glGetUniformLocation(self->mDryPaintProg, "uTargetMultiple"), glUniform1f(v14, 0.5), glUniform1f(self->mDryPaintProgXCoordOffsetUniformLocation, 0.0), v15 = glCreateProgram(), self->mCompositeProg = v15, glAttachShader(v15, [DKGLUtilities compileShader:@"dry_composite" ofType:@"vert"]), glAttachShader(self->mCompositeProg, [DKGLUtilities compileShader:@"dry_composite" ofType:@"frag"]), glBindAttribLocation(self->mCompositeProg, 0, "iPosition"), glBindAttribLocation(self->mCompositeProg, 1u, "iTexCoord0"), glLinkProgram(self->mCompositeProg), glGetProgramiv(self->mCompositeProg, 0x8B82u, &params), params)
    && (glUseProgram(self->mCompositeProg), self->mCompositeColorUniformLocation = glGetUniformLocation(self->mCompositeProg, "uColor"), v16 = glGetUniformLocation(self->mCompositeProg, "texture_dest"), glUniform1i(v16, 0), v17 = glGetUniformLocation(self->mCompositeProg, "texture_paper"), glUniform1i(v17, 1), glUniform4fv(self->mCompositeColorUniformLocation, 1, U_COLOR), v18 = glGetUniformLocation(self->mCompositeProg, "uTargetMultiple"), glUniform1f(v18, 0.5), v19 = glGetUniformLocation(self->mCompositeProg, "uXCoordOffset"), glUniform1f(v19, 0.0), v20 = glGetUniformLocation(self->mCompositeProg, "uIncludeWetPass"), glUniform1i(v20, 1), v21 = glGetUniformLocation(self->mCompositeProg, "uViewport"), self->mCompositeProgViewportUniformLocation = v21, glUniform2fv(v21, 1, v), v22 = glCreateProgram(), self->mTextureProg = v22, glAttachShader(v22, [DKGLUtilities compileShader:@"texture" ofType:@"vert"]), glAttachShader(self->mTextureProg, [DKGLUtilities compileShader:@"texture" ofType:@"frag"]), glBindAttribLocation(self->mTextureProg, 0, "iPosition"), glBindAttribLocation(self->mTextureProg, 1u, "iTexCoord"), glLinkProgram(self->mTextureProg), glGetProgramiv(self->mTextureProg, 0x8B82u, &params), params)
    && (glUseProgram(self->mTextureProg), v23 = glGetUniformLocation(self->mTextureProg, "texture_src"), glUniform1i(v23, 0), self->mTextureProgModelViewProjectionUniformLocation = glGetUniformLocation(self->mTextureProg, "uModelViewProjection"), v24 = glCreateProgram(), self->mColorProg = v24, glAttachShader(v24, [DKGLUtilities compileShader:@"color" ofType:@"vert"]), glAttachShader(self->mColorProg, [DKGLUtilities compileShader:@"color" ofType:@"frag"]), glBindAttribLocation(self->mColorProg, 0, "iPosition"), glBindAttribLocation(self->mColorProg, 1u, "iTexCoord"), glLinkProgram(self->mColorProg), glGetProgramiv(self->mColorProg, 0x8B82u, &params), params))
  {
    glUseProgram(self->mColorProg);
    v27 = xmmword_249D9D870;
    self->mColorProgColorUniformLocation = glGetUniformLocation(self->mColorProg, "uColor");
    self->mColorProgModelViewProjectionUniformLocation = glGetUniformLocation(self->mColorProg, "uModelViewProjection");
    v25 = 1;
    glUniform4fv(self->mColorProgColorUniformLocation, 1, &v27);
    [(DKOpenGLRenderer *)self initializeFrameBuffers:v27];
  }

  else
  {
    NSLog(&cfstr_ErrorLinkingPr.isa);
    return 0;
  }

  return v25;
}

- (void)setInkColor:(id)a3
{
  objc_storeStrong(&self->_inkColor, a3);
  v5 = a3;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  [v5 getRed:&v11 green:&v10 blue:&v9 alpha:&v8];

  v6.f64[0] = v11;
  v6.f64[1] = v10;
  v7.f64[0] = v9;
  v7.f64[1] = v8;
  *self->U_COLOR = vcvt_hight_f32_f64(vcvt_f32_f64(v6), v7);
}

- (void)setNumPages:(int64_t)a3
{
  if (self->_numPages != a3)
  {
    std::vector<Page>::resize(&self->mPages.__begin_, a3);
    self->_numPages = a3;
  }
}

- (void)setBounds:(CGRect)a3
{
  if (self->_bounds.size.width != a3.size.width || self->_bounds.size.height != a3.size.height)
  {
    self->_bounds = a3;
    [(DKOpenGLRenderer *)self didResize];
  }
}

- (void)setBackingScale:(double)a3
{
  if (self->_backingScale != a3)
  {
    self->_backingScale = a3;
    [(DKOpenGLRenderer *)self didResize];
  }
}

- (void)didResize
{
  [(DKOpenGLRenderer *)self destroyFrameBuffers];
  v3 = vmovn_s64(vcvtq_s64_f64(self->_bounds.size));
  *self->mWinSize = v3;
  *self->mCanvasSize = v3;
  *self->mCanvasOffset = 0;
  [(DKOpenGLRenderer *)self initializeFrameBuffers];
  backingScale = self->_backingScale;
  v5 = vcvt_f32_s32(*self->mCanvasSize);
  self->_contentSize.width = ((0xCCCCCCCCCCCCCCCDLL * ((self->mPages.__end_ - self->mPages.__begin_) >> 3)) * v5.f32[0]);
  self->_contentSize.height = v5.f32[1];
  *v = vmul_n_f32(v5, backingScale);
  glUseProgram(self->mCompositeProg);
  glUniform2fv(self->mCompositeProgViewportUniformLocation, 1, v);
  [(DKOpenGLRenderer *)self drawContiguousVertexStorageImmediatelyWithLayeredBlending:1];
}

- (void)destroyFrameBuffers
{
  for (i = self->mPages.__begin_; i != self->mPages.__end_; i = (i + 40))
  {
    [DKGLUtilities deleteFBO:i depthRB:0 texture:i + 4];
    [DKGLUtilities deleteFBO:i + 16 depthRB:0 texture:i + 20];
  }

  [DKGLUtilities deleteFBO:&self->mWetPaintBufferFBO depthRB:0 texture:&self->mWetPaintBufferT];
}

- (void)initializeFrameBuffers
{
  *&v2 = self->_backingScale;
  *&v2 = vcvt_s32_f32(vmul_n_f32(vcvt_f32_s32(*self->mCanvasSize), *&v2));
  v20 = v2;
  begin = self->mPages.__begin_;
  if (begin != self->mPages.__end_)
  {
    v5 = v2;
    v6 = DWORD1(v2);
    v7 = begin + 16;
    do
    {
      *(v7 - 1) = v20;
      [DKGLUtilities createFBO:v7 - 16 depthRB:0 texture:v7 - 12 width:v5 height:v6 format:32849, v20];
      *(v7 + 1) = v20;
      [DKGLUtilities createFBO:v7 depthRB:0 texture:v7 + 4 width:v5 height:v6 format:32856];
      v8 = (v7 + 24);
      v7 += 40;
    }

    while (v8 != self->mPages.__end_);
  }

  *self->mWetPaintBufferSize = v20;
  v9 = v20;
  v10 = DWORD1(v20);
  [DKGLUtilities createFBO:&self->mWetPaintBufferFBO depthRB:0 texture:&self->mWetPaintBufferT width:v20 height:DWORD1(v20) format:32849, v20];
  backingScale = self->_backingScale;
  v12 = v9 / backingScale;
  *&v12 = v12;
  v13 = v10 / backingScale;
  *&v13 = v13;
  [DKGLUtilities setProjectionMatrixForWidth:0 height:value flipped:v12 matrix:v13];
  v14 = *self->mCanvasOffset;
  *&v14 = -*self->mCanvasOffset;
  [DKGLUtilities translateMatrix:value byX:value Y:v14 result:0.0];
  glUseProgram(self->mWetPaintProg);
  UniformLocation = glGetUniformLocation(self->mWetPaintProg, "uModelViewProjection");
  glUniformMatrix4fv(UniformLocation, 1, 0, value);
  HIDWORD(v16) = v22;
  *&v16 = v21;
  *&v17 = v10;
  [DKGLUtilities setProjectionMatrixForWidth:0 height:value flipped:v16 matrix:v17];
  glUseProgram(self->mDryPaintProg);
  v18 = glGetUniformLocation(self->mDryPaintProg, "uModelViewProjection");
  glUniformMatrix4fv(v18, 1, 0, value);
  glUseProgram(self->mCompositeProg);
  v19 = glGetUniformLocation(self->mCompositeProg, "uModelViewProjection");
  glUniformMatrix4fv(v19, 1, 0, value);
}

- (void)setDrawingEnabled:(BOOL)a3
{
  if (self->_drawingEnabled != a3)
  {
    if (!a3)
    {
      [(DKOpenGLRenderer *)self updateDryForcefully];
    }

    self->_drawingEnabled = a3;
  }
}

- (void)setAllowWetComposite:(BOOL)a3
{
  if (self->_allowWetComposite != a3)
  {
    v3 = a3;
    glUseProgram(self->mCompositeProg);
    UniformLocation = glGetUniformLocation(self->mCompositeProg, "uIncludeWetPass");
    glUniform1f(UniformLocation, v3);
    self->_allowWetComposite = v3;
  }
}

- (void)appendVertexHistoryElement
{
  begin = self->mVertexHistory.__begin_;
  p_mVertexHistory = &self->mVertexHistory;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((p_mVertexHistory[-1].__end_ - p_mVertexHistory[-1].__begin_) >> 3);
  end = p_mVertexHistory->__end_;
  if (end == begin || *(end - 1))
  {
    std::vector<VertexGroup>::push_back[abi:ne200100](p_mVertexHistory, &v5);
  }

  else
  {
    *(end - 1) = v5;
  }
}

- (void)removeVertexHistoryElement
{
  begin = self->mVertexHistory.__begin_;
  end = self->mVertexHistory.__end_;
  self->mVertexHistory.__end_ = (end - 16);
  if ((end - 16) == begin)
  {
    self->mContiguousVertexStorage.__end_ = self->mContiguousVertexStorage.__begin_;
  }

  else
  {
    std::vector<Vertex>::resize(&self->mContiguousVertexStorage.__begin_, *(end - 3) + *(end - 4));
  }
}

- (void)addPoints:(id)a3 withSegmentLength:(unint64_t)a4
{
  v81 = *MEMORY[0x277D85DE8];
  v5 = a3;
  begin = self->mContiguousVertexStorage.__begin_;
  p_mContiguousVertexStorage = &self->mContiguousVertexStorage;
  end = self->mContiguousVertexStorage.__end_;
  v67 = v5;
  if ([v5 count])
  {
    v69 = end;
    v70 = begin;
    location = self->mVertexRange.location;
    length = self->mVertexRange.length;
    mTime = self->mTime;
    self->_didNotifyRendererDelegate = 0;
    if (self->_drawingEnabled)
    {
      v9 = mTime;
    }

    else
    {
      v9 = 0.0;
    }

    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v10 = v67;
    v11 = [v10 countByEnumeratingWithState:&v76 objects:v80 count:16];
    if (v11)
    {
      v12 = *v77;
      v13 = v10;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v77 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v76 + 1) + 8 * i);
          memset(v75, 0, 24);
          if (v15)
          {
            [v15 dk_renderPointValue];
            v16 = vcvt_hight_f32_f64(vcvt_f32_f64(0), *(v75 + 8));
          }

          else
          {
            v16 = 0uLL;
          }

          lineWidthScale = self->_lineWidthScale;
          v18 = fminf(fmaxf(v16.f32[2], 0.0), lineWidthScale);
          v19 = self->mContiguousVertexStorage.__end_;
          cap = self->mContiguousVertexStorage.__cap_;
          if (v19 >= cap)
          {
            v22 = 0xAAAAAAAAAAAAAAABLL * ((v19 - p_mContiguousVertexStorage->__begin_) >> 3);
            v23 = v22 + 1;
            if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<Page>::__throw_length_error[abi:ne200100]();
            }

            v24 = 0xAAAAAAAAAAAAAAABLL * ((cap - p_mContiguousVertexStorage->__begin_) >> 3);
            if (2 * v24 > v23)
            {
              v23 = 2 * v24;
            }

            if (v24 >= 0x555555555555555)
            {
              v25 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<Vertex>>(p_mContiguousVertexStorage, v25);
            }

            v26 = 24 * v22;
            *v26 = v16.i64[0];
            *(v26 + 8) = v18;
            *(v26 + 12) = v9;
            *(v26 + 16) = v16.i32[3];
            *(v26 + 20) = 0;
            v21 = (24 * v22 + 24);
            v27 = self->mContiguousVertexStorage.__begin_;
            v28 = (self->mContiguousVertexStorage.__end_ - v27);
            v29 = (24 * v22 - v28);
            memcpy((v26 - v28), v27, v28);
            v30 = self->mContiguousVertexStorage.__begin_;
            self->mContiguousVertexStorage.__begin_ = v29;
            self->mContiguousVertexStorage.__end_ = v21;
            self->mContiguousVertexStorage.__cap_ = 0;
            if (v30)
            {
              operator delete(v30);
            }

            v10 = v13;
          }

          else
          {
            *v19 = v16.i64[0];
            *(v19 + 2) = v18;
            *(v19 + 3) = v9;
            *(v19 + 4) = v16.i32[3];
            v21 = (v19 + 24);
            *(v19 + 5) = 0;
          }

          self->mContiguousVertexStorage.__end_ = v21;
          if (self->_undoEnabled)
          {
            v31 = self->mVertexHistory.__end_;
            if (v31 == self->mVertexHistory.__begin_)
            {
              [(DKOpenGLRenderer *)self appendVertexHistoryElement];
              v31 = self->mVertexHistory.__end_;
            }

            ++*(v31 - 1);
          }

          ++self->mVertexRange.length;
        }

        v11 = [v10 countByEnumeratingWithState:&v76 objects:v80 count:16];
      }

      while (v11);
    }

    v32 = vcvtas_u32_f32([v10 count] / a4);
    if (v32)
    {
      v33 = 0;
      v34 = (24 * a4 - 24) / 0x18uLL;
      v35 = (v34 + 4) & 0x1FFFFFFFFFFFFFFCLL;
      v72 = vdupq_n_s64(v34);
      do
      {
        v36 = v33 * a4;
        v37 = [v10 count] - v33 * a4;
        if (v37 >= a4)
        {
          v38 = a4;
        }

        else
        {
          v38 = v37;
        }

        v74 = 0u;
        v39 = [v10 objectAtIndexedSubscript:v36];
        v40 = v39;
        if (v39)
        {
          [v39 dk_renderPointValue];
        }

        else
        {
          v74 = 0u;
        }

        v73 = 0u;
        v41 = [v10 objectAtIndexedSubscript:v36 + v38 - 1];
        v42 = v41;
        if (v41)
        {
          [v41 dk_renderPointValue];
        }

        else
        {
          v73 = 0u;
        }

        *&v43 = *&v74;
        v44 = *(&v74 + 1);
        *(&v43 + 1) = v44;
        *&v45 = *&v73;
        v46 = *(&v73 + 1);
        *(&v45 + 1) = v46;
        v47 = [(DKOpenGLRenderer *)self detectCollision:v43];
        v48 = -1431655765 * ((v69 - v70) >> 3) - a4 - 20 + v36;
        v49 = !v47 || v48 < 1;
        if (!v49 && a4 << 32)
        {
          v50 = 0;
          v51 = (p_mContiguousVertexStorage->__begin_ + 24 * v48 + 68);
          do
          {
            v52 = vdupq_n_s64(v50);
            v53 = vmovn_s64(vcgeq_u64(v72, vorrq_s8(v52, xmmword_249D9D890)));
            if (vuzp1_s16(v53, *v52.i8).u8[0])
            {
              *(v51 - 12) = 1065353216;
            }

            if (vuzp1_s16(v53, *&v52).i8[2])
            {
              *(v51 - 6) = 1065353216;
            }

            v54 = vmovn_s64(vcgeq_u64(v72, vorrq_s8(v52, xmmword_249D9D880)));
            if (vuzp1_s16(v54, v54).i32[1])
            {
              *v51 = 1065353216;
              v51[6] = 1065353216;
            }

            v50 += 4;
            v51 += 24;
          }

          while (v35 != v50);
        }

        ++v33;
      }

      while (v33 != v32);
    }

    if (self->_drawingEnabled)
    {
      v55 = self->mVertexRange.length;
      v56 = v55 - length;
      if (v55 > length)
      {
        self->mTimeWetBecameDirty = self->mTime;
        v57 = length + location;
        mBufferSize = self->mBufferSize;
        v59 = (length + location) % mBufferSize;
        mVbo = self->mVbo;
        if (v59 + v56 <= mBufferSize)
        {
          glBindBuffer(0x8892u, mVbo);
          v61 = 24 * v59;
          v63 = v56;
          v64 = p_mContiguousVertexStorage->__begin_ + 24 * v57;
        }

        else
        {
          glBindBuffer(0x8892u, mVbo);
          glBufferSubData(0x8892u, 24 * v59, 24 * (self->mBufferSize - v59), self->mContiguousVertexStorage.__begin_ + 24 * v57);
          v61 = 0;
          v62 = self->mBufferSize;
          v63 = (v59 + v56) % v62;
          v64 = self->mContiguousVertexStorage.__begin_ + 24 * v57 + 24 * (v62 - v59);
        }

        glBufferSubData(0x8892u, v61, 24 * v63, v64);
      }
    }

    else
    {
      self->mTime = (v9 + self->mParticleLifespan) + 1.0;
      glUseProgram(self->mWetPaintProg);
      glUniform1f(self->mWetPaintProgTimeUniformLocation, self->mTime);
    }
  }
}

- (BOOL)detectCollision:(DKOpenGLRenderer *)self :(SEL)a2
{
  v5 = v2;
  v6 = vceq_f32(v2, v3);
  if (vand_s8(v6, vdup_lane_s32(v6, 1)).u8[0])
  {
    return 0;
  }

  v9 = vsub_f32(v3, v5);
  begin = self->mNonCollisionSegments.__begin_;
  end = self->mNonCollisionSegments.__end_;
  p_mNonCollisionSegments = &self->mNonCollisionSegments;
  if (end == begin)
  {
LABEL_7:
    v7 = 0;
  }

  else
  {
    _S2 = -*v9.i32;
    v14 = vdup_lane_s32(v9, 0);
    v15 = begin;
    while (1)
    {
      _D6 = v15[1];
      __asm { FMLA            S16, S2, V6.S[1] }

      *&v21 = -*&_D6.i32[1];
      v22 = vdup_lane_s32(_D6, 0);
      v22.f32[0] = -*&v9.i32[1];
      v23 = vsub_f32(*v15, v5);
      *v24.i8 = vdiv_f32(vmla_f32(vrev64_s32(vmul_f32(v23, v22)), v23, __PAIR64__(v14.u32[1], v21)), vdup_lane_s32(_D16, 0));
      v24.i64[1] = v24.i64[0];
      v25 = vrev64q_s32(v24);
      v22.i32[0] = vmovn_s32(vmvnq_s8(vcgeq_f32(xmmword_249D9D8A0, v25))).u32[0];
      v22.i32[1] = vmovn_s32(vmvnq_s8(vcgeq_f32(v25, xmmword_249D9D8A0))).i32[1];
      if ((vmaxv_u16(v22) & 1) == 0)
      {
        break;
      }

      v15 += 2;
      if (v15 == end)
      {
        goto LABEL_7;
      }
    }

    self->mNonCollisionSegments.__end_ = begin;
    v7 = 1;
    end = begin;
  }

  cap = self->mNonCollisionSegments.__cap_;
  if (end >= cap)
  {
    v28 = (end - begin) >> 4;
    v29 = v28 + 1;
    if ((v28 + 1) >> 60)
    {
      std::vector<Page>::__throw_length_error[abi:ne200100]();
    }

    v30 = cap - begin;
    if (v30 >> 3 > v29)
    {
      v29 = v30 >> 3;
    }

    if (v30 >= 0x7FFFFFFFFFFFFFF0)
    {
      v31 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v29;
    }

    if (v31)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<VertexGroup>>(p_mNonCollisionSegments, v31);
    }

    v32 = (16 * v28);
    *v32 = v5;
    v32[1] = v9;
    v27 = (16 * v28 + 16);
    v33 = self->mNonCollisionSegments.__begin_;
    v34 = (self->mNonCollisionSegments.__end_ - v33);
    v35 = (16 * v28 - v34);
    memcpy((v32 - v34), v33, v34);
    v36 = self->mNonCollisionSegments.__begin_;
    self->mNonCollisionSegments.__begin_ = v35;
    self->mNonCollisionSegments.__end_ = v27;
    self->mNonCollisionSegments.__cap_ = 0;
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    *end = v5;
    end[1] = v9;
    v27 = end + 2;
  }

  self->mNonCollisionSegments.__end_ = v27;
  return v7;
}

- (void)update
{
  self->mTime = self->mTime + 0.016667;
  glUseProgram(self->mWetPaintProg);
  glUniform1f(self->mWetPaintProgTimeUniformLocation, self->mTime);
  if ((self->mTime - self->mTimeWetBecameDirty) >= self->mParticleLifespan)
  {
    if (self->mVertexRange.location && !self->_didNotifyRendererDelegate)
    {
      self->_didNotifyRendererDelegate = 1;
      v3 = [(DKOpenGLRenderer *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v3 rendererDidFinishAnimatingDrawing:self];
      }
    }
  }

  else
  {
    [(DKOpenGLRenderer *)self updateWet];
  }

  length = self->mVertexRange.length;
  if (length)
  {
    location = self->mVertexRange.location;
    mTime = self->mTime;
    begin = self->mContiguousVertexStorage.__begin_;
    mParticleLifespan = self->mParticleLifespan;
    v9 = location + 1;
    v10 = 24 * location + 12;
    v11 = length - 1;
    do
    {
      if ((mTime - *(begin + v10)) < mParticleLifespan)
      {
        break;
      }

      self->mVertexRange.location = v9;
      self->mVertexRange.length = v11;
      ++v9;
      v10 += 24;
      --v11;
    }

    while (v11 != -1);
    end = self->mContiguousVertexStorage.__end_;
    v23 = 0;
    v24 = 0;
    __p = 0;
    std::vector<Vertex>::__init_with_size[abi:ne200100]<std::__wrap_iter<Vertex*>,std::__wrap_iter<Vertex*>>(&__p, begin + 24 * location, end, 0xAAAAAAAAAAAAAAABLL * ((end - (begin + 24 * location)) >> 3));
    LODWORD(v13) = 10.0;
    [(DKOpenGLRenderer *)self regionWithVertices:&__p withInflationAmount:v13];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

    v25.origin.x = v15;
    v25.origin.y = v17;
    v25.size.width = v19;
    v25.size.height = v21;
    self->mDirtyCanvasRegion = CGRectUnion(self->mDirtyCanvasRegion, v25);
    [(DKOpenGLRenderer *)self updateDryCycleIncludingComposite:1];
    self->mDirtyCanvasRegion.origin.x = v15;
    self->mDirtyCanvasRegion.origin.y = v17;
    self->mDirtyCanvasRegion.size.width = v19;
    self->mDirtyCanvasRegion.size.height = v21;
  }
}

- (CGRect)regionWithVertices:()vector<Vertex withInflationAmount:(std:(float)a4 :allocator<Vertex>> *)a3
{
  v4 = a4;
  v6 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  __p = 0;
  v40 = 0;
  v41 = 0;
  begin = a3->__begin_;
  if (a3->__begin_ == a3->__end_)
  {
    v24 = v6;
    v25 = v5;
    v26 = v8;
  }

  else
  {
    do
    {
      v11 = v40;
      if (v40 >= v41)
      {
        v13 = (v40 - __p) >> 3;
        if ((v13 + 1) >> 61)
        {
          std::vector<Page>::__throw_length_error[abi:ne200100]();
        }

        v14 = (v41 - __p) >> 2;
        if (v14 <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        if (v41 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v15);
        }

        *(8 * v13) = *begin;
        v12 = 8 * v13 + 8;
        v16 = (8 * v13 - (v40 - __p));
        memcpy(v16, __p, v40 - __p);
        v17 = __p;
        __p = v16;
        v40 = v12;
        v41 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v40 = *begin;
        v12 = (v11 + 8);
      }

      v40 = v12;
      *&v18 = *begin;
      v38 = v18;
      *&v18 = v6;
      v19 = v5;
      v20 = v8;
      v21 = v7;
      IsNull = CGRectIsNull(*&v18);
      v23 = *(&v38 + 1);
      v24 = *&v38;
      v25 = *(&v38 + 1);
      v26 = 0.0;
      if (IsNull)
      {
        v7 = 0.0;
      }

      else
      {
        v42.size.width = 0.0;
        v42.size.height = 0.0;
        v42.origin.x = *&v38;
        v42.origin.y = *(&v38 + 1);
        v47.origin.x = v6;
        v47.origin.y = v5;
        v47.size.width = v8;
        v47.size.height = v7;
        *&a4 = CGRectUnion(v42, v47);
        v24 = *&a4;
        v25 = v27;
        v26 = v28;
        v7 = v29;
      }

      begin = (begin + 24);
      v8 = v26;
      v5 = v25;
      v6 = v24;
    }

    while (begin != a3->__end_);
  }

  v43.origin.x = v24;
  v43.origin.y = v25;
  v43.size.width = v26;
  v43.size.height = v7;
  if (CGRectIsNull(v43))
  {
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v44.origin.x = v24;
    v44.origin.y = v25;
    v44.size.width = v26;
    v44.size.height = v7;
    v45 = CGRectInset(v44, -v4, -v4);
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  v34 = x;
  v35 = y;
  v36 = width;
  v37 = height;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)getVertexBounds
{
  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<Vertex>::__init_with_size[abi:ne200100]<Vertex*,Vertex*>(&__p, self->mContiguousVertexStorage.__begin_, self->mContiguousVertexStorage.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->mContiguousVertexStorage.__end_ - self->mContiguousVertexStorage.__begin_) >> 3));
  LODWORD(v3) = 10.0;
  [(DKOpenGLRenderer *)self regionWithVertices:&__p withInflationAmount:v3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)updateDryCycleIncludingComposite:(BOOL)a3
{
  v3 = a3;
  [(DKOpenGLRenderer *)self renderToDryPaintBuffer];
  if (v3)
  {

    [(DKOpenGLRenderer *)self renderToComposite:1];
  }
}

- (void)renderToWetPaintBufferWithRange:(_NSRange)a3
{
  length = a3.length;
  v5 = SLODWORD(a3.location) % self->mBufferSize;
  params = 0;
  glGetIntegerv(0x8CA6u, &params);
  glBindFramebuffer(0x8D40u, self->mWetPaintBufferFBO);
  glEnable(0xBE2u);
  glBlendFunc(1u, 0x303u);
  glViewport(0, 0, *self->mWetPaintBufferSize, HIDWORD(*self->mWetPaintBufferSize));
  glUseProgram(self->mWetPaintProg);
  glBindVertexArrayOES();
  glBindBuffer(0x8892u, self->mVbo);
  glEnableVertexAttribArray(0);
  glEnableVertexAttribArray(1u);
  glEnableVertexAttribArray(2u);
  glEnableVertexAttribArray(3u);
  glEnableVertexAttribArray(4u);
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(0x4000u);
  mBufferSize = self->mBufferSize;
  if (v5 + length <= mBufferSize)
  {
    v8 = v5;
    v7 = length;
  }

  else
  {
    glDrawArrays(0, v5, mBufferSize - v5);
    v7 = (v5 + length) % self->mBufferSize;
    v8 = 0;
  }

  glDrawArrays(0, v8, v7);
  glDisable(0xBE2u);
  glBindFramebuffer(0x8D40u, params);
}

- (void)renderToDryPaintBuffer
{
  begin = self->mPages.__begin_;
  if ((-858993459 * ((self->mPages.__end_ - begin) >> 3)) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = begin + v4;
      *(begin + v4 + 32) = (v5 * *self->mCanvasSize) / *self->mCanvasSize;
      params = 0;
      glGetIntegerv(0x8CA6u, &params);
      glBindFramebuffer(0x8D40u, *v6);
      glViewport(0, 0, *(v6 + 1), HIDWORD(*(v6 + 1)));
      glEnable(0xC11u);
      backingScale = self->_backingScale;
      v8 = backingScale;
      mDirtyCanvasRegion = self->mDirtyCanvasRegion;
      v9 = (mDirtyCanvasRegion.origin.x * v8);
      v10 = (mDirtyCanvasRegion.origin.y * v8);
      v11 = (CGRectGetWidth(mDirtyCanvasRegion) * v8);
      Height = CGRectGetHeight(self->mDirtyCanvasRegion);
      glScissor(v9, v10, v11, (Height * v8));
      glUseProgram(self->mDryPaintProg);
      glUniform1f(self->mDryPaintProgXCoordOffsetUniformLocation, *(v6 + 8));
      glActiveTexture(0x84C0u);
      glBindTexture(0xDE1u, *(v6 + 1));
      glActiveTexture(0x84C1u);
      glBindTexture(0xDE1u, self->mWetPaintBufferT);
      v13 = *(v6 + 1);
      *&v14 = v13;
      *&v15 = SHIDWORD(v13);
      [DKGLUtilities drawQuadAtX:0.0 Y:0.0 width:v14 height:v15];
      glDisable(0xC11u);
      glBindFramebuffer(0x8D40u, params);
      ++v5;
      begin = self->mPages.__begin_;
      v4 += 40;
    }

    while (v5 < (-858993459 * ((self->mPages.__end_ - begin) >> 3)));
  }
}

- (void)renderToComposite:(BOOL)a3
{
  begin = self->mPages.__begin_;
  if ((-858993459 * ((self->mPages.__end_ - begin) >> 3)) >= 1)
  {
    v4 = a3;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = begin + v6;
      *(begin + v6 + 32) = (v7 * *self->mCanvasSize) / *self->mCanvasSize;
      params = 0;
      glGetIntegerv(0x8CA6u, &params);
      glBindFramebuffer(0x8D40u, *(begin + v6 + 16));
      if (!v4)
      {
        glClearColor(0.0, 0.0, 0.0, 0.0);
        glClear(0x4000u);
      }

      glViewport(0, 0, *(v8 + 3), HIDWORD(*(v8 + 3)));
      if (v4)
      {
        glEnable(0xC11u);
        backingScale = self->_backingScale;
        v10 = backingScale;
        mDirtyCanvasRegion = self->mDirtyCanvasRegion;
        v11 = (mDirtyCanvasRegion.origin.x * v10);
        v12 = (mDirtyCanvasRegion.origin.y * v10);
        v13 = (CGRectGetWidth(mDirtyCanvasRegion) * v10);
        Height = CGRectGetHeight(self->mDirtyCanvasRegion);
        glScissor(v11, v12, v13, (Height * v10));
      }

      glUseProgram(self->mCompositeProg);
      glUniform4fv(self->mCompositeColorUniformLocation, 1, self->U_COLOR);
      glActiveTexture(0x84C0u);
      glBindTexture(0xDE1u, *(begin + v6 + 4));
      glActiveTexture(0x84C1u);
      glBindTexture(0xDE1u, self->mPaperTex);
      v15 = *(v8 + 3);
      *&v16 = v15;
      *&v17 = SHIDWORD(v15);
      [DKGLUtilities drawQuadAtX:0.0 Y:0.0 width:v16 height:v17];
      if (v4)
      {
        glDisable(0xC11u);
      }

      glBindFramebuffer(0x8D40u, params);
      ++v7;
      begin = self->mPages.__begin_;
      v6 += 40;
    }

    while (v7 < (-858993459 * ((self->mPages.__end_ - begin) >> 3)));
  }
}

- (void)updateDryForcefully
{
  if (self->mVertexRange.length)
  {
    self->mTime = self->mParticleLifespan + self->mTime;
    glUseProgram(self->mWetPaintProg);
    glUniform1f(self->mWetPaintProgTimeUniformLocation, self->mTime);
    [(DKOpenGLRenderer *)self updateWet];
    length = self->mVertexRange.length;
    begin = self->mContiguousVertexStorage.__begin_;
    location = self->mVertexRange.location;
    v12 = 0;
    v13 = 0;
    __p = 0;
    std::vector<Vertex>::__init_with_size[abi:ne200100]<std::__wrap_iter<Vertex*>,std::__wrap_iter<Vertex*>>(&__p, begin + 24 * location, begin + 24 * length + 24 * location, 0xAAAAAAAAAAAAAAABLL * ((24 * length) >> 3));
    LODWORD(v6) = 10.0;
    [(DKOpenGLRenderer *)self regionWithVertices:&__p withInflationAmount:v6];
    self->mDirtyCanvasRegion.origin.x = v7;
    self->mDirtyCanvasRegion.origin.y = v8;
    self->mDirtyCanvasRegion.size.width = v9;
    self->mDirtyCanvasRegion.size.height = v10;
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    [(DKOpenGLRenderer *)self updateDryCycleIncludingComposite:1];
    [(DKOpenGLRenderer *)self clearWetPaintBuffer];
  }
}

- (void)draw
{
  glEnable(0xBE2u);
  glBlendFunc(0x302u, 0x303u);
  +[DKGLUtilities setCurrentClearColor];
  glClear(0x4000u);
  width = self->_bounds.size.width;
  backingScale = self->_backingScale;
  v5 = (width * backingScale);
  height = self->_bounds.size.height;
  glViewport(0, 0, v5, (backingScale * height));
  [(DKOpenGLRenderer *)self drawComposite];

  glDisable(0xBE2u);
}

- (void)drawComposite
{
  v3 = *self->mCanvasSize;
  v4 = ([(DKOpenGLRenderer *)self numPages]* v3);
  v5 = *&self->mCanvasSize[4];
  v6 = *self->mCanvasOffset;
  v7 = v6;
  v8 = SHIDWORD(v6);
  glUseProgram(self->mColorProg);
  __asm { FMOV            V0.4S, #1.0 }

  *v = _Q0;
  if (DKIsDarkMode())
  {
    *v = xmmword_249D9D8B0;
  }

  glUniform4fv(self->mColorProgColorUniformLocation, 1, v);
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  *&width = width;
  *&height = height;
  [DKGLUtilities setProjectionMatrixForWidth:1 height:value flipped:width matrix:height];
  glUniformMatrix4fv(self->mColorProgModelViewProjectionUniformLocation, 1, 0, value);
  backingScale = self->_backingScale;
  v17 = backingScale * v7;
  v18 = backingScale * v8;
  v19 = backingScale * v4;
  v20 = backingScale * v5;
  *&backingScale = backingScale * v7;
  *&v17 = v18;
  *&v18 = v19;
  *&v19 = v20;
  [DKGLUtilities drawQuadAtX:backingScale Y:v17 width:v18 height:v19];
  begin = self->mPages.__begin_;
  if ((-858993459 * ((self->mPages.__end_ - begin) >> 3)) >= 1)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *self->mCanvasSize;
      v25 = HIDWORD(*self->mCanvasSize);
      v26 = HIDWORD(*self->mCanvasOffset);
      v27 = *self->mCanvasOffset + (v23 * v24);
      glActiveTexture(0x84C0u);
      v28 = begin + v22;
      glBindTexture(0xDE1u, *(v28 + 5));
      glUseProgram(self->mTextureProg);
      v29 = self->_backingScale;
      v30 = *(v28 + 3) / v29;
      *&v30 = v30;
      v31 = HIDWORD(*(v28 + 3)) / v29;
      *&v31 = v31;
      [DKGLUtilities setProjectionMatrixForWidth:1 height:v36 flipped:v30 matrix:v31];
      glUniformMatrix4fv(self->mTextureProgModelViewProjectionUniformLocation, 1, 0, v36);
      *&v32 = v27;
      *&v33 = v26;
      *&v34 = v25;
      *&v35 = v24;
      [DKGLUtilities drawQuadAtX:v32 Y:v33 width:v35 height:v34];
      ++v23;
      begin = self->mPages.__begin_;
      v22 += 40;
    }

    while (v23 < (-858993459 * ((self->mPages.__end_ - begin) >> 3)));
  }
}

- (void)undo
{
  if (self->mVertexHistory.__end_ != self->mVertexHistory.__begin_ && self->_undoEnabled)
  {
    [(DKOpenGLRenderer *)self removeVertexHistoryElement];

    [(DKOpenGLRenderer *)self drawContiguousVertexStorageImmediatelyWithLayeredBlending:1];
  }
}

- (void)drawContiguousVertexStorageImmediatelyWithLayeredBlending:(BOOL)a3
{
  v3 = a3;
  glEnable(0xBE2u);
  glBlendFunc(1u, 0x303u);
  +[DKGLUtilities setCurrentClearColor];
  glClear(0x4000u);
  glViewport(0, 0, self->_backingScale * self->_bounds.size.width, self->_bounds.size.height * self->_backingScale);
  [(DKOpenGLRenderer *)self clear];
  self->mNonCollisionSegments.__end_ = self->mNonCollisionSegments.__begin_;
  v5 = self->mContiguousVertexStorage.__end_ - self->mContiguousVertexStorage.__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  self->mVertexRange.location = v6;
  self->mVertexRange.length = 0;
  if (v5)
  {
    v25 = vcvtps_u32_f32(v6 / self->mBufferSize);
    if (v3)
    {
      glUseProgram(self->mWetPaintProg);
      glUniform1i(self->mWetPaintProgSubtractEndPointsOnlyUniformLocation, 1);
    }

    if (v25)
    {
      v7 = 0;
      v24 = v6;
      while (1)
      {
        mBufferSize = self->mBufferSize;
        v9 = v6 - mBufferSize * v7;
        if (v9 >= mBufferSize)
        {
          v10 = mBufferSize;
        }

        else
        {
          v10 = v9;
        }

        v11 = self->mContiguousVertexStorage.__begin_ + 24 * mBufferSize * v7;
        v33 = 0;
        v34 = 0;
        v32 = 0;
        std::vector<Vertex>::__init_with_size[abi:ne200100]<std::__wrap_iter<Vertex*>,std::__wrap_iter<Vertex*>>(&v32, v11, &v11[24 * v10], v10);
        __p = 0;
        v30 = 0;
        v31 = 0;
        std::vector<Vertex>::__init_with_size[abi:ne200100]<Vertex*,Vertex*>(&__p, v32, v33, 0xAAAAAAAAAAAAAAABLL * ((v33 - v32) >> 3));
        [(DKOpenGLRenderer *)self updateVertexControllerWithData:&__p range:0 allowWet:v10, 0];
        if (__p)
        {
          v30 = __p;
          operator delete(__p);
        }

        v13 = v32;
        v12 = v33;
        if (v32 != v33)
        {
          break;
        }

LABEL_24:
        if (v13)
        {
          v33 = v13;
          operator delete(v13);
        }

        if (++v7 == v25)
        {
          goto LABEL_27;
        }
      }

      v14 = 0;
      LODWORD(v15) = 0;
      v16 = v32 + 6;
      while (1)
      {
        v15 = (v15 + 1);
        if (v12 == v16 || !v3)
        {
          if (v12 == v16)
          {
            goto LABEL_19;
          }
        }

        else if (v16[5] == 0.0 && v13[5] == 1.0)
        {
LABEL_19:
          v17 = v14;
          [(DKOpenGLRenderer *)self renderToWetPaintBufferWithRange:v14, v15];
          v18 = &v32[6 * v14];
          v14 += v15;
          v27 = 0;
          v28 = 0;
          v26 = 0;
          std::vector<Vertex>::__init_with_size[abi:ne200100]<std::__wrap_iter<Vertex*>,std::__wrap_iter<Vertex*>>(&v26, v18, &v32[6 * v14], 0xAAAAAAAAAAAAAAABLL * ((24 * v14 - 24 * v17) >> 3));
          LODWORD(v19) = 10.0;
          [(DKOpenGLRenderer *)self regionWithVertices:&v26 withInflationAmount:v19];
          self->mDirtyCanvasRegion.origin.x = v20;
          self->mDirtyCanvasRegion.origin.y = v21;
          self->mDirtyCanvasRegion.size.width = v22;
          self->mDirtyCanvasRegion.size.height = v23;
          if (v26)
          {
            v27 = v26;
            operator delete(v26);
          }

          [(DKOpenGLRenderer *)self updateDryCycleIncludingComposite:0];
          LODWORD(v15) = 0;
          v12 = v33;
        }

        v13 += 6;
        v16 += 6;
        if (v13 == v12)
        {
          v13 = v32;
          LODWORD(v6) = v24;
          goto LABEL_24;
        }
      }
    }

LABEL_27:
    [(DKOpenGLRenderer *)self renderToComposite:0];
  }

  if (v3)
  {
    glUseProgram(self->mWetPaintProg);
    glUniform1i(self->mWetPaintProgSubtractEndPointsOnlyUniformLocation, 0);
  }

  glFinish();
}

- (void)resetRendererState
{
  self->mVertexRange.location = 0;
  self->mVertexRange.length = 0;
  *&self->mTime = 0x3C23D70A3F822225;
  glUseProgram(self->mWetPaintProg);
  glUniform1f(self->mWetPaintProgTimeUniformLocation, self->mTime);
  self->mParticleLifespan = 2.0;
  glUseProgram(self->mWetPaintProg);
  glUniform1f(self->mWetPaintProgLifespanUniformLocation, self->mParticleLifespan);
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  self->mDirtyCanvasRegion.origin = *MEMORY[0x277CBF3A0];
  self->mDirtyCanvasRegion.size = v3;
  self->mContiguousVertexStorage.__end_ = self->mContiguousVertexStorage.__begin_;
  self->mVertexHistory.__end_ = self->mVertexHistory.__begin_;
  self->_ignoreFirstUndoItem = 0;

  [(DKOpenGLRenderer *)self clear];
}

- (void)clear
{
  [(DKOpenGLRenderer *)self clearWetPaintBuffer];
  [(DKOpenGLRenderer *)self clearDryPaintBuffer];

  [(DKOpenGLRenderer *)self clearComposite];
}

- (void)clearWetPaintBuffer
{
  params = 0;
  glGetIntegerv(0x8CA6u, &params);
  glBindFramebuffer(0x8D40u, self->mWetPaintBufferFBO);
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(0x4000u);
  glBindFramebuffer(0x8D40u, params);
}

- (void)clearDryPaintBuffer
{
  begin = self->mPages.__begin_;
  if ((-858993459 * ((self->mPages.__end_ - begin) >> 3)) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      params = 0;
      glGetIntegerv(0x8CA6u, &params);
      glBindFramebuffer(0x8D40u, *(begin + v4));
      glClearColor(0.0, 0.0, 0.0, 0.0);
      glClear(0x4000u);
      glBindFramebuffer(0x8D40u, params);
      ++v5;
      begin = self->mPages.__begin_;
      v4 += 40;
    }

    while (v5 < (-858993459 * ((self->mPages.__end_ - begin) >> 3)));
  }
}

- (void)clearComposite
{
  begin = self->mPages.__begin_;
  if ((-858993459 * ((self->mPages.__end_ - begin) >> 3)) >= 1)
  {
    v4 = 0;
    v5 = 16;
    do
    {
      params = 0;
      glGetIntegerv(0x8CA6u, &params);
      glBindFramebuffer(0x8D40u, *(begin + v5));
      glClearColor(0.0, 0.0, 0.0, 0.0);
      glClear(0x4000u);
      glBindFramebuffer(0x8D40u, params);
      ++v4;
      begin = self->mPages.__begin_;
      v5 += 40;
    }

    while (v4 < (-858993459 * ((self->mPages.__end_ - begin) >> 3)));
  }
}

- (void)didBeginNewStroke
{
  if ([(DKOpenGLRenderer *)self drawingEnabled]&& self->_undoEnabled)
  {

    [(DKOpenGLRenderer *)self appendVertexHistoryElement];
  }
}

- (void)updateVertexControllerWithDataRange:(_NSRange)a3 allowWet:(BOOL)a4
{
  v4 = a4;
  length = a3.length;
  v7 = a3.location % self->mBufferSize;
  mTime = self->mTime;
  v9 = self->mContiguousVertexStorage.__begin_ + 24 * a3.location;
  v18 = 0;
  v19 = 0;
  data = 0;
  std::vector<Vertex>::__init_with_size[abi:ne200100]<std::__wrap_iter<Vertex*>,std::__wrap_iter<Vertex*>>(&data, v9, &v9[24 * a3.length], a3.length);
  if (v4 && data != v18)
  {
    v10 = 0;
    v11 = v18 - data - 24;
    v12 = vdupq_n_s64(v11 / 0x18);
    v13 = (data + 60);
    do
    {
      v14 = vdupq_n_s64(v10);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_249D9D890)));
      if (vuzp1_s16(v15, *v12.i8).u8[0])
      {
        *(v13 - 12) = mTime;
      }

      if (vuzp1_s16(v15, *&v12).i8[2])
      {
        *(v13 - 6) = mTime;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_249D9D880)))).i32[1])
      {
        *v13 = mTime;
        v13[6] = mTime;
      }

      v10 += 4;
      v13 += 24;
    }

    while (((v11 / 0x18 + 4) & 0x1FFFFFFFFFFFFFFCLL) != v10);
  }

  mVbo = self->mVbo;
  if ((v7 + length) <= self->mBufferSize)
  {
    glBindBuffer(0x8892u, mVbo);
    glBufferSubData(0x8892u, 24 * v7, 24 * length, data);
  }

  else
  {
    glBindBuffer(0x8892u, mVbo);
    glBufferSubData(0x8892u, 24 * v7, 24 * (self->mBufferSize - v7), data);
    glBufferSubData(0x8892u, 0, 24 * ((v7 + length) % self->mBufferSize), data + 24 * v7 + 24 * (self->mBufferSize - v7));
  }

  if (data)
  {
    v18 = data;
    operator delete(data);
  }
}

- (void)updateVertexControllerWithData:()vector<Vertex range:(std:(_NSRange)a4 :(BOOL)a5 allocator<Vertex>> *)a3 allowWet:
{
  v5 = a5;
  length = a4.length;
  v8 = a4.location % self->mBufferSize;
  mTime = self->mTime;
  v10 = a3->__begin_ + 24 * a4.location;
  v11 = a3->__begin_ + 24 * a4.location + 24 * a4.length;
  v20 = 0;
  v21 = 0;
  data = 0;
  std::vector<Vertex>::__init_with_size[abi:ne200100]<std::__wrap_iter<Vertex*>,std::__wrap_iter<Vertex*>>(&data, v10, v11, 0xAAAAAAAAAAAAAAABLL * ((24 * a4.length) >> 3));
  if (v5 && data != v20)
  {
    v12 = 0;
    v13 = v20 - data - 24;
    v14 = vdupq_n_s64(v13 / 0x18);
    v15 = (data + 60);
    do
    {
      v16 = vdupq_n_s64(v12);
      v17 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_249D9D890)));
      if (vuzp1_s16(v17, *v14.i8).u8[0])
      {
        *(v15 - 12) = mTime;
      }

      if (vuzp1_s16(v17, *&v14).i8[2])
      {
        *(v15 - 6) = mTime;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_249D9D880)))).i32[1])
      {
        *v15 = mTime;
        v15[6] = mTime;
      }

      v12 += 4;
      v15 += 24;
    }

    while (((v13 / 0x18 + 4) & 0x1FFFFFFFFFFFFFFCLL) != v12);
  }

  mVbo = self->mVbo;
  if ((v8 + length) <= self->mBufferSize)
  {
    glBindBuffer(0x8892u, mVbo);
    glBufferSubData(0x8892u, 24 * v8, 24 * length, data);
  }

  else
  {
    glBindBuffer(0x8892u, mVbo);
    glBufferSubData(0x8892u, 24 * v8, 24 * (self->mBufferSize - v8), data);
    glBufferSubData(0x8892u, 0, 24 * ((v8 + length) % self->mBufferSize), data + 24 * v8 + 24 * (self->mBufferSize - v8));
  }

  if (data)
  {
    v20 = data;
    operator delete(data);
  }
}

- (id)snapshotImage
{
  if (!+[DKGLUtilities gpuAvailable]|| self->mPages.__end_ == self->mPages.__begin_)
  {
    v3 = 0;
  }

  else
  {
    [(DKOpenGLRenderer *)self update];
    [(DKOpenGLRenderer *)self draw];
    v3 = [DKGLUtilities snapshotImageOfFrameBufferWithID:*(self->mPages.__begin_ + 4) bufferSize:self->_bounds.size.width displayScale:self->_bounds.size.height, self->_backingScale];
  }

  return v3;
}

- (DKOpenGLRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 16) = 0;
  return self;
}

@end