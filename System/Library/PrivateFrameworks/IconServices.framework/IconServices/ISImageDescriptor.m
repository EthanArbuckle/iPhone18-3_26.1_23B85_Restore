@interface ISImageDescriptor
+ (id)imageDescriptorNamed:(id)a3;
- (BOOL)digest:(void *)a3 size:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (CGSize)sanitizedSize;
- (CGSize)size;
- (IFColor)tintColor;
- (ISImageDescriptor)init;
- (ISImageDescriptor)initWithCoder:(id)a3;
- (ISImageDescriptor)initWithSize:(CGSize)a3 scale:(double)a4;
- (NSString)description;
- (NSUUID)digest;
- (double)continuousCornerRadius;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)appearance;
- (int64_t)appearanceVariant;
- (int64_t)layoutDirection;
- (unint64_t)hash;
- (unint64_t)platform;
- (unint64_t)shape;
- (void)encodeWithCoder:(id)a3;
- (void)setDrawBadge:(BOOL)a3;
- (void)setDrawBorder:(BOOL)a3;
- (void)setSelectedVariant:(BOOL)a3;
- (void)setShape:(unint64_t)a3;
- (void)setShouldApplyMask:(BOOL)a3;
- (void)setTemplateVariant:(BOOL)a3;
@end

@implementation ISImageDescriptor

- (IFColor)tintColor
{
  v3 = +[ISDefaults sharedInstance];
  v4 = [v3 tintColor];

  if (v4)
  {
    objc_storeStrong(&self->_tintColor, v4);
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
  v2 = [(ISImageDescriptor *)self languageDirection];
  if (v2 == 1)
  {
    return 5;
  }

  else
  {
    return 4 * (v2 == 2);
  }
}

- (int64_t)appearance
{
  v3 = +[ISDefaults sharedInstance];
  v4 = [v3 forceApperance];

  if (v4 < 0)
  {
    return self->_appearance;
  }

  if (v4 != self->_appearance)
  {
    self->_appearance = v4;
  }

  return v4;
}

- (int64_t)appearanceVariant
{
  v3 = +[ISDefaults sharedInstance];
  v4 = [v3 forceApperanceVariant];

  if (v4 < 0)
  {
    return self->_appearanceVariant;
  }

  if (v4 != self->_appearanceVariant)
  {
    self->_appearanceVariant = v4;
  }

  return v4;
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
  v33 = [(ISImageDescriptor *)self variantOptions];
  v32 = [(ISImageDescriptor *)self layoutDirection];
  v31 = [(ISImageDescriptor *)self appearance];
  v30 = [(ISImageDescriptor *)self contrast];
  v29 = [(ISImageDescriptor *)self vibrancy];
  v28 = [(ISImageDescriptor *)self appearanceVariant];
  v35 = [(ISImageDescriptor *)self tintColor];
  v34 = [v35 ciColor];
  [v34 red];
  v10 = v9;
  v11 = [(ISImageDescriptor *)self tintColor];
  v12 = [v11 ciColor];
  [v12 green];
  v14 = v13;
  v15 = [(ISImageDescriptor *)self tintColor];
  v16 = [v15 ciColor];
  [v16 blue];
  v18 = v17;
  v19 = [(ISImageDescriptor *)self tintColor];
  v20 = [v19 ciColor];
  [v20 alpha];
  v22 = v21;
  v23 = [(ISImageDescriptor *)self specialIconOptions];
  v24 = [(ISImageDescriptor *)self platformStyle];
  v25 = [(ISImageDescriptor *)self digest];
  v26 = [v36 initWithFormat:@"<ISImageDescriptor: %p> (%0.2f, %0.2f)@%.0fx v:%lx l:%lu a:%ld:%ld:%ld:%ld t:%g:%g:%g:%g s:%ld ps: %ld digest: %@", self, v4, v6, v8, v33, v32, v31, v30, v29, v28, v10, v14, v18, v22, v23, v24, v25];

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

- (ISImageDescriptor)initWithSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = ISImageDescriptor;
  v7 = [(ISImageDescriptor *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_size.width = width;
    v7->_size.height = height;
    v7->_scale = a4;
    v7->_preferExtendedColorResources = MGGetBoolAnswer();
    *&v8->_appearance = 0u;
    *&v8->_contrast = 0u;
    v8->_languageDirection = [MEMORY[0x1E695DF58] _IS_currentLanguageDirection];
    v8->_background = 0;
    *&v8->_specialIconOptions = xmmword_1A7825230;
  }

  return v8;
}

- (ISImageDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ISImageDescriptor *)self init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"size.width"];
    v7 = v6;
    [v4 decodeDoubleForKey:@"size.height"];
    v5->_size.width = v7;
    v5->_size.height = v8;
    [v4 decodeDoubleForKey:@"scale"];
    v5->_scale = v9;
    v5->_variantOptions = [v4 decodeIntegerForKey:@"variantOptions"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferedResourceName"];
    preferedResourceName = v5->_preferedResourceName;
    v5->_preferedResourceName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v12;

    v5->_ignoreCache = [v4 decodeBoolForKey:@"ignoreCache"];
    v5->_graphicVariant = [v4 decodeBoolForKey:@"graphicVariant"];
    v5->_appearance = [v4 decodeIntegerForKey:@"appearance"];
    v5->_contrast = [v4 decodeIntegerForKey:@"contrast"];
    v5->_vibrancy = [v4 decodeIntegerForKey:@"vibrancy"];
    v5->_appearanceVariant = [v4 decodeIntegerForKey:@"appearanceVariant"];
    v5->_background = [v4 decodeIntegerForKey:@"background"];
    v5->_specialIconOptions = [v4 decodeIntegerForKey:@"specialIconOptions"];
    v5->_platformStyle = [v4 decodeIntegerForKey:@"platformStyle"];
    v5->_languageDirection = [v4 decodeIntegerForKey:@"languageDirection"];
    v5->_layoutDirection = [v4 decodeIntegerForKey:@"layoutDirection"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  width = self->_size.width;
  v5 = a3;
  [v5 encodeDouble:@"size.width" forKey:width];
  [v5 encodeDouble:@"size.height" forKey:self->_size.height];
  [v5 encodeDouble:@"scale" forKey:self->_scale];
  [v5 encodeInteger:self->_variantOptions forKey:@"variantOptions"];
  [v5 encodeObject:self->_preferedResourceName forKey:@"preferedResourceName"];
  [v5 encodeObject:self->_tintColor forKey:@"tintColor"];
  [v5 encodeBool:self->_ignoreCache forKey:@"ignoreCache"];
  [v5 encodeBool:self->_graphicVariant forKey:@"graphicVariant"];
  [v5 encodeInteger:self->_appearance forKey:@"appearance"];
  [v5 encodeInteger:self->_contrast forKey:@"contrast"];
  [v5 encodeInteger:self->_vibrancy forKey:@"vibrancy"];
  [v5 encodeInteger:self->_appearanceVariant forKey:@"appearanceVariant"];
  [v5 encodeInteger:self->_background forKey:@"background"];
  [v5 encodeInteger:self->_specialIconOptions forKey:@"specialIconOptions"];
  [v5 encodeInteger:self->_platformStyle forKey:@"platformStyle"];
  [v5 encodeInteger:self->_languageDirection forKey:@"languageDirection"];
  [v5 encodeInteger:self->_layoutDirection forKey:@"layoutDirection"];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)setTemplateVariant:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_variantOptions = self->_variantOptions & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setSelectedVariant:(BOOL)a3
{
  v3 = 16;
  if (!a3)
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

- (void)setShape:(unint64_t)a3
{
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v3 = self->_variantOptions & 0xFFFFFFFFFF92FFFDLL | 0x10000;
      }

      else
      {
        if (a3 != 2)
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

  else if (a3 > 4)
  {
    if (a3 == 5)
    {
      v3 = self->_variantOptions & 0xFFFFFFFFFF92FFFDLL | 0x200000;
    }

    else
    {
      if (a3 != 6)
      {
        return;
      }

      v3 = self->_variantOptions & 0xFFFFFFFFFF92FFFDLL | 0x400000;
    }
  }

  else if (a3 == 3)
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
  v4 = [v3 isSolariumEnabled];

  if (v4)
  {
    v5 = +[ISPlatformInfo sharedInstance];
    v6 = [v5 nativePlatform];

    if (v6 <= 0x20 && ((1 << v6) & 0x100010100) != 0)
    {
      return 0.0;
    }
  }

  else
  {
    v9 = +[ISDeviceInfo sharedInstance];
    v10 = [v9 ideom];

    v11 = [(ISImageDescriptor *)self shape];
    v12 = v10 < 4;
    if (v11)
    {
      v12 = v11 == 1;
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

- (void)setShouldApplyMask:(BOOL)a3
{
  v3 = 0x20000;
  if (a3)
  {
    v3 = 0;
  }

  self->_variantOptions = self->_variantOptions & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setDrawBorder:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_variantOptions = self->_variantOptions & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setDrawBadge:(BOOL)a3
{
  v3 = 0x100000;
  if (a3)
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
  v2 = [(ISImageDescriptor *)self platformStyle];
  switch(v2)
  {
    case 4uLL:
      return 8;
    case 3uLL:
      return 1;
    case 1uLL:
      return 4;
  }

  v4 = +[ISPlatformInfo sharedInstance];
  v5 = [v4 nativePlatform];

  return v5;
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
    v10 = [(ISImageDescriptor *)self tintColor];

    if (v10)
    {
      data[0] = 0;
      data[1] = 0;
      v11 = [(ISImageDescriptor *)self tintColor];
      v12 = [v11 digest];
      [v12 getUUIDBytes:data];

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
    v14 = 31 - a4;
    if (a4 > 0x1F)
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

      *(a3 + v13++) = v16;
    }

    while (a4 != v13);
    if (a4 <= 0x1F)
    {
      v17 = data + a4;
      v18 = a4;
      do
      {
        v19 = v18 % a4;
        v20 = *v17++;
        *(a3 + v19) ^= v20;
        v18 = v19 + 1;
        --v15;
      }

      while (v15);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ISImageDescriptor *)self digest];
      v6 = [(ISImageDescriptor *)v4 digest];
      v7 = [v5 isEqual:v6];
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

+ (id)imageDescriptorNamed:(id)a3
{
  v3 = a3;
  v4 = +[ISDeviceInfo sharedInstance];
  v5 = [v4 ideom];

  v6 = +[ISDeviceInfo sharedInstance];
  [v6 screenScale];
  v8 = v7;

  if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.TableUIName"])
  {
    v9 = 0;
    v10 = 28.0;
    v11 = 28.0;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.Spotlight"])
  {
    v9 = 0;
    *&v12 = 40.0;
LABEL_5:
    v10 = *&v12;
LABEL_6:
    v11 = v10;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.HomeScreen"])
  {
    v13 = +[ISDeviceInfo sharedInstance];
    [v13 homeScreenIconSize];
LABEL_11:
    v11 = v14;
    v10 = v15;

    v9 = 0;
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.LargeHomeScreen"])
  {
    v13 = +[ISDeviceInfo sharedInstance];
    [v13 largeHomeScreenIconSize];
    goto LABEL_11;
  }

  v11 = 37.0;
  if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.CustomDocumentSize"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.IconServices.ImageDescriptor.BadgedDocumentSize"))
  {
    *&v16 = 48.0;
LABEL_15:
    v10 = *&v16;
LABEL_16:
    v9 = 3;
    goto LABEL_17;
  }

  v10 = 20.0;
  if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.Notification"])
  {
    v9 = 0;
    v11 = 20.0;
    goto LABEL_17;
  }

  if (([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.CustomDocumentScalableSize"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"com.apple.IconServices.ImageDescriptor.BadgedDocumentScalableSize"))
  {
    v11 = dbl_1A7825240[v5 == 2];
    if (v5 == 2)
    {
      v10 = 320.0;
    }

    else
    {
      v10 = 48.0;
    }

    goto LABEL_16;
  }

  if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.CarLauncher"])
  {
LABEL_30:
    v9 = 0;
    *&v12 = 60.0;
    goto LABEL_5;
  }

  if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.CarNotification"])
  {
    v9 = 0;
    v10 = 29.0;
    v11 = 29.0;
    goto LABEL_17;
  }

  if (![v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.Activity"])
  {
    if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.CustomDocumentCompact"])
    {
      v11 = 64.0;
      *&v16 = 84.0;
      goto LABEL_15;
    }

    if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.CustomDocumentRegular"])
    {
      v11 = 96.0;
      *&v16 = 128.0;
      goto LABEL_15;
    }

    if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.CustomDocumentTable"])
    {
      v11 = 34.0;
      *&v16 = 44.0;
      goto LABEL_15;
    }

    if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.MessagesExtensionLauncher"])
    {
      v22 = +[ISDeviceInfo sharedInstance];
      [v22 messagesLauncherIconSize];
      v11 = v23;
      v10 = v24;
    }

    else if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.MessagesExtensionBadge"])
    {
      v10 = 24.0;
      v11 = 32.0;
    }

    else
    {
      if (([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.MessagesExtensionStatus"] & 1) == 0)
      {
        if ([v3 isEqualToString:@"com.apple.IconServices.ImageDescriptor.WidgetAddGallery"])
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

  if (v5 == 2)
  {
    v9 = 0;
    *&v12 = 76.0;
    goto LABEL_5;
  }

  if (v5 != 1)
  {
    goto LABEL_30;
  }

  v20 = +[ISDeviceInfo sharedInstance];
  v21 = [v20 deviceSubtype];

  v9 = 0;
  v10 = 64.0;
  if (v21 > 2777)
  {
    if (v21 == 2778)
    {
      goto LABEL_6;
    }

    v11 = 64.0;
    if (v21 != 2796)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v21 == 1792)
    {
      goto LABEL_6;
    }

    v11 = 64.0;
    if (v21 != 2688)
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
    [(ISImageDescriptor(iOSConvenience) *)v3 imageDescriptorNamed:v17, v18];
  }

  return v17;
}

@end