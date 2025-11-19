@interface CUIPSLayerEffectsPreset
- (CUIPSLayerEffectsPreset)initWithLayerEffects:(id)a3 forScaleFactor:(double)a4;
@end

@implementation CUIPSLayerEffectsPreset

- (CUIPSLayerEffectsPreset)initWithLayerEffects:(id)a3 forScaleFactor:(double)a4
{
  v4 = self;
  if (a3)
  {
    if (a4 > 0.0)
    {
      v24.receiver = self;
      v24.super_class = CUIPSLayerEffectsPreset;
      v4 = [(CUIShapeEffectPreset *)&v24 initWithEffectScale:?];
      if (v4)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v6 = [objc_msgSend(a3 "effectList")];
        v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v21;
          while (2)
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v21 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v20 + 1) + 8 * i);
              v19 = 0;
              if ([v11 visible] && (objc_msgSend(v11, "updateLayerEffectPreset:error:", v4, &v19) & 1) == 0 && v19)
              {
                _CUILog(4, "Unable to update layer effect preset: %@", v12, v13, v14, v15, v16, v17, v19);

                return 0;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  return v4;
}

@end