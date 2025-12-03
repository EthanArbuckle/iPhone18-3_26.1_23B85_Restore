@interface IFSymbol
+ (id)_coreGlyphsBundle;
+ (id)_coreGlyphsPrivateBundle;
- (BOOL)_shouldFlipFromSymbolImage:(id)image desiredDirection:(int64_t)direction;
- (BOOL)_useIconStack;
- (CUICatalog)catalog;
- (IFSymbol)initWithCoder:(id)coder;
- (IFSymbol)initWithSymbolName:(id)name bundleURL:(id)l;
- (id)_graphicVariantVectorGlyphForGraphicSymbolDescriptor:(id)descriptor resolvedRenderingMode:(int64_t *)mode allowXOffsetFlip:(BOOL)flip shouldFlipSymbolImage:(BOOL *)image;
- (id)_iconStackForGraphicSymbolDescriptor:(id)descriptor;
- (id)description;
- (id)imageForDescriptor:(id)descriptor;
- (id)imageForGraphicSymbolDescriptor:(id)descriptor;
- (id)imageForSize:(CGSize)size scale:(double)scale;
- (void)_flipImageInLayer:(id)layer requestedWidth:(double)width;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IFSymbol

- (IFSymbol)initWithSymbolName:(id)name bundleURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = IFSymbol;
  v8 = [(IFSymbol *)&v12 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_bundleURL, l);
    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (IFSymbol)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];

  v7 = [(IFSymbol *)self initWithSymbolName:v6 bundleURL:v5];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  bundleURL = self->_bundleURL;
  if (bundleURL)
  {
    [coderCopy encodeObject:bundleURL forKey:@"bundleURL"];
  }
}

- (CUICatalog)catalog
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_catalog)
  {
    v3 = [IFBundle bundleWithURL:self->_bundleURL];
    assetCatalogURL = [v3 assetCatalogURL];

    v5 = [objc_alloc(MEMORY[0x1E6999368]) initWithURL:assetCatalogURL error:0];
    catalog = self->_catalog;
    self->_catalog = v5;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = self->_catalog;

  return v7;
}

+ (id)_coreGlyphsBundle
{
  if (_coreGlyphsBundle_onceToken != -1)
  {
    +[IFSymbol _coreGlyphsBundle];
  }

  v3 = _coreGlyphsBundle_bundle;

  return v3;
}

void __29__IFSymbol__coreGlyphsBundle__block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v3 = [MEMORY[0x1E695DFF8] coreGlyphsBundleURL];
  v1 = [v0 bundleWithURL:v3];
  v2 = _coreGlyphsBundle_bundle;
  _coreGlyphsBundle_bundle = v1;
}

+ (id)_coreGlyphsPrivateBundle
{
  if (_coreGlyphsPrivateBundle_onceToken != -1)
  {
    +[IFSymbol _coreGlyphsPrivateBundle];
  }

  v3 = _coreGlyphsPrivateBundle_bundle;

  return v3;
}

void __36__IFSymbol__coreGlyphsPrivateBundle__block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v3 = [MEMORY[0x1E695DFF8] coreGlyphsPrivateBundleURL];
  v1 = [v0 bundleWithURL:v3];
  v2 = _coreGlyphsPrivateBundle_bundle;
  _coreGlyphsPrivateBundle_bundle = v1;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  name = [(IFSymbol *)self name];

  if (name)
  {
    v9 = objc_alloc_init(IFSymbolImageDescriptor);
    [(IFSymbolImageDescriptor *)v9 setScale:scale];
    v10 = [(IFSymbol *)self imageForDescriptor:v9];
    v11 = v10;
    if (v10 && ([v10 vectorGlyph], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      vectorGlyph = [v11 vectorGlyph];
      [vectorGlyph alignmentRect];
      memset(&v26, 0, sizeof(v26));
      v16 = 1.0;
      v17 = v14 <= width;
      v18 = width / v14;
      if (v14 < width)
      {
        v19 = width / v14;
      }

      else
      {
        v19 = 1.0;
      }

      if (v17)
      {
        v18 = v19;
      }

      if (v15 > height || v15 < height)
      {
        v16 = height / v15;
      }

      if (v16 >= v18)
      {
        v16 = v18;
      }

      CGAffineTransformMakeScale(&v26, v16, v16);
      [vectorGlyph alignmentRect];
      v25 = v26;
      v29 = CGRectApplyAffineTransform(v28, &v25);
      v20 = [vectorGlyph rasterizeImageUsingScaleFactor:scale forTargetSize:{v29.size.width, v29.size.height}];
      if (v20)
      {
        v21 = v20;
        scale = [IFGraphicsContext bitmapContextWithSize:0 scale:width preset:height, scale];
        if ([(IFSymbol *)self _shouldFlipFromSymbolImage:v11 desiredDirection:[(IFSymbolImageDescriptor *)v9 layoutDirection]])
        {
          CGContextTranslateCTM([scale cgContext], width, 0.0);
          CGContextScaleCTM([scale cgContext], -1.0, 1.0);
        }

        [scale drawCGImage:v21 centeredInRect:{0.0, 0.0, width, height}];
        image = [scale image];
        CFRelease(v21);
      }

      else
      {
        image = 0;
      }
    }

    else
    {
      image = 0;
    }
  }

  else
  {
    image = 0;
  }

  return image;
}

- (id)imageForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [(IFSymbol *)self name];
    [descriptorCopy setName:name];

    v6 = MEMORY[0x1E69C8710];
    name2 = [(IFSymbol *)self name];
    v8 = [v6 infoForName:name2 allowsPrivate:1 locale:0];

    if (v8)
    {
      name3 = [v8 name];
      name4 = [(IFSymbol *)self name];
      v11 = [name3 isEqualToString:name4];

      if ((v11 & 1) == 0)
      {
        name5 = [v8 name];
        [descriptorCopy setResolvedName:name5];
      }
    }
  }

  catalog = [(IFSymbol *)self catalog];
  name6 = [(IFSymbol *)self name];
  [descriptorCopy scale];
  v16 = v15;
  layoutDirection = [descriptorCopy layoutDirection];
  symbolSize = [descriptorCopy symbolSize];
  symbolWeight = [descriptorCopy symbolWeight];
  [descriptorCopy pointSize];
  v21 = [catalog namedVectorGlyphWithName:name6 scaleFactor:0 deviceIdiom:layoutDirection layoutDirection:symbolSize glyphSize:symbolWeight glyphWeight:0 glyphPointSize:v16 appearanceName:v20];

  if (v21)
  {
    goto LABEL_10;
  }

  v22 = objc_alloc(MEMORY[0x1E6999368]);
  v23 = +[IFSymbol _coreGlyphsBundle];
  v24 = [v22 initWithName:@"Assets" fromBundle:v23 error:0];

  name7 = [(IFSymbol *)self name];
  [descriptorCopy scale];
  v27 = v26;
  layoutDirection2 = [descriptorCopy layoutDirection];
  symbolSize2 = [descriptorCopy symbolSize];
  symbolWeight2 = [descriptorCopy symbolWeight];
  [descriptorCopy pointSize];
  v21 = [v24 namedVectorGlyphWithName:name7 scaleFactor:0 deviceIdiom:layoutDirection2 layoutDirection:symbolSize2 glyphSize:symbolWeight2 glyphWeight:0 glyphPointSize:v27 appearanceName:v31];

  if (v21)
  {
    catalog = v24;
LABEL_10:
    v41 = [IFSymbolImage alloc];
    tintColor = [descriptorCopy tintColor];
    v43 = [(IFSymbolImage *)v41 initWithNamedVectorGlyph:v21 tintColor:tintColor];

    goto LABEL_11;
  }

  v32 = objc_alloc(MEMORY[0x1E6999368]);
  v33 = +[IFSymbol _coreGlyphsPrivateBundle];
  catalog = [v32 initWithName:@"Assets" fromBundle:v33 error:0];

  name8 = [(IFSymbol *)self name];
  [descriptorCopy scale];
  v36 = v35;
  layoutDirection3 = [descriptorCopy layoutDirection];
  symbolSize3 = [descriptorCopy symbolSize];
  symbolWeight3 = [descriptorCopy symbolWeight];
  [descriptorCopy pointSize];
  v21 = [catalog namedVectorGlyphWithName:name8 scaleFactor:0 deviceIdiom:layoutDirection3 layoutDirection:symbolSize3 glyphSize:symbolWeight3 glyphWeight:0 glyphPointSize:v36 appearanceName:v40];

  if (v21)
  {
    goto LABEL_10;
  }

  v43 = 0;
LABEL_11:

  return v43;
}

- (id)imageForGraphicSymbolDescriptor:(id)descriptor
{
  v96[3] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  if ([descriptorCopy appearance] == 1 && !objc_msgSend(descriptorCopy, "appearanceVariant"))
  {
    [descriptorCopy setAppearanceVariant:1];
  }

  if ([(IFSymbol *)self _useIconStack])
  {
    v5 = [(IFSymbol *)self _iconStackForGraphicSymbolDescriptor:descriptorCopy];
    [descriptorCopy size];
    v7 = v6;
    v9 = v8;
    [descriptorCopy scale];
    v11 = v10;
    platform = [descriptorCopy platform];
    appearance = [descriptorCopy appearance];
    appearanceVariant = [descriptorCopy appearanceVariant];
    tintColor = [descriptorCopy tintColor];
    encapsulationShape = [descriptorCopy encapsulationShape];
    image = [v5 _IF_ImageWithSize:v11 scale:platform platform:appearance appearance:appearanceVariant appearanceVariant:tintColor tintColor:0 isLegacy:v7 encapsulationShape:{v9, encapsulationShape}];

    goto LABEL_6;
  }

  v82 = 0;
  v81 = 0;
  v5 = [(IFSymbol *)self _graphicVariantVectorGlyphForGraphicSymbolDescriptor:descriptorCopy resolvedRenderingMode:&v82 allowXOffsetFlip:1 shouldFlipSymbolImage:&v81];
  image = 0;
  if (v5 && v82)
  {
    if (v82 > 2)
    {
      if (v82 == 3)
      {
        resolvedSymbolColors = [descriptorCopy resolvedSymbolColors];
        v53 = [resolvedSymbolColors objectAtIndexedSubscript:0];
        cgColor = [v53 cgColor];

        Alpha = CGColorGetAlpha(cgColor);
        CopyWithAlpha = CGColorCreateCopyWithAlpha(cgColor, Alpha * 0.5);
        v57 = CGColorCreateCopyWithAlpha(cgColor, Alpha * 0.3);
        v96[0] = cgColor;
        v96[1] = CopyWithAlpha;
        v96[2] = v57;
        v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:3];
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke;
        v79[3] = &unk_1E7ED98A0;
        v80 = v58;
        v59 = v58;
        v60 = MEMORY[0x1BFAE9070](v79);
        [descriptorCopy scale];
        v62 = v61;
        [descriptorCopy size];
        v25 = [v5 rasterizeImageUsingScaleFactor:v60 forTargetSize:v62 withHierarchyColorResolver:{v63, v64}];
        if (CopyWithAlpha)
        {
          CFRelease(CopyWithAlpha);
        }

        if (v57)
        {
          CFRelease(v57);
        }

        if (!v25)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v82 != 4)
        {
          goto LABEL_37;
        }

        v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        resolvedSymbolColors2 = [descriptorCopy resolvedSymbolColors];
        v28 = [resolvedSymbolColors2 countByEnumeratingWithState:&v73 objects:v95 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v74;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v74 != v30)
              {
                objc_enumerationMutation(resolvedSymbolColors2);
              }

              [v26 addObject:{objc_msgSend(*(*(&v73 + 1) + 8 * i), "cgColor")}];
            }

            v29 = [resolvedSymbolColors2 countByEnumeratingWithState:&v73 objects:v95 count:16];
          }

          while (v29);
        }

        [descriptorCopy scale];
        v33 = v32;
        [descriptorCopy size];
        v25 = [v5 rasterizeImageUsingScaleFactor:v26 forTargetSize:v33 withPaletteColors:{v34, v35}];

        if (!v25)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v82 == 1)
    {
      [descriptorCopy scale];
      v37 = v36;
      [descriptorCopy size];
      v25 = [v5 rasterizeImageUsingScaleFactor:v37 forTargetSize:{v38, v39}];
      if (!v25)
      {
LABEL_37:
        v65 = IFDefaultLog();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          name = [(IFSymbol *)self name];
          v67 = v82;
          [descriptorCopy size];
          v69 = v68;
          [descriptorCopy size];
          v71 = v70;
          [descriptorCopy scale];
          *buf = 138413570;
          v84 = name;
          v85 = 2112;
          v86 = v5;
          v87 = 2048;
          v88 = v67;
          v89 = 2048;
          v90 = v69;
          v91 = 2048;
          v92 = v71;
          v93 = 2048;
          v94 = v72;
        }

        image = 0;
        goto LABEL_6;
      }
    }

    else
    {
      if (v82 != 2)
      {
        goto LABEL_37;
      }

      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke_22;
      v77[3] = &unk_1E7ED98C8;
      v19 = descriptorCopy;
      v78 = v19;
      v20 = MEMORY[0x1BFAE9070](v77);
      [v19 scale];
      v22 = v21;
      [v19 size];
      v25 = [v5 rasterizeImageUsingScaleFactor:v20 forTargetSize:v22 withColorResolver:{v23, v24}];

      if (!v25)
      {
        goto LABEL_37;
      }
    }

    if (v81 == 1)
    {
      [descriptorCopy size];
      v41 = v40;
      v43 = v42;
      [descriptorCopy scale];
      v45 = [IFGraphicsContext bitmapContextWithSize:0 scale:v41 preset:v43, v44];
      cgContext = [v45 cgContext];
      [descriptorCopy size];
      CGContextTranslateCTM(cgContext, v47, 0.0);
      CGContextScaleCTM([v45 cgContext], -1.0, 1.0);
      [descriptorCopy size];
      v49 = v48;
      [descriptorCopy size];
      [v45 drawCGImage:v25 centeredInRect:{0.0, 0.0, v49, v50}];
      image = [v45 image];
    }

    else
    {
      v51 = [IFImage alloc];
      [descriptorCopy scale];
      image = [(IFImage *)v51 initWithCGImage:v25 scale:?];
    }

    CFRelease(v25);
  }

LABEL_6:

  return image;
}

uint64_t __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ([*(a1 + 32) count] <= a3)
  {
    v6 = IFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke_cold_1(a3, v6);
    }

    return [*(a1 + 32) lastObject];
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  }

  return v5;
}

uint64_t __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke_22(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = -[IFColor _initWithColorStr:appearance:contrast:vibrancy:]([IFColor alloc], "_initWithColorStr:appearance:contrast:vibrancy:", v5, [*(a1 + 32) appearance], objc_msgSend(*(a1 + 32), "contrast"), objc_msgSend(*(a1 + 32), "vibrancy"));

  if (v6 && [v6 cgColor])
  {
    a3 = [v6 cgColor];
  }

  return a3;
}

- (id)_iconStackForGraphicSymbolDescriptor:(id)descriptor
{
  v114[3] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v98 = 0;
  v97 = 0;
  v5 = [(IFSymbol *)self _graphicVariantVectorGlyphForGraphicSymbolDescriptor:descriptorCopy resolvedRenderingMode:&v98 allowXOffsetFlip:0 shouldFlipSymbolImage:&v97];
  v6 = 0;
  if (v5 && v98)
  {
    v7 = 0;
    if (v98 > 2)
    {
      if (v98 == 3)
      {
        resolvedSymbolColors = [descriptorCopy resolvedSymbolColors];
        v29 = [resolvedSymbolColors objectAtIndexedSubscript:0];
        cgColor = [v29 cgColor];

        Alpha = CGColorGetAlpha(cgColor);
        CopyWithAlpha = CGColorCreateCopyWithAlpha(cgColor, Alpha * 0.5);
        v33 = CGColorCreateCopyWithAlpha(cgColor, Alpha * 0.3);
        v114[0] = cgColor;
        v114[1] = CopyWithAlpha;
        v114[2] = v33;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:3];
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __49__IFSymbol__iconStackForGraphicSymbolDescriptor___block_invoke;
        v95[3] = &unk_1E7ED98A0;
        v96 = v34;
        v35 = v34;
        v36 = v5;
        v37 = MEMORY[0x1BFAE9070](v95);
        [descriptorCopy scale];
        v39 = v38;
        [descriptorCopy size];
        v40 = v36;
        v43 = [v36 layerStackWithDisplayScale:v37 forTargetSize:v39 withHierarchyColorResolver:{v41, v42}];
        if (CopyWithAlpha)
        {
          CFRelease(CopyWithAlpha);
        }

        if (v33)
        {
          CFRelease(v33);
        }

        v5 = v40;
        v7 = v43;
        if (!v43)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v98 != 4)
        {
          goto LABEL_27;
        }

        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        resolvedSymbolColors2 = [descriptorCopy resolvedSymbolColors];
        v16 = [resolvedSymbolColors2 countByEnumeratingWithState:&v89 objects:v113 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v90;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v90 != v18)
              {
                objc_enumerationMutation(resolvedSymbolColors2);
              }

              [v14 addObject:{objc_msgSend(*(*(&v89 + 1) + 8 * i), "cgColor")}];
            }

            v17 = [resolvedSymbolColors2 countByEnumeratingWithState:&v89 objects:v113 count:16];
          }

          while (v17);
        }

        [descriptorCopy scale];
        v21 = v20;
        [descriptorCopy size];
        v7 = [v5 layerStackWithDisplayScale:v14 forTargetSize:v21 withPaletteColors:{v22, v23}];

        if (!v7)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v98 == 1)
    {
      [descriptorCopy scale];
      v25 = v24;
      [descriptorCopy size];
      v7 = [v5 layerStackWithDisplayScale:v25 forTargetSize:{v26, v27}];
      if (!v7)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v98 != 2)
      {
        goto LABEL_27;
      }

      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = __49__IFSymbol__iconStackForGraphicSymbolDescriptor___block_invoke_27;
      v93[3] = &unk_1E7ED98C8;
      v8 = descriptorCopy;
      v94 = v8;
      v9 = MEMORY[0x1BFAE9070](v93);
      [v8 scale];
      v11 = v10;
      [v8 size];
      v7 = [v5 layerStackWithDisplayScale:v9 forTargetSize:v11 withColorResolver:{v12, v13}];

      if (!v7)
      {
        goto LABEL_27;
      }
    }

    layers = [v7 layers];
    v45 = [layers count];

    if (v45 <= 1)
    {
LABEL_27:
      v46 = IFDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        name = [(IFSymbol *)self name];
        v62 = v98;
        [descriptorCopy size];
        v64 = v63;
        [descriptorCopy size];
        v66 = v65;
        [descriptorCopy scale];
        *buf = 138413570;
        v102 = name;
        v103 = 2112;
        v104 = v5;
        v105 = 2048;
        v106 = v62;
        v107 = 2048;
        v108 = v64;
        v109 = 2048;
        v110 = v66;
        v111 = 2048;
        v112 = v67;
      }

      v6 = 0;
      goto LABEL_30;
    }

    if (v97 != 1)
    {
      v7 = v7;
      v6 = v7;
LABEL_30:

      goto LABEL_31;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = [v7 mutableCopy];
      if (!v6)
      {
        layers2 = IFDefaultLog();
        if (os_log_type_enabled(layers2, OS_LOG_TYPE_ERROR))
        {
          name2 = [(IFSymbol *)self name];
          v69 = v98;
          [descriptorCopy size];
          v71 = v70;
          [descriptorCopy size];
          v73 = v72;
          [descriptorCopy scale];
          *buf = 138413570;
          v102 = name2;
          v103 = 2112;
          v104 = v5;
          v105 = 2048;
          v106 = v69;
          v107 = 2048;
          v108 = v71;
          v109 = 2048;
          v110 = v73;
          v111 = 2048;
          v112 = v74;
        }

        v6 = 0;
        goto LABEL_63;
      }
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    layers2 = [v6 layers];
    v49 = [layers2 countByEnumeratingWithState:&v85 objects:v100 count:16];
    if (v49)
    {
      v50 = v49;
      v75 = v6;
      v76 = v7;
      v51 = *v86;
      v79 = layers2;
      v77 = v5;
      v78 = *v86;
      do
      {
        v52 = 0;
        v80 = v50;
        do
        {
          if (*v86 != v51)
          {
            objc_enumerationMutation(layers2);
          }

          v53 = *(*(&v85 + 1) + 8 * v52);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [descriptorCopy size];
            [(IFSymbol *)self _flipImageInLayer:v53 requestedWidth:?];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v54 = v53;
              v81 = 0u;
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              layers3 = [v54 layers];
              v56 = [layers3 countByEnumeratingWithState:&v81 objects:v99 count:16];
              if (v56)
              {
                v57 = v56;
                v58 = *v82;
                do
                {
                  for (j = 0; j != v57; ++j)
                  {
                    if (*v82 != v58)
                    {
                      objc_enumerationMutation(layers3);
                    }

                    v60 = *(*(&v81 + 1) + 8 * j);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [descriptorCopy size];
                      [(IFSymbol *)self _flipImageInLayer:v60 requestedWidth:?];
                    }
                  }

                  v57 = [layers3 countByEnumeratingWithState:&v81 objects:v99 count:16];
                }

                while (v57);
              }

              v51 = v78;
              layers2 = v79;
              v50 = v80;
            }
          }

          ++v52;
        }

        while (v52 != v50);
        v50 = [layers2 countByEnumeratingWithState:&v85 objects:v100 count:16];
      }

      while (v50);
      v7 = v76;
      v5 = v77;
      v6 = v75;
    }

LABEL_63:

    goto LABEL_30;
  }

LABEL_31:

  return v6;
}

uint64_t __49__IFSymbol__iconStackForGraphicSymbolDescriptor___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ([*(a1 + 32) count] <= a3)
  {
    v6 = IFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke_cold_1(a3, v6);
    }

    return [*(a1 + 32) lastObject];
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  }

  return v5;
}

uint64_t __49__IFSymbol__iconStackForGraphicSymbolDescriptor___block_invoke_27(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = -[IFColor _initWithColorStr:appearance:contrast:vibrancy:]([IFColor alloc], "_initWithColorStr:appearance:contrast:vibrancy:", v5, [*(a1 + 32) appearance], objc_msgSend(*(a1 + 32), "contrast"), objc_msgSend(*(a1 + 32), "vibrancy"));

  if (v6 && [v6 cgColor])
  {
    a3 = [v6 cgColor];
  }

  return a3;
}

- (void)_flipImageInLayer:(id)layer requestedWidth:(double)width
{
  layerCopy = layer;
  image = [layerCopy image];
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v19 = [IFGraphicsContext bitmapContextWithSize:0 scale:Width preset:Height, 1.0];
  CGContextTranslateCTM([v19 cgContext], Width, 0.0);
  CGContextScaleCTM([v19 cgContext], -1.0, 1.0);
  [v19 drawCGImage:objc_msgSend(layerCopy centeredInRect:{"image"), 0.0, 0.0, Width, Height}];
  image2 = [v19 image];
  [layerCopy setImage:{objc_msgSend(image2, "CGImage")}];
  [layerCopy frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [layerCopy frame];
  v17 = width - v16;
  [layerCopy frame];
  [layerCopy setFrame:{v17 - v18, v11, v13, v15}];
}

- (BOOL)_shouldFlipFromSymbolImage:(id)image desiredDirection:(int64_t)direction
{
  imageCopy = image;
  if (![imageCopy isFlippable])
  {
    goto LABEL_7;
  }

  if (direction != 4)
  {
    if (direction == 5 && [imageCopy layoutDirection] == 4)
    {
      goto LABEL_5;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  if ([imageCopy layoutDirection] != 5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = 1;
LABEL_8:

  return v6;
}

- (id)_graphicVariantVectorGlyphForGraphicSymbolDescriptor:(id)descriptor resolvedRenderingMode:(int64_t *)mode allowXOffsetFlip:(BOOL)flip shouldFlipSymbolImage:(BOOL *)image
{
  flipCopy = flip;
  v66 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v11 = [(IFSymbol *)self imageForDescriptor:descriptorCopy];
  if (v11)
  {
    name = [(IFSymbol *)self name];
    [descriptorCopy setName:name];

    if (-[IFSymbol _shouldFlipFromSymbolImage:desiredDirection:](self, "_shouldFlipFromSymbolImage:desiredDirection:", v11, [descriptorCopy layoutDirection]))
    {
      [descriptorCopy setFlipXOffsetOverride:flipCopy];
      *image = 1;
    }

    v13 = objc_alloc_init(MEMORY[0x1E6999438]);
    -[NSObject setShape:](v13, "setShape:", [descriptorCopy resolvedShape]);
    -[NSObject setFill:](v13, "setFill:", [descriptorCopy resolvedFill]);
    -[NSObject setContentEffect:](v13, "setContentEffect:", [descriptorCopy resolvedSymbolEffect]);
    -[NSObject setShapeEffect:](v13, "setShapeEffect:", [descriptorCopy resolvedEnclosureEffect]);
    [descriptorCopy symbolOffset];
    [v13 setImageOffset:?];
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    resolvedEnclosureColors = [descriptorCopy resolvedEnclosureColors];
    v16 = [resolvedEnclosureColors countByEnumeratingWithState:&v41 objects:v65 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v42;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(resolvedEnclosureColors);
          }

          [v14 addObject:{objc_msgSend(*(*(&v41 + 1) + 8 * i), "cgColor")}];
        }

        v17 = [resolvedEnclosureColors countByEnumeratingWithState:&v41 objects:v65 count:16];
      }

      while (v17);
    }

    [v13 setFillColors:v14];
    [descriptorCopy resolvedBorderWidth];
    [v13 setBorderWidth:?];
    resolvedBorderColor = [descriptorCopy resolvedBorderColor];
    -[NSObject setBorderColor:](v13, "setBorderColor:", [resolvedBorderColor cgColor]);

    vectorGlyph = [v11 vectorGlyph];
    v22 = [descriptorCopy resolvedRenderingModeFromSuggestedMode:{objc_msgSend(vectorGlyph, "preferredRenderingMode")}];

    if (v22 == 1)
    {
      resolvedSymbolColors = [descriptorCopy resolvedSymbolColors];
      v24 = [resolvedSymbolColors objectAtIndexedSubscript:0];
      -[NSObject setMonochromeForegroundColor:](v13, "setMonochromeForegroundColor:", [v24 cgColor]);
    }

    *mode = v22;
    v25 = IFDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      name2 = [(IFSymbol *)self name];
      fillColors = [v13 fillColors];
      shape = [v13 shape];
      fill = [v13 fill];
      contentEffect = [v13 contentEffect];
      monochromeForegroundColor = [v13 monochromeForegroundColor];
      resolvedName = [descriptorCopy resolvedName];
      [v13 borderWidth];
      v34 = v33;
      borderColor = [v13 borderColor];
      *buf = 138414594;
      v46 = name2;
      v47 = 2112;
      v48 = v13;
      v49 = 2112;
      v50 = fillColors;
      v51 = 2048;
      v52 = shape;
      v53 = 2048;
      v54 = fill;
      v55 = 2048;
      v56 = contentEffect;
      v57 = 2112;
      v58 = monochromeForegroundColor;
      v59 = 2112;
      v60 = resolvedName;
      v61 = 2048;
      v62 = v34;
      v63 = 2112;
      v64 = borderColor;
    }

    vectorGlyph2 = [v11 vectorGlyph];
    v27 = [vectorGlyph2 graphicVariantWithOptions:v13];

    if (!v27)
    {
      v28 = IFDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [IFSymbol _graphicVariantVectorGlyphForGraphicSymbolDescriptor:v13 resolvedRenderingMode:v28 allowXOffsetFlip:? shouldFlipSymbolImage:?];
      }
    }
  }

  else
  {
    v13 = IFDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      name3 = [(IFSymbol *)self name];
      *buf = 138412290;
      v46 = name3;
    }

    v27 = 0;
  }

  return v27;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IFSymbol;
  v4 = [(IFSymbol *)&v8 description];
  name = [(IFSymbol *)self name];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, name];

  return v6;
}

- (BOOL)_useIconStack
{
  v2 = +[IFDefaults sharedInstance];
  iconStackAppIconsAllowed = [v2 iconStackAppIconsAllowed];

  return iconStackAppIconsAllowed;
}

void __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1B9DEC000, a2, OS_LOG_TYPE_DEBUG, "The hierarchy has more levels then supplied colours. Level: %lu", &v2, 0xCu);
}

- (void)_graphicVariantVectorGlyphForGraphicSymbolDescriptor:(NSObject *)a3 resolvedRenderingMode:allowXOffsetFlip:shouldFlipSymbolImage:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 name];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1B9DEC000, a3, OS_LOG_TYPE_ERROR, "Failed to create graphic variant image for %@ with options %@", &v6, 0x16u);
}

@end