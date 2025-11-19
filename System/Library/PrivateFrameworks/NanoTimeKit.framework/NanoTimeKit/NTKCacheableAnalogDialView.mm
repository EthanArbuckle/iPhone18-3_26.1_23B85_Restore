@interface NTKCacheableAnalogDialView
- (NTKCacheableAnalogDialView)initWithDialDiameter:(double)a3 device:(id)a4;
- (NTKCacheableAnalogDialView)initWithDialDiameter:(double)a3 device:(id)a4 cache:(id)a5 key:(id)a6;
- (id)_cacheIdentifierForTickCount:(unint64_t)a3 modulus:(unint64_t)a4 size:(CGSize)a5 rounded:(BOOL)a6;
- (void)addTextWithCount:(unint64_t)a3 configurationBlock:(id)a4;
- (void)addTicksWithCount:(unint64_t)a3 moduloGroups:(id)a4 sizes:(id)a5 roundedCorners:(id)a6;
- (void)applyTextColor:(id)a3;
- (void)applyTickColor:(id)a3 toGroupIndex:(unint64_t)a4;
- (void)applyTickColor:(id)a3 toModulo:(unint64_t)a4;
- (void)layoutSubviews;
@end

@implementation NTKCacheableAnalogDialView

- (NTKCacheableAnalogDialView)initWithDialDiameter:(double)a3 device:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = NTKCacheableAnalogDialView;
  v7 = [(NTKCacheableAnalogDialView *)&v15 initWithFrame:0.0, 0.0, a3, a3];
  v8 = v7;
  if (v7)
  {
    v7->_dialDiameter = a3;
    cache = v7->_cache;
    v7->_cache = 0;

    v10 = [(NTKCacheableAnalogDialView *)v8 layer];
    [v10 setShouldRasterize:1];

    [v6 screenScale];
    v12 = v11;
    v13 = [(NTKCacheableAnalogDialView *)v8 layer];
    [v13 setRasterizationScale:v12];
  }

  return v8;
}

- (NTKCacheableAnalogDialView)initWithDialDiameter:(double)a3 device:(id)a4 cache:(id)a5 key:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(NTKCacheableAnalogDialView *)self initWithDialDiameter:v10 device:a3];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_cache, a5);
    objc_storeStrong(&v14->_cacheKey, a6);
    v15 = [(NTKCacheableAnalogDialView *)v14 layer];
    [v15 setShouldRasterize:1];

    [v10 screenScale];
    v17 = v16;
    v18 = [(NTKCacheableAnalogDialView *)v14 layer];
    [v18 setRasterizationScale:v17];
  }

  return v14;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKCacheableAnalogDialView;
  [(NTKCacheableAnalogDialView *)&v3 layoutSubviews];
  [(NTKCacheableAnalogDialView *)self insertSubview:self->_tickContainer atIndex:0];
  [(NTKCacheableAnalogDialView *)self insertSubview:self->_textContainer aboveSubview:self->_tickContainer];
}

- (void)addTicksWithCount:(unint64_t)a3 moduloGroups:(id)a4 sizes:(id)a5 roundedCorners:(id)a6
{
  v72 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v63 = a5;
  v61 = a6;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v12 = self->_tickGroups;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v68;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v68 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v67 + 1) + 8 * i) removeFromSuperview];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v14);
  }

  [(UIView *)self->_tickContainer removeFromSuperview];
  v17 = objc_alloc(MEMORY[0x277D75D18]);
  [(NTKCacheableAnalogDialView *)self bounds];
  v18 = [v17 initWithFrame:?];
  tickContainer = self->_tickContainer;
  self->_tickContainer = v18;

  [(NTKCacheableAnalogDialView *)self addSubview:self->_tickContainer];
  objc_storeStrong(&self->_moduloGroups, a4);
  v20 = objc_opt_new();
  if ([v11 count])
  {
    v21 = 0;
    do
    {
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
      v23 = [v11 objectAtIndexedSubscript:v21];
      [v20 setObject:v22 forKeyedSubscript:v23];

      ++v21;
    }

    while (v21 < [v11 count]);
  }

  objc_storeStrong(&self->_moduloToGroup, v20);
  dialDiameter = self->_dialDiameter;
  v62 = objc_opt_new();
  v25 = v61;
  if ([v11 count])
  {
    v26 = 0;
    v27 = dialDiameter * 0.5;
    v29 = -(dialDiameter * 0.5);
    v60 = self;
    while (1)
    {
      v30 = [v11 objectAtIndexedSubscript:v26];
      v31 = [v30 unsignedIntegerValue];

      v32 = [v63 objectAtIndexedSubscript:v26];
      [v32 CGSizeValue];
      v34 = v33;
      v36 = v35;

      if (v25)
      {
        v37 = [v25 objectAtIndexedSubscript:v26];
        v38 = [v37 BOOLValue];
      }

      else
      {
        v38 = 0;
      }

      if (!self->_cache)
      {
        break;
      }

      v64 = [(NTKCacheableAnalogDialView *)self _cacheIdentifierForTickCount:a3 modulus:v31 size:v38 rounded:v34, v36];
      v39 = [(BSUIMappedImageCache *)self->_cache imageForKey:?];
      if (!v39)
      {
        goto LABEL_20;
      }

LABEL_37:
      v53 = objc_alloc(MEMORY[0x277D755E8]);
      v54 = [v39 imageWithRenderingMode:2];
      v55 = [v53 initWithImage:v54];

      [(NTKCacheableAnalogDialView *)self bounds];
      [v55 setFrame:?];
      v56 = [MEMORY[0x277D75348] whiteColor];
      [v55 setTintColor:v56];

      v57 = _disabledLayerActions_0();
      v58 = [v55 layer];
      [v58 setActions:v57];

      [(NSArray *)v62 addObject:v55];
      [(UIView *)self->_tickContainer addSubview:v55];

      if (++v26 >= [v11 count])
      {
        goto LABEL_38;
      }
    }

    v64 = 0;
LABEL_20:
    v40 = [MEMORY[0x277CD9ED0] layer];
    [v40 setBounds:{0.0, 0.0, self->_dialDiameter, self->_dialDiameter}];
    [v40 setContentsScale:2.0];
    [v40 setMasksToBounds:1];
    [v40 setCornerRadius:self->_dialDiameter * 0.5];
    if (a3)
    {
      v41 = 0;
      if (v34 >= v36)
      {
        v42 = v36;
      }

      else
      {
        v42 = v34;
      }

      v43 = v42 * 0.5;
      if (v38)
      {
        v44 = v43;
      }

      else
      {
        v44 = 0.0;
      }

      do
      {
        if (!(v41 % v31))
        {
          if (v26)
          {
            v45 = 0;
            while (1)
            {
              v46 = [v11 objectAtIndexedSubscript:v45];
              v47 = v41 % [v46 unsignedIntegerValue];

              if (!v47)
              {
                break;
              }

              if (v26 == ++v45)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
LABEL_32:
            v28 = 6.28318531 / a3;
            v48 = [MEMORY[0x277CD9ED0] layer];
            [v48 setFrame:{0.0, 0.0, v34, v36}];
            [v48 setAnchorPoint:{0.5, 0.0}];
            [v48 setCornerRadius:v44];
            v49 = __sincos_stret(v28 * v41);
            [v48 setPosition:{v27 + v27 * v49.__sinval, v27 + v29 * v49.__cosval}];
            v50 = [MEMORY[0x277D75348] whiteColor];
            [v48 setBackgroundColor:{objc_msgSend(v50, "CGColor")}];

            CGAffineTransformMakeRotation(&v66, v28 * v41);
            v65 = v66;
            [v48 setAffineTransform:&v65];
            [v40 addSublayer:v48];
          }
        }

        ++v41;
      }

      while (v41 != a3);
    }

    [v40 bounds];
    v73.width = v51;
    v73.height = v52;
    UIGraphicsBeginImageContextWithOptions(v73, 0, 0.0);
    [v40 renderInContext:UIGraphicsGetCurrentContext()];
    v39 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self = v60;
    if (v64)
    {
      [(BSUIMappedImageCache *)v60->_cache setImage:v39 forKey:?];
    }

    v25 = v61;
    goto LABEL_37;
  }

LABEL_38:
  tickGroups = self->_tickGroups;
  self->_tickGroups = v62;
}

- (void)applyTickColor:(id)a3 toModulo:(unint64_t)a4
{
  moduloToGroup = self->_moduloToGroup;
  v7 = MEMORY[0x277CCABB0];
  v11 = a3;
  v8 = [v7 numberWithUnsignedInteger:a4];
  v9 = [(NSDictionary *)moduloToGroup objectForKeyedSubscript:v8];
  v10 = [v9 unsignedIntegerValue];

  [(NTKCacheableAnalogDialView *)self applyTickColor:v11 toGroupIndex:v10];
}

- (void)applyTickColor:(id)a3 toGroupIndex:(unint64_t)a4
{
  tickGroups = self->_tickGroups;
  v6 = a3;
  v7 = [(NSArray *)tickGroups objectAtIndexedSubscript:a4];
  [v7 setTintColor:v6];
}

- (id)_cacheIdentifierForTickCount:(unint64_t)a3 modulus:(unint64_t)a4 size:(CGSize)a5 rounded:(BOOL)a6
{
  width = a5.width;
  height = a5.height;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"ticks-(%@)-%f-%i-%i-%f-%f-%i", self->_cacheKey, *&self->_dialDiameter, a3, a4, width, height, a6];
}

- (void)addTextWithCount:(unint64_t)a3 configurationBlock:(id)a4
{
  v23 = a4;
  [(UIView *)self->_textContainer removeFromSuperview];
  v6 = objc_alloc(MEMORY[0x277D75D18]);
  [(NTKCacheableAnalogDialView *)self bounds];
  v7 = [v6 initWithFrame:?];
  textContainer = self->_textContainer;
  self->_textContainer = v7;

  v9 = objc_opt_new();
  if (a3)
  {
    v10 = 0;
    v11 = self->_dialDiameter * 0.5;
    v12 = *MEMORY[0x277CDA020];
    do
    {
      v13 = [MEMORY[0x277CD9FC8] layer];
      v14 = _disabledLayerActions_0();
      [v13 setActions:v14];

      v15 = [MEMORY[0x277D75348] whiteColor];
      [v13 setForegroundColor:{objc_msgSend(v15, "CGColor")}];

      [v13 setContentsScale:2.0];
      [v13 setAnchorPoint:{0.5, 0.5}];
      v16 = self->_dialDiameter * 0.5 - v23[2](v23, v13, v10);
      [v13 setAlignmentMode:v12];
      v17 = __sincos_stret(v10 * 6.28318531 / a3);
      [v13 setPosition:{v11 + v16 * v17.__sinval, v11 - v16 * v17.__cosval}];
      [(NSArray *)v9 addObject:v13];
      v18 = [(UIView *)self->_textContainer layer];
      [v18 addSublayer:v13];

      ++v10;
    }

    while (a3 != v10);
  }

  textLayers = self->_textLayers;
  self->_textLayers = v9;
  v20 = v9;

  v21 = _disabledLayerActions_0();
  v22 = [(UIView *)self->_textContainer layer];
  [v22 setActions:v21];

  [(NTKCacheableAnalogDialView *)self addSubview:self->_textContainer];
}

- (void)applyTextColor:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__NTKCacheableAnalogDialView_applyTextColor___block_invoke;
  v6[3] = &unk_278782390;
  v7 = v4;
  v5 = v4;
  [(NTKCacheableAnalogDialView *)self enumerateTextLayersWithBlock:v6];
}

void __45__NTKCacheableAnalogDialView_applyTextColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = a2;
  [v5 setForegroundColor:{objc_msgSend(v3, "CGColor")}];
}

@end