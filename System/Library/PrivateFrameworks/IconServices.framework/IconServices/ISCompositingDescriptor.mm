@interface ISCompositingDescriptor
+ (int64_t)assetAppearanceForAppearance:(int64_t)appearance appearanceVariant:(int64_t)variant;
- (BOOL)digest:(void *)digest size:(unint64_t)size;
- (CGSize)size;
- (ISCompositingDescriptor)init;
- (ISCompositingDescriptor)initWithImageDescriptor:(id)descriptor;
- (NSUUID)digest;
- (id)ICRRenderingMode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encapsulationShape;
- (int64_t)CUINamedImageDeviceClass;
- (int64_t)assetAppearance;
- (unint64_t)ICRAppearance;
- (unint64_t)assetPlatform;
- (void)CUINamedImageDeviceClass;
- (void)encapsulationShape;
- (void)updateWithImageDescriptor:(id)descriptor;
@end

@implementation ISCompositingDescriptor

+ (int64_t)assetAppearanceForAppearance:(int64_t)appearance appearanceVariant:(int64_t)variant
{
  v13 = *MEMORY[0x1E69E9840];
  if ((variant & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    result = 2;
  }

  else if (appearance != 1 || variant)
  {
    if (variant | appearance)
    {
      v7 = _ISDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134218240;
        appearanceCopy = appearance;
        v11 = 2048;
        variantCopy = variant;
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

- (ISCompositingDescriptor)initWithImageDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [(ISCompositingDescriptor *)self init];
  v6 = v5;
  if (v5)
  {
    [(ISCompositingDescriptor *)v5 updateWithImageDescriptor:descriptorCopy];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)updateWithImageDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  [descriptorCopy size];
  [(ISCompositingDescriptor *)self setSize:?];
  [descriptorCopy scale];
  [(ISCompositingDescriptor *)self setScale:?];
  -[ISCompositingDescriptor setPlatformStyle:](self, "setPlatformStyle:", [descriptorCopy platformStyle]);
  tintColor = [descriptorCopy tintColor];
  [(ISCompositingDescriptor *)self setTintColor:tintColor];

  -[ISCompositingDescriptor setAppearance:](self, "setAppearance:", [descriptorCopy appearance]);
  -[ISCompositingDescriptor setAppearanceVariant:](self, "setAppearanceVariant:", [descriptorCopy appearanceVariant]);
  -[ISCompositingDescriptor setBackground:](self, "setBackground:", [descriptorCopy background]);
  -[ISCompositingDescriptor setShouldApplyMask:](self, "setShouldApplyMask:", [descriptorCopy shouldApplyMask]);
  -[ISCompositingDescriptor setLanguageDirection:](self, "setLanguageDirection:", [descriptorCopy languageDirection]);
  -[ISCompositingDescriptor setShape:](self, "setShape:", [descriptorCopy shape]);
  assetPlatformHint = [descriptorCopy assetPlatformHint];

  [(ISCompositingDescriptor *)self setAssetPlatformHint:assetPlatformHint];
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

  platform = [(ISCompositingDescriptor *)self platform];
  if (platform <= 7)
  {
    if ((platform - 1) < 2)
    {
      return 7;
    }

    if (platform == 4)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (platform == 8)
  {
    return 5;
  }

  if (platform != 16)
  {
    if (platform == 32)
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
      appearance = [(ISCompositingDescriptor *)self appearance];
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
  appearanceVariant = [(ISCompositingDescriptor *)self appearanceVariant];
  if (appearanceVariant == 3)
  {
    v24 = MEMORY[0x1E69A89E8];
  }

  else
  {
    if (appearanceVariant != 2)
    {
      if (appearanceVariant)
      {
        v4 = _ISDefaultLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 134217984;
          appearanceVariant2 = [(ISCompositingDescriptor *)self appearanceVariant];
          _os_log_impl(&dword_1A77B8000, v4, OS_LOG_TYPE_DEFAULT, "Unexpected appearance variant requested for icon: %lu", &v27, 0xCu);
        }
      }

      color = [MEMORY[0x1E69A89E8] color];
      goto LABEL_13;
    }

    tintColor = [(ISCompositingDescriptor *)self tintColor];

    v7 = MEMORY[0x1E69A89E8];
    if (tintColor)
    {
      tintColor2 = [(ISCompositingDescriptor *)self tintColor];
      ciColor = [tintColor2 ciColor];
      [ciColor red];
      v11 = v10;
      tintColor3 = [(ISCompositingDescriptor *)self tintColor];
      ciColor2 = [tintColor3 ciColor];
      [ciColor2 green];
      v15 = v14;
      tintColor4 = [(ISCompositingDescriptor *)self tintColor];
      ciColor3 = [tintColor4 ciColor];
      [ciColor3 blue];
      v19 = v18;
      tintColor5 = [(ISCompositingDescriptor *)self tintColor];
      ciColor4 = [tintColor5 ciColor];
      [ciColor4 alpha];
      v23 = [v7 tintWithRed:v11 green:v15 blue:v19 alpha:v22];

      goto LABEL_14;
    }

    v24 = MEMORY[0x1E69A89E8];
  }

  color = [v24 clear];
LABEL_13:
  v23 = color;
LABEL_14:
  v25 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)encapsulationShape
{
  shape = [(ISCompositingDescriptor *)self shape];
  if (shape == 2)
  {
    goto LABEL_6;
  }

  if (shape != 1)
  {
    v4 = +[ISPlatformInfo sharedInstance];
    nativePlatform = [v4 nativePlatform];

    if (nativePlatform > 0x10)
    {
LABEL_7:
      v7 = _ISDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ISCompositingDescriptor *)self encapsulationShape];
      }

      goto LABEL_10;
    }

    if (((1 << nativePlatform) & 0x16) == 0)
    {
      if (((1 << nativePlatform) & 0x10100) != 0)
      {
LABEL_6:
        newCircle = [MEMORY[0x1E6999380] newCircle];
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

LABEL_10:
  newCircle = [MEMORY[0x1E6999380] newRoundedRect];
LABEL_11:

  return newCircle;
}

- (int64_t)assetAppearance
{
  appearance = [(ISCompositingDescriptor *)self appearance];
  appearanceVariant = [(ISCompositingDescriptor *)self appearanceVariant];

  return [ISCompositingDescriptor assetAppearanceForAppearance:appearance appearanceVariant:appearanceVariant];
}

- (unint64_t)assetPlatform
{
  assetPlatformHint = [(ISCompositingDescriptor *)self assetPlatformHint];
  if (assetPlatformHint <= 8 && ((1 << assetPlatformHint) & 0x112) != 0)
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
    nativePlatform = [v5 nativePlatform];

    return nativePlatform;
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
  appearance = [(ISCompositingDescriptor *)self appearance];
  appearanceVariant = [(ISCompositingDescriptor *)self appearanceVariant];
  tintColor = [(ISCompositingDescriptor *)self tintColor];
  ciColor = [tintColor ciColor];
  [ciColor red];
  v10 = v9;
  tintColor2 = [(ISCompositingDescriptor *)self tintColor];
  ciColor2 = [tintColor2 ciColor];
  [ciColor2 green];
  v12 = v11;
  tintColor3 = [(ISCompositingDescriptor *)self tintColor];
  ciColor3 = [tintColor3 ciColor];
  [ciColor3 blue];
  v15 = v14;
  tintColor4 = [(ISCompositingDescriptor *)self tintColor];
  ciColor4 = [tintColor4 ciColor];
  [ciColor4 alpha];
  v19 = [v27 initWithFormat:@"<ISCompositingDescriptor: %p> (%0.2f, %0.2f)@%.0fx a:%ld:..:%ld t:%g:%g:%g:%g ps:%ld b:%ld p:%ld mask:%d legCap:%d ld:%ld shape:%ld ", self, v4, v6, v8, appearance, appearanceVariant, v10, v12, v15, v18, -[ISCompositingDescriptor platformStyle](self, "platformStyle"), -[ISCompositingDescriptor background](self, "background"), -[ISCompositingDescriptor platform](self, "platform"), -[ISCompositingDescriptor shouldApplyMask](self, "shouldApplyMask"), -[ISCompositingDescriptor useLegacyCompatibilityMode](self, "useLegacyCompatibilityMode"), -[ISCompositingDescriptor languageDirection](self, "languageDirection"), -[ISCompositingDescriptor shape](self, "shape")];

  return v19;
}

- (BOOL)digest:(void *)digest size:(unint64_t)size
{
  data[4] = *MEMORY[0x1E69E9840];
  if (digest)
  {
    v4 = size == 0;
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
    tintColor = [(ISCompositingDescriptor *)self tintColor];

    if (tintColor)
    {
      data[0] = 0;
      data[1] = 0;
      tintColor2 = [(ISCompositingDescriptor *)self tintColor];
      digest = [tintColor2 digest];
      [digest getUUIDBytes:data];

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
    v13 = 31 - size;
    if (size > 0x1F)
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

      *(digest + v12++) = v15;
    }

    while (size != v12);
    if (size <= 0x1F)
    {
      v16 = data + size;
      sizeCopy = size;
      do
      {
        v18 = sizeCopy % size;
        v19 = *v16++;
        *(digest + v18) ^= v19;
        sizeCopy = v18 + 1;
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
  [self platform];
  OUTLINED_FUNCTION_0_6(&dword_1A77B8000, v1, v2, "Unable to map platform to device class for icon stack: %lu", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)encapsulationShape
{
  v8 = *MEMORY[0x1E69E9840];
  [self platform];
  OUTLINED_FUNCTION_0_6(&dword_1A77B8000, v1, v2, "Unable to map platform to encapsulation shape for icon stack: %lu", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x1E69E9840];
}

@end