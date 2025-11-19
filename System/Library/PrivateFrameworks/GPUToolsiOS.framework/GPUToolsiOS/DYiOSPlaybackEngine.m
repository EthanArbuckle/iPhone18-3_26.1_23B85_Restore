@interface DYiOSPlaybackEngine
+ (CATransform3D)_convertToCATransform3D:(SEL)a3;
+ (CGPoint)_convertToCGPoint:(const Argument *)a3;
- (CATransform3D)_applyInterfaceOrientationToTransform:(SEL)a3;
- (CGRect)boundsForCurrentInterfaceOrientation;
- (DYiOSPlaybackEngine)initWithCaptureStore:(id)a3 shouldCreateViewController:(BOOL)a4;
- (id).cxx_construct;
- (id)currentTopLayer;
- (id)layerForID:(unint64_t)a3;
- (void)_setupLayer:(id)a3 contentRect:(CGRect)a4 contentsScale:(double)a5 properties:(id)a6 isCoreAnimationSurface:(BOOL)a7;
- (void)applyLayersVisibility;
- (void)deleteLayer:(unint64_t)a3;
- (void)prepareLayerForPresent:(id)a3;
- (void)resetLayersVisibility;
- (void)setAnchorPoint:(const Argument *)a3 forLayerID:(unint64_t)a4;
- (void)setPosition:(const Argument *)a3 forLayerID:(unint64_t)a4;
- (void)setTransform:(const Argument *)a3 forLayerID:(unint64_t)a4 withScreenToLayerScale:(const void *)a5;
- (void)updateLayer:(id)a3 contentRect:(CGRect)a4 contentsScale:(double)a5 properties:(id)a6;
@end

@implementation DYiOSPlaybackEngine

+ (CATransform3D)_convertToCATransform3D:(SEL)a3
{
  for (i = 0; i != 16; ++i)
  {
    *(&retstr->m11 + i) = GPUTools::FD::Argument::ViewAsScalarArray<double>(a4, i);
  }

  return result;
}

+ (CGPoint)_convertToCGPoint:(const Argument *)a3
{
  v4 = GPUTools::FD::Argument::ViewAsScalarArray<double>(a3, 0).n64_u64[0];
  v5.n64_u64[0] = GPUTools::FD::Argument::ViewAsScalarArray<double>(a3, 1uLL).n64_u64[0];
  v6 = *&v4;
  result.y = v5.n64_f64[0];
  result.x = v6;
  return result;
}

- (DYiOSPlaybackEngine)initWithCaptureStore:(id)a3 shouldCreateViewController:(BOOL)a4
{
  v4 = a4;
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!pthread_main_np())
  {
    __assert_rtn("[DYiOSPlaybackEngine initWithCaptureStore:shouldCreateViewController:]", &unk_24DC2B171, 0, "pthread_main_np()");
  }

  v34.receiver = self;
  v34.super_class = DYiOSPlaybackEngine;
  v7 = [(DYPlaybackEngine *)&v34 initWithCaptureStore:v6];
  if (v7)
  {
    if (v4)
    {
      v8 = [[DYPlaybackViewController alloc] initWithNibName:0 bundle:0];
      viewController = v7->_viewController;
      v7->_viewController = &v8->super;

      *components = xmmword_24DC2AD30;
      v36 = unk_24DC2AD40;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v11 = CGColorCreate(DeviceRGB, components);
      v12 = [(UIViewController *)v7->_viewController view];
      v13 = [v12 layer];
      [v13 setBackgroundColor:v11];

      CGColorRelease(v11);
      CGColorSpaceRelease(DeviceRGB);
      v14 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      hostLayer = v7->_hostLayer;
      v7->_hostLayer = v14;

      [(CALayer *)v7->_hostLayer setOpaque:1];
      v16 = [MEMORY[0x277D75998] mainScreen];
      [v16 bounds];
      [(CALayer *)v7->_hostLayer setFrame:?];

      v17 = [MEMORY[0x277D75998] mainScreen];
      [v17 scale];
      [(CALayer *)v7->_hostLayer setContentsScale:?];

      v18 = [(UIViewController *)v7->_viewController view];
      v19 = [v18 layer];
      [v19 addSublayer:v7->_hostLayer];

      v20 = [MEMORY[0x277D75998] mainScreen];
      [v20 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v38.origin.x = v22;
      v38.origin.y = v24;
      v38.size.width = v26;
      v38.size.height = v28;
      v7->_screenCenter.x = CGRectGetWidth(v38) * 0.5;
      v39.origin.x = v22;
      v39.origin.y = v24;
      v39.size.width = v26;
      v39.size.height = v28;
      v7->_screenCenter.y = CGRectGetHeight(v39) * 0.5;
      v7->_interfaceOrientation = 1;
    }

    else
    {
      v29 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      v30 = v7->_hostLayer;
      v7->_hostLayer = v29;

      [(CALayer *)v7->_hostLayer setOpaque:1];
    }

    v31 = v7;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_setupLayer:(id)a3 contentRect:(CGRect)a4 contentsScale:(double)a5 properties:(id)a6 isCoreAnimationSurface:(BOOL)a7
{
  v7 = a7;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a3;
  v15 = a6;
  if (v7)
  {
    [v16 setFrame:{x, y, width, height}];
  }

  else
  {
    [v16 setPosition:{0.0, 0.0}];
  }

  [v16 setBounds:{x, y, width, height}];
  [v16 setContentsScale:a5];
  [(DYiOSPlaybackEngine *)self setProperties:v15 forLayer:v16];
}

- (void)resetLayersVisibility
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CALayer *)self->_hostLayer sublayers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v12[0] = *(*(&v8 + 1) + 8 * v6);
        v12[2] = v12;
        *(std::__tree<std::__value_type<CALayer *,BOOL>,std::__map_value_compare<std::__value_type<CALayer *,BOOL>,std::__map_value_compare,std::less<std::__value_type<CALayer *,BOOL>>,true>,std::allocator<std::__map_value_compare>>::__emplace_unique_key_args<std::__value_type<CALayer *,BOOL>,std::piecewise_construct_t const&,std::tuple<CALayer * const&>,CALayer * const<>>(&self->_hostLayerSublayersVisibilityMap, v12) + 40) = 0;
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)prepareLayerForPresent:(id)a3
{
  obj[0] = a3;
  if (!obj[0])
  {
    __assert_rtn("[DYiOSPlaybackEngine prepareLayerForPresent:]", &unk_24DC2B171, 0, "layer");
  }

  obj[2] = obj;
  *(std::__tree<std::__value_type<CALayer *,BOOL>,std::__map_value_compare<std::__value_type<CALayer *,BOOL>,std::__map_value_compare,std::less<std::__value_type<CALayer *,BOOL>>,true>,std::allocator<std::__map_value_compare>>::__emplace_unique_key_args<std::__value_type<CALayer *,BOOL>,std::piecewise_construct_t const&,std::tuple<CALayer * const&>,CALayer * const<>>(&self->_hostLayerSublayersVisibilityMap, obj) + 40) = 1;
  objc_storeWeak(&self->_topLayer, obj[0]);
}

- (void)applyLayersVisibility
{
  v16 = *MEMORY[0x277D85DE8];
  GPUTools::AutoCATransaction::AutoCATransaction(v15, 0, 1);
  [MEMORY[0x277CD9FF0] setDisableActions:0];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.15];
  [(CALayer *)self->_hostLayer setHidden:0];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CALayer *)self->_hostLayer sublayers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v13[0] = *(*(&v9 + 1) + 8 * v6);
        v13[2] = v13;
        v7 = std::__tree<std::__value_type<CALayer *,BOOL>,std::__map_value_compare<std::__value_type<CALayer *,BOOL>,std::__map_value_compare,std::less<std::__value_type<CALayer *,BOOL>>,true>,std::allocator<std::__map_value_compare>>::__emplace_unique_key_args<std::__value_type<CALayer *,BOOL>,std::piecewise_construct_t const&,std::tuple<CALayer * const&>,CALayer * const<>>(&self->_hostLayerSublayersVisibilityMap, v13);
        [v13[0] setHidden:(v7[5] & 1) == 0];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v4);
  }

  GPUTools::AutoCATransaction::~AutoCATransaction(v15);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateLayer:(id)a3 contentRect:(CGRect)a4 contentsScale:(double)a5 properties:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v20 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v18[0] = v13;
  v14 = a6;
  if (!v13)
  {
    __assert_rtn("[DYiOSPlaybackEngine updateLayer:contentRect:contentsScale:properties:]", &unk_24DC2B171, 0, "layer");
  }

  [v13 bounds];
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  if (!CGRectEqualToRect(v21, v22) || ([v13 contentsScale], v15 != a5) || !-[DYiOSPlaybackEngine layerHasSameProperties:layer:](self, "layerHasSameProperties:layer:", v14, v13))
  {
    GPUTools::AutoCATransaction::AutoCATransaction(v19, 1, 1);
    if (a5 == 0.0)
    {
      __assert_rtn("[DYiOSPlaybackEngine updateLayer:contentRect:contentsScale:properties:]", &unk_24DC2B171, 0, "contentsScale != 0.0");
    }

    v18[2] = v18;
    v16 = std::__tree<std::__value_type<CALayer * {__strong},BOOL>,std::__map_value_compare<CALayer * {__strong},std::__value_type<CALayer * {__strong},BOOL>,std::less<CALayer * {__strong}>,true>,std::allocator<std::__value_type<CALayer * {__strong},BOOL>>>::__emplace_unique_key_args<CALayer * {__strong},std::piecewise_construct_t const&,std::tuple<CALayer * const {__strong}&>,std::tuple<>>(&self->_coreAnimationLayerMap, v18);
    [(DYiOSPlaybackEngine *)self _setupLayer:v18[0] contentRect:v14 contentsScale:*(v16 + 40) properties:x isCoreAnimationSurface:y, width, height, a5];
    GPUTools::AutoCATransaction::~AutoCATransaction(v19);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)layerForID:(unint64_t)a3
{
  left = self->_layerMap.__tree_.__end_node_.__left_;
  if (!left)
  {
    return 0;
  }

  p_end_node = &self->_layerMap.__tree_.__end_node_;
  do
  {
    v5 = *(left + 4);
    v6 = v5 >= a3;
    v7 = v5 < a3;
    if (v6)
    {
      p_end_node = left;
    }

    left = *(left + v7);
  }

  while (left);
  if (p_end_node != &self->_layerMap.__tree_.__end_node_ && p_end_node[4].__left_ <= a3)
  {
    return p_end_node[5].__left_;
  }

  else
  {
    return 0;
  }
}

- (id)currentTopLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_topLayer);

  return WeakRetained;
}

- (void)deleteLayer:(unint64_t)a3
{
  p_layerMap = &self->_layerMap;
  left = self->_layerMap.__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &self->_layerMap.__tree_.__end_node_;
    do
    {
      v7 = *(left + 4);
      v8 = v7 >= a3;
      v9 = v7 < a3;
      if (v8)
      {
        p_end_node = left;
      }

      left = *(left + v9);
    }

    while (left);
    if (p_end_node != &self->_layerMap.__tree_.__end_node_ && p_end_node[4].__left_ <= a3)
    {
      [p_end_node[5].__left_ removeFromSuperlayer];
      std::__tree<std::__value_type<CALayer * {__strong},BOOL>,std::__map_value_compare<CALayer * {__strong},std::__value_type<CALayer * {__strong},BOOL>,std::less<CALayer * {__strong}>,true>,std::allocator<std::__value_type<CALayer * {__strong},BOOL>>>::__erase_unique<CALayer * {__strong}>(&self->_coreAnimationLayerMap, &p_end_node[5]);

      std::__tree<std::__value_type<unsigned long long,CALayer * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CALayer * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CALayer * {__strong}>>>::erase(p_layerMap, p_end_node);
    }
  }
}

- (void)setTransform:(const Argument *)a3 forLayerID:(unint64_t)a4 withScreenToLayerScale:(const void *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = [(DYiOSPlaybackEngine *)self layerForID:a4];
  if (v7)
  {
    GPUTools::AutoCATransaction::AutoCATransaction(v34, 1, 1);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = objc_opt_class();
    if (v8)
    {
      [v8 _convertToCATransform3D:a3];
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
    }

    v14 = v30;
    v15 = v31;
    v16 = v32;
    v17 = v33;
    v10 = v26;
    v11 = v27;
    v12 = v28;
    v13 = v29;
    [(DYiOSPlaybackEngine *)self _applyInterfaceOrientationToTransform:&v10];
    v14 = v22;
    v15 = v23;
    v16 = v24;
    v17 = v25;
    v10 = v18;
    v11 = v19;
    v12 = v20;
    v13 = v21;
    [v7 setTransform:&v10];
    GPUTools::AutoCATransaction::~AutoCATransaction(v34);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setPosition:(const Argument *)a3 forLayerID:(unint64_t)a4
{
  v7[5] = *MEMORY[0x277D85DE8];
  v5 = [(DYiOSPlaybackEngine *)self layerForID:a4];
  if (v5)
  {
    GPUTools::AutoCATransaction::AutoCATransaction(v7, 1, 1);
    [objc_opt_class() _convertToCGPoint:a3];
    [v5 setPosition:?];
    GPUTools::AutoCATransaction::~AutoCATransaction(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAnchorPoint:(const Argument *)a3 forLayerID:(unint64_t)a4
{
  v7[5] = *MEMORY[0x277D85DE8];
  v5 = [(DYiOSPlaybackEngine *)self layerForID:a4];
  if (v5)
  {
    GPUTools::AutoCATransaction::AutoCATransaction(v7, 1, 1);
    [objc_opt_class() _convertToCGPoint:a3];
    [v5 setAnchorPoint:?];
    GPUTools::AutoCATransaction::~AutoCATransaction(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (CGRect)boundsForCurrentInterfaceOrientation
{
  [(CALayer *)self->_hostLayer bounds];
  v7 = self->_interfaceOrientation - 3;
  if (v7 >= 2)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (v7 < 2)
  {
    v6 = v5;
  }

  v9 = v8;
  result.size.height = v6;
  result.size.width = v9;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CATransform3D)_applyInterfaceOrientationToTransform:(SEL)a3
{
  m32 = self[1].m32;
  switch(*&m32)
  {
    case 2:
      memset(&v43, 0, sizeof(v43));
      CATransform3DMakeRotation(&v43, 3.14159265, 0.0, 0.0, 1.0);
      memset(&v42, 0, sizeof(v42));
      CATransform3DMakeTranslation(&v42, -a4->m41, -a4->m42, 0.0);
      memset(&v41, 0, sizeof(v41));
      m41 = a4->m41;
      m42 = a4->m42;
      goto LABEL_8;
    case 3:
      memset(&v43, 0, sizeof(v43));
      v7 = 1.57079633;
      goto LABEL_6;
    case 4:
      memset(&v43, 0, sizeof(v43));
      v7 = -1.57079633;
LABEL_6:
      CATransform3DMakeRotation(&v43, v7, 0.0, 0.0, 1.0);
      memset(&v42, 0, sizeof(v42));
      CATransform3DMakeTranslation(&v42, -a4->m41, -a4->m42, 0.0);
      memset(&v41, 0, sizeof(v41));
      m42 = a4->m41;
      m41 = a4->m42;
LABEL_8:
      CATransform3DMakeTranslation(&v41, m41, m42, 0.0);
      v10 = *&a4->m33;
      *&a.m31 = *&a4->m31;
      *&a.m33 = v10;
      v11 = *&a4->m43;
      *&a.m41 = *&a4->m41;
      *&a.m43 = v11;
      v12 = *&a4->m13;
      *&a.m11 = *&a4->m11;
      *&a.m13 = v12;
      v13 = *&a4->m23;
      *&a.m21 = *&a4->m21;
      *&a.m23 = v13;
      v38 = v42;
      CATransform3DConcat(&v40, &a, &v38);
      v14 = *&v40.m33;
      *&a4->m31 = *&v40.m31;
      *&a4->m33 = v14;
      v15 = *&v40.m43;
      *&a4->m41 = *&v40.m41;
      *&a4->m43 = v15;
      v16 = *&v40.m13;
      *&a4->m11 = *&v40.m11;
      *&a4->m13 = v16;
      v17 = *&v40.m23;
      *&a4->m21 = *&v40.m21;
      *&a4->m23 = v17;
      v18 = *&a4->m33;
      *&a.m31 = *&a4->m31;
      *&a.m33 = v18;
      v19 = *&a4->m43;
      *&a.m41 = *&a4->m41;
      *&a.m43 = v19;
      v20 = *&a4->m13;
      *&a.m11 = *&a4->m11;
      *&a.m13 = v20;
      v21 = *&a4->m23;
      *&a.m21 = *&a4->m21;
      *&a.m23 = v21;
      v38 = v43;
      CATransform3DConcat(&v40, &a, &v38);
      v22 = *&v40.m33;
      *&a4->m31 = *&v40.m31;
      *&a4->m33 = v22;
      v23 = *&v40.m43;
      *&a4->m41 = *&v40.m41;
      *&a4->m43 = v23;
      v24 = *&v40.m13;
      *&a4->m11 = *&v40.m11;
      *&a4->m13 = v24;
      v25 = *&v40.m23;
      *&a4->m21 = *&v40.m21;
      *&a4->m23 = v25;
      v26 = *&a4->m33;
      *&a.m31 = *&a4->m31;
      *&a.m33 = v26;
      v27 = *&a4->m43;
      *&a.m41 = *&a4->m41;
      *&a.m43 = v27;
      v28 = *&a4->m13;
      *&a.m11 = *&a4->m11;
      *&a.m13 = v28;
      v29 = *&a4->m23;
      *&a.m21 = *&a4->m21;
      *&a.m23 = v29;
      v38 = v41;
      self = CATransform3DConcat(&v40, &a, &v38);
      v30 = *&v40.m33;
      *&a4->m31 = *&v40.m31;
      *&a4->m33 = v30;
      v31 = *&v40.m43;
      *&a4->m41 = *&v40.m41;
      *&a4->m43 = v31;
      v32 = *&v40.m13;
      *&a4->m11 = *&v40.m11;
      *&a4->m13 = v32;
      v33 = *&v40.m23;
      *&a4->m21 = *&v40.m21;
      *&a4->m23 = v33;
      break;
  }

  v34 = *&a4->m33;
  *&retstr->m31 = *&a4->m31;
  *&retstr->m33 = v34;
  v35 = *&a4->m43;
  *&retstr->m41 = *&a4->m41;
  *&retstr->m43 = v35;
  v36 = *&a4->m13;
  *&retstr->m11 = *&a4->m11;
  *&retstr->m13 = v36;
  v37 = *&a4->m23;
  *&retstr->m21 = *&a4->m21;
  *&retstr->m23 = v37;
  return self;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 14) = 0;
  *(self + 13) = self + 112;
  *(self + 18) = 0;
  *(self + 17) = 0;
  *(self + 16) = self + 136;
  *(self + 21) = 0;
  *(self + 20) = 0;
  *(self + 19) = self + 160;
  return self;
}

@end