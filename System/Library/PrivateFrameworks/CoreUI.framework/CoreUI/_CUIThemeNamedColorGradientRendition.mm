@interface _CUIThemeNamedColorGradientRendition
- (CGPoint)gradientEndPoint;
- (CGPoint)gradientStartPoint;
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (void)dealloc;
@end

@implementation _CUIThemeNamedColorGradientRendition

- (CGPoint)gradientStartPoint
{
  x = self->_gradientStart.x;
  y = self->_gradientStart.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)gradientEndPoint
{
  x = self->_gradientEnd.x;
  y = self->_gradientEnd.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIThemeNamedColorGradientRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v33.receiver = self;
  v33.super_class = _CUIThemeNamedColorGradientRendition;
  v5 = [(CUIThemeRendition *)&v33 _initWithCSIHeader:a3 version:*&a4];
  f64 = v5->f64;
  v13 = &a3->var0 + 4 * a3->var11.var0 + a3->var10;
  v16 = *(v13 + 45);
  v14 = (v13 + 180);
  v15 = v16;
  if (v16 == 1095193153)
  {
    v28 = v14->i32[1];
    *&v5[14].f64[1] = v14[1].u32[0];
    if (!v28)
    {
      goto LABEL_29;
    }

    v18 = 0;
    v19 = 0;
    v29 = &v14[2] + 1;
    while (1)
    {
      if (v18)
      {
        if (!v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v18 = objc_alloc_init(NSMutableArray);
        if (!v19)
        {
LABEL_27:
          v19 = objc_alloc_init(NSMutableArray);
        }
      }

      v30 = [[NSString alloc] initWithUTF8String:v29 + 2];
      LODWORD(v31) = *v29;
      [v19 addObject:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v31)}];
      [v18 addObject:v30];

      v29 = (v29 + v29[1] + 8);
      if (!--v28)
      {
        goto LABEL_30;
      }
    }
  }

  if (v15 == 1195856449)
  {
    v23 = v14[3];
    v5[15] = vcvtq_f64_f32(v14[2]);
    v24 = v14->i32[1];
    *&v5[14].f64[1] = v14[1].u32[0];
    v5[16] = vcvtq_f64_f32(v23);
    if (!v24)
    {
      goto LABEL_29;
    }

    v18 = 0;
    v19 = 0;
    v25 = v14 + 4;
    while (1)
    {
      if (v18)
      {
        if (!v19)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v18 = objc_alloc_init(NSMutableArray);
        if (!v19)
        {
LABEL_19:
          v19 = objc_alloc_init(NSMutableArray);
        }
      }

      v26 = [[NSString alloc] initWithUTF8String:&v25[1]];
      LODWORD(v27) = v25->i32[0];
      [v19 addObject:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v27)}];
      [v18 addObject:v26];

      v25 = (v25 + v25->u32[1] + 8);
      if (!--v24)
      {
        goto LABEL_30;
      }
    }
  }

  if (v15 == 1313296961)
  {
    v17 = v14->i32[1];
    *&v5[14].f64[1] = v14[1].u32[0];
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = v14 + 2;
      while (1)
      {
        if (v18)
        {
          if (!v19)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v18 = objc_alloc_init(NSMutableArray);
          if (!v19)
          {
LABEL_11:
            v19 = objc_alloc_init(NSMutableArray);
          }
        }

        v21 = [[NSString alloc] initWithUTF8String:&v20[1]];
        LODWORD(v22) = v20->i32[0];
        [v19 addObject:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v22)}];
        [v18 addObject:v21];

        v20 = (v20 + v20->u32[1] + 8);
        if (!--v17)
        {
          goto LABEL_30;
        }
      }
    }
  }

  else
  {
    _CUILog(4, "CoreUI: Got a gradient that i don't understand skipping everything", v6, v7, v8, v9, v10, v11, v33.receiver);
  }

LABEL_29:
  v19 = 0;
  v18 = 0;
LABEL_30:
  f64[27] = v18;
  f64[28] = v19;
  return f64;
}

@end