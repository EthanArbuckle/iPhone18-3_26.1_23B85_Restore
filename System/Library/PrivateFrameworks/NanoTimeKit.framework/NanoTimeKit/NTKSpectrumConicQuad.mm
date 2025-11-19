@interface NTKSpectrumConicQuad
- (NTKSpectrumConicQuad)initWithRole:(unint64_t)a3 screenScale:(double)a4;
- (void)_significantTimeChanged;
- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)dealloc;
- (void)renderForDisplayWithEncoder:(id)a3;
- (void)setFromColor:(id)a3 toColor:(id)a4;
- (void)setFromColor:(id)a3 toColor:(id)a4 midColor:(id)a5 interpolation:(unint64_t)a6;
- (void)setOverrideDate:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)setOverrideDate:(id)a3 hourRadians:(double)a4 minuteRadians:(double)a5 secondRadians:(double)a6;
- (void)setupForQuadView:(id)a3;
@end

@implementation NTKSpectrumConicQuad

- (NTKSpectrumConicQuad)initWithRole:(unint64_t)a3 screenScale:(double)a4
{
  v19.receiver = self;
  v19.super_class = NTKSpectrumConicQuad;
  v6 = [(CLKUIQuad *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->_screenScale = a4;
    v8 = [off_27877BF18 sharedDevice];
    device = v7->_device;
    v7->_device = v8;

    v10 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    calendar = v7->_calendar;
    v7->_calendar = v10;

    v7->_style = 2;
    v7->_role = a3;
    v7->_opacity = 1.0;
    v12 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    mediaTimingFunction = v7->_mediaTimingFunction;
    v7->_mediaTimingFunction = v12;

    v14 = 0;
    v7->_vignetteOpacity = 0.0;
    v7->_overlayOpacity = 0.0;
    do
    {
      v15 = [(MTLDevice *)v7->_device newBufferWithLength:104 options:1];
      v16 = v7->_conicUniformsBuffers[v14];
      v7->_conicUniformsBuffers[v14] = v15;

      ++v14;
    }

    while (v14 != 3);
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v7 selector:sel__significantTimeChanged name:*MEMORY[0x277D766F0] object:0];
  }

  return v7;
}

- (void)dealloc
{
  resourceManager = self->_resourceManager;
  if (resourceManager)
  {
    [(NTKSpectrumResourceManager *)resourceManager removeClient];
    v4 = self->_resourceManager;
    self->_resourceManager = 0;
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D766F0] object:0];

  v6.receiver = self;
  v6.super_class = NTKSpectrumConicQuad;
  [(NTKSpectrumConicQuad *)&v6 dealloc];
}

- (void)setupForQuadView:(id)a3
{
  v10 = a3;
  [v10 bounds];
  v5.f64[1] = v4;
  *self->_size = vcvt_f32_f64(vmulq_n_f64(v5, self->_screenScale));
  resourceManager = self->_resourceManager;
  if (resourceManager)
  {
    [(NTKSpectrumResourceManager *)resourceManager removeClient];
    v7 = self->_resourceManager;
    self->_resourceManager = 0;
  }

  v8 = +[NTKSpectrumResourceManager sharedInstanceWithPixelFormat:](NTKSpectrumResourceManager, "sharedInstanceWithPixelFormat:", [v10 colorPixelFormat]);
  v9 = self->_resourceManager;
  self->_resourceManager = v8;

  [(NTKSpectrumResourceManager *)self->_resourceManager addClient];
}

- (void)setFromColor:(id)a3 toColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  CLKUIConvertToRGBfFromUIColor();
}

- (void)setFromColor:(id)a3 toColor:(id)a4 midColor:(id)a5 interpolation:(unint64_t)a6
{
  v7 = a5;
  v8 = a4;
  CLKUIConvertToRGBfFromUIColor();
}

- (void)renderForDisplayWithEncoder:(id)a3
{
  v4 = a3;
  frame = self->_frame;
  self->_frame = frame + 1;
  v6 = self->_conicUniformsBuffers[frame % 3];
  v7 = [(MTLBuffer *)v6 contents];
  *(v7 + 80) = vmul_f32(*self->_size, 0xBF000000BF000000);
  *(v7 + 24) = *self->_fromColor;
  *(v7 + 32) = *self->_toColor;
  *(v7 + 40) = *self->_midColor;
  *(v7 + 48) = *self->_aliasColor;
  *(v7 + 92) = self->_vignetteOpacity;
  *(v7 + 96) = self->_overlayOpacity;
  _S10 = 1.0;
  if (![(CLKUIQuad *)self isOpaque])
  {
    _S10 = self->_opacity;
  }

  v9 = self->_masking && self->_maskRadius > 0.0;
  __asm { FCVT            H0, S10 }

  *(v7 + 8) = _H0;
  *(v7 + 88) = self->_maskRadius;
  v15 = CACurrentMediaTime();
  v16 = _S10 < 1.0;
  v17 = 2;
  if (_S10 < 1.0)
  {
    v17 = 3;
  }

  if (v9)
  {
    v16 = v17;
  }

  if (self->_vignetteOpacity > 0.0)
  {
    v16 |= 8uLL;
  }

  if (self->_overlayOpacity > 0.0)
  {
    v16 |= 4uLL;
  }

  if (self->_colorInterpolation == 1)
  {
    v18 = v16 | 0x10;
  }

  else
  {
    v18 = v16;
  }

  v19 = [(NTKSpectrumResourceManager *)self->_resourceManager renderPipelineForConfig:v18];
  endOverrideTime = self->_endOverrideTime;
  if (v15 < endOverrideTime || self->_overrideDate)
  {
    v21 = (v15 - self->_startOverrideTime) / (endOverrideTime - self->_startOverrideTime);
    *&v21 = v21;
    if (*&v21 > 1.0)
    {
      *&v21 = 1.0;
    }

    [(CAMediaTimingFunction *)self->_mediaTimingFunction _solveForInput:v21];
    v23 = self->_startSecondAngle + ((self->_endSecondAngle - self->_startSecondAngle) * v22);
    v24 = self->_startMinuteAngle + ((self->_endMinuteAngle - self->_startMinuteAngle) * v22);
    v25 = self->_startHourAngle + ((self->_endHourAngle - self->_startHourAngle) * v22);
  }

  else
  {
    v68[0] = 0.0;
    v71 = 0.0;
    v72 = 0.0;
    v35 = +[NTKDate faceDate];
    NTKHourMinuteSecondAnglesForTime(v68, &v72, &v71, v35, self->_calendar);

    v36 = v71;
    v23 = v36 / 6.2832;
    v37 = v72;
    v24 = v37 / 6.2832;
    v38 = v68[0];
    v25 = v38 / 6.2832;
  }

  if (*(self + 192))
  {
    style = self->_style;
    if (style == 1)
    {
      v29 = (v24 + 0.5) - floorf(v24 + 0.5);
      v27 = v24;
      v28 = v24;
    }

    else
    {
      v27 = v25;
      v28 = v24;
      v29 = v23;
      if (!style)
      {
        v27 = v23;
        v28 = v23;
        v29 = v23;
      }
    }

    toStyle = self->_toStyle;
    v40 = (v24 + 0.5) - floorf(v24 + 0.5);
    if (toStyle)
    {
      v41 = v24;
    }

    else
    {
      v25 = v23;
      v41 = v23;
    }

    if (toStyle == 1)
    {
      v25 = v24;
    }

    else
    {
      v24 = v41;
    }

    if (toStyle == 1)
    {
      v23 = v40;
    }

    v42 = vabds_f32(v29, v23);
    v43 = -1.0;
    if (v29 <= 0.5)
    {
      v44 = -1.0;
    }

    else
    {
      v44 = 1.0;
    }

    v45 = v44 + v23;
    if (v42 > 0.5)
    {
      v23 = v45;
    }

    v46 = vabds_f32(v28, v24);
    if (v28 <= 0.5)
    {
      v47 = -1.0;
    }

    else
    {
      v47 = 1.0;
    }

    v48 = v47 + v24;
    if (v46 > 0.5)
    {
      v24 = v48;
    }

    v49 = vabds_f32(v27, v25);
    if (v27 > 0.5)
    {
      v43 = 1.0;
    }

    v50 = v43 + v25;
    if (v49 > 0.5)
    {
      v25 = v50;
    }

    styleTransitionFraction = self->_styleTransitionFraction;
    v31 = v29 + ((v23 - v29) * styleTransitionFraction);
    v24 = v28 + ((v24 - v28) * styleTransitionFraction);
    v25 = v27 + ((v25 - v27) * styleTransitionFraction);
  }

  else
  {
    v30 = self->_style;
    if (self->_role == 1)
    {
      if (v30 == 1)
      {
        v31 = (v24 + 0.5) - floorf(v24 + 0.5);
        v25 = v24;
      }

      else
      {
        v31 = v25;
        if (!v30)
        {
          v32 = *self->_midColor;
          *(v7 + 24) = v32;
          *(v7 + 32) = v32;
          v25 = v23;
          v24 = v23;
          v31 = v23;
        }
      }
    }

    else
    {
      v33 = (v24 + 0.5) - floorf(v24 + 0.5);
      if (v30)
      {
        v34 = v24;
      }

      else
      {
        v25 = v23;
        v34 = v23;
      }

      if (v30 == 1)
      {
        v25 = v24;
      }

      else
      {
        v24 = v34;
      }

      if (v30 == 1)
      {
        v31 = v33;
      }

      else
      {
        v31 = v23;
      }
    }
  }

  *&v52 = v31 - floorf(v31);
  v53 = v24 - floorf(v24);
  v54 = v25 - floorf(v25);
  if (*&v52 >= v53)
  {
    if (v53 >= v54)
    {
      v55 = v53;
    }

    else
    {
      if (*&v52 >= v54)
      {
        v55 = v54;
      }

      else
      {
        v55 = *&v52;
      }

      if (*&v52 < v54)
      {
        *&v52 = v54;
      }

      v54 = v53;
    }
  }

  else
  {
    if (*&v52 >= v54)
    {
      LODWORD(v55) = v52;
    }

    else
    {
      if (v53 >= v54)
      {
        v55 = v54;
      }

      else
      {
        v55 = v53;
      }

      if (v53 < v54)
      {
        v53 = v54;
      }

      LODWORD(v54) = v52;
    }

    *&v52 = v53;
  }

  v56.i32[0] = v52;
  *&v56.i32[1] = v54 + 1.0;
  v57.i64[0] = __PAIR64__(LODWORD(v55), LODWORD(v54));
  v57.i32[2] = v52;
  v57.f32[3] = *&v52 + -1.0;
  v56.i64[1] = __PAIR64__(LODWORD(v55), LODWORD(v54));
  *v7 = vcvt_f16_f32(v57);
  v58 = vextq_s8(v56, v56, 0xCuLL);
  v58.f32[2] = *&v52 + -1.0;
  v59 = vsubq_f32(v56, v58);
  __asm { FMOV            V4.4S, #1.0 }

  *v59.f32 = vcvt_f16_f32(vdivq_f32(_Q4, v59));
  _Q4.i64[0] = __PAIR64__(LODWORD(v55), LODWORD(v54));
  *(v7 + 16) = vext_s8(*v59.f32, *v59.f32, 6uLL);
  _Q4.i64[1] = v52;
  x = vmlaq_f32(vdupq_n_s32(0x40490FDBu), vdupq_n_s32(0x40C90FDBu), _Q4);
  v67 = _simd_sin_f4(x);
  v61 = _simd_cos_f4(x);
  *(v7 + 56) = vzip1_s32(*v67.f32, *v61.i8);
  *(v7 + 64) = vzip2_s32(*v67.f32, *v61.i8);
  *(v7 + 72) = vzip1_s32(*&vextq_s8(v67, v67, 8uLL), *&vextq_s8(v61, v61, 8uLL));
  [v4 setLabel:@"Spectrum Encoder"];
  v62 = *self->_size;
  v68[0] = 0.0;
  v68[1] = 0.0;
  v69 = vcvtq_f64_f32(v62);
  v70 = xmmword_22DCE7880;
  [v4 setViewport:v68];
  [v4 setCullMode:0];
  [v4 setRenderPipelineState:v19];
  if ((v18 & 8) != 0)
  {
    v63 = [(NTKSpectrumResourceManager *)self->_resourceManager vignetteTexture];
    [v4 setFragmentTexture:v63 atIndex:1];
  }

  if ((v18 & 4) != 0)
  {
    v64 = [(NTKSpectrumResourceManager *)self->_resourceManager overlayTexture];
    [v4 setFragmentTexture:v64 atIndex:2];
  }

  v65 = [(NTKSpectrumResourceManager *)self->_resourceManager verticesBuffer];
  [v4 setVertexBuffer:v65 offset:0 atIndex:0];

  [v4 setVertexBuffer:v6 offset:0 atIndex:1];
  [v4 setFragmentBuffer:v6 offset:0 atIndex:0];
  [v4 drawPrimitives:4 vertexStart:0 vertexCount:4];
}

- (void)setOverrideDate:(id)a3 hourRadians:(double)a4 minuteRadians:(double)a5 secondRadians:(double)a6
{
  v12 = a3;
  if (v12)
  {
    objc_storeStrong(&self->_overrideDate, a3);
    v11 = CACurrentMediaTime();
    self->_startOverrideTime = v11;
    self->_endOverrideTime = v11;
    *&v11 = a6;
    *&v11 = (*&v11 / 6.2832) - floorf(*&v11 / 6.2832);
    self->_startSecondAngle = *&v11;
    self->_endSecondAngle = *&v11;
    *&v11 = a5;
    *&v11 = (*&v11 / 6.2832) - floorf(*&v11 / 6.2832);
    self->_startMinuteAngle = *&v11;
    self->_endMinuteAngle = *&v11;
    *&v11 = a4;
    *&v11 = (*&v11 / 6.2832) - floorf(*&v11 / 6.2832);
    self->_startHourAngle = *&v11;
    self->_endHourAngle = *&v11;
  }

  else
  {
    [(NTKSpectrumConicQuad *)self setOverrideDate:0 duration:0 completion:0.0];
  }
}

- (void)setOverrideDate:(id)a3 duration:(double)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = NTKEqualObjects(v9, self->_overrideDate);
  v12 = &OBJC_IVAR___NTKSnapshotQueue__requestHandler;
  v13 = &OBJC_IVAR___NTKSnapshotQueue__requestHandler;
  v14 = &OBJC_IVAR___NTKSnapshotQueue__requestHandler;
  v15 = &OBJC_IVAR___NTKSnapshotQueue__requestHandler;
  v16 = &OBJC_IVAR___NTKSnapshotQueue__requestHandler;
  if ((v11 & 1) == 0)
  {
    v17 = +[NTKDate faceDate];
    v18 = v17;
    overrideDate = self->_overrideDate;
    if (!overrideDate)
    {
      overrideDate = v17;
    }

    v20 = overrideDate;
    if (v9)
    {
      v21 = v9;
    }

    else
    {
      v21 = [v18 dateByAddingTimeInterval:a4];
    }

    v22 = v21;
    v23 = CACurrentMediaTime();
    self->_startOverrideTime = v23;
    self->_endOverrideTime = v23 + a4;
    objc_storeStrong(&self->_overrideDate, a3);
    v41 = 0.0;
    v42 = 0.0;
    v40 = 0.0;
    NTKHourMinuteSecondAnglesForTime(&v42, &v41, &v40, v20, self->_calendar);
    v24 = v40;
    self->_startSecondAngle = (v24 / 6.2832) - floorf(v24 / 6.2832);
    v25 = v41;
    self->_startMinuteAngle = (v25 / 6.2832) - floorf(v25 / 6.2832);
    v26 = v42;
    self->_startHourAngle = (v26 / 6.2832) - floorf(v26 / 6.2832);
    NTKHourMinuteSecondAnglesForTime(&v42, &v41, &v40, v22, self->_calendar);
    v27 = v40;
    self->_endSecondAngle = (v27 / 6.2832) - floorf(v27 / 6.2832);
    v28 = v41;
    self->_endMinuteAngle = (v28 / 6.2832) - floorf(v28 / 6.2832);
    v29 = v42;
    v16 = &OBJC_IVAR___NTKSnapshotQueue__requestHandler;
    self->_endHourAngle = (v29 / 6.2832) - floorf(v29 / 6.2832);
    startSecondAngle = self->_startSecondAngle;
    endSecondAngle = self->_endSecondAngle;
    if (vabds_f32(startSecondAngle, endSecondAngle) > 0.5)
    {
      v32 = startSecondAngle <= 0.5;
      v33 = -1.0;
      if (!v32)
      {
        v33 = 1.0;
      }

      self->_endSecondAngle = endSecondAngle + v33;
    }

    startMinuteAngle = self->_startMinuteAngle;
    endMinuteAngle = self->_endMinuteAngle;
    if (vabds_f32(startMinuteAngle, endMinuteAngle) > 0.5)
    {
      v36 = -1.0;
      if (startMinuteAngle > 0.5)
      {
        v36 = 1.0;
      }

      self->_endMinuteAngle = endMinuteAngle + v36;
    }

    startHourAngle = self->_startHourAngle;
    endHourAngle = self->_endHourAngle;
    if (vabds_f32(startHourAngle, endHourAngle) > 0.5)
    {
      v32 = startHourAngle <= 0.5;
      v39 = -1.0;
      if (!v32)
      {
        v39 = 1.0;
      }

      self->_endHourAngle = endHourAngle + v39;
    }

    v15 = &OBJC_IVAR___NTKSnapshotQueue__requestHandler;
    v14 = &OBJC_IVAR___NTKSnapshotQueue__requestHandler;
    v13 = &OBJC_IVAR___NTKSnapshotQueue__requestHandler;
    v12 = &OBJC_IVAR___NTKSnapshotQueue__requestHandler;
  }

  if (v10)
  {
    v10[2](v10, *(&self->super.super.isa + v12[896]), self->_endOverrideTime, *(&self->super.super.isa + v13[899]), *(&self->super.super.isa + v14[900]), *(&self->super.super.isa + v15[901]), *(&self->super.super.isa + v16[902]));
  }
}

- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  *(self + 192) |= 1u;
  v5 = a3;
  self->_styleTransitionFraction = v5;
  self->_style = a4;
  self->_toStyle = a5;
}

- (void)_significantTimeChanged
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v4 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(NSCalendar *)self->_calendar timeZone];
    v8 = [v7 name];
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "%@ received significant time change with current timezone: %@", &v14, 0x16u);
  }

  [(NSCalendar *)self->_calendar setTimeZone:v3];
  v9 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [(NSCalendar *)self->_calendar timeZone];
    v13 = [v12 name];
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "%@ did set new timezone after significant time change to: %@", &v14, 0x16u);
  }
}

@end