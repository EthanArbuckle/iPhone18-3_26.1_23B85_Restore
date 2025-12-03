@interface ISImageDescriptor
+ (id)imageDescriptorNamed:(id)named;
- (BOOL)digest:(void *)digest size:(unint64_t)size;
- (BOOL)isEqual:(id)equal;
- (CGSize)sanitizedSize;
- (CGSize)size;
- (IFColor)tintColor;
- (ISImageDescriptor)init;
- (ISImageDescriptor)initWithCoder:(id)coder;
- (ISImageDescriptor)initWithSize:(CGSize)size scale:(double)scale;
- (NSString)description;
- (NSUUID)digest;
- (double)continuousCornerRadius;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)appearance;
- (int64_t)appearanceVariant;
- (int64_t)layoutDirection;
- (unint64_t)hash;
- (unint64_t)platform;
- (unint64_t)shape;
- (void)encodeWithCoder:(id)coder;
- (void)setDrawBadge:(BOOL)badge;
- (void)setDrawBorder:(BOOL)border;
- (void)setSelectedVariant:(BOOL)variant;
- (void)setShape:(unint64_t)shape;
- (void)setShouldApplyMask:(BOOL)mask;
- (void)setTemplateVariant:(BOOL)variant;
@end

@implementation ISImageDescriptor

- (IFColor)tintColor
{
  v3 = +[ISDefaults sharedInstance];
  tintColor = [v3 tintColor];

  if (tintColor)
  {
    objc_storeStrong(&self->_tintColor, tintColor);
  }

  tintColor = self->_tintColor;
  v6 = tintColor;

  return tintColor;
}

- (NSUUID)digest
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  v2 = [(ISImageDescriptor *)self digest:v6 size:16];
  v3 = 0;
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] _IF_UUIDWithDigestBytes:v6 size:16];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (int64_t)layoutDirection
{
  languageDirection = [(ISImageDescriptor *)self languageDirection];
  if (languageDirection == 1)
  {
    return 5;
  }

  else
  {
    return 4 * (languageDirection == 2);
  }
}

- (int64_t)appearance
{
  v3 = +[ISDefaults sharedInstance];
  forceApperance = [v3 forceApperance];

  if (forceApperance < 0)
  {
    return self->_appearance;
  }

  if (forceApperance != self->_appearance)
  {
    self->_appearance = forceApperance;
  }

  return forceApperance;
}

- (int64_t)appearanceVariant
{
  v3 = +[ISDefaults sharedInstance];
  forceApperanceVariant = [v3 forceApperanceVariant];

  if (forceApperanceVariant < 0)
  {
    return self->_appearanceVariant;
  }

  if (forceApperanceVariant != self->_appearanceVariant)
  {
    self->_appearanceVariant = forceApperanceVariant;
  }

  return forceApperanceVariant;
}

- (NSString)description
{
  v36 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(ISImageDescriptor *)self size];
  v4 = v3;
  [(ISImageDescriptor *)self size];
  v6 = v5;
  [(ISImageDescriptor *)self scale];
  v8 = v7;
  variantOptions = [(ISImageDescriptor *)self variantOptions];
  layoutDirection = [(ISImageDescriptor *)self layoutDirection];
  appearance = [(ISImageDescriptor *)self appearance];
  contrast = [(ISImageDescriptor *)self contrast];
  vibrancy = [(ISImageDescriptor *)self vibrancy];
  appearanceVariant = [(ISImageDescriptor *)self appearanceVariant];
  tintColor = [(ISImageDescriptor *)self tintColor];
  ciColor = [tintColor ciColor];
  [ciColor red];
  v10 = v9;
  tintColor2 = [(ISImageDescriptor *)self tintColor];
  ciColor2 = [tintColor2 ciColor];
  [ciColor2 green];
  v14 = v13;
  tintColor3 = [(ISImageDescriptor *)self tintColor];
  ciColor3 = [tintColor3 ciColor];
  [ciColor3 blue];
  v18 = v17;
  tintColor4 = [(ISImageDescriptor *)self tintColor];
  ciColor4 = [tintColor4 ciColor];
  [ciColor4 alpha];
  v22 = v21;
  specialIconOptions = [(ISImageDescriptor *)self specialIconOptions];
  platformStyle = [(ISImageDescriptor *)self platformStyle];
  digest = [(ISImageDescriptor *)self digest];
  v26 = [v36 initWithFormat:@"<ISImageDescriptor: %p> (%0.2f, %0.2f)@%.0fx v:%lx l:%lu a:%ld:%ld:%ld:%ld t:%g:%g:%g:%g s:%ld ps: %ld digest: %@", self, v4, v6, v8, variantOptions, layoutDirection, appearance, contrast, vibrancy, appearanceVariant, v10, v14, v18, v22, specialIconOptions, platformStyle, digest];

  return v26;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (ISImageDescriptor)init
{
  MGGetFloat32Answer();

  return [(ISImageDescriptor *)self initWithSize:60.0 scale:60.0, v3];
}

- (ISImageDescriptor)initWithSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = ISImageDescriptor;
  v7 = [(ISImageDescriptor *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_size.width = width;
    v7->_size.height = height;
    v7->_scale = scale;
    v7->_preferExtendedColorResources = MGGetBoolAnswer();
    *&v8->_appearance = 0u;
    *&v8->_contrast = 0u;
    v8->_languageDirection = [MEMORY[0x1E695DF58] _IS_currentLanguageDirection];
    v8->_background = 0;
    *&v8->_specialIconOptions = xmmword_1A7825230;
  }

  return v8;
}

- (ISImageDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ISImageDescriptor *)self init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"size.width"];
    v7 = v6;
    [coderCopy decodeDoubleForKey:@"size.height"];
    v5->_size.width = v7;
    v5->_size.height = v8;
    [coderCopy decodeDoubleForKey:@"scale"];
    v5->_scale = v9;
    v5->_variantOptions = [coderCopy decodeIntegerForKey:@"variantOptions"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferedResourceName"];
    preferedResourceName = v5->_preferedResourceName;
    v5->_preferedResourceName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v12;

    v5->_ignoreCache = [coderCopy decodeBoolForKey:@"ignoreCache"];
    v5->_graphicVariant = [coderCopy decodeBoolForKey:@"graphicVariant"];
    v5->_appearance = [coderCopy decodeIntegerForKey:@"appearance"];
    v5->_contrast = [coderCopy decodeIntegerForKey:@"contrast"];
    v5->_vibrancy = [coderCopy decodeIntegerForKey:@"vibrancy"];
    v5->_appearanceVariant = [coderCopy decodeIntegerForKey:@"appearanceVariant"];
    v5->_background = [coderCopy decodeIntegerForKey:@"background"];
    v5->_specialIconOptions = [coderCopy decodeIntegerForKey:@"specialIconOptions"];
    v5->_platformStyle = [coderCopy decodeIntegerForKey:@"platformStyle"];
    v5->_languageDirection = [coderCopy decodeIntegerForKey:@"languageDirection"];
    v5->_layoutDirection = [coderCopy decodeIntegerForKey:@"layoutDirection"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  width = self->_size.width;
  coderCopy = coder;
  [coderCopy encodeDouble:@"size.width" forKey:width];
  [coderCopy encodeDouble:@"size.height" forKey:self->_size.height];
  [coderCopy encodeDouble:@"scale" forKey:self->_scale];
  [coderCopy encodeInteger:self->_variantOptions forKey:@"variantOptions"];
  [coderCopy encodeObject:self->_preferedResourceName forKey:@"preferedResourceName"];
  [coderCopy encodeObject:self->_tintColor forKey:@"tintColor"];
  [coderCopy encodeBool:self->_ignoreCache forKey:@"ignoreCache"];
  [coderCopy encodeBool:self->_graphicVariant forKey:@"graphicVariant"];
  [coderCopy encodeInteger:self->_appearance forKey:@"appearance"];
  [coderCopy encodeInteger:self->_contrast forKey:@"contrast"];
  [coderCopy encodeInteger:self->_vibrancy forKey:@"vibrancy"];
  [coderCopy encodeInteger:self->_appearanceVariant forKey:@"appearanceVariant"];
  [coderCopy encodeInteger:self->_background forKey:@"background"];
  [coderCopy encodeInteger:self->_specialIconOptions forKey:@"specialIconOptions"];
  [coderCopy encodeInteger:self->_platformStyle forKey:@"platformStyle"];
  [coderCopy encodeInteger:self->_languageDirection forKey:@"languageDirection"];
  [coderCopy encodeInteger:self->_layoutDirection forKey:@"layoutDirection"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ISImageDescriptor alloc];
  [(ISImageDescriptor *)v4 setSize:self->_size.width, self->_size.height];
  [(ISImageDescriptor *)v4 setScale:self->_scale];
  [(ISImageDescriptor *)v4 setVariantOptions:self->_variantOptions];
  v5 = [(NSString *)self->_preferedResourceName copy];
  [(ISImageDescriptor *)v4 setPreferedResourceName:v5];

  [(ISImageDescriptor *)v4 setTintColor:self->_tintColor];
  [(ISImageDescriptor *)v4 setIgnoreCache:self->_ignoreCache];
  [(ISImageDescriptor *)v4 setGraphicVariant:self->_graphicVariant];
  [(ISImageDescriptor *)v4 setAppearance:self->_appearance];
  [(ISImageDescriptor *)v4 setContrast:self->_contrast];
  [(ISImageDescriptor *)v4 setVibrancy:self->_vibrancy];
  [(ISImageDescriptor *)v4 setAppearanceVariant:self->_appearanceVariant];
  [(ISImageDescriptor *)v4 setBackground:self->_background];
  [(ISImageDescriptor *)v4 setSpecialIconOptions:self->_specialIconOptions];
  [(ISImageDescriptor *)v4 setPlatformStyle:self->_platformStyle];
  [(ISImageDescriptor *)v4 setLanguageDirection:self->_languageDirection];
  [(ISImageDescriptor *)v4 setLayoutDirection:self->_layoutDirection];
  return v4;
}

- (void)setTemplateVariant:(BOOL)variant
{
  v3 = 8;
  if (!variant)
  {
    v3 = 0;
  }

  self->_variantOptions = self->_variantOptions & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setSelectedVariant:(BOOL)variant
{
  v3 = 16;
  if (!variant)
  {
    v3 = 0;
  }

  self->_variantOptions = self->_variantOptions & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (unint64_t)shape
{
  result = self->_variantOptions & 0x6D0002;
  if (result >= 0x80000)
  {
    switch(result)
    {
      case 0x80000uLL:
        return 4;
      case 0x200000uLL:
        return 5;
      case 0x400000uLL:
        return 6;
    }
  }

  else
  {
    switch(result)
    {
      case 2uLL:
        return result;
      case 0x10000uLL:
        return 1;
      case 0x40000uLL:
        return 3;
    }
  }

  return 0;
}

- (void)setShape:(unint64_t)shape
{
  if (shape <= 2)
  {
    if (shape)
    {
      if (shape == 1)
      {
        v3 = self->_variantOptions & 0xFFFFFFFFFF92FFFDLL | 0x10000;
      }

      else
      {
        if (shape != 2)
        {
          return;
        }

        v3 = self->_variantOptions & 0xFFFFFFFFFF92FFFDLL | 2;
      }
    }

    else
    {
      v3 = self->_variantOptions & 0xFFFFFFFFFF96FFFDLL;
    }
  }

  else if (shape > 4)
  {
    if (shape == 5)
    {
      v3 = self->_variantOptions & 0xFFFFFFFFFF92FFFDLL | 0x200000;
    }

    else
    {
      if (shape != 6)
      {
        return;
      }

      v3 = self->_variantOptions & 0xFFFFFFFFFF92FFFDLL | 0x400000;
    }
  }

  else if (shape == 3)
  {
    v3 = self->_variantOptions & 0xFFFFFFFFFF92FFFDLL | 0x40000;
  }

  else
  {
    v3 = self->_variantOptions & 0xFFFFFFFFFF92FFFDLL | 0x80000;
  }

  self->_variantOptions = v3;
}

- (double)continuousCornerRadius
{
  v3 = +[ISDefaults sharedInstance];
  isSolariumEnabled = [v3 isSolariumEnabled];

  if (isSolariumEnabled)
  {
    v5 = +[ISPlatformInfo sharedInstance];
    nativePlatform = [v5 nativePlatform];

    if (nativePlatform <= 0x20 && ((1 << nativePlatform) & 0x100010100) != 0)
    {
      return 0.0;
    }
  }

  else
  {
    v9 = +[ISDeviceInfo sharedInstance];
    ideom = [v9 ideom];

    shape = [(ISImageDescriptor *)self shape];
    v12 = ideom < 4;
    if (shape)
    {
      v12 = shape == 1;
    }

    if (!v12)
    {
      return 0.0;
    }
  }

  [(ISImageDescriptor *)self size];

  [ISShapeCompositorResource continuousCornerRadiusForSize:?];
  return result;
}

- (void)setShouldApplyMask:(BOOL)mask
{
  v3 = 0x20000;
  if (mask)
  {
    v3 = 0;
  }

  self->_variantOptions = self->_variantOptions & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setDrawBorder:(BOOL)border
{
  v3 = 4;
  if (!border)
  {
    v3 = 0;
  }

  self->_variantOptions = self->_variantOptions & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setDrawBadge:(BOOL)badge
{
  v3 = 0x100000;
  if (badge)
  {
    v3 = 0;
  }

  self->_variantOptions = self->_variantOptions & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (CGSize)sanitizedSize
{
  width = self->_size.width;
  height = self->_size.height;
  if (height >= width)
  {
    v4 = self->_size.height;
  }

  else
  {
    v4 = self->_size.width;
  }

  if (v4 < 20.0)
  {
    height = 20.0;
    width = 20.0;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)platform
{
  platformStyle = [(ISImageDescriptor *)self platformStyle];
  switch(platformStyle)
  {
    case 4uLL:
      return 8;
    case 3uLL:
      return 1;
    case 1uLL:
      return 4;
  }

  v4 = +[ISPlatformInfo sharedInstance];
  nativePlatform = [v4 nativePlatform];

  return nativePlatform;
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
    memset(&v23, 0, sizeof(v23));
    CC_SHA256_Init(&v23);
    [(ISImageDescriptor *)self scale];
    data[0] = v9;
    CC_SHA256_Update(&v23, data, 8u);
    data[0] = [(ISImageDescriptor *)self variantOptions];
    CC_SHA256_Update(&v23, data, 8u);
    data[0] = [(ISImageDescriptor *)self layoutDirection];
    CC_SHA256_Update(&v23, data, 8u);
    data[0] = [(ISImageDescriptor *)self appearance];
    CC_SHA256_Update(&v23, data, 8u);
    data[0] = [(ISImageDescriptor *)self contrast];
    CC_SHA256_Update(&v23, data, 8u);
    data[0] = [(ISImageDescriptor *)self vibrancy];
    CC_SHA256_Update(&v23, data, 8u);
    data[0] = [(ISImageDescriptor *)self appearanceVariant];
    CC_SHA256_Update(&v23, data, 8u);
    tintColor = [(ISImageDescriptor *)self tintColor];

    if (tintColor)
    {
      data[0] = 0;
      data[1] = 0;
      tintColor2 = [(ISImageDescriptor *)self tintColor];
      digest = [tintColor2 digest];
      [digest getUUIDBytes:data];

      CC_SHA256_Update(&v23, data, 0x10u);
    }

    data[0] = [(ISImageDescriptor *)self background];
    CC_SHA256_Update(&v23, data, 8u);
    data[0] = [(ISImageDescriptor *)self specialIconOptions];
    CC_SHA256_Update(&v23, data, 8u);
    data[0] = [(ISImageDescriptor *)self platformStyle];
    CC_SHA256_Update(&v23, data, 8u);
    CC_SHA256_Final(data, &v23);
    v13 = 0;
    v14 = 31 - size;
    if (size > 0x1F)
    {
      v14 = 0;
    }

    v15 = v14 + 1;
    do
    {
      if (v13 > 0x1F)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(data + v13);
      }

      *(digest + v13++) = v16;
    }

    while (size != v13);
    if (size <= 0x1F)
    {
      v17 = data + size;
      sizeCopy = size;
      do
      {
        v19 = sizeCopy % size;
        v20 = *v17++;
        *(digest + v19) ^= v20;
        sizeCopy = v19 + 1;
        --v15;
      }

      while (v15);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      digest = [(ISImageDescriptor *)self digest];
      digest2 = [(ISImageDescriptor *)equalCopy digest];
      v7 = [digest isEqual:digest2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = 0;
  [(ISImageDescriptor *)self digest:&v3 size:8];
  return v3;
}

+ (id)imageDescriptorNamed:(id)named
{
  namedCopy = named;
  v4 = +[ISDeviceInfo sharedInstance];
  ideom = [v4 ideom];

  v6 = +[ISDeviceInfo sharedInstance];
  [v6 screenScale];
  v8 = v7;

  if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.TableUIName"])
  {
    v9 = 0;
    v10 = 28.0;
    v11 = 28.0;
    goto LABEL_17;
  }

  if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.Spotlight"])
  {
    v9 = 0;
    *&v12 = 40.0;
LABEL_5:
    v10 = *&v12;
LABEL_6:
    v11 = v10;
    goto LABEL_17;
  }

  if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.HomeScreen"])
  {
    v13 = +[ISDeviceInfo sharedInstance];
    [v13 homeScreenIconSize];
LABEL_11:
    v11 = v14;
    v10 = v15;

    v9 = 0;
    goto LABEL_17;
  }

  if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.LargeHomeScreen"])
  {
    v13 = +[ISDeviceInfo sharedInstance];
    [v13 largeHomeScreenIconSize];
    goto LABEL_11;
  }

  v11 = 37.0;
  if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.CustomDocumentSize"] & 1) != 0 || (objc_msgSend(namedCopy, "isEqualToString:", @"com.apple.IconServices.ImageDescriptor.BadgedDocumentSize"))
  {
    *&v16 = 48.0;
LABEL_15:
    v10 = *&v16;
LABEL_16:
    v9 = 3;
    goto LABEL_17;
  }

  v10 = 20.0;
  if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.Notification"])
  {
    v9 = 0;
    v11 = 20.0;
    goto LABEL_17;
  }

  if (([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.CustomDocumentScalableSize"] & 1) != 0 || objc_msgSend(namedCopy, "isEqualToString:", @"com.apple.IconServices.ImageDescriptor.BadgedDocumentScalableSize"))
  {
    v11 = dbl_1A7825240[ideom == 2];
    if (ideom == 2)
    {
      v10 = 320.0;
    }

    else
    {
      v10 = 48.0;
    }

    goto LABEL_16;
  }

  if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.CarLauncher"])
  {
LABEL_30:
    v9 = 0;
    *&v12 = 60.0;
    goto LABEL_5;
  }

  if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.CarNotification"])
  {
    v9 = 0;
    v10 = 29.0;
    v11 = 29.0;
    goto LABEL_17;
  }

  if (![namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.Activity"])
  {
    if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.CustomDocumentCompact"])
    {
      v11 = 64.0;
      *&v16 = 84.0;
      goto LABEL_15;
    }

    if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.CustomDocumentRegular"])
    {
      v11 = 96.0;
      *&v16 = 128.0;
      goto LABEL_15;
    }

    if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.CustomDocumentTable"])
    {
      v11 = 34.0;
      *&v16 = 44.0;
      goto LABEL_15;
    }

    if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.MessagesExtensionLauncher"])
    {
      v22 = +[ISDeviceInfo sharedInstance];
      [v22 messagesLauncherIconSize];
      v11 = v23;
      v10 = v24;
    }

    else if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.MessagesExtensionBadge"])
    {
      v10 = 24.0;
      v11 = 32.0;
    }

    else
    {
      if (([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.MessagesExtensionStatus"] & 1) == 0)
      {
        if ([namedCopy isEqualToString:@"com.apple.IconServices.ImageDescriptor.WidgetAddGallery"])
        {
          v10 = 24.0;
          v9 = 1;
          v11 = 24.0;
        }

        else
        {
          v9 = 0;
          v11 = *MEMORY[0x1E695F060];
          v10 = *(MEMORY[0x1E695F060] + 8);
        }

        goto LABEL_17;
      }

      v11 = 27.0;
    }

    v9 = 4;
    goto LABEL_17;
  }

  if (ideom == 2)
  {
    v9 = 0;
    *&v12 = 76.0;
    goto LABEL_5;
  }

  if (ideom != 1)
  {
    goto LABEL_30;
  }

  v20 = +[ISDeviceInfo sharedInstance];
  deviceSubtype = [v20 deviceSubtype];

  v9 = 0;
  v10 = 64.0;
  if (deviceSubtype > 2777)
  {
    if (deviceSubtype == 2778)
    {
      goto LABEL_6;
    }

    v11 = 64.0;
    if (deviceSubtype != 2796)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (deviceSubtype == 1792)
    {
      goto LABEL_6;
    }

    v11 = 64.0;
    if (deviceSubtype != 2688)
    {
      goto LABEL_30;
    }
  }

LABEL_17:
  v17 = [[ISImageDescriptor alloc] initWithSize:v11 scale:v10, v8];
  [(ISImageDescriptor *)v17 setShape:v9];
  v18 = _ISDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [(ISImageDescriptor(iOSConvenience) *)namedCopy imageDescriptorNamed:v17, v18];
  }

  return v17;
}

@end