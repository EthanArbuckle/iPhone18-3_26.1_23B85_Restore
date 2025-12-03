@interface NTKCacheableAnalogDialView
- (NTKCacheableAnalogDialView)initWithDialDiameter:(double)diameter device:(id)device;
- (NTKCacheableAnalogDialView)initWithDialDiameter:(double)diameter device:(id)device cache:(id)cache key:(id)key;
- (id)_cacheIdentifierForTickCount:(unint64_t)count modulus:(unint64_t)modulus size:(CGSize)size rounded:(BOOL)rounded;
- (void)addTextWithCount:(unint64_t)count configurationBlock:(id)block;
- (void)addTicksWithCount:(unint64_t)count moduloGroups:(id)groups sizes:(id)sizes roundedCorners:(id)corners;
- (void)applyTextColor:(id)color;
- (void)applyTickColor:(id)color toGroupIndex:(unint64_t)index;
- (void)applyTickColor:(id)color toModulo:(unint64_t)modulo;
- (void)layoutSubviews;
@end

@implementation NTKCacheableAnalogDialView

- (NTKCacheableAnalogDialView)initWithDialDiameter:(double)diameter device:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = NTKCacheableAnalogDialView;
  diameter = [(NTKCacheableAnalogDialView *)&v15 initWithFrame:0.0, 0.0, diameter, diameter];
  v8 = diameter;
  if (diameter)
  {
    diameter->_dialDiameter = diameter;
    cache = diameter->_cache;
    diameter->_cache = 0;

    layer = [(NTKCacheableAnalogDialView *)v8 layer];
    [layer setShouldRasterize:1];

    [deviceCopy screenScale];
    v12 = v11;
    layer2 = [(NTKCacheableAnalogDialView *)v8 layer];
    [layer2 setRasterizationScale:v12];
  }

  return v8;
}

- (NTKCacheableAnalogDialView)initWithDialDiameter:(double)diameter device:(id)device cache:(id)cache key:(id)key
{
  deviceCopy = device;
  cacheCopy = cache;
  keyCopy = key;
  v13 = [(NTKCacheableAnalogDialView *)self initWithDialDiameter:deviceCopy device:diameter];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_cache, cache);
    objc_storeStrong(&v14->_cacheKey, key);
    layer = [(NTKCacheableAnalogDialView *)v14 layer];
    [layer setShouldRasterize:1];

    [deviceCopy screenScale];
    v17 = v16;
    layer2 = [(NTKCacheableAnalogDialView *)v14 layer];
    [layer2 setRasterizationScale:v17];
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

- (void)addTicksWithCount:(unint64_t)count moduloGroups:(id)groups sizes:(id)sizes roundedCorners:(id)corners
{
  v72 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  sizesCopy = sizes;
  cornersCopy = corners;
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
  objc_storeStrong(&self->_moduloGroups, groups);
  v20 = objc_opt_new();
  if ([groupsCopy count])
  {
    v21 = 0;
    do
    {
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
      v23 = [groupsCopy objectAtIndexedSubscript:v21];
      [v20 setObject:v22 forKeyedSubscript:v23];

      ++v21;
    }

    while (v21 < [groupsCopy count]);
  }

  objc_storeStrong(&self->_moduloToGroup, v20);
  dialDiameter = self->_dialDiameter;
  v62 = objc_opt_new();
  v25 = cornersCopy;
  if ([groupsCopy count])
  {
    v26 = 0;
    v27 = dialDiameter * 0.5;
    v29 = -(dialDiameter * 0.5);
    selfCopy = self;
    while (1)
    {
      v30 = [groupsCopy objectAtIndexedSubscript:v26];
      unsignedIntegerValue = [v30 unsignedIntegerValue];

      v32 = [sizesCopy objectAtIndexedSubscript:v26];
      [v32 CGSizeValue];
      v34 = v33;
      v36 = v35;

      if (v25)
      {
        v37 = [v25 objectAtIndexedSubscript:v26];
        bOOLValue = [v37 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      if (!self->_cache)
      {
        break;
      }

      v64 = [(NTKCacheableAnalogDialView *)self _cacheIdentifierForTickCount:count modulus:unsignedIntegerValue size:bOOLValue rounded:v34, v36];
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
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [v55 setTintColor:whiteColor];

      v57 = _disabledLayerActions_0();
      layer = [v55 layer];
      [layer setActions:v57];

      [(NSArray *)v62 addObject:v55];
      [(UIView *)self->_tickContainer addSubview:v55];

      if (++v26 >= [groupsCopy count])
      {
        goto LABEL_38;
      }
    }

    v64 = 0;
LABEL_20:
    layer2 = [MEMORY[0x277CD9ED0] layer];
    [layer2 setBounds:{0.0, 0.0, self->_dialDiameter, self->_dialDiameter}];
    [layer2 setContentsScale:2.0];
    [layer2 setMasksToBounds:1];
    [layer2 setCornerRadius:self->_dialDiameter * 0.5];
    if (count)
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
      if (bOOLValue)
      {
        v44 = v43;
      }

      else
      {
        v44 = 0.0;
      }

      do
      {
        if (!(v41 % unsignedIntegerValue))
        {
          if (v26)
          {
            v45 = 0;
            while (1)
            {
              v46 = [groupsCopy objectAtIndexedSubscript:v45];
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
            v28 = 6.28318531 / count;
            layer3 = [MEMORY[0x277CD9ED0] layer];
            [layer3 setFrame:{0.0, 0.0, v34, v36}];
            [layer3 setAnchorPoint:{0.5, 0.0}];
            [layer3 setCornerRadius:v44];
            v49 = __sincos_stret(v28 * v41);
            [layer3 setPosition:{v27 + v27 * v49.__sinval, v27 + v29 * v49.__cosval}];
            whiteColor2 = [MEMORY[0x277D75348] whiteColor];
            [layer3 setBackgroundColor:{objc_msgSend(whiteColor2, "CGColor")}];

            CGAffineTransformMakeRotation(&v66, v28 * v41);
            v65 = v66;
            [layer3 setAffineTransform:&v65];
            [layer2 addSublayer:layer3];
          }
        }

        ++v41;
      }

      while (v41 != count);
    }

    [layer2 bounds];
    v73.width = v51;
    v73.height = v52;
    UIGraphicsBeginImageContextWithOptions(v73, 0, 0.0);
    [layer2 renderInContext:UIGraphicsGetCurrentContext()];
    v39 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self = selfCopy;
    if (v64)
    {
      [(BSUIMappedImageCache *)selfCopy->_cache setImage:v39 forKey:?];
    }

    v25 = cornersCopy;
    goto LABEL_37;
  }

LABEL_38:
  tickGroups = self->_tickGroups;
  self->_tickGroups = v62;
}

- (void)applyTickColor:(id)color toModulo:(unint64_t)modulo
{
  moduloToGroup = self->_moduloToGroup;
  v7 = MEMORY[0x277CCABB0];
  colorCopy = color;
  v8 = [v7 numberWithUnsignedInteger:modulo];
  v9 = [(NSDictionary *)moduloToGroup objectForKeyedSubscript:v8];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  [(NTKCacheableAnalogDialView *)self applyTickColor:colorCopy toGroupIndex:unsignedIntegerValue];
}

- (void)applyTickColor:(id)color toGroupIndex:(unint64_t)index
{
  tickGroups = self->_tickGroups;
  colorCopy = color;
  v7 = [(NSArray *)tickGroups objectAtIndexedSubscript:index];
  [v7 setTintColor:colorCopy];
}

- (id)_cacheIdentifierForTickCount:(unint64_t)count modulus:(unint64_t)modulus size:(CGSize)size rounded:(BOOL)rounded
{
  width = size.width;
  height = size.height;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"ticks-(%@)-%f-%i-%i-%f-%f-%i", self->_cacheKey, *&self->_dialDiameter, count, modulus, width, height, rounded];
}

- (void)addTextWithCount:(unint64_t)count configurationBlock:(id)block
{
  blockCopy = block;
  [(UIView *)self->_textContainer removeFromSuperview];
  v6 = objc_alloc(MEMORY[0x277D75D18]);
  [(NTKCacheableAnalogDialView *)self bounds];
  v7 = [v6 initWithFrame:?];
  textContainer = self->_textContainer;
  self->_textContainer = v7;

  v9 = objc_opt_new();
  if (count)
  {
    v10 = 0;
    v11 = self->_dialDiameter * 0.5;
    v12 = *MEMORY[0x277CDA020];
    do
    {
      layer = [MEMORY[0x277CD9FC8] layer];
      v14 = _disabledLayerActions_0();
      [layer setActions:v14];

      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [layer setForegroundColor:{objc_msgSend(whiteColor, "CGColor")}];

      [layer setContentsScale:2.0];
      [layer setAnchorPoint:{0.5, 0.5}];
      v16 = self->_dialDiameter * 0.5 - blockCopy[2](blockCopy, layer, v10);
      [layer setAlignmentMode:v12];
      v17 = __sincos_stret(v10 * 6.28318531 / count);
      [layer setPosition:{v11 + v16 * v17.__sinval, v11 - v16 * v17.__cosval}];
      [(NSArray *)v9 addObject:layer];
      layer2 = [(UIView *)self->_textContainer layer];
      [layer2 addSublayer:layer];

      ++v10;
    }

    while (count != v10);
  }

  textLayers = self->_textLayers;
  self->_textLayers = v9;
  v20 = v9;

  v21 = _disabledLayerActions_0();
  layer3 = [(UIView *)self->_textContainer layer];
  [layer3 setActions:v21];

  [(NTKCacheableAnalogDialView *)self addSubview:self->_textContainer];
}

- (void)applyTextColor:(id)color
{
  colorCopy = color;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__NTKCacheableAnalogDialView_applyTextColor___block_invoke;
  v6[3] = &unk_278782390;
  v7 = colorCopy;
  v5 = colorCopy;
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