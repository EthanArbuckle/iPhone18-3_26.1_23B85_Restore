@interface ISIconStackComposer
- (ISIconStackComposer)initWithLegacyAsset:(CGImage *)asset assetAppearance:(int64_t)appearance platform:(unint64_t)platform;
- (id)iconStackForSize:(CGSize)size scale:(double)scale desiredAssetAppearance:(int64_t)appearance returningGenerationReport:(id *)report;
- (unint64_t)segmentationIdiom;
- (void)dealloc;
@end

@implementation ISIconStackComposer

- (void)dealloc
{
  asset = self->_asset;
  if (asset)
  {
    CFRelease(asset);
  }

  v4.receiver = self;
  v4.super_class = ISIconStackComposer;
  [(ISIconStackComposer *)&v4 dealloc];
}

- (unint64_t)segmentationIdiom
{
  platform = [(ISIconStackComposer *)self platform];
  if (platform > 0x20)
  {
LABEL_7:
    v4 = _ISDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ISIconStackComposer *)v4 segmentationIdiom];
    }

    return 1;
  }

  if (((1 << platform) & 0x100010010) == 0)
  {
    if (((1 << platform) & 6) != 0)
    {
      return 2;
    }

    if (platform == 8)
    {
      return 4;
    }

    goto LABEL_7;
  }

  return 1;
}

- (ISIconStackComposer)initWithLegacyAsset:(CGImage *)asset assetAppearance:(int64_t)appearance platform:(unint64_t)platform
{
  v12.receiver = self;
  v12.super_class = ISIconStackComposer;
  v8 = [(ISIconStackComposer *)&v12 init];
  v9 = v8;
  if (asset && v8)
  {
    v8->_asset = CFRetain(asset);
    v9->_assetAppearance = appearance;
    if (platform)
    {
      v9->_platform = platform;
    }

    else
    {
      v10 = +[ISPlatformInfo sharedInstance];
      v9->_platform = [v10 nativePlatform];
    }
  }

  return v9;
}

- (id)iconStackForSize:(CGSize)size scale:(double)scale desiredAssetAppearance:(int64_t)appearance returningGenerationReport:(id *)report
{
  height = size.height;
  width = size.width;
  v12 = size.width * scale;
  v13 = CGImageGetWidth([(ISIconStackComposer *)self asset]);
  v14 = v13;
  v15 = 256.0;
  if (v12 >= 256.0)
  {
    v15 = v12;
  }

  if (v15 > v14)
  {
    v15 = v13;
  }

  if (v12 >= v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = v15;
  }

  if (v16 >= v14 || (v17 = ISCreateScaledCGImage([(ISIconStackComposer *)self asset], v16, v16)) == 0)
  {
    v17 = CGImageRetain([(ISIconStackComposer *)self asset]);
  }

  if ([(ISIconStackComposer *)self platform]== 4 && [(ISIconStackComposer *)self assetAppearance]== appearance && ([(ISIconStackComposer *)self assetAppearance]== 1 || [(ISIconStackComposer *)self assetAppearance]== 2))
  {
    v105 = CGImageRetain(v17);
    assetAppearance = [(ISIconStackComposer *)self assetAppearance];
    reportCopy4 = report;
    if (assetAppearance == 1)
    {
      v19 = 0;
      v20 = 3;
    }

    else
    {
      if (assetAppearance != 2)
      {
        [ISIconStackComposer iconStackForSize:scale:desiredAssetAppearance:returningGenerationReport:];
      }

      v19 = 2;
      v20 = 4;
    }

    v24 = [[ISSpecularClassification alloc] initWithSpecularImage:v17 useAlphaOnly:[(ISIconStackComposer *)self assetAppearance]== 1];
    v43 = 1.0;
    image = v17;
    appearanceCopy2 = appearance;
    if ([(ISSpecularClassification *)v24 classifySpecular])
    {
      assetAppearance2 = [(ISIconStackComposer *)self assetAppearance];
      if (assetAppearance2 == 1)
      {
        createSpecularImage = 0;
        LOBYTE(background2) = 0;
        v104 = 0;
        v34 = 0;
        v102 = 0x100000000;
        goto LABEL_62;
      }

      if (assetAppearance2 != 2)
      {
        [ISIconStackComposer iconStackForSize:scale:desiredAssetAppearance:returningGenerationReport:];
      }

      createSpecularImage = [(ISSpecularClassification *)v24 createSpecularImage];
    }

    else
    {
      createSpecularImage = 0;
    }

    v102 = 0;
    LOBYTE(background2) = 0;
    v104 = 0;
    v34 = 0;
LABEL_62:
    v46 = 1;
    goto LABEL_84;
  }

  v21 = [[ISFallbackIconFactory alloc] initWithCGImage:v17 idiom:[(ISIconStackComposer *)self segmentationIdiom]];
  v22 = v21;
  switch(appearance)
  {
    case 2:
      reportCopy4 = report;
      createTintedFallbackIcon = [(ISFallbackIconFactory *)v21 createTintedFallbackIcon];
LABEL_24:
      v24 = createTintedFallbackIcon;
      objc_opt_class();
      image = v17;
      appearanceCopy2 = appearance;
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
        if ([(ISSpecularClassification *)v25 foregroundAndLightingEffectsImage]&& ([(ISSpecularClassification *)v25 feedback], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
        {
          v27 = +[ISDefaults sharedInstance];
          isEnhancedGlassEnabled = [v27 isEnhancedGlassEnabled];

          feedback = [(ISSpecularClassification *)v25 feedback];
          background = [feedback background];
          background2 = background;
          if (isEnhancedGlassEnabled)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            feedback2 = [(ISSpecularClassification *)v25 feedback];
            background2 = [feedback2 background];
            if (isKindOfClass)
            {

              v34 = CGColorRetain([background2 color]);
              v35 = CGImageRetain([(ISSpecularClassification *)v25 foregroundAndLightingEffectsImage]);
              feedback3 = [(ISSpecularClassification *)v25 feedback];
              foreground = [feedback3 foreground];
              objc_opt_class();
              v38 = objc_opt_isKindOfClass();

              LOBYTE(background2) = v38;
              createSpecularImage = 0;
              v40 = 0;
LABEL_70:
              v102 = 0x100000001;
              v43 = 1.0;
              v20 = 5;
              goto LABEL_71;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              feedback4 = [(ISSpecularClassification *)v25 feedback];
              background3 = [feedback4 background];
              v40 = [background3 gradientWithSize:{width, height}];

              if (v40)
              {
                v35 = CGImageRetain([(ISSpecularClassification *)v25 foregroundAndLightingEffectsImage]);
                feedback5 = [(ISSpecularClassification *)v25 feedback];
                background2 = [feedback5 foreground];
                objc_opt_class();
                v67 = objc_opt_isKindOfClass();

                LOBYTE(background2) = v67;
                createSpecularImage = 0;
                v34 = 0;
                goto LABEL_70;
              }
            }

            else
            {
            }

            feedback = [(ISSpecularClassification *)v25 feedback];
            background = [feedback background];
            background2 = background;
          }

          v34 = CGColorRetain([background meanColor]);

          v35 = CGImageRetain([(ISSpecularClassification *)v25 image]);
          createSpecularImage = CGImageRetain([(ISSpecularClassification *)v25 foregroundAndLightingEffectsImage]);
          v102 = 0;
          LOBYTE(background2) = 0;
          v40 = 0;
        }

        else
        {
          v35 = CGImageRetain([(ISSpecularClassification *)v25 image]);
          createSpecularImage = 0;
          v102 = 0;
          LOBYTE(background2) = 0;
          v40 = 0;
          v34 = 0;
        }

        v46 = 1;
        v43 = 1.0;
        v20 = 5;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = v24;
          HIDWORD(v102) = [(ISSpecularClassification *)v41 drawsLightingEffects];
          if (HIDWORD(v102))
          {
            v42 = +[ISDefaults sharedInstance];
            LODWORD(background2) = [v42 isEnhancedGlassEnabled];

            v35 = CGImageRetain([(ISSpecularClassification *)v41 darkImage]);
            v43 = 1.0;
            if (background2)
            {
              feedback6 = [(ISSpecularClassification *)v41 feedback];
              background2 = [feedback6 recolorForeground];
              foreground2 = background2;
              if (!background2)
              {
                appearance = [(ISSpecularClassification *)v41 feedback];
                foreground2 = [appearance foreground];
              }

              objc_opt_class();
              v106 = objc_opt_isKindOfClass();
              if (!background2)
              {
              }

              createSpecularImage = 0;
              v40 = 0;
              v34 = 0;
              LODWORD(v102) = 1;
              v20 = 6;
              v46 = 1;
              LOBYTE(background2) = v106;
              goto LABEL_78;
            }

            createSpecularImage = 0;
            LODWORD(v102) = 0;
            v40 = 0;
            v34 = 0;
            v46 = 1;
          }

          else
          {
            v35 = CGImageRetain([(ISSpecularClassification *)v41 darkImage]);
            createSpecularImage = 0;
            LODWORD(v102) = 0;
            LOBYTE(background2) = 0;
            v40 = 0;
            v34 = 0;
            v46 = 1;
            v43 = 1.0;
          }

          v20 = 6;
          goto LABEL_78;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = v24;
          HIDWORD(v102) = [(ISSpecularClassification *)v49 drawsLightingEffects];
          if (HIDWORD(v102))
          {
            v50 = +[ISDefaults sharedInstance];
            LODWORD(background2) = [v50 isEnhancedGlassEnabled];

            v35 = CGImageRetain([(ISSpecularClassification *)v49 tintableImage]);
            v43 = 1.0;
            if (background2)
            {
              feedback7 = [(ISSpecularClassification *)v49 feedback];
              foreground3 = [feedback7 foreground];
              objc_opt_class();
              LOBYTE(background2) = objc_opt_isKindOfClass();

              createSpecularImage = 0;
              v40 = 0;
              v34 = 0;
              LODWORD(v102) = 1;
              v20 = 7;
LABEL_71:
              v46 = 1;
              goto LABEL_78;
            }

            createSpecularImage = 0;
            LODWORD(v102) = 0;
            v40 = 0;
            v34 = 0;
            v46 = 1;
          }

          else
          {
            v35 = CGImageRetain([(ISSpecularClassification *)v49 tintableImage]);
            createSpecularImage = 0;
            LODWORD(v102) = 0;
            LOBYTE(background2) = 0;
            v40 = 0;
            v34 = 0;
            v46 = 1;
            v43 = 1.0;
          }

          v20 = 7;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v34 = 0;
            v40 = 0;
            v102 = 0;
            LOBYTE(background2) = 0;
            createSpecularImage = 0;
            goto LABEL_79;
          }

          v54 = v24;
          background2 = [(ISSpecularClassification *)v54 cornerRadius];

          image = [(ISSpecularClassification *)v54 image];
          v56 = image;
          if (background2)
          {
            v57 = CGImageGetWidth(image);
            v58 = CGImageGetHeight(v56);
            cornerRadius = [(ISSpecularClassification *)v54 cornerRadius];
            intValue = [cornerRadius intValue];

            v61.i64[0] = 0;
            v61.i64[1] = __PAIR64__(v58, v57);
            v35 = ISCreateCroppedCGImage(v56, v61, intValue);
            v40 = [ISShapeDetection categorizeShapeWithWidth:v57 height:v58 cornerRadius:intValue];
            v62 = +[ISDefaults sharedInstance];
            isSolariumCornerRadiusEnabled = [v62 isSolariumCornerRadiusEnabled];

            createSpecularImage = 0;
            if (v40)
            {
              v102 = 0;
              LOBYTE(background2) = 0;
              v40 = 0;
              v34 = 0;
              v46 = 0;
              if (isSolariumCornerRadiusEnabled)
              {
                v43 = 0.68;
              }

              else
              {
                v43 = 0.7;
              }
            }

            else
            {
              v102 = 0;
              LOBYTE(background2) = 0;
              v34 = 0;
              v46 = 0;
              if (isSolariumCornerRadiusEnabled)
              {
                v43 = 0.73;
              }

              else
              {
                v43 = 0.75;
              }
            }
          }

          else
          {
            v35 = CGImageRetain(image);
            v99 = +[ISDefaults sharedInstance];
            if ([v99 isSolariumCornerRadiusEnabled])
            {
              v43 = 0.84;
            }

            else
            {
              v43 = 0.875;
            }

            createSpecularImage = 0;
            v102 = 0;
            v40 = 0;
            v34 = 0;
            v46 = 0;
          }

          v20 = 8;
        }
      }

LABEL_78:

      v105 = v35;
      if (v35)
      {
LABEL_83:

        v19 = 0;
        v104 = v40;
LABEL_84:

        if (reportCopy4)
        {
          v69 = v102;
          if (createSpecularImage)
          {
            v69 = 1;
          }

          if ((BYTE4(v102) | background2))
          {
            v70 = 1;
          }

          else
          {
            v70 = v69;
          }

          *reportCopy4 = [[ISGenerationReport alloc] initWithIconTreatment:v20 hasLightingEffects:v70];
        }

        v71 = CGImageGetWidth(v105);
        v72 = CGImageGetHeight(v105);
        if (v71 >= v72)
        {
          v73 = v71;
        }

        else
        {
          v73 = v72;
        }

        v74 = v43 * (v71 / v73);
        v75 = v43 * (v72 / v73);
        v48 = [objc_alloc(MEMORY[0x1E69993C8]) initWithName:@"foo"];
        [v48 setSize:{width, height}];
        [v48 setScale:scale];
        if (v46)
        {
          if (v34 | v104)
          {
            platform = [(ISIconStackComposer *)self platform];
            v78 = ISCatalogAssetAppearanceForAssetAppearance(appearanceCopy2, platform, v77);
            [v48 setAppearance:v78];

            if (v34)
            {
              v79 = objc_alloc_init(MEMORY[0x1E69993A0]);
              v80 = v79;
              ConstantColor = v34;
LABEL_103:
              [v79 setCGColor:{ConstantColor, appearanceCopy2}];
              [v48 addLayer:v80];

              goto LABEL_104;
            }

            if (v104)
            {
              [v48 addLayer:v104];
LABEL_104:
              v83 = width * (0.5 - v74 * 0.5);
              v84 = height * (0.5 - v75 * 0.5);
              v85 = width * v74;
              v86 = height * v75;
              v87 = v105;
              if (v105)
              {
                v88 = objc_alloc_init(MEMORY[0x1E69993D8]);
                [v88 setImage:v105];
                [v88 setHasLightingEffects:(BYTE4(v102) | (v102 | background2)) & 1];
                [v88 setFrame:{v83, v84, v85, v86}];
                v89 = objc_alloc_init(MEMORY[0x1E69993B8]);
                [v89 setOpacity:1.0];
                [v89 setBlendMode:v19];
                [v89 setHasSpecular:HIDWORD(v102)];
                v90 = 0.0;
                if (background2)
                {
                  v90 = 0.5;
                }

                [v89 setTranslucency:{v90, appearanceCopy2}];
                if (v102)
                {
                  if (v34 && (Components = CGColorGetComponents(v34), NumberOfComponents = CGColorGetNumberOfComponents(v34), Components) && NumberOfComponents >= 3 && (v92 = *Components, v91 = 0.99, *Components >= 0.99) && (v92 = Components[1], v92 >= 0.99) && (v92 = Components[2], v92 >= 0.99))
                  {
                    v95 = 2;
                  }

                  else
                  {
                    v95 = 3;
                  }

                  [v89 setShadowStyle:{v95, v91, v92}];
                  [v89 setShadowOpacity:0.5];
                }

                [v89 addLayer:v88];
                [v48 addLayer:v89];

                v87 = v105;
              }

              if (createSpecularImage)
              {
                v96 = objc_alloc_init(MEMORY[0x1E69993D8]);
                [v96 setImage:createSpecularImage];
                [v96 setHasLightingEffects:1];
                [v96 setFrame:{v83, v84, v85, v86}];
                [v96 setOpacity:0.0];
                v97 = objc_alloc_init(MEMORY[0x1E69993B8]);
                [v97 setOpacity:1.0];
                [v97 setHasSpecular:1];
                [v97 addLayer:v96];
                [v48 addLayer:v97];
              }

              if (image)
              {
                CGImageRelease(image);
              }

              v22 = v104;
              if (v34)
              {
                CGColorRelease(v34);
              }

              if (v87)
              {
                CGImageRelease(v87);
              }

              if (createSpecularImage)
              {
                CGImageRelease(createSpecularImage);
              }

              goto LABEL_127;
            }
          }

          v80 = objc_alloc_init(MEMORY[0x1E69993A0]);
          v82 = MEMORY[0x1E695F1E0];
        }

        else
        {
          v80 = objc_alloc_init(MEMORY[0x1E69993A0]);
          v82 = MEMORY[0x1E695F090];
        }

        ConstantColor = CGColorGetConstantColor(*v82);
        v79 = v80;
        goto LABEL_103;
      }

LABEL_79:
      v105 = CGImageRetain(image);
      v68 = +[ISDefaults sharedInstance];
      if ([v68 isSolariumCornerRadiusEnabled])
      {
        v43 = 0.84;
      }

      else
      {
        v43 = 0.875;
      }

      v46 = 0;
      v20 = 9;
      goto LABEL_83;
    case 1:
      reportCopy4 = report;
      createTintedFallbackIcon = [(ISFallbackIconFactory *)v21 createDarkFallbackIcon];
      goto LABEL_24;
    case 0:
      reportCopy4 = report;
      createTintedFallbackIcon = [(ISFallbackIconFactory *)v21 createLightFallbackIcon];
      goto LABEL_24;
  }

  v47 = _ISDefaultLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    [ISIconStackComposer iconStackForSize:appearance scale:v47 desiredAssetAppearance:? returningGenerationReport:?];
  }

  CGImageRelease(v17);
  v48 = 0;
LABEL_127:

  return v48;
}

- (void)iconStackForSize:(uint64_t)a1 scale:(NSObject *)a2 desiredAssetAppearance:returningGenerationReport:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_ERROR, "Failed to compose icon stack for unknown appearance: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end