@interface MTTintingMaterialSettings
- (MTTintingMaterialSettings)initWithTintingDescription:(id)a3 andDescendantDescriptions:(id)a4;
- (void)_processTintingDescription:(id)a3 defaultingToIdentity:(BOOL)a4;
- (void)dealloc;
@end

@implementation MTTintingMaterialSettings

- (MTTintingMaterialSettings)initWithTintingDescription:(id)a3 andDescendantDescriptions:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = MTTintingMaterialSettings;
  v8 = [(MTTintingMaterialSettings *)&v23 init];
  v9 = v8;
  if (v8)
  {
    [(MTTintingMaterialSettings *)v8 _processTintingDescription:v6 defaultingToIdentity:1];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * v14);
          v16 = [MEMORY[0x1E695DFB0] null];

          if (v15 != v16)
          {
            [(MTTintingMaterialSettings *)v9 _processTintingDescription:v15 defaultingToIdentity:0];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)dealloc
{
  tintColor = self->_tintColor;
  if (tintColor)
  {
    CGColorRelease(tintColor);
  }

  v4.receiver = self;
  v4.super_class = MTTintingMaterialSettings;
  [(MTTintingMaterialSettings *)&v4 dealloc];
}

- (void)_processTintingDescription:(id)a3 defaultingToIdentity:(BOOL)a4
{
  v21 = a3;
  v6 = [v21 objectForKey:@"tintColor"];
  tintColorDescription = self->_tintColorDescription;
  self->_tintColorDescription = v6;

  if (self->_tintColorDescription)
  {
    v8 = [MTColor colorWithDescription:?];
    v9 = CGColorRetain([v8 CGColor]);

    p_tintColor = &self->_tintColor;
    tintColor = self->_tintColor;
    if (v9 != tintColor)
    {
      if (!tintColor)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    p_tintColor = &self->_tintColor;
    tintColor = self->_tintColor;
    if (a4)
    {
      if (!tintColor)
      {
        goto LABEL_13;
      }

      v9 = 0;
LABEL_8:
      CGColorRelease(tintColor);
LABEL_9:
      *p_tintColor = v9;
      goto LABEL_13;
    }

    v9 = self->_tintColor;
  }

  if (tintColor)
  {
    CGColorRelease(v9);
  }

LABEL_13:
  v12 = [v21 objectForKey:@"tintAlpha"];
  v13 = v12;
  if (v12)
  {
    [v12 floatValue];
    tintAlpha = v14;
  }

  else
  {
    tintAlpha = 0.0;
    if (!a4)
    {
      tintAlpha = self->_tintAlpha;
    }
  }

  self->_tintAlpha = tintAlpha;
  v16 = [v21 objectForKey:@"tintColorName"];
  tintColorName = v16;
  if (!v16)
  {
    tintColorName = 0;
    if (!a4)
    {
      tintColorName = self->_tintColorName;
    }
  }

  objc_storeStrong(&self->_tintColorName, tintColorName);

  v18 = [v21 objectForKey:@"tintColorUIStyle"];
  v19 = v18;
  if (v18)
  {
    tintColorUIStyle = [v18 integerValue];
  }

  else if (a4)
  {
    tintColorUIStyle = 0;
  }

  else
  {
    tintColorUIStyle = self->_tintColorUIStyle;
  }

  self->_tintColorUIStyle = tintColorUIStyle;
}

@end