@interface NTKInterpolatedColorPalette
+ (BOOL)resolveInstanceMethod:(SEL)method;
- (BOOL)isEqual:(id)equal;
- (NTKInterpolatedColorPalette)initWithColorPalette:(id)palette;
- (NTKInterpolatedColorPalette)initWithFromPalette:(id)palette toPalette:(id)toPalette;
- (id)interpolatedColorFromSelector:(SEL)selector parameter:(id)parameter;
- (id)valueForKey:(id)key;
- (void)setTransitionFraction:(double)fraction;
@end

@implementation NTKInterpolatedColorPalette

- (NTKInterpolatedColorPalette)initWithFromPalette:(id)palette toPalette:(id)toPalette
{
  paletteCopy = palette;
  toPaletteCopy = toPalette;
  v16.receiver = self;
  v16.super_class = NTKInterpolatedColorPalette;
  v8 = [(NTKInterpolatedColorPalette *)&v16 init];
  if (v8)
  {
    v9 = [paletteCopy copy];
    fromPalette = v8->_fromPalette;
    v8->_fromPalette = v9;

    v11 = [toPaletteCopy copy];
    toPalette = v8->_toPalette;
    v8->_toPalette = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v8->_cache;
    v8->_cache = v13;
  }

  return v8;
}

- (NTKInterpolatedColorPalette)initWithColorPalette:(id)palette
{
  paletteCopy = palette;
  v13.receiver = self;
  v13.super_class = NTKInterpolatedColorPalette;
  v5 = [(NTKInterpolatedColorPalette *)&v13 init];
  if (v5)
  {
    v6 = [paletteCopy copy];
    fromPalette = v5->_fromPalette;
    v5->_fromPalette = v6;

    v8 = [paletteCopy copy];
    toPalette = v5->_toPalette;
    v5->_toPalette = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v5->_cache;
    v5->_cache = v10;
  }

  return v5;
}

- (id)valueForKey:(id)key
{
  v4 = NSSelectorFromString(key);

  return [(NTKInterpolatedColorPalette *)self interpolatedColorFromSelector:v4 parameter:0];
}

- (id)interpolatedColorFromSelector:(SEL)selector parameter:(id)parameter
{
  parameterCopy = parameter;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(selector);
  parameterCopy = [v7 stringWithFormat:@"%@-%@", v8, parameterCopy];

  v10 = [(NSCache *)self->_cache objectForKey:parameterCopy];
  if (v10)
  {
    v11 = v10;
    goto LABEL_22;
  }

  v12 = PerformSelectorWithArgument(self->_fromPalette, selector, parameterCopy);
  identifier = [(NTKFaceColorPalette *)self->_fromPalette identifier];
  identifier2 = [(NTKFaceColorPalette *)self->_toPalette identifier];
  v15 = [identifier isEqual:identifier2];

  if (v15)
  {
    v16 = v12;
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v17 = PerformSelectorWithArgument(self->_toPalette, selector, parameterCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    colorInterpolator = [(NTKInterpolatedColorPalette *)self colorInterpolator];

    if (colorInterpolator)
    {
      colorInterpolator2 = [(NTKInterpolatedColorPalette *)self colorInterpolator];
      [(NTKInterpolatedColorPalette *)self transitionFraction];
      v16 = (colorInterpolator2)[2](colorInterpolator2, v12, v17);

      goto LABEL_19;
    }

    [(NTKInterpolatedColorPalette *)self transitionFraction];
    v28 = NTKInterpolateBetweenColors();
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v16 = 0;
      goto LABEL_19;
    }

    [v12 floatValue];
    v21 = v20;
    [v17 floatValue];
    v23 = v22;
    floatInterpolator = [(NTKInterpolatedColorPalette *)self floatInterpolator];

    if (floatInterpolator)
    {
      floatInterpolator2 = [(NTKInterpolatedColorPalette *)self floatInterpolator];
      [(NTKInterpolatedColorPalette *)self transitionFraction];
      v27 = floatInterpolator2[2](floatInterpolator2, v21, v23, v26);
    }

    else
    {
      [(NTKInterpolatedColorPalette *)self transitionFraction];
      CLKInterpolateBetweenFloatsClipped();
      v27 = v29;
    }

    v28 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  }

  v16 = v28;
LABEL_19:

  if (v16)
  {
LABEL_20:
    [(NSCache *)self->_cache setObject:v16 forKey:parameterCopy];
  }

LABEL_21:
  v11 = v16;

LABEL_22:

  return v11;
}

- (void)setTransitionFraction:(double)fraction
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  self->_transitionFraction = fraction;
  cache = self->_cache;

  [(NSCache *)cache removeAllObjects];
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v5 = NSStringFromSelector(method);
  v6 = [v5 componentsSeparatedByString:@":"];
  v7 = [v6 count];

  if (v7 == 2)
  {
    v8 = "@@:@";
    v9 = NTKInterpolatedColorPalette_singleArgumentMethodImplementation;
  }

  else
  {
    if (v7 != 1)
    {
      v13.receiver = self;
      v13.super_class = &OBJC_METACLASS___NTKInterpolatedColorPalette;
      v10 = objc_msgSendSuper2(&v13, sel_resolveInstanceMethod_, method);
      goto LABEL_7;
    }

    v8 = "@@:";
    v9 = NTKInterpolatedColorPalette_noArgumentMethodImplementation;
  }

  v10 = class_addMethod(self, method, v9, v8);
LABEL_7:
  v11 = v10;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    fromPalette = self->_fromPalette;
    fromPalette = [(NTKInterpolatedColorPalette *)equalCopy fromPalette];
    if ([(NTKFaceColorPalette *)fromPalette isEqual:fromPalette])
    {
      toPalette = self->_toPalette;
      toPalette = [(NTKInterpolatedColorPalette *)v5 toPalette];
      if ([(NTKFaceColorPalette *)toPalette isEqual:toPalette])
      {
        [(NTKInterpolatedColorPalette *)self transitionFraction];
        v11 = v10;
        [(NTKInterpolatedColorPalette *)v5 transitionFraction];
        v13 = v11 == v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

@end