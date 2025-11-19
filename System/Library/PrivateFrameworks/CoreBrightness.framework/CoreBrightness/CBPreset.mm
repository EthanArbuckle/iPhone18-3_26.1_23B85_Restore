@interface CBPreset
+ (id)newActive:(unint64_t)a3;
- (CBPreset)initWithCAPreset:(id)a3;
@end

@implementation CBPreset

+ (id)newActive:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = 0;
  memset(__b, 0, sizeof(__b));
  obj = [MEMORY[0x1E6979328] displays];
  v12 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v14 = 0;
      v14 = *(__b[1] + 8 * v9);
      v3 = [v14 displayId];
      if (v3 == v16)
      {
        v15 = [v14 currentPreset];
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  if (v15)
  {
    v4 = [v18 alloc];
    v6 = [v4 initWithCAPreset:v15];
  }

  else
  {
    v6 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

- (CBPreset)initWithCAPreset:(id)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11.receiver = self;
  v11.super_class = CBPreset;
  v14 = [(CBPreset *)&v11 init];
  if (v14)
  {
    v3 = [v12 allowAutoBrightness];
    v14->_autoBrighnessDisabled = (v3 ^ 1) & 1;
    v4 = [v12 allowTrueTone];
    v14->_trueToneDisabled = (v4 ^ 1) & 1;
    v5 = [v12 allowNightShift];
    v14->_nightShiftDisabled = (v5 ^ 1) & 1;
    [v12 minSliderBrightness];
    v10 = v6;
    [v12 maxSliderBrightness];
    v14->_brightnessDisabled = vabdd_f64(v10, v7) < 0.5;
    v8 = [v12 isReference];
    v14->_referenceMode = v8;
  }

  return v14;
}

@end