@interface PKPassFrontFaceImageSet
- (BOOL)isEqual:(id)a3;
- (CGRect)cobrandLogoRect;
- (CGRect)logoRect;
- (CGRect)stripRect;
- (CGRect)thumbnailRect;
- (PKPassFrontFaceImageSet)initWithCoder:(id)a3;
- (PKPassFrontFaceImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)preheatImages;
@end

@implementation PKPassFrontFaceImageSet

- (CGRect)cobrandLogoRect
{
  x = self->_cobrandLogoRect.origin.x;
  y = self->_cobrandLogoRect.origin.y;
  width = self->_cobrandLogoRect.size.width;
  height = self->_cobrandLogoRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PKPassFrontFaceImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6
{
  v69 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v64.receiver = self;
  v64.super_class = PKPassFrontFaceImageSet;
  v13 = [(PKImageSet *)&v64 initWithDisplayProfile:v10 fileURL:v11 screenScale:v12 suffix:a5];
  if (v13)
  {
    context = objc_autoreleasePoolPush();
    v14 = [MEMORY[0x1E696AAE8] bundleWithURL:v11];
    if (!v14)
    {
      v15 = v10;
      v16 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [MEMORY[0x1E696AAE8] mainBundle];
        v18 = [v17 bundleIdentifier];
        *buf = 138412546;
        v66 = v18;
        v67 = 2112;
        v68 = v11;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Could not instantiate bundle for process(%@): %@", buf, 0x16u);
      }

      v10 = v15;
    }

    v63 = v10;
    v19 = v10;
    v20 = PKPassFrontFaceImage(v19, v14, &v13->_logoRect.origin.x, &v13->_thumbnailRect.origin.x, &v13->_stripRect.origin.x, &v13->_faceImageAverageColor, v12, a5);
    faceImage = v13->_faceImage;
    v13->_faceImage = v20;

    v22 = PKPassFrontFaceShadowImage(v13->_faceImage);
    faceShadowImage = v13->_faceShadowImage;
    v13->_faceShadowImage = v22;

    v24 = *(MEMORY[0x1E695F050] + 16);
    v13->_cobrandLogoRect.origin = *MEMORY[0x1E695F050];
    v13->_cobrandLogoRect.size = v24;
    v25 = [PKImage imageNamed:@"cobrandLogo" inBundle:v14];
    v26 = v25;
    if (v25)
    {
      [v25 size];
      v13->_cobrandLogoRect.origin = *MEMORY[0x1E695EFF8];
      v13->_cobrandLogoRect.size.width = v27;
      v13->_cobrandLogoRect.size.height = v28;
    }

    v29 = [PKImage imageNamed:@"footer" inBundle:v14];
    v30 = [PKImageResizingConstraints constraintsWithMaxSize:286.0, 15.0];
    [v29 scale];
    [v30 setOutputScale:?];
    v31 = [v29 resizedImageWithConstraints:v30];
    footerImage = v13->_footerImage;
    v13->_footerImage = v31;

    v33 = PKPassFrontFaceDynamicLayerImage(v19, @"dynamicLayerStaticFallback", v14, 0, v12, a5);
    dynamicLayerStaticFallbackImage = v13->_dynamicLayerStaticFallbackImage;
    v13->_dynamicLayerStaticFallbackImage = v33;

    v35 = PKPassFrontFaceDynamicLayerEmitterImage(v19, @"backgroundParallaxEmitter", v14, v12, a5);
    backgroundParallaxEmitterImage = v13->_backgroundParallaxEmitterImage;
    v13->_backgroundParallaxEmitterImage = v35;

    v37 = PKPassFrontFaceDynamicLayerImage(v19, @"backgroundParallax", v14, 1, v12, a5);
    backgroundParallaxImage = v13->_backgroundParallaxImage;
    v13->_backgroundParallaxImage = v37;

    v39 = PKPassFrontFaceDynamicLayerImage(v19, @"backgroundParallaxCrossDissolve", v14, 1, v12, a5);
    backgroundParallaxCrossDissolveImage = v13->_backgroundParallaxCrossDissolveImage;
    v13->_backgroundParallaxCrossDissolveImage = v39;

    v41 = PKPassFrontFaceDynamicLayerEmitterImage(v19, @"neutralEmitter", v14, v12, a5);
    neutralEmitterImage = v13->_neutralEmitterImage;
    v13->_neutralEmitterImage = v41;

    v43 = PKPassFrontFaceDynamicLayerImage(v19, @"neutral", v14, 0, v12, a5);
    neutralImage = v13->_neutralImage;
    v13->_neutralImage = v43;

    v45 = PKPassFrontFaceDynamicLayerEmitterImage(v19, @"foregroundParallaxEmitter", v14, v12, a5);
    foregroundParallaxEmitterImage = v13->_foregroundParallaxEmitterImage;
    v13->_foregroundParallaxEmitterImage = v45;

    v47 = PKPassFrontFaceDynamicLayerImage(v19, @"foregroundParallax", v14, 1, v12, a5);
    foregroundParallaxImage = v13->_foregroundParallaxImage;
    v13->_foregroundParallaxImage = v47;

    v49 = PKPassFrontFaceDynamicLayerImage(v19, @"foregroundParallaxCrossDissolve", v14, 1, v12, a5);
    foregroundParallaxCrossDissolveImage = v13->_foregroundParallaxCrossDissolveImage;
    v13->_foregroundParallaxCrossDissolveImage = v49;

    v51 = PKPassFrontFaceDynamicLayerEmitterImage(v19, @"staticOverlayEmitter", v14, v12, a5);
    staticOverlayEmitterImage = v13->_staticOverlayEmitterImage;
    v13->_staticOverlayEmitterImage = v51;

    v53 = PKPassFrontFaceDynamicLayerImage(v19, @"staticOverlay", v14, 0, v12, a5);
    staticOverlayImage = v13->_staticOverlayImage;
    v13->_staticOverlayImage = v53;

    v55 = PKPassFrontFaceDynamicLayerEmitterImage(v19, @"transactionEffectEmitter", v14, v12, a5);

    transactionEffectEmitterImage = v13->_transactionEffectEmitterImage;
    v13->_transactionEffectEmitterImage = v55;

    if (v14)
    {
      v57 = MEMORY[0x1E695DEF0];
      v58 = [v14 URLForResource:@"transactionEffectShape" withExtension:@"svg"];
      v59 = [v57 dataWithContentsOfURL:v58];
      transactionEffectEmitterShapeSVGData = v13->_transactionEffectEmitterShapeSVGData;
      v13->_transactionEffectEmitterShapeSVGData = v59;
    }

    objc_autoreleasePoolPop(context);
    v10 = v63;
  }

  return v13;
}

- (void)preheatImages
{
  [(PKImage *)self->_faceImage preheatBitmapData];
  [(PKImage *)self->_dynamicLayerStaticFallbackImage preheatBitmapData];
  [(PKImage *)self->_backgroundParallaxEmitterImage preheatBitmapData];
  [(PKImage *)self->_backgroundParallaxImage preheatBitmapData];
  [(PKImage *)self->_backgroundParallaxCrossDissolveImage preheatBitmapData];
  [(PKImage *)self->_neutralEmitterImage preheatBitmapData];
  [(PKImage *)self->_neutralImage preheatBitmapData];
  [(PKImage *)self->_foregroundParallaxEmitterImage preheatBitmapData];
  [(PKImage *)self->_foregroundParallaxImage preheatBitmapData];
  [(PKImage *)self->_foregroundParallaxCrossDissolveImage preheatBitmapData];
  [(PKImage *)self->_staticOverlayEmitterImage preheatBitmapData];
  [(PKImage *)self->_staticOverlayImage preheatBitmapData];
  transactionEffectEmitterImage = self->_transactionEffectEmitterImage;

  [(PKImage *)transactionEffectEmitterImage preheatBitmapData];
}

- (PKPassFrontFaceImageSet)initWithCoder:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = PKPassFrontFaceImageSet;
  v5 = [(PKImageSet *)&v54 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceImage"];
    faceImage = v5->_faceImage;
    v5->_faceImage = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceImageAverageColor"];
    faceImageAverageColor = v5->_faceImageAverageColor;
    v5->_faceImageAverageColor = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceShadowImage"];
    faceShadowImage = v5->_faceShadowImage;
    v5->_faceShadowImage = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"footerImage"];
    footerImage = v5->_footerImage;
    v5->_footerImage = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logoRect"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cobrandLogoRect"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailRect"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stripRect"];
    p_x = &v5->_logoRect.origin.x;
    if (v15)
    {
      v55 = NSRectFromString(v15);
      *p_x = v55.origin.x;
      v5->_logoRect.origin.y = v55.origin.y;
      v5->_logoRect.size.width = v55.size.width;
      v5->_logoRect.size.height = v55.size.height;
    }

    else
    {
      v20 = *(MEMORY[0x1E695F050] + 16);
      *p_x = *MEMORY[0x1E695F050];
      v5->_logoRect.size = v20;
    }

    v21 = &v5->_cobrandLogoRect.origin.x;
    if (v16)
    {
      v56 = NSRectFromString(v16);
      *v21 = v56.origin.x;
      v5->_cobrandLogoRect.origin.y = v56.origin.y;
      v5->_cobrandLogoRect.size.width = v56.size.width;
      v5->_cobrandLogoRect.size.height = v56.size.height;
    }

    else
    {
      v22 = *(MEMORY[0x1E695F050] + 16);
      *v21 = *MEMORY[0x1E695F050];
      v5->_cobrandLogoRect.size = v22;
    }

    v23 = &v5->_thumbnailRect.origin.x;
    if (v17)
    {
      v57 = NSRectFromString(v17);
      *v23 = v57.origin.x;
      v5->_thumbnailRect.origin.y = v57.origin.y;
      v5->_thumbnailRect.size.width = v57.size.width;
      v5->_thumbnailRect.size.height = v57.size.height;
    }

    else
    {
      v24 = *(MEMORY[0x1E695F050] + 16);
      *v23 = *MEMORY[0x1E695F050];
      v5->_thumbnailRect.size = v24;
    }

    v25 = &v5->_stripRect.origin.x;
    if (v18)
    {
      v58 = NSRectFromString(v18);
      *v25 = v58.origin.x;
      v5->_stripRect.origin.y = v58.origin.y;
      v5->_stripRect.size.width = v58.size.width;
      v5->_stripRect.size.height = v58.size.height;
    }

    else
    {
      v26 = *(MEMORY[0x1E695F050] + 16);
      *v25 = *MEMORY[0x1E695F050];
      v5->_stripRect.size = v26;
    }

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dynamicLayerStaticFallbackImage"];
    dynamicLayerStaticFallbackImage = v5->_dynamicLayerStaticFallbackImage;
    v5->_dynamicLayerStaticFallbackImage = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundParallaxEmitterImage"];
    backgroundParallaxEmitterImage = v5->_backgroundParallaxEmitterImage;
    v5->_backgroundParallaxEmitterImage = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundParallaxImage"];
    backgroundParallaxImage = v5->_backgroundParallaxImage;
    v5->_backgroundParallaxImage = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundParallaxCrossDissolveImage"];
    backgroundParallaxCrossDissolveImage = v5->_backgroundParallaxCrossDissolveImage;
    v5->_backgroundParallaxCrossDissolveImage = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"neutralEmitterImage"];
    neutralEmitterImage = v5->_neutralEmitterImage;
    v5->_neutralEmitterImage = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"neutralImage"];
    neutralImage = v5->_neutralImage;
    v5->_neutralImage = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foregroundParallaxEmitterImage"];
    foregroundParallaxEmitterImage = v5->_foregroundParallaxEmitterImage;
    v5->_foregroundParallaxEmitterImage = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foregroundParallaxImage"];
    foregroundParallaxImage = v5->_foregroundParallaxImage;
    v5->_foregroundParallaxImage = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foregroundParallaxCrossDissolveImage"];
    foregroundParallaxCrossDissolveImage = v5->_foregroundParallaxCrossDissolveImage;
    v5->_foregroundParallaxCrossDissolveImage = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"staticOverlayEmitterImage"];
    staticOverlayEmitterImage = v5->_staticOverlayEmitterImage;
    v5->_staticOverlayEmitterImage = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"staticOverlayImage"];
    staticOverlayImage = v5->_staticOverlayImage;
    v5->_staticOverlayImage = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionEffectEmitterImage"];
    transactionEffectEmitterImage = v5->_transactionEffectEmitterImage;
    v5->_transactionEffectEmitterImage = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionEffectEmitterShapeImage"];
    transactionEffectEmitterShapeSVGData = v5->_transactionEffectEmitterShapeSVGData;
    v5->_transactionEffectEmitterShapeSVGData = v51;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassFrontFaceImageSet;
  [(PKImageSet *)&v10 encodeWithCoder:v4];
  v5 = objc_autoreleasePoolPush();
  [v4 encodeObject:self->_faceImage forKey:@"faceImage"];
  [v4 encodeObject:self->_faceImageAverageColor forKey:@"faceImageAverageColor"];
  [v4 encodeObject:self->_faceShadowImage forKey:@"faceShadowImage"];
  [v4 encodeObject:self->_footerImage forKey:@"footerImage"];
  if (CGRectIsNull(self->_logoRect))
  {
    v6 = 0;
  }

  else
  {
    v6 = NSStringFromRect(self->_logoRect);
  }

  if (CGRectIsNull(self->_cobrandLogoRect))
  {
    v7 = 0;
  }

  else
  {
    v7 = NSStringFromRect(self->_cobrandLogoRect);
  }

  if (CGRectIsNull(self->_thumbnailRect))
  {
    v8 = 0;
  }

  else
  {
    v8 = NSStringFromRect(self->_thumbnailRect);
  }

  if (CGRectIsNull(self->_stripRect))
  {
    v9 = 0;
  }

  else
  {
    v9 = NSStringFromRect(self->_stripRect);
  }

  [v4 encodeObject:v6 forKey:@"logoRect"];
  [v4 encodeObject:v7 forKey:@"cobrandLogoRect"];
  [v4 encodeObject:v8 forKey:@"thumbnailRect"];
  [v4 encodeObject:v9 forKey:@"stripRect"];
  [v4 encodeObject:self->_dynamicLayerStaticFallbackImage forKey:@"dynamicLayerStaticFallbackImage"];
  [v4 encodeObject:self->_backgroundParallaxEmitterImage forKey:@"backgroundParallaxEmitterImage"];
  [v4 encodeObject:self->_backgroundParallaxImage forKey:@"backgroundParallaxImage"];
  [v4 encodeObject:self->_backgroundParallaxCrossDissolveImage forKey:@"backgroundParallaxCrossDissolveImage"];
  [v4 encodeObject:self->_neutralEmitterImage forKey:@"neutralEmitterImage"];
  [v4 encodeObject:self->_neutralImage forKey:@"neutralImage"];
  [v4 encodeObject:self->_foregroundParallaxEmitterImage forKey:@"foregroundParallaxEmitterImage"];
  [v4 encodeObject:self->_foregroundParallaxImage forKey:@"foregroundParallaxImage"];
  [v4 encodeObject:self->_foregroundParallaxCrossDissolveImage forKey:@"foregroundParallaxCrossDissolveImage"];
  [v4 encodeObject:self->_staticOverlayEmitterImage forKey:@"staticOverlayEmitterImage"];
  [v4 encodeObject:self->_staticOverlayImage forKey:@"staticOverlayImage"];
  [v4 encodeObject:self->_transactionEffectEmitterImage forKey:@"transactionEffectEmitterImage"];
  [v4 encodeObject:self->_transactionEffectEmitterShapeSVGData forKey:@"transactionEffectEmitterShapeImage"];

  objc_autoreleasePoolPop(v5);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (CGRectEqualToRect(self->_logoRect, *(v5 + 5)) && CGRectEqualToRect(self->_cobrandLogoRect, *(v5 + 6)) && CGRectEqualToRect(self->_thumbnailRect, *(v5 + 7)) && CGRectEqualToRect(self->_stripRect, *(v5 + 8)))
    {
      v6 = [(PKImage *)self->_faceImage imageHash];
      v7 = [*(v5 + 3) imageHash];
      if ([v6 isEqual:v7])
      {
        v8 = [(PKImage *)self->_faceShadowImage imageHash];
        v9 = [*(v5 + 5) imageHash];
        if ([v8 isEqual:v9])
        {
          v10 = [(PKImage *)self->_footerImage imageHash];
          v11 = [*(v5 + 6) imageHash];
          v12 = [v10 isEqual:v11] && -[PKImageSet _isSetImage:equalToImage:](self, "_isSetImage:equalToImage:", self->_dynamicLayerStaticFallbackImage, *(v5 + 7)) && -[PKImageSet _isSetImage:equalToImage:](self, "_isSetImage:equalToImage:", self->_backgroundParallaxEmitterImage, *(v5 + 8)) && -[PKImageSet _isSetImage:equalToImage:](self, "_isSetImage:equalToImage:", self->_backgroundParallaxImage, *(v5 + 9)) && -[PKImageSet _isSetImage:equalToImage:](self, "_isSetImage:equalToImage:", self->_backgroundParallaxCrossDissolveImage, *(v5 + 10)) && -[PKImageSet _isSetImage:equalToImage:](self, "_isSetImage:equalToImage:", self->_neutralEmitterImage, *(v5 + 11)) && -[PKImageSet _isSetImage:equalToImage:](self, "_isSetImage:equalToImage:", self->_neutralImage, *(v5 + 12)) && -[PKImageSet _isSetImage:equalToImage:](self, "_isSetImage:equalToImage:", self->_foregroundParallaxEmitterImage, *(v5 + 13)) && -[PKImageSet _isSetImage:equalToImage:](self, "_isSetImage:equalToImage:", self->_foregroundParallaxImage, *(v5 + 14)) && -[PKImageSet _isSetImage:equalToImage:](self, "_isSetImage:equalToImage:", self->_foregroundParallaxCrossDissolveImage, *(v5 + 15)) && -[PKImageSet _isSetImage:equalToImage:](self, "_isSetImage:equalToImage:", self->_staticOverlayEmitterImage, *(v5 + 16)) && -[PKImageSet _isSetImage:equalToImage:](self, "_isSetImage:equalToImage:", self->_staticOverlayImage, *(v5 + 17)) && -[PKImageSet _isSetImage:equalToImage:](self, "_isSetImage:equalToImage:", self->_transactionEffectEmitterImage, *(v5 + 18)) && -[NSData isEqualToData:](self->_transactionEffectEmitterShapeSVGData, "isEqualToData:", *(v5 + 19));
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v34 = [(PKImage *)self->_faceImage imageHash];
  v3 = [v34 hash];
  v33 = [(PKImage *)self->_faceShadowImage imageHash];
  v4 = [v33 hash] + v3;
  v32 = [(PKImage *)self->_footerImage imageHash];
  v5 = [v32 hash];
  v31 = [(PKImage *)self->_dynamicLayerStaticFallbackImage imageHash];
  v6 = v4 + v5 + [v31 hash];
  v30 = [(PKImage *)self->_backgroundParallaxEmitterImage imageHash];
  v7 = [v30 hash];
  v29 = [(PKImage *)self->_backgroundParallaxImage imageHash];
  v8 = v7 + [v29 hash];
  v28 = [(PKImage *)self->_backgroundParallaxCrossDissolveImage imageHash];
  v9 = v6 + v8 + [v28 hash];
  v27 = [(PKImage *)self->_neutralEmitterImage imageHash];
  v10 = [v27 hash];
  v11 = [(PKImage *)self->_neutralImage imageHash];
  v12 = v10 + [v11 hash];
  v13 = [(PKImage *)self->_foregroundParallaxEmitterImage imageHash];
  v14 = v12 + [v13 hash];
  v15 = [(PKImage *)self->_foregroundParallaxImage imageHash];
  v26 = v9 + v14 + [v15 hash];
  v16 = [(PKImage *)self->_foregroundParallaxCrossDissolveImage imageHash];
  v17 = [v16 hash];
  v18 = [(PKImage *)self->_staticOverlayEmitterImage imageHash];
  v19 = v17 + [v18 hash];
  v20 = [(PKImage *)self->_staticOverlayImage imageHash];
  v21 = v19 + [v20 hash];
  v22 = [(PKImage *)self->_transactionEffectEmitterImage imageHash];
  v23 = v21 + [v22 hash];
  v24 = v23 + [(NSData *)self->_transactionEffectEmitterShapeSVGData hash];

  return v26 + v24;
}

- (CGRect)logoRect
{
  x = self->_logoRect.origin.x;
  y = self->_logoRect.origin.y;
  width = self->_logoRect.size.width;
  height = self->_logoRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)thumbnailRect
{
  x = self->_thumbnailRect.origin.x;
  y = self->_thumbnailRect.origin.y;
  width = self->_thumbnailRect.size.width;
  height = self->_thumbnailRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)stripRect
{
  x = self->_stripRect.origin.x;
  y = self->_stripRect.origin.y;
  width = self->_stripRect.size.width;
  height = self->_stripRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end