@interface NUNIAstronomyVistaView
- (NUNIAstronomyVistaView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (NUNIAstronomyVistaViewObserver)observer;
- (float)computeDimming;
- (id)_panAnimationArrayFromSceneDescription:(id)a3 toSceneDescription:(id)a4;
- (id)_zoomAnimationArrayFromSceneDescription:(id)a3 toSceneDescription:(id)a4;
- (id)generateAnimationArrayFromSceneDescription:(id)a3 toSceneDescription:(id)a4 transitionStyle:(unint64_t)a5;
- (id)generateAnimationArrayFromVista:(unint64_t)a3 fromSceneBlock:(id)a4 toVista:(unint64_t)a5 toSceneBlock:(id)a6 transitionStyle:(unint64_t)a7;
- (id)generateAnimationArrayFromVista:(unint64_t)a3 toVista:(unint64_t)a4 transitionStyle:(unint64_t)a5;
- (id)rotatable:(unint64_t)a3;
- (id)snapshotImage;
- (void)_startAnimation;
- (void)_stopAnimation;
- (void)_updateAnimation;
- (void)applyVista:(unint64_t)a3 transitionStyle:(unint64_t)a4;
- (void)astronomySceneAnimationFinished:(id)a3;
- (void)dealloc;
- (void)discardContents;
- (void)layoutSubviews;
- (void)quadViewWillDisplay:(id)a3 forTime:(double)a4;
- (void)removeBackBuffers;
- (void)setAPLFilterAmount:(double)a3;
- (void)setCacheDirectory:(id)a3;
- (void)setFrameInterval:(int64_t)a3;
- (void)setScene:(id)a3;
- (void)setTritiumBrightness:(double)a3;
- (void)showSupplemental:(BOOL)a3 animated:(BOOL)a4;
- (void)updateLightingPreference:(BOOL)a3;
- (void)updatePortalLayerBounds:(CGRect)a3;
@end

@implementation NUNIAstronomyVistaView

- (NUNIAstronomyVistaView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v49[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v45.receiver = self;
  v45.super_class = NUNIAstronomyVistaView;
  v11 = [(NUNIAstronomyVistaView *)&v45 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, a4);
    v13 = [v10 device];
    device = v12->_device;
    v12->_device = v13;

    v15 = [MEMORY[0x277CFA7A8] quadViewWithFrame:@"NUV0" identifier:objc_msgSend(v10 options:"quadViewOptions") colorSpace:{objc_msgSend(v10, "colorSpace"), x, y, width, height}];
    quadView0 = v12->_quadView0;
    v12->_quadView0 = v15;

    v17 = [(NUNIAstronomyVistaView *)v12 _mtlQuadView];
    [v10 maxAPL];
    [v17 setMaxAPL:?];
    [(NUNIAstronomyVistaView *)v12 addSubview:v12->_quadView0];
    v18 = [v10 rendererStyle];
    v19 = [v17 colorPixelFormat];
    v20 = [v10 textureSuffix];
    v21 = [NUNIRenderer sharedInstanceWithPixelFormat:v19 textureSuffix:v20 rendererStyle:v18];
    renderer = v12->_renderer;
    v12->_renderer = v21;

    [v10 screenScale];
    v24 = [[NUNIQuad alloc] initWithScreenScale:v12->_renderer renderer:v23];
    quad = v12->_quad;
    v12->_quad = v24;

    [(CLKUIQuadView *)v12->_quadView0 addQuad:v12->_quad];
    [(CLKUIQuadView *)v12->_quadView0 setPaused:1];
    [(CLKUIQuadView *)v12->_quadView0 setDelegate:v12];
    if ((v18 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [(CLKUIQuadView *)v12->_quadView0 setOpaque:1];
      [(CLKUIQuad *)v12->_quad setOpaque:1];
      v26 = [MEMORY[0x277CD9ED0] layer];
      contentMaskLayer = v12->_contentMaskLayer;
      v12->_contentMaskLayer = v26;

      v28 = v26;
      [(NSArray *)v28 setFrame:x, y, width, height];
      [(NSArray *)v28 setCompositingFilter:*MEMORY[0x277CDA310]];
      [(NSArray *)v28 setOpaque:0];
      v48 = @"contents";
      v29 = [MEMORY[0x277CBEB68] null];
      v49[0] = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      [(NSArray *)v28 setActions:v30];

      [(NUNIRenderer *)v12->_renderer setContentMaskLayer:v28];
      v31 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, width, floor(height / 3.0)}];
      quadView1 = v12->_quadView1;
      v12->_quadView1 = v31;

      v33 = v31;
      v34 = MGGetStringAnswer();
      if ([v34 isEqualToString:@"t8010"])
      {
        v35 = 0;
      }

      else
      {
        v35 = [MEMORY[0x277CD9F30] layer];
        v37 = [v17 metalLayer];
        [v35 setSourceLayer:v37];

        [v35 setFrame:{x, y, width, height}];
        [v35 addSublayer:v28];
        [v35 setOpaque:0];
        objc_storeStrong(&v12->_portalLayer, v35);
      }

      v38 = [(UIView *)v33 layer];
      [v38 setOpaque:0];
      if (v35)
      {
        [v38 addSublayer:v35];
      }

      [(UIView *)v33 setOpaque:0];
      [(NUNIAstronomyVistaView *)v12 insertSubview:v33 aboveSubview:v12->_quadView0];
      v47[0] = v33;
      v47[1] = v12->_quadView0;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
      quadViews = v12->_quadViews;
      v12->_quadViews = v39;
    }

    else
    {
      v46 = v12->_quadView0;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      v28 = v12->_quadViews;
      v12->_quadViews = v36;
    }

    v12->_vista = -1;
    v12->_transitionStyle = 0;
    [(NUNIAstronomyVistaView *)v12 updateLightingPreference:0];
    *(v12 + 488) |= 2u;
    v41 = [v10 initialSetupOperation];

    if (v41)
    {
      v42 = [v10 initialSetupOperation];
      (v42)[2](v42, v12);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)discardContents
{
  v3 = [(NUNIAstronomyVistaView *)self _mtlQuadView];
  v2 = [v3 metalLayer];
  [v2 discardContents];
}

- (void)removeBackBuffers
{
  v3 = [(NUNIAstronomyVistaView *)self _mtlQuadView];
  v2 = [v3 metalLayer];
  [v2 removeBackBuffers];
}

- (void)setTritiumBrightness:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_quadViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setTritiumBrightness:{a3, v10}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NUNIAstronomyVistaView *)self _stopAnimation];
  quad = self->_quad;
  self->_quad = 0;

  [(CLKUIQuadView *)self->_quadView0 removeAllQuads];
  quadView0 = self->_quadView0;
  self->_quadView0 = 0;

  v5 = [MEMORY[0x277CFA7B0] sharedInstance];
  [v5 purgeAllUnused];

  v6.receiver = self;
  v6.super_class = NUNIAstronomyVistaView;
  [(NUNIAstronomyVistaView *)&v6 dealloc];
}

- (void)setCacheDirectory:(id)a3
{
  v7 = a3;
  renderer = self->_renderer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NUNIRenderer *)self->_renderer resourceManager];
    v6 = [v5 cloudsService];
    [v6 setDirectory:v7];
  }
}

- (id)snapshotImage
{
  quadView0 = self->_quadView0;
  [(NUNIAstronomyVistaView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(NUNIAstronomyVistaView *)self device];
  [v12 screenScale];
  v14 = [(CLKUIQuadView *)quadView0 snapshotInRect:v5 scale:v7 time:v9, v11, v13, 0.0];

  return v14;
}

- (float)computeDimming
{
  v3 = [(NUNIAstronomyVistaView *)self device];
  v4 = [v3 deviceCategory];

  v5 = dword_25B719CD0[(v4 & 0xFFFFFFFFFFFFFFFDLL) == 4];
  v6 = [(NUNIAstronomyVistaView *)self _mtlQuadView];
  CLKUIComputeDimmingRequiredToObtainQuadAPL();
  v8 = v7;

  return v8;
}

- (void)setAPLFilterAmount:(double)a3
{
  v5 = [(NUNIAstronomyVistaView *)self _mtlQuadView];
  *&v4 = a3;
  [v5 setAplFilterAmount:v4];
}

- (void)setScene:(id)a3
{
  v5 = a3;
  if (self->_scene != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_scene, a3);
    [(NUNIScene *)v6 setObserver:self];
    [(NUNIQuad *)self->_quad setScene:v6];
    v5 = v6;
  }
}

- (void)setFrameInterval:(int64_t)a3
{
  if (self->_frameInterval != a3)
  {
    self->_frameInterval = a3;
    v4 = _NUNIFrameIntervalToFramesPerSecond_framePerSeconds[a3];
    if ([(CLKUIQuadView *)self->_quadView0 preferredFramesPerSecond]!= v4)
    {
      quadView0 = self->_quadView0;

      [(CLKUIQuadView *)quadView0 setPreferredFramesPerSecond:v4];
    }
  }
}

- (void)_startAnimation
{
  if ([(CLKUIQuadView *)self->_quadView0 isPaused])
  {
    kdebug_trace();
    quadView0 = self->_quadView0;

    [(CLKUIQuadView *)quadView0 setPaused:0];
  }
}

- (void)_stopAnimation
{
  if (([(CLKUIQuadView *)self->_quadView0 isPaused]& 1) == 0)
  {
    [(CLKUIQuadView *)self->_quadView0 setPaused:1];

    kdebug_trace();
  }
}

- (void)_updateAnimation
{
  if ((*(self + 488) & 4) != 0 && (*(self + 488) & 2) != 0)
  {
    [(NUNIAstronomyVistaView *)self _startAnimation];
  }

  else
  {
    [(NUNIAstronomyVistaView *)self _stopAnimation];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NUNIAstronomyVistaView;
  [(NUNIAstronomyVistaView *)&v12 layoutSubviews];
  [(NUNIAstronomyVistaView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CLKUIQuadView *)self->_quadView0 setFrame:?];
  if (self->_quadView1)
  {
    [(CALayer *)self->_contentMaskLayer setFrame:v4, v6, v8, v10];
    [(UIView *)self->_quadView1 setFrame:0.0, 0.0, v8, floor(v10 / 3.0)];
    portalLayer = self->_portalLayer;
    if (portalLayer)
    {
      [(CAPortalLayer *)portalLayer setFrame:v4, v6, v8, v10];
    }
  }
}

- (void)updatePortalLayerBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(NUNIAstronomyVistaView *)self bounds];
  if (self->_quadView1)
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(CALayer *)self->_contentMaskLayer setFrame:v12, v13, v14, v15];
    [(UIView *)self->_quadView1 setFrame:x, y, width, height];
    [(UIView *)self->_quadView1 setClipsToBounds:1];
    portalLayer = self->_portalLayer;
    if (portalLayer)
    {
      [(CAPortalLayer *)portalLayer setFrame:-x, -y, v14, v15];
    }

    v17 = MEMORY[0x277CD9FF0];

    [v17 commit];
  }
}

- (id)rotatable:(unint64_t)a3
{
  if (a3 <= 9 && ((0x3FBu >> a3) & 1) != 0)
  {
    v5 = [(NUNIScene *)self->_scene spheroidOfType:qword_25B719E38[a3], v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)showSupplemental:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v105 = *MEMORY[0x277D85DE8];
  v7 = *(self + 488);
  v89 = self->_scene;
  if (v89 && ((v7 ^ v5) & 1) != 0)
  {
    *(self + 488) = *(self + 488) & 0xFE | v5;
    if (v5)
    {
      [(NUNIAstronomyVistaView *)self supplementalSpheroidSize];
      v9 = v8;
      [(CLKDevice *)self->_device screenBounds];
      v11 = v10;
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      obj = [(NUNIScene *)v89 spheroids];
      v12 = [obj countByEnumeratingWithState:&v99 objects:v104 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = v9 / v11;
        v86 = *v100;
        v85 = v15;
        v84 = v15 * 0.5;
        while (1)
        {
          v16 = 0;
          do
          {
            if (*v100 != v86)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v99 + 1) + 8 * v16);
            v18 = [v17 type];
            v19 = 1 << v18;
            LODWORD(v20) = 897988541;
            if (v18 != 4)
            {
              v21 = v85;
              if ((v19 & 0x3000) != 0 || (v21 = v84, ((1 << v18) & 0xFBCBFE) != 0))
              {
                [v17 radius];
                *&v20 = v21 / *&v20;
              }

              else
              {
                LODWORD(v20) = 1.0;
              }
            }

            v90 = v20;
            [v17 radiusScale];
            v23 = v22 == *&v90;
            v24 = v90;
            if (!v23)
            {
              if (v4)
              {
                v25 = [[NUNIAnimation alloc] initWithAnimatable:v17 value:7 key:*vdupq_lane_s32(*&v90, 0).i64];

                LODWORD(v26) = 1062557008;
                [(NUNIAnimation *)v25 setDuration:v26];
                [(NUNIScene *)v89 addAnimation:v25];
                v14 = v25;
              }

              else
              {
                [v17 setRadiusScale:v90];
              }
            }

            if (((1 << v18) & 0xFFF000) == 0)
            {
              [v17 opacity];
              if (*&v35 == 0.0)
              {
                goto LABEL_40;
              }

              v36 = 0;
              if (v4)
              {
                goto LABEL_37;
              }

LABEL_39:
              LODWORD(v35) = v36.i32[0];
              [v17 setOpacity:v35];
              goto LABEL_40;
            }

            if ((v19 & 0x3000) != 0)
            {
              v27 = 7;
            }

            else
            {
              v27 = v18 - 14;
            }

            if (v27 <= 3)
            {
              v28 = 0;
            }

            else
            {
              v28 = -1;
            }

            if ([(NUNIAstronomyVistaConfiguration *)self->_configuration isRTLLayout])
            {
              [(CLKDevice *)self->_device screenBounds];
              v30 = v29;
              [(NUNIAstronomyVistaView *)self supplementalHorizontalInset];
              v32 = v30 - v31;
              [(NUNIAstronomyVistaView *)self supplementalSpheroidSize];
              v34 = v32 + (v33 * -0.5);
            }

            else
            {
              [(NUNIAstronomyVistaView *)self supplementalHorizontalInset];
              v38 = v37;
              [(NUNIAstronomyVistaView *)self supplementalSpheroidSize];
              v34 = v38 + (v39 * 0.5);
            }

            [(CLKDevice *)self->_device screenBounds];
            v41 = v40;
            [(NUNIAstronomyVistaView *)self supplementalTopInset];
            v43 = v41 - v42;
            [(NUNIAstronomyVistaView *)self supplementalBottomInset];
            v45 = (v43 - v44) / 7.0;
            [(NUNIAstronomyVistaView *)self supplementalTopInset];
            v47 = v46 + v45 * (v27 + v28 - 1);
            [(CLKDevice *)self->_device screenBounds];
            v49 = v48;
            [(CLKDevice *)self->_device screenBounds];
            *&v49 = v49 / v50;
            [(CLKDevice *)self->_device screenBounds];
            v91 = v34 / v51;
            [(CLKDevice *)self->_device screenBounds];
            v53.f64[0] = v91;
            v53.f64[1] = (v47 / v52 + -0.5) * -*&v49 + 0.5;
            v54 = vadd_f32(vcvt_f32_f64(v53), 0xBF000000BF000000);
            *&v53.f64[0] = vmul_f32(v54, v54);
            *v53.f64 = sqrtf(*(v53.f64 + 1) + (v54.f32[0] * v54.f32[0]));
            v92 = v53.f64[0];
            v88 = vdiv_f32(v54, vdup_lane_s32(*&v53.f64[0], 0));
            [v17 angle];
            LODWORD(v49) = v55;
            *&v56 = atan2f(v88.f32[1], v88.f32[0]);
            *&v56 = *&v56 + (floorf(*&v56 / 6.2832) * -6.2832);
            v57 = vabds_f32(*&v56, *&v49);
            if (*&v49 >= *&v56)
            {
              v58 = 6.2832;
            }

            else
            {
              v58 = -6.2832;
            }

            v59 = *&v56 + v58;
            if (v57 > 3.1416)
            {
              *&v56 = v59;
            }

            if (v4)
            {
              v60 = [[NUNIAnimation alloc] initWithAnimatable:v17 value:8 key:*vdupq_lane_s32(*&v56, 0).i64];

              LODWORD(v61) = 1062557008;
              [(NUNIAnimation *)v60 setDuration:v61];
              [(NUNIScene *)v89 addAnimation:v60];
              v14 = [[NUNIAnimation alloc] initWithAnimatable:v17 value:4 key:*vdupq_lane_s32(*&v92, 0).i64];

              LODWORD(v62) = 1062557008;
              [(NUNIAnimation *)v14 setDuration:v62];
              [(NUNIScene *)v89 addAnimation:v14];
              [v17 opacity];
              v36.i32[0] = 1.0;
              if (v63 == 1.0)
              {
                goto LABEL_40;
              }

LABEL_37:
              v64 = [[NUNIAnimation alloc] initWithAnimatable:v17 value:9 key:*vdupq_lane_s32(v36, 0).i64];

              LODWORD(v65) = 1062557008;
              [(NUNIAnimation *)v64 setDuration:v65];
              [(NUNIScene *)v89 addAnimation:v64];
              v14 = v64;
              goto LABEL_40;
            }

            [v17 setAngle:v56];
            [v17 setDistance:v92];
            [v17 opacity];
            v36.i32[0] = 1.0;
            if (*&v35 != 1.0)
            {
              goto LABEL_39;
            }

LABEL_40:
            ++v16;
          }

          while (v13 != v16);
          v66 = [obj countByEnumeratingWithState:&v99 objects:v104 count:16];
          v13 = v66;
          if (!v66)
          {
            goto LABEL_68;
          }
        }
      }

LABEL_67:
      v14 = 0;
      goto LABEL_68;
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = [(NUNIScene *)v89 spheroids];
    v67 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
    if (!v67)
    {
      goto LABEL_67;
    }

    v68 = v67;
    v14 = 0;
    v69 = *v96;
    v70 = 0x27995E000uLL;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v96 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v72 = *(*(&v95 + 1) + 8 * i);
        v73 = [v72 type];
        v75 = v73;
        if (v73 == 4)
        {
          *&v74 = 0.000001;
        }

        else
        {
          *&v74 = 1.0;
        }

        v93 = v74;
        [v72 radiusScale];
        if (*&v76 != *&v93)
        {
          if (v4)
          {
            v77 = v70;
            v78 = [objc_alloc(*(v70 + 3656)) initWithAnimatable:v72 value:7 key:{*vdupq_lane_s32(*&v93, 0).i64}];

            LODWORD(v79) = 1054168400;
            [(NUNIAnimation *)v78 setDuration:v79];
            [(NUNIScene *)v89 addAnimation:v78];
            v14 = v78;
            v70 = v77;
          }

          else
          {
            [v72 setRadiusScale:v93];
          }
        }

        if (((1 << v75) & 0xFFF400) != 0)
        {
          *&v76 = 1.0;
        }

        else
        {
          *&v76 = 0.0;
        }

        v94 = v76;
        [v72 opacity];
        if (v80 != *&v94)
        {
          if (v4)
          {
            v81 = [objc_alloc(*(v70 + 3656)) initWithAnimatable:v72 value:9 key:{*vdupq_lane_s32(*&v94, 0).i64}];

            LODWORD(v82) = 1062557008;
            [(NUNIAnimation *)v81 setDuration:v82];
            [(NUNIScene *)v89 addAnimation:v81];
            v14 = v81;
          }

          else
          {
            [v72 setOpacity:v94];
          }
        }
      }

      v68 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
    }

    while (v68);
LABEL_68:
  }

  v83 = *MEMORY[0x277D85DE8];
}

- (id)generateAnimationArrayFromVista:(unint64_t)a3 toVista:(unint64_t)a4 transitionStyle:(unint64_t)a5
{
  if (a3 == a4)
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v7 = [(NUNIAstronomyVistaView *)self generateAnimationArrayFromVista:a3 fromSceneBlock:0 toVista:a4 toSceneBlock:0 transitionStyle:a5, v5];
  }

  return v7;
}

- (id)generateAnimationArrayFromVista:(unint64_t)a3 fromSceneBlock:(id)a4 toVista:(unint64_t)a5 toSceneBlock:(id)a6 transitionStyle:(unint64_t)a7
{
  v12 = a6;
  v13 = [NUNISceneUpdateDescription descriptionWithVista:a3 updateBlock:a4];
  v14 = [NUNISceneUpdateDescription descriptionWithVista:a5 updateBlock:v12];

  v15 = [(NUNIAstronomyVistaView *)self generateAnimationArrayFromSceneDescription:v13 toSceneDescription:v14 transitionStyle:a7];

  return v15;
}

- (id)generateAnimationArrayFromSceneDescription:(id)a3 toSceneDescription:(id)a4 transitionStyle:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 == 1)
  {
    v10 = [(NUNIAstronomyVistaView *)self _panAnimationArrayFromSceneDescription:v8 toSceneDescription:v9];
    goto LABEL_5;
  }

  if (!a5)
  {
    v10 = [(NUNIAstronomyVistaView *)self _zoomAnimationArrayFromSceneDescription:v8 toSceneDescription:v9];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_7:

  return v11;
}

- (id)_panAnimationArrayFromSceneDescription:(id)a3 toSceneDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 vista];
  v9 = [v7 vista];
  if (v8 == 2 || (v10 = v9, v9 == 2))
  {
    v20 = [(NUNIAstronomyVistaView *)self _zoomAnimationArrayFromSceneDescription:v6 toSceneDescription:v7];
  }

  else
  {
    v11 = self->_scene;
    v12 = [(NUNIScene *)v11 packIntoBlob];
    v13 = [(NUNIScene *)v11 date];
    [(NUNIAstronomyVistaView *)self applyVista:v8 transitionStyle:1];
    [(NUNIScene *)v11 updateSunLocationForDate:v13 animated:0 lightingPreference:self->_preferredCarouselLighting adjustEarthRotation:1];
    v14 = [v6 updateBlock];
    v15 = v14;
    if (v14)
    {
      (*(v14 + 16))(v14, v11);
    }

    [(NUNIScene *)v11 updateCamera];
    v16 = [(NUNIScene *)v11 packIntoBlob];
    [(NUNIAstronomyVistaView *)self applyVista:v10 transitionStyle:1];
    [(NUNIScene *)v11 updateSunLocationForDate:v13 animated:0 lightingPreference:self->_preferredCarouselLighting adjustEarthRotation:1];
    v17 = [v7 updateBlock];
    v18 = v17;
    if (v17)
    {
      (*(v17 + 16))(v17, v11);
    }

    [(NUNIScene *)v11 updateCamera];
    v19 = [(NUNIScene *)v11 packIntoBlob];
    v20 = NUNIAstronomyVistaView_GenerateCarouselAnimationArrayFromSceneBlob(v11, v16, v19);
    [(NUNIScene *)v11 unpackFromBlob:v12];
  }

  return v20;
}

- (id)_zoomAnimationArrayFromSceneDescription:(id)a3 toSceneDescription:(id)a4
{
  v7 = self->_scene;
  v8 = a4;
  v9 = a3;
  v10 = [(NUNIScene *)v7 packIntoBlob];
  v11 = [(NUNIScene *)v7 date];
  -[NUNIAstronomyVistaView applyVista:transitionStyle:](self, "applyVista:transitionStyle:", [v9 vista], 0);
  [(NUNIScene *)v7 updateSunLocationForDate:v11 animated:0 lightingPreference:0 adjustEarthRotation:1];
  v12 = [v9 updateBlock];

  if (v12)
  {
    (v12)[2](v12, v7);
    [(NUNIScene *)v7 updateCamera];
  }

  v13 = [(NUNIScene *)v7 packIntoBlob];
  -[NUNIAstronomyVistaView applyVista:transitionStyle:](self, "applyVista:transitionStyle:", [v8 vista], 0);
  [(NUNIScene *)v7 updateSunLocationForDate:v11 animated:0 lightingPreference:0 adjustEarthRotation:1];
  v14 = [v8 updateBlock];

  if (v14)
  {
    (v14)[2](v14, v7);
    [(NUNIScene *)v7 updateCamera];
  }

  v15 = [(NUNIScene *)v7 packIntoBlob];
  v16 = NUNIAstronomyVistaView_GenerateZoomAnimationArrayFromSceneBlob(v7, v13, v15);
  [(NUNIScene *)v7 unpackFromBlob:v10];

  return v16;
}

- (void)applyVista:(unint64_t)a3 transitionStyle:(unint64_t)a4
{
  v75 = *MEMORY[0x277D85DE8];
  self->_vista = a3;
  self->_transitionStyle = a4;
  if (a3 <= 9)
  {
    v7 = self->_scene;
    v8 = v7;
    if (!v7)
    {
LABEL_67:

      goto LABEL_68;
    }

    v9 = 131080;
    v10 = 3;
    if (a3 <= 4)
    {
      if (a3 <= 2)
      {
        if (a3 == 1)
        {
          v9 = 16;
          v10 = 4;
        }

        else if (a3 == 2)
        {
          v11 = [(NUNIQuad *)self->_quad renderer];
          v12 = [v11 rendererStyle];

          if (v12 == 3)
          {
            v70 = 0uLL;
            v71 = 0uLL;
            v68 = 0uLL;
            v69 = 0uLL;
            v13 = [(NUNIScene *)v8 spheroids];
            v14 = [v13 countByEnumeratingWithState:&v68 objects:v74 count:16];
            if (v14)
            {
              v16 = v14;
              v15.i64[0] = 0;
              v59 = v15;
              v17 = *v69;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v69 != v17)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v19 = *(*(&v68 + 1) + 8 * i);
                  v20 = [v19 structure];
                  v22 = v20;
                  v23 = *v20;
                  if (*v20 == 4)
                  {
                    v24 = 0.000001;
                  }

                  else
                  {
                    v24 = 1.0;
                  }

                  if (*(v20 + 88) != v24)
                  {
                    [v19 setRadiusScale:?];
                  }

                  if (((1 << v23) & 0x47FELL) != 0)
                  {
                    v25 = 1.0;
                  }

                  else
                  {
                    v25 = 0.0;
                  }

                  if (*(v22 + 48) != v25)
                  {
                    [v19 setOpacity:?];
                  }

                  v21.i64[0] = (1 << v23) & 0x3FELL;
                  [v19 setOrientation:{*vbslq_s8(vdupq_lane_s64(vceqq_s64(v21, v59).i64[0], 0), xmmword_25B719D40, xmmword_25B719D30).i64}];
                  LODWORD(v26) = 1.0;
                  [v19 setDistanceScale:v26];
                }

                v16 = [v13 countByEnumeratingWithState:&v68 objects:v74 count:16];
              }

              while (v16);
            }
          }

          else
          {
            v66 = 0uLL;
            v67 = 0uLL;
            v64 = 0uLL;
            v65 = 0uLL;
            v13 = [(NUNIScene *)v8 spheroids];
            v47 = [v13 countByEnumeratingWithState:&v64 objects:v73 count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v65;
              v10 = 24;
              do
              {
                for (j = 0; j != v48; ++j)
                {
                  if (*v65 != v49)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v51 = *(*(&v64 + 1) + 8 * j);
                  v52 = [v51 type];
                  v53 = v52;
                  if (v52 == 4)
                  {
                    v54 = 0.000001;
                  }

                  else
                  {
                    v54 = 1.0;
                  }

                  [v51 radiusScale];
                  if (*&v55 != v54)
                  {
                    *&v55 = v54;
                    [v51 setRadiusScale:v55];
                  }

                  if (((1 << v53) & 0xFFF400) != 0)
                  {
                    v56 = 1.0;
                  }

                  else
                  {
                    v56 = 0.0;
                  }

                  [v51 opacity];
                  if (*&v57 != v56)
                  {
                    *&v57 = v56;
                    [v51 setOpacity:v57];
                  }
                }

                v48 = [v13 countByEnumeratingWithState:&v64 objects:v73 count:16];
              }

              while (v48);
              goto LABEL_66;
            }
          }

          v10 = 24;
LABEL_66:

          [(NUNIScene *)v8 setSnap:v10];
          goto LABEL_67;
        }

LABEL_46:
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v13 = [(NUNIScene *)v7 spheroids];
        v32 = [v13 countByEnumeratingWithState:&v60 objects:v72 count:16];
        if (v32)
        {
          v33 = v32;
          v58 = v8;
          v34 = *v61;
          v35 = v9 | 0x400;
          v36 = v9 & 0x3FE;
          if (a4 == 1)
          {
            v37 = 0.0001;
          }

          else
          {
            v37 = 1.0;
          }

          do
          {
            for (k = 0; k != v33; ++k)
            {
              if (*v61 != v34)
              {
                objc_enumerationMutation(v13);
              }

              v39 = *(*(&v60 + 1) + 8 * k);
              v40 = [v39 structure];
              v41 = v40;
              v42 = (1 << *v40);
              if ((v35 & v42) != 0)
              {
                v43 = 1.0;
              }

              else
              {
                v43 = 0.000001;
              }

              if (*(v40 + 88) != v43)
              {
                [v39 setRadiusScale:?];
              }

              if ((v36 & v42) != 0)
              {
                v44 = 1.0;
              }

              else
              {
                v44 = 0.0;
              }

              if (*(v41 + 48) != v44)
              {
                [v39 setOpacity:?];
              }

              [v39 setOrientation:*&_PromotedConst];
              *&v45 = v37;
              [v39 setDistanceScale:v45];
            }

            v33 = [v13 countByEnumeratingWithState:&v60 objects:v72 count:16];
          }

          while (v33);
          v8 = v58;
        }

        goto LABEL_66;
      }

      v27 = 2097280;
      v28 = 7;
      v29 = 32770;
      v30 = 1;
      if (a3 != 4)
      {
        v30 = 3;
        v29 = 131080;
      }

      v31 = a3 == 3;
    }

    else
    {
      if (a3 > 6)
      {
        if (a3 == 7)
        {
          v9 = 1048640;
          v10 = 6;
        }

        else
        {
          if (a3 == 8)
          {
            v9 = 4194560;
          }

          else
          {
            v9 = 8389120;
          }

          v10 = a3;
        }

        goto LABEL_46;
      }

      v27 = 65540;
      v28 = 2;
      v29 = 524320;
      v30 = 5;
      if (a3 != 6)
      {
        v30 = 3;
        v29 = 131080;
      }

      v31 = a3 == 5;
    }

    if (v31)
    {
      v10 = v28;
    }

    else
    {
      v10 = v30;
    }

    if (v31)
    {
      v9 = v27;
    }

    else
    {
      v9 = v29;
    }

    goto LABEL_46;
  }

LABEL_68:
  v46 = *MEMORY[0x277D85DE8];
}

- (void)astronomySceneAnimationFinished:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained astronomyVistaViewContentsAnimationFinished:self];
}

- (void)quadViewWillDisplay:(id)a3 forTime:(double)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained astronomyVistaViewWillDisplay:self forTime:a4];
}

- (void)updateLightingPreference:(BOOL)a3
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    self->_preferredCarouselLighting = 1;
    if ([MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[NUNIAstronomyVistaView semanticContentAttribute](self, "semanticContentAttribute")}] != 1)
    {
      return;
    }

    v4 = 2;
  }

  self->_preferredCarouselLighting = v4;
}

- (NUNIAstronomyVistaViewObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end