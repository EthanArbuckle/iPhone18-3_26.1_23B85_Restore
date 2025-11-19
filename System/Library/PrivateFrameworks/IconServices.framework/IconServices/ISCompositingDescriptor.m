@interface ISCompositingDescriptor
+ (int64_t)assetAppearanceForAppearance:(int64_t)a3 appearanceVariant:(int64_t)a4;
- (BOOL)digest:(void *)a3 size:(unint64_t)a4;
- (CGSize)size;
- (ISCompositingDescriptor)init;
- (ISCompositingDescriptor)initWithImageDescriptor:(id)a3;
- (NSUUID)digest;
- (id)ICRRenderingMode;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encapsulationShape;
- (int64_t)CUINamedImageDeviceClass;
- (int64_t)assetAppearance;
- (unint64_t)ICRAppearance;
- (unint64_t)assetPlatform;
- (void)CUINamedImageDeviceClass;
- (void)encapsulationShape;
- (void)updateWithImageDescriptor:(id)a3;
@end

@implementation ISCompositingDescriptor

+ (int64_t)assetAppearanceForAppearance:(int64_t)a3 appearanceVariant:(int64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    result = 2;
  }

  else if (a3 != 1 || a4)
  {
    if (a4 | a3)
    {
      v7 = _ISDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134218240;
        v10 = a3;
        v11 = 2048;
        v12 = a4;
        _os_log_impl(&dword_1A77B8000, v7, OS_LOG_TYPE_DEFAULT, "Unknown appearance configuration. A:%lu, AV:%lu", &v9, 0x16u);
      }
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (ISCompositingDescriptor)init
{
  v5.receiver = self;
  v5.super_class = ISCompositingDescriptor;
  v2 = [(ISCompositingDescriptor *)&v5 init];
  if (v2)
  {
    v3 = +[ISPlatformInfo sharedInstance];
    *(v2 + 8) = [v3 nativePlatform];

    *(v2 + 9) = 1;
    *(v2 + 9) = 0;
  }

  return v2;
}

- (ISCompositingDescriptor)initWithImageDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(ISCompositingDescriptor *)self init];
  v6 = v5;
  if (v5)
  {
    [(ISCompositingDescriptor *)v5 updateWithImageDescriptor:v4];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[6] = self->_size;
  *(v4 + 2) = *&self->_scale;
  *(v4 + 3) = self->_platformStyle;
  v5 = [(IFColor *)self->_tintColor copy];
  v6 = *(v4 + 4);
  *(v4 + 4) = v5;

  *(v4 + 5) = self->_appearance;
  *(v4 + 6) = self->_appearanceVariant;
  *(v4 + 7) = self->_background;
  *(v4 + 8) = self->_platform;
  *(v4 + 8) = self->_useLegacyCompatibilityMode;
  *(v4 + 9) = self->_shouldApplyMask;
  *(v4 + 9) = self->_languageDirection;
  *(v4 + 10) = self->_shape;
  *(v4 + 11) = self->_assetPlatformHint;
  *(v4 + 10) = self->_cacheFinalizedIconOnGeneratedImage;
  return v4;
}

- (void)updateWithImageDescriptor:(id)a3
{
  v4 = a3;
  [v4 size];
  [(ISCompositingDescriptor *)self setSize:?];
  [v4 scale];
  [(ISCompositingDescriptor *)self setScale:?];
  -[ISCompositingDescriptor setPlatformStyle:](self, "setPlatformStyle:", [v4 platformStyle]);
  v5 = [v4 tintColor];
  [(ISCompositingDescriptor *)self setTintColor:v5];

  -[ISCompositingDescriptor setAppearance:](self, "setAppearance:", [v4 appearance]);
  -[ISCompositingDescriptor setAppearanceVariant:](self, "setAppearanceVariant:", [v4 appearanceVariant]);
  -[ISCompositingDescriptor setBackground:](self, "setBackground:", [v4 background]);
  -[ISCompositingDescriptor setShouldApplyMask:](self, "setShouldApplyMask:", [v4 shouldApplyMask]);
  -[ISCompositingDescriptor setLanguageDirection:](self, "setLanguageDirection:", [v4 languageDirection]);
  -[ISCompositingDescriptor setShape:](self, "setShape:", [v4 shape]);
  v6 = [v4 assetPlatformHint];

  [(ISCompositingDescriptor *)self setAssetPlatformHint:v6];
}

- (int64_t)CUINamedImageDeviceClass
{
  result = [(ISCompositingDescriptor *)self platformStyle];
  switch(result)
  {
    case 4:
      return 5;
    case 3:
      return 7;
    case 1:
      return result;
  }

  v4 = [(ISCompositingDescriptor *)self platform];
  if (v4 <= 7)
  {
    if ((v4 - 1) < 2)
    {
      return 7;
    }

    if (v4 == 4)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (v4 == 8)
  {
    return 5;
  }

  if (v4 != 16)
  {
    if (v4 == 32)
    {
      return 3;
    }

LABEL_14:
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ISCompositingDescriptor *)self CUINamedImageDeviceClass];
    }

    return 1;
  }

  return 8;
}

- (unint64_t)ICRAppearance
{
  v8 = *MEMORY[0x1E69E9840];
  result = [(ISCompositingDescriptor *)self appearance];
  if (result >= 2)
  {
    v4 = _ISDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = [(ISCompositingDescriptor *)self appearance];
      _os_log_impl(&dword_1A77B8000, v4, OS_LOG_TYPE_INFO, "Unexpected appearance requested for icon stack: %lu", &v6, 0xCu);
    }

    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)ICRRenderingMode
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(ISCompositingDescriptor *)self appearanceVariant];
  if (v3 == 3)
  {
    v24 = MEMORY[0x1E69A89E8];
  }

  else
  {
    if (v3 != 2)
    {
      if (v3)
      {
        v4 = _ISDefaultLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 134217984;
          v28 = [(ISCompositingDescriptor *)self appearanceVariant];
          _os_log_impl(&dword_1A77B8000, v4, OS_LOG_TYPE_DEFAULT, "Unexpected appearance variant requested for icon: %lu", &v27, 0xCu);
        }
      }

      v5 = [MEMORY[0x1E69A89E8] color];
      goto LABEL_13;
    }

    v6 = [(ISCompositingDescriptor *)self tintColor];

    v7 = MEMORY[0x1E69A89E8];
    if (v6)
    {
      v8 = [(ISCompositingDescriptor *)self tintColor];
      v9 = [v8 ciColor];
      [v9 red];
      v11 = v10;
      v12 = [(ISCompositingDescriptor *)self tintColor];
      v13 = [v12 ciColor];
      [v13 green];
      v15 = v14;
      v16 = [(ISCompositingDescriptor *)self tintColor];
      v17 = [v16 ciColor];
      [v17 blue];
      v19 = v18;
      v20 = [(ISCompositingDescriptor *)self tintColor];
      v21 = [v20 ciColor];
      [v21 alpha];
      v23 = [v7 tintWithRed:v11 green:v15 blue:v19 alpha:v22];

      goto LABEL_14;
    }

    v24 = MEMORY[0x1E69A89E8];
  }

  v5 = [v24 clear];
LABEL_13:
  v23 = v5;
LABEL_14:
  v25 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)encapsulationShape
{
  v3 = [(ISCompositingDescriptor *)self shape];
  if (v3 == 2)
  {
    goto LABEL_6;
  }

  if (v3 != 1)
  {
    v4 = +[ISPlatformInfo sharedInstance];
    v5 = [v4 nativePlatform];

    if (v5 > 0x10)
    {
LABEL_7:
      v7 = _ISDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ISCompositingDescriptor *)self encapsulationShape];
      }

      goto LABEL_10;
    }

    if (((1 << v5) & 0x16) == 0)
    {
      if (((1 << v5) & 0x10100) != 0)
      {
LABEL_6:
        v6 = [MEMORY[0x1E6999380] newCircle];
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

LABEL_10:
  v6 = [MEMORY[0x1E6999380] newRoundedRect];
LABEL_11:

  return v6;
}

- (int64_t)assetAppearance
{
  v3 = [(ISCompositingDescriptor *)self appearance];
  v4 = [(ISCompositingDescriptor *)self appearanceVariant];

  return [ISCompositingDescriptor assetAppearanceForAppearance:v3 appearanceVariant:v4];
}

- (unint64_t)assetPlatform
{
  v3 = [(ISCompositingDescriptor *)self assetPlatformHint];
  if (v3 <= 8 && ((1 << v3) & 0x112) != 0)
  {

    return [(ISCompositingDescriptor *)self assetPlatformHint];
  }

  else if ([(ISCompositingDescriptor *)self platform])
  {

    return [(ISCompositingDescriptor *)self platform];
  }

  else
  {
    v5 = +[ISPlatformInfo sharedInstance];
    v6 = [v5 nativePlatform];

    return v6;
  }
}

- (id)description
{
  v27 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(ISCompositingDescriptor *)self size];
  v4 = v3;
  [(ISCompositingDescriptor *)self size];
  v6 = v5;
  [(ISCompositingDescriptor *)self scale];
  v8 = v7;
  v23 = [(ISCompositingDescriptor *)self appearance];
  v22 = [(ISCompositingDescriptor *)self appearanceVariant];
  v28 = [(ISCompositingDescriptor *)self tintColor];
  v26 = [v28 ciColor];
  [v26 red];
  v10 = v9;
  v25 = [(ISCompositingDescriptor *)self tintColor];
  v24 = [v25 ciColor];
  [v24 green];
  v12 = v11;
  v21 = [(ISCompositingDescriptor *)self tintColor];
  v13 = [v21 ciColor];
  [v13 blue];
  v15 = v14;
  v16 = [(ISCompositingDescriptor *)self tintColor];
  v17 = [v16 ciColor];
  [v17 alpha];
  v19 = [v27 initWithFormat:@"<ISCompositingDescriptor: %p> (%0.2f, %0.2f)@%.0fx a:%ld:..:%ld t:%g:%g:%g:%g ps:%ld b:%ld p:%ld mask:%d legCap:%d ld:%ld shape:%ld ", self, v4, v6, v8, v23, v22, v10, v12, v15, v18, -[ISCompositingDescriptor platformStyle](self, "platformStyle"), -[ISCompositingDescriptor background](self, "background"), -[ISCompositingDescriptor platform](self, "platform"), -[ISCompositingDescriptor shouldApplyMask](self, "shouldApplyMask"), -[ISCompositingDescriptor useLegacyCompatibilityMode](self, "useLegacyCompatibilityMode"), -[ISCompositingDescriptor languageDirection](self, "languageDirection"), -[ISCompositingDescriptor shape](self, "shape")];

  return v19;
}

- (BOOL)digest:(void *)a3 size:(unint64_t)a4
{
  data[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    memset(&v22, 0, sizeof(v22));
    CC_SHA256_Init(&v22);
    data[0] = [(ISCompositingDescriptor *)self platformStyle];
    CC_SHA256_Update(&v22, data, 8u);
    v9 = [(ISCompositingDescriptor *)self tintColor];

    if (v9)
    {
      data[0] = 0;
      data[1] = 0;
      v10 = [(ISCompositingDescriptor *)self tintColor];
      v11 = [v10 digest];
      [v11 getUUIDBytes:data];

      CC_SHA256_Update(&v22, data, 0x10u);
    }

    data[0] = [(ISCompositingDescriptor *)self appearance];
    CC_SHA256_Update(&v22, data, 8u);
    data[0] = [(ISCompositingDescriptor *)self appearanceVariant];
    CC_SHA256_Update(&v22, data, 8u);
    data[0] = [(ISCompositingDescriptor *)self background];
    CC_SHA256_Update(&v22, data, 8u);
    data[0] = [(ISCompositingDescriptor *)self platform];
    CC_SHA256_Update(&v22, data, 8u);
    LOBYTE(data[0]) = [(ISCompositingDescriptor *)self useLegacyCompatibilityMode];
    CC_SHA256_Update(&v22, data, 1u);
    LOBYTE(data[0]) = [(ISCompositingDescriptor *)self shouldApplyMask];
    CC_SHA256_Update(&v22, data, 1u);
    data[0] = [(ISCompositingDescriptor *)self languageDirection];
    CC_SHA256_Update(&v22, data, 8u);
    data[0] = [(ISCompositingDescriptor *)self shape];
    CC_SHA256_Update(&v22, data, 8u);
    CC_SHA256_Final(data, &v22);
    v12 = 0;
    v13 = 31 - a4;
    if (a4 > 0x1F)
    {
      v13 = 0;
    }

    v14 = v13 + 1;
    do
    {
      if (v12 > 0x1F)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(data + v12);
      }

      *(a3 + v12++) = v15;
    }

    while (a4 != v12);
    if (a4 <= 0x1F)
    {
      v16 = data + a4;
      v17 = a4;
      do
      {
        v18 = v17 % a4;
        v19 = *v16++;
        *(a3 + v18) ^= v19;
        v17 = v18 + 1;
        --v14;
      }

      while (v14);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSUUID)digest
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  v2 = [(ISCompositingDescriptor *)self digest:v6 size:16];
  v3 = 0;
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] _IF_UUIDWithDigestBytes:v6 size:16];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)CUINamedImageDeviceClass
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 platform];
  OUTLINED_FUNCTION_0_6(&dword_1A77B8000, v1, v2, "Unable to map platform to device class for icon stack: %lu", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)encapsulationShape
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 platform];
  OUTLINED_FUNCTION_0_6(&dword_1A77B8000, v1, v2, "Unable to map platform to encapsulation shape for icon stack: %lu", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x1E69E9840];
}

@end