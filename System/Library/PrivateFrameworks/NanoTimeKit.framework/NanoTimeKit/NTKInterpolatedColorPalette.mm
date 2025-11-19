@interface NTKInterpolatedColorPalette
+ (BOOL)resolveInstanceMethod:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (NTKInterpolatedColorPalette)initWithColorPalette:(id)a3;
- (NTKInterpolatedColorPalette)initWithFromPalette:(id)a3 toPalette:(id)a4;
- (id)interpolatedColorFromSelector:(SEL)a3 parameter:(id)a4;
- (id)valueForKey:(id)a3;
- (void)setTransitionFraction:(double)a3;
@end

@implementation NTKInterpolatedColorPalette

- (NTKInterpolatedColorPalette)initWithFromPalette:(id)a3 toPalette:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = NTKInterpolatedColorPalette;
  v8 = [(NTKInterpolatedColorPalette *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    fromPalette = v8->_fromPalette;
    v8->_fromPalette = v9;

    v11 = [v7 copy];
    toPalette = v8->_toPalette;
    v8->_toPalette = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v8->_cache;
    v8->_cache = v13;
  }

  return v8;
}

- (NTKInterpolatedColorPalette)initWithColorPalette:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NTKInterpolatedColorPalette;
  v5 = [(NTKInterpolatedColorPalette *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    fromPalette = v5->_fromPalette;
    v5->_fromPalette = v6;

    v8 = [v4 copy];
    toPalette = v5->_toPalette;
    v5->_toPalette = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v5->_cache;
    v5->_cache = v10;
  }

  return v5;
}

- (id)valueForKey:(id)a3
{
  v4 = NSSelectorFromString(a3);

  return [(NTKInterpolatedColorPalette *)self interpolatedColorFromSelector:v4 parameter:0];
}

- (id)interpolatedColorFromSelector:(SEL)a3 parameter:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a3);
  v9 = [v7 stringWithFormat:@"%@-%@", v8, v6];

  v10 = [(NSCache *)self->_cache objectForKey:v9];
  if (v10)
  {
    v11 = v10;
    goto LABEL_22;
  }

  v12 = PerformSelectorWithArgument(self->_fromPalette, a3, v6);
  v13 = [(NTKFaceColorPalette *)self->_fromPalette identifier];
  v14 = [(NTKFaceColorPalette *)self->_toPalette identifier];
  v15 = [v13 isEqual:v14];

  if (v15)
  {
    v16 = v12;
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v17 = PerformSelectorWithArgument(self->_toPalette, a3, v6);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v18 = [(NTKInterpolatedColorPalette *)self colorInterpolator];

    if (v18)
    {
      v19 = [(NTKInterpolatedColorPalette *)self colorInterpolator];
      [(NTKInterpolatedColorPalette *)self transitionFraction];
      v16 = (v19)[2](v19, v12, v17);

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
    v24 = [(NTKInterpolatedColorPalette *)self floatInterpolator];

    if (v24)
    {
      v25 = [(NTKInterpolatedColorPalette *)self floatInterpolator];
      [(NTKInterpolatedColorPalette *)self transitionFraction];
      v27 = v25[2](v25, v21, v23, v26);
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
    [(NSCache *)self->_cache setObject:v16 forKey:v9];
  }

LABEL_21:
  v11 = v16;

LABEL_22:

  return v11;
}

- (void)setTransitionFraction:(double)a3
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  self->_transitionFraction = a3;
  cache = self->_cache;

  [(NSCache *)cache removeAllObjects];
}

+ (BOOL)resolveInstanceMethod:(SEL)a3
{
  v5 = NSStringFromSelector(a3);
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
      v13.receiver = a1;
      v13.super_class = &OBJC_METACLASS___NTKInterpolatedColorPalette;
      v10 = objc_msgSendSuper2(&v13, sel_resolveInstanceMethod_, a3);
      goto LABEL_7;
    }

    v8 = "@@:";
    v9 = NTKInterpolatedColorPalette_noArgumentMethodImplementation;
  }

  v10 = class_addMethod(a1, a3, v9, v8);
LABEL_7:
  v11 = v10;

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    fromPalette = self->_fromPalette;
    v7 = [(NTKInterpolatedColorPalette *)v4 fromPalette];
    if ([(NTKFaceColorPalette *)fromPalette isEqual:v7])
    {
      toPalette = self->_toPalette;
      v9 = [(NTKInterpolatedColorPalette *)v5 toPalette];
      if ([(NTKFaceColorPalette *)toPalette isEqual:v9])
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