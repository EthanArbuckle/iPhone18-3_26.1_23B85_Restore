@interface CUIThemeDataEffectPreset
- (CUIThemeDataEffectPreset)initWithEffectData:(const _cuieffectdata *)a3 forScaleFactor:(double)a4;
@end

@implementation CUIThemeDataEffectPreset

- (CUIThemeDataEffectPreset)initWithEffectData:(const _cuieffectdata *)a3 forScaleFactor:(double)a4
{
  v34.receiver = self;
  v34.super_class = CUIThemeDataEffectPreset;
  v7 = [(CUIShapeEffectPreset *)&v34 init];
  v14 = v7;
  if (a3 && a3->var0 == 1129596504)
  {
    v32 = a2;
    [(CUIShapeEffectPreset *)v7 setScaleFactor:a4];
    var0 = a3->var4.var0;
    if (var0)
    {
      v21 = 0;
      var1 = a3->var4.var1;
      v23 = &a3->var4.var1[var0 + 1];
      v33 = &a3->var4.var1[var0 + 4];
      while (1)
      {
        v24 = var1[v21];
        v25 = v23 + v24;
        if (*(v23 + v24 + 4))
        {
          break;
        }

LABEL_22:
        if (++v21 == var0)
        {
          goto LABEL_23;
        }
      }

      v26 = 0;
      v27 = (v33 + v24);
      while (1)
      {
        v28 = *(v27 - 1);
        if (v28 <= 0xB)
        {
          if (((1 << v28) & 0xFB0) != 0)
          {
            *&v29 = *v27;
            goto LABEL_16;
          }

          if (((1 << v28) & 0xC) != 0)
          {
            v29 = *v27;
            goto LABEL_16;
          }

          if (v28 == 6)
          {
            *&v29 = *v27;
            goto LABEL_16;
          }
        }

        if (v28 >= 2)
        {
          if (v28 >= 0xC)
          {
            _CUILog(4, "Unrecognized effect parameter type %d encountered for effect type %u. Skipping.", v15, v28, v16, v17, v18, v19, *(v27 - 1));
            goto LABEL_17;
          }

          v29 = 0.0;
        }

        else
        {
          *&v29 = *v27 | (*(v27 + 2) << 16);
        }

LABEL_16:
        [CUIShapeEffectPreset addValue:v14 forParameter:"addValue:forParameter:withEffectType:atEffectIndex:" withEffectType:*&v29 atEffectIndex:?];
LABEL_17:
        ++v26;
        v27 += 2;
        if (v26 >= *(v25 + 1))
        {
          goto LABEL_22;
        }
      }
    }

LABEL_23:
    if ([(CUIShapeEffectPreset *)v14 effectCount]!= var0)
    {
      [CUIThemeDataEffectPreset initWithEffectData:v32 forScaleFactor:v14];
    }
  }

  else
  {
    _CUILog(4, "Invalid effect data signature", v8, v9, v10, v11, v12, v13, v31);

    return 0;
  }

  return v14;
}

@end