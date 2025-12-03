@interface NUNIAstronomyVistaView
- (NUNIAstronomyVistaView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (NUNIAstronomyVistaViewObserver)observer;
- (float)computeDimming;
- (id)_panAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription;
- (id)_zoomAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription;
- (id)generateAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription transitionStyle:(unint64_t)style;
- (id)generateAnimationArrayFromVista:(unint64_t)vista fromSceneBlock:(id)block toVista:(unint64_t)toVista toSceneBlock:(id)sceneBlock transitionStyle:(unint64_t)style;
- (id)generateAnimationArrayFromVista:(unint64_t)vista toVista:(unint64_t)toVista transitionStyle:(unint64_t)style;
- (id)rotatable:(unint64_t)rotatable;
- (id)snapshotImage;
- (void)_startAnimation;
- (void)_stopAnimation;
- (void)_updateAnimation;
- (void)applyVista:(unint64_t)vista transitionStyle:(unint64_t)style;
- (void)astronomySceneAnimationFinished:(id)finished;
- (void)dealloc;
- (void)discardContents;
- (void)layoutSubviews;
- (void)quadViewWillDisplay:(id)display forTime:(double)time;
- (void)removeBackBuffers;
- (void)setAPLFilterAmount:(double)amount;
- (void)setCacheDirectory:(id)directory;
- (void)setFrameInterval:(int64_t)interval;
- (void)setScene:(id)scene;
- (void)setTritiumBrightness:(double)brightness;
- (void)showSupplemental:(BOOL)supplemental animated:(BOOL)animated;
- (void)updateLightingPreference:(BOOL)preference;
- (void)updatePortalLayerBounds:(CGRect)bounds;
@end

@implementation NUNIAstronomyVistaView

- (NUNIAstronomyVistaView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v49[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v45.receiver = self;
  v45.super_class = NUNIAstronomyVistaView;
  height = [(NUNIAstronomyVistaView *)&v45 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_configuration, configuration);
    device = [configurationCopy device];
    device = v12->_device;
    v12->_device = device;

    v15 = [MEMORY[0x277CFA7A8] quadViewWithFrame:@"NUV0" identifier:objc_msgSend(configurationCopy options:"quadViewOptions") colorSpace:{objc_msgSend(configurationCopy, "colorSpace"), x, y, width, height}];
    quadView0 = v12->_quadView0;
    v12->_quadView0 = v15;

    _mtlQuadView = [(NUNIAstronomyVistaView *)v12 _mtlQuadView];
    [configurationCopy maxAPL];
    [_mtlQuadView setMaxAPL:?];
    [(NUNIAstronomyVistaView *)v12 addSubview:v12->_quadView0];
    rendererStyle = [configurationCopy rendererStyle];
    colorPixelFormat = [_mtlQuadView colorPixelFormat];
    textureSuffix = [configurationCopy textureSuffix];
    v21 = [NUNIRenderer sharedInstanceWithPixelFormat:colorPixelFormat textureSuffix:textureSuffix rendererStyle:rendererStyle];
    renderer = v12->_renderer;
    v12->_renderer = v21;

    [configurationCopy screenScale];
    v24 = [[NUNIQuad alloc] initWithScreenScale:v12->_renderer renderer:v23];
    quad = v12->_quad;
    v12->_quad = v24;

    [(CLKUIQuadView *)v12->_quadView0 addQuad:v12->_quad];
    [(CLKUIQuadView *)v12->_quadView0 setPaused:1];
    [(CLKUIQuadView *)v12->_quadView0 setDelegate:v12];
    if ((rendererStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [(CLKUIQuadView *)v12->_quadView0 setOpaque:1];
      [(CLKUIQuad *)v12->_quad setOpaque:1];
      layer = [MEMORY[0x277CD9ED0] layer];
      contentMaskLayer = v12->_contentMaskLayer;
      v12->_contentMaskLayer = layer;

      v28 = layer;
      [(NSArray *)v28 setFrame:x, y, width, height];
      [(NSArray *)v28 setCompositingFilter:*MEMORY[0x277CDA310]];
      [(NSArray *)v28 setOpaque:0];
      v48 = @"contents";
      null = [MEMORY[0x277CBEB68] null];
      v49[0] = null;
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
        layer2 = 0;
      }

      else
      {
        layer2 = [MEMORY[0x277CD9F30] layer];
        metalLayer = [_mtlQuadView metalLayer];
        [layer2 setSourceLayer:metalLayer];

        [layer2 setFrame:{x, y, width, height}];
        [layer2 addSublayer:v28];
        [layer2 setOpaque:0];
        objc_storeStrong(&v12->_portalLayer, layer2);
      }

      layer3 = [(UIView *)v33 layer];
      [layer3 setOpaque:0];
      if (layer2)
      {
        [layer3 addSublayer:layer2];
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
    initialSetupOperation = [configurationCopy initialSetupOperation];

    if (initialSetupOperation)
    {
      initialSetupOperation2 = [configurationCopy initialSetupOperation];
      (initialSetupOperation2)[2](initialSetupOperation2, v12);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)discardContents
{
  _mtlQuadView = [(NUNIAstronomyVistaView *)self _mtlQuadView];
  metalLayer = [_mtlQuadView metalLayer];
  [metalLayer discardContents];
}

- (void)removeBackBuffers
{
  _mtlQuadView = [(NUNIAstronomyVistaView *)self _mtlQuadView];
  metalLayer = [_mtlQuadView metalLayer];
  [metalLayer removeBackBuffers];
}

- (void)setTritiumBrightness:(double)brightness
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

        [*(*(&v10 + 1) + 8 * v8++) setTritiumBrightness:{brightness, v10}];
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

  mEMORY[0x277CFA7B0] = [MEMORY[0x277CFA7B0] sharedInstance];
  [mEMORY[0x277CFA7B0] purgeAllUnused];

  v6.receiver = self;
  v6.super_class = NUNIAstronomyVistaView;
  [(NUNIAstronomyVistaView *)&v6 dealloc];
}

- (void)setCacheDirectory:(id)directory
{
  directoryCopy = directory;
  renderer = self->_renderer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    resourceManager = [(NUNIRenderer *)self->_renderer resourceManager];
    cloudsService = [resourceManager cloudsService];
    [cloudsService setDirectory:directoryCopy];
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
  device = [(NUNIAstronomyVistaView *)self device];
  [device screenScale];
  v14 = [(CLKUIQuadView *)quadView0 snapshotInRect:v5 scale:v7 time:v9, v11, v13, 0.0];

  return v14;
}

- (float)computeDimming
{
  device = [(NUNIAstronomyVistaView *)self device];
  deviceCategory = [device deviceCategory];

  v5 = dword_25B719CD0[(deviceCategory & 0xFFFFFFFFFFFFFFFDLL) == 4];
  _mtlQuadView = [(NUNIAstronomyVistaView *)self _mtlQuadView];
  CLKUIComputeDimmingRequiredToObtainQuadAPL();
  v8 = v7;

  return v8;
}

- (void)setAPLFilterAmount:(double)amount
{
  _mtlQuadView = [(NUNIAstronomyVistaView *)self _mtlQuadView];
  *&v4 = amount;
  [_mtlQuadView setAplFilterAmount:v4];
}

- (void)setScene:(id)scene
{
  sceneCopy = scene;
  if (self->_scene != sceneCopy)
  {
    v6 = sceneCopy;
    objc_storeStrong(&self->_scene, scene);
    [(NUNIScene *)v6 setObserver:self];
    [(NUNIQuad *)self->_quad setScene:v6];
    sceneCopy = v6;
  }
}

- (void)setFrameInterval:(int64_t)interval
{
  if (self->_frameInterval != interval)
  {
    self->_frameInterval = interval;
    v4 = _NUNIFrameIntervalToFramesPerSecond_framePerSeconds[interval];
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

- (void)updatePortalLayerBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (id)rotatable:(unint64_t)rotatable
{
  if (rotatable <= 9 && ((0x3FBu >> rotatable) & 1) != 0)
  {
    v5 = [(NUNIScene *)self->_scene spheroidOfType:qword_25B719E38[rotatable], v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)showSupplemental:(BOOL)supplemental animated:(BOOL)animated
{
  animatedCopy = animated;
  supplementalCopy = supplemental;
  v105 = *MEMORY[0x277D85DE8];
  v7 = *(self + 488);
  v89 = self->_scene;
  if (v89 && ((v7 ^ supplementalCopy) & 1) != 0)
  {
    *(self + 488) = *(self + 488) & 0xFE | supplementalCopy;
    if (supplementalCopy)
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
            type = [v17 type];
            v19 = 1 << type;
            LODWORD(v20) = 897988541;
            if (type != 4)
            {
              v21 = v85;
              if ((v19 & 0x3000) != 0 || (v21 = v84, ((1 << type) & 0xFBCBFE) != 0))
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
              if (animatedCopy)
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

            if (((1 << type) & 0xFFF000) == 0)
            {
              [v17 opacity];
              if (*&v35 == 0.0)
              {
                goto LABEL_40;
              }

              v36 = 0;
              if (animatedCopy)
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
              v27 = type - 14;
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

            if (animatedCopy)
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
        type2 = [v72 type];
        v75 = type2;
        if (type2 == 4)
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
          if (animatedCopy)
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
          if (animatedCopy)
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

- (id)generateAnimationArrayFromVista:(unint64_t)vista toVista:(unint64_t)toVista transitionStyle:(unint64_t)style
{
  if (vista == toVista)
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v7 = [(NUNIAstronomyVistaView *)self generateAnimationArrayFromVista:vista fromSceneBlock:0 toVista:toVista toSceneBlock:0 transitionStyle:style, v5];
  }

  return v7;
}

- (id)generateAnimationArrayFromVista:(unint64_t)vista fromSceneBlock:(id)block toVista:(unint64_t)toVista toSceneBlock:(id)sceneBlock transitionStyle:(unint64_t)style
{
  sceneBlockCopy = sceneBlock;
  v13 = [NUNISceneUpdateDescription descriptionWithVista:vista updateBlock:block];
  v14 = [NUNISceneUpdateDescription descriptionWithVista:toVista updateBlock:sceneBlockCopy];

  v15 = [(NUNIAstronomyVistaView *)self generateAnimationArrayFromSceneDescription:v13 toSceneDescription:v14 transitionStyle:style];

  return v15;
}

- (id)generateAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription transitionStyle:(unint64_t)style
{
  descriptionCopy = description;
  sceneDescriptionCopy = sceneDescription;
  if (style == 1)
  {
    v10 = [(NUNIAstronomyVistaView *)self _panAnimationArrayFromSceneDescription:descriptionCopy toSceneDescription:sceneDescriptionCopy];
    goto LABEL_5;
  }

  if (!style)
  {
    v10 = [(NUNIAstronomyVistaView *)self _zoomAnimationArrayFromSceneDescription:descriptionCopy toSceneDescription:sceneDescriptionCopy];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_7:

  return v11;
}

- (id)_panAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription
{
  descriptionCopy = description;
  sceneDescriptionCopy = sceneDescription;
  vista = [descriptionCopy vista];
  vista2 = [sceneDescriptionCopy vista];
  if (vista == 2 || (v10 = vista2, vista2 == 2))
  {
    v20 = [(NUNIAstronomyVistaView *)self _zoomAnimationArrayFromSceneDescription:descriptionCopy toSceneDescription:sceneDescriptionCopy];
  }

  else
  {
    v11 = self->_scene;
    packIntoBlob = [(NUNIScene *)v11 packIntoBlob];
    date = [(NUNIScene *)v11 date];
    [(NUNIAstronomyVistaView *)self applyVista:vista transitionStyle:1];
    [(NUNIScene *)v11 updateSunLocationForDate:date animated:0 lightingPreference:self->_preferredCarouselLighting adjustEarthRotation:1];
    updateBlock = [descriptionCopy updateBlock];
    v15 = updateBlock;
    if (updateBlock)
    {
      (*(updateBlock + 16))(updateBlock, v11);
    }

    [(NUNIScene *)v11 updateCamera];
    packIntoBlob2 = [(NUNIScene *)v11 packIntoBlob];
    [(NUNIAstronomyVistaView *)self applyVista:v10 transitionStyle:1];
    [(NUNIScene *)v11 updateSunLocationForDate:date animated:0 lightingPreference:self->_preferredCarouselLighting adjustEarthRotation:1];
    updateBlock2 = [sceneDescriptionCopy updateBlock];
    v18 = updateBlock2;
    if (updateBlock2)
    {
      (*(updateBlock2 + 16))(updateBlock2, v11);
    }

    [(NUNIScene *)v11 updateCamera];
    packIntoBlob3 = [(NUNIScene *)v11 packIntoBlob];
    v20 = NUNIAstronomyVistaView_GenerateCarouselAnimationArrayFromSceneBlob(v11, packIntoBlob2, packIntoBlob3);
    [(NUNIScene *)v11 unpackFromBlob:packIntoBlob];
  }

  return v20;
}

- (id)_zoomAnimationArrayFromSceneDescription:(id)description toSceneDescription:(id)sceneDescription
{
  v7 = self->_scene;
  sceneDescriptionCopy = sceneDescription;
  descriptionCopy = description;
  packIntoBlob = [(NUNIScene *)v7 packIntoBlob];
  date = [(NUNIScene *)v7 date];
  -[NUNIAstronomyVistaView applyVista:transitionStyle:](self, "applyVista:transitionStyle:", [descriptionCopy vista], 0);
  [(NUNIScene *)v7 updateSunLocationForDate:date animated:0 lightingPreference:0 adjustEarthRotation:1];
  updateBlock = [descriptionCopy updateBlock];

  if (updateBlock)
  {
    (updateBlock)[2](updateBlock, v7);
    [(NUNIScene *)v7 updateCamera];
  }

  packIntoBlob2 = [(NUNIScene *)v7 packIntoBlob];
  -[NUNIAstronomyVistaView applyVista:transitionStyle:](self, "applyVista:transitionStyle:", [sceneDescriptionCopy vista], 0);
  [(NUNIScene *)v7 updateSunLocationForDate:date animated:0 lightingPreference:0 adjustEarthRotation:1];
  updateBlock2 = [sceneDescriptionCopy updateBlock];

  if (updateBlock2)
  {
    (updateBlock2)[2](updateBlock2, v7);
    [(NUNIScene *)v7 updateCamera];
  }

  packIntoBlob3 = [(NUNIScene *)v7 packIntoBlob];
  v16 = NUNIAstronomyVistaView_GenerateZoomAnimationArrayFromSceneBlob(v7, packIntoBlob2, packIntoBlob3);
  [(NUNIScene *)v7 unpackFromBlob:packIntoBlob];

  return v16;
}

- (void)applyVista:(unint64_t)vista transitionStyle:(unint64_t)style
{
  v75 = *MEMORY[0x277D85DE8];
  self->_vista = vista;
  self->_transitionStyle = style;
  if (vista <= 9)
  {
    v7 = self->_scene;
    v8 = v7;
    if (!v7)
    {
LABEL_67:

      goto LABEL_68;
    }

    v9 = 131080;
    vistaCopy = 3;
    if (vista <= 4)
    {
      if (vista <= 2)
      {
        if (vista == 1)
        {
          v9 = 16;
          vistaCopy = 4;
        }

        else if (vista == 2)
        {
          renderer = [(NUNIQuad *)self->_quad renderer];
          rendererStyle = [renderer rendererStyle];

          if (rendererStyle == 3)
          {
            v70 = 0uLL;
            v71 = 0uLL;
            v68 = 0uLL;
            v69 = 0uLL;
            spheroids = [(NUNIScene *)v8 spheroids];
            v14 = [spheroids countByEnumeratingWithState:&v68 objects:v74 count:16];
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
                    objc_enumerationMutation(spheroids);
                  }

                  v19 = *(*(&v68 + 1) + 8 * i);
                  structure = [v19 structure];
                  v22 = structure;
                  v23 = *structure;
                  if (*structure == 4)
                  {
                    v24 = 0.000001;
                  }

                  else
                  {
                    v24 = 1.0;
                  }

                  if (*(structure + 88) != v24)
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

                v16 = [spheroids countByEnumeratingWithState:&v68 objects:v74 count:16];
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
            spheroids = [(NUNIScene *)v8 spheroids];
            v47 = [spheroids countByEnumeratingWithState:&v64 objects:v73 count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v65;
              vistaCopy = 24;
              do
              {
                for (j = 0; j != v48; ++j)
                {
                  if (*v65 != v49)
                  {
                    objc_enumerationMutation(spheroids);
                  }

                  v51 = *(*(&v64 + 1) + 8 * j);
                  type = [v51 type];
                  v53 = type;
                  if (type == 4)
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

                v48 = [spheroids countByEnumeratingWithState:&v64 objects:v73 count:16];
              }

              while (v48);
              goto LABEL_66;
            }
          }

          vistaCopy = 24;
LABEL_66:

          [(NUNIScene *)v8 setSnap:vistaCopy];
          goto LABEL_67;
        }

LABEL_46:
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        spheroids = [(NUNIScene *)v7 spheroids];
        v32 = [spheroids countByEnumeratingWithState:&v60 objects:v72 count:16];
        if (v32)
        {
          v33 = v32;
          v58 = v8;
          v34 = *v61;
          v35 = v9 | 0x400;
          v36 = v9 & 0x3FE;
          if (style == 1)
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
                objc_enumerationMutation(spheroids);
              }

              v39 = *(*(&v60 + 1) + 8 * k);
              structure2 = [v39 structure];
              v41 = structure2;
              v42 = (1 << *structure2);
              if ((v35 & v42) != 0)
              {
                v43 = 1.0;
              }

              else
              {
                v43 = 0.000001;
              }

              if (*(structure2 + 88) != v43)
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

            v33 = [spheroids countByEnumeratingWithState:&v60 objects:v72 count:16];
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
      if (vista != 4)
      {
        v30 = 3;
        v29 = 131080;
      }

      v31 = vista == 3;
    }

    else
    {
      if (vista > 6)
      {
        if (vista == 7)
        {
          v9 = 1048640;
          vistaCopy = 6;
        }

        else
        {
          if (vista == 8)
          {
            v9 = 4194560;
          }

          else
          {
            v9 = 8389120;
          }

          vistaCopy = vista;
        }

        goto LABEL_46;
      }

      v27 = 65540;
      v28 = 2;
      v29 = 524320;
      v30 = 5;
      if (vista != 6)
      {
        v30 = 3;
        v29 = 131080;
      }

      v31 = vista == 5;
    }

    if (v31)
    {
      vistaCopy = v28;
    }

    else
    {
      vistaCopy = v30;
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

- (void)astronomySceneAnimationFinished:(id)finished
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained astronomyVistaViewContentsAnimationFinished:self];
}

- (void)quadViewWillDisplay:(id)display forTime:(double)time
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained astronomyVistaViewWillDisplay:self forTime:time];
}

- (void)updateLightingPreference:(BOOL)preference
{
  if (preference)
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