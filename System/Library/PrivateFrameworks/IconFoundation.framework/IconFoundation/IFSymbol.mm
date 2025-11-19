@interface IFSymbol
+ (id)_coreGlyphsBundle;
+ (id)_coreGlyphsPrivateBundle;
- (BOOL)_shouldFlipFromSymbolImage:(id)a3 desiredDirection:(int64_t)a4;
- (BOOL)_useIconStack;
- (CUICatalog)catalog;
- (IFSymbol)initWithCoder:(id)a3;
- (IFSymbol)initWithSymbolName:(id)a3 bundleURL:(id)a4;
- (id)_graphicVariantVectorGlyphForGraphicSymbolDescriptor:(id)a3 resolvedRenderingMode:(int64_t *)a4 allowXOffsetFlip:(BOOL)a5 shouldFlipSymbolImage:(BOOL *)a6;
- (id)_iconStackForGraphicSymbolDescriptor:(id)a3;
- (id)description;
- (id)imageForDescriptor:(id)a3;
- (id)imageForGraphicSymbolDescriptor:(id)a3;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
- (void)_flipImageInLayer:(id)a3 requestedWidth:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IFSymbol

- (IFSymbol)initWithSymbolName:(id)a3 bundleURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = IFSymbol;
  v8 = [(IFSymbol *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_bundleURL, a4);
    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (IFSymbol)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];

  v7 = [(IFSymbol *)self initWithSymbolName:v6 bundleURL:v5];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_name forKey:@"name"];
  bundleURL = self->_bundleURL;
  if (bundleURL)
  {
    [v5 encodeObject:bundleURL forKey:@"bundleURL"];
  }
}

- (CUICatalog)catalog
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_catalog)
  {
    v3 = [IFBundle bundleWithURL:self->_bundleURL];
    v4 = [v3 assetCatalogURL];

    v5 = [objc_alloc(MEMORY[0x1E6999368]) initWithURL:v4 error:0];
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

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(IFSymbol *)self name];

  if (v8)
  {
    v9 = objc_alloc_init(IFSymbolImageDescriptor);
    [(IFSymbolImageDescriptor *)v9 setScale:a4];
    v10 = [(IFSymbol *)self imageForDescriptor:v9];
    v11 = v10;
    if (v10 && ([v10 vectorGlyph], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = [v11 vectorGlyph];
      [v13 alignmentRect];
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
      [v13 alignmentRect];
      v25 = v26;
      v29 = CGRectApplyAffineTransform(v28, &v25);
      v20 = [v13 rasterizeImageUsingScaleFactor:a4 forTargetSize:{v29.size.width, v29.size.height}];
      if (v20)
      {
        v21 = v20;
        v22 = [IFGraphicsContext bitmapContextWithSize:0 scale:width preset:height, a4];
        if ([(IFSymbol *)self _shouldFlipFromSymbolImage:v11 desiredDirection:[(IFSymbolImageDescriptor *)v9 layoutDirection]])
        {
          CGContextTranslateCTM([v22 cgContext], width, 0.0);
          CGContextScaleCTM([v22 cgContext], -1.0, 1.0);
        }

        [v22 drawCGImage:v21 centeredInRect:{0.0, 0.0, width, height}];
        v23 = [v22 image];
        CFRelease(v21);
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)imageForDescriptor:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IFSymbol *)self name];
    [v4 setName:v5];

    v6 = MEMORY[0x1E69C8710];
    v7 = [(IFSymbol *)self name];
    v8 = [v6 infoForName:v7 allowsPrivate:1 locale:0];

    if (v8)
    {
      v9 = [v8 name];
      v10 = [(IFSymbol *)self name];
      v11 = [v9 isEqualToString:v10];

      if ((v11 & 1) == 0)
      {
        v12 = [v8 name];
        [v4 setResolvedName:v12];
      }
    }
  }

  v13 = [(IFSymbol *)self catalog];
  v14 = [(IFSymbol *)self name];
  [v4 scale];
  v16 = v15;
  v17 = [v4 layoutDirection];
  v18 = [v4 symbolSize];
  v19 = [v4 symbolWeight];
  [v4 pointSize];
  v21 = [v13 namedVectorGlyphWithName:v14 scaleFactor:0 deviceIdiom:v17 layoutDirection:v18 glyphSize:v19 glyphWeight:0 glyphPointSize:v16 appearanceName:v20];

  if (v21)
  {
    goto LABEL_10;
  }

  v22 = objc_alloc(MEMORY[0x1E6999368]);
  v23 = +[IFSymbol _coreGlyphsBundle];
  v24 = [v22 initWithName:@"Assets" fromBundle:v23 error:0];

  v25 = [(IFSymbol *)self name];
  [v4 scale];
  v27 = v26;
  v28 = [v4 layoutDirection];
  v29 = [v4 symbolSize];
  v30 = [v4 symbolWeight];
  [v4 pointSize];
  v21 = [v24 namedVectorGlyphWithName:v25 scaleFactor:0 deviceIdiom:v28 layoutDirection:v29 glyphSize:v30 glyphWeight:0 glyphPointSize:v27 appearanceName:v31];

  if (v21)
  {
    v13 = v24;
LABEL_10:
    v41 = [IFSymbolImage alloc];
    v42 = [v4 tintColor];
    v43 = [(IFSymbolImage *)v41 initWithNamedVectorGlyph:v21 tintColor:v42];

    goto LABEL_11;
  }

  v32 = objc_alloc(MEMORY[0x1E6999368]);
  v33 = +[IFSymbol _coreGlyphsPrivateBundle];
  v13 = [v32 initWithName:@"Assets" fromBundle:v33 error:0];

  v34 = [(IFSymbol *)self name];
  [v4 scale];
  v36 = v35;
  v37 = [v4 layoutDirection];
  v38 = [v4 symbolSize];
  v39 = [v4 symbolWeight];
  [v4 pointSize];
  v21 = [v13 namedVectorGlyphWithName:v34 scaleFactor:0 deviceIdiom:v37 layoutDirection:v38 glyphSize:v39 glyphWeight:0 glyphPointSize:v36 appearanceName:v40];

  if (v21)
  {
    goto LABEL_10;
  }

  v43 = 0;
LABEL_11:

  return v43;
}

- (id)imageForGraphicSymbolDescriptor:(id)a3
{
  v96[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 appearance] == 1 && !objc_msgSend(v4, "appearanceVariant"))
  {
    [v4 setAppearanceVariant:1];
  }

  if ([(IFSymbol *)self _useIconStack])
  {
    v5 = [(IFSymbol *)self _iconStackForGraphicSymbolDescriptor:v4];
    [v4 size];
    v7 = v6;
    v9 = v8;
    [v4 scale];
    v11 = v10;
    v12 = [v4 platform];
    v13 = [v4 appearance];
    v14 = [v4 appearanceVariant];
    v15 = [v4 tintColor];
    v16 = [v4 encapsulationShape];
    v17 = [v5 _IF_ImageWithSize:v11 scale:v12 platform:v13 appearance:v14 appearanceVariant:v15 tintColor:0 isLegacy:v7 encapsulationShape:{v9, v16}];

    goto LABEL_6;
  }

  v82 = 0;
  v81 = 0;
  v5 = [(IFSymbol *)self _graphicVariantVectorGlyphForGraphicSymbolDescriptor:v4 resolvedRenderingMode:&v82 allowXOffsetFlip:1 shouldFlipSymbolImage:&v81];
  v17 = 0;
  if (v5 && v82)
  {
    if (v82 > 2)
    {
      if (v82 == 3)
      {
        v52 = [v4 resolvedSymbolColors];
        v53 = [v52 objectAtIndexedSubscript:0];
        v54 = [v53 cgColor];

        Alpha = CGColorGetAlpha(v54);
        CopyWithAlpha = CGColorCreateCopyWithAlpha(v54, Alpha * 0.5);
        v57 = CGColorCreateCopyWithAlpha(v54, Alpha * 0.3);
        v96[0] = v54;
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
        [v4 scale];
        v62 = v61;
        [v4 size];
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
        v27 = [v4 resolvedSymbolColors];
        v28 = [v27 countByEnumeratingWithState:&v73 objects:v95 count:16];
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
                objc_enumerationMutation(v27);
              }

              [v26 addObject:{objc_msgSend(*(*(&v73 + 1) + 8 * i), "cgColor")}];
            }

            v29 = [v27 countByEnumeratingWithState:&v73 objects:v95 count:16];
          }

          while (v29);
        }

        [v4 scale];
        v33 = v32;
        [v4 size];
        v25 = [v5 rasterizeImageUsingScaleFactor:v26 forTargetSize:v33 withPaletteColors:{v34, v35}];

        if (!v25)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v82 == 1)
    {
      [v4 scale];
      v37 = v36;
      [v4 size];
      v25 = [v5 rasterizeImageUsingScaleFactor:v37 forTargetSize:{v38, v39}];
      if (!v25)
      {
LABEL_37:
        v65 = IFDefaultLog();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v66 = [(IFSymbol *)self name];
          v67 = v82;
          [v4 size];
          v69 = v68;
          [v4 size];
          v71 = v70;
          [v4 scale];
          *buf = 138413570;
          v84 = v66;
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

        v17 = 0;
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
      v19 = v4;
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
      [v4 size];
      v41 = v40;
      v43 = v42;
      [v4 scale];
      v45 = [IFGraphicsContext bitmapContextWithSize:0 scale:v41 preset:v43, v44];
      v46 = [v45 cgContext];
      [v4 size];
      CGContextTranslateCTM(v46, v47, 0.0);
      CGContextScaleCTM([v45 cgContext], -1.0, 1.0);
      [v4 size];
      v49 = v48;
      [v4 size];
      [v45 drawCGImage:v25 centeredInRect:{0.0, 0.0, v49, v50}];
      v17 = [v45 image];
    }

    else
    {
      v51 = [IFImage alloc];
      [v4 scale];
      v17 = [(IFImage *)v51 initWithCGImage:v25 scale:?];
    }

    CFRelease(v25);
  }

LABEL_6:

  return v17;
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

- (id)_iconStackForGraphicSymbolDescriptor:(id)a3
{
  v114[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v98 = 0;
  v97 = 0;
  v5 = [(IFSymbol *)self _graphicVariantVectorGlyphForGraphicSymbolDescriptor:v4 resolvedRenderingMode:&v98 allowXOffsetFlip:0 shouldFlipSymbolImage:&v97];
  v6 = 0;
  if (v5 && v98)
  {
    v7 = 0;
    if (v98 > 2)
    {
      if (v98 == 3)
      {
        v28 = [v4 resolvedSymbolColors];
        v29 = [v28 objectAtIndexedSubscript:0];
        v30 = [v29 cgColor];

        Alpha = CGColorGetAlpha(v30);
        CopyWithAlpha = CGColorCreateCopyWithAlpha(v30, Alpha * 0.5);
        v33 = CGColorCreateCopyWithAlpha(v30, Alpha * 0.3);
        v114[0] = v30;
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
        [v4 scale];
        v39 = v38;
        [v4 size];
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
        v15 = [v4 resolvedSymbolColors];
        v16 = [v15 countByEnumeratingWithState:&v89 objects:v113 count:16];
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
                objc_enumerationMutation(v15);
              }

              [v14 addObject:{objc_msgSend(*(*(&v89 + 1) + 8 * i), "cgColor")}];
            }

            v17 = [v15 countByEnumeratingWithState:&v89 objects:v113 count:16];
          }

          while (v17);
        }

        [v4 scale];
        v21 = v20;
        [v4 size];
        v7 = [v5 layerStackWithDisplayScale:v14 forTargetSize:v21 withPaletteColors:{v22, v23}];

        if (!v7)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v98 == 1)
    {
      [v4 scale];
      v25 = v24;
      [v4 size];
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
      v8 = v4;
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

    v44 = [v7 layers];
    v45 = [v44 count];

    if (v45 <= 1)
    {
LABEL_27:
      v46 = IFDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v61 = [(IFSymbol *)self name];
        v62 = v98;
        [v4 size];
        v64 = v63;
        [v4 size];
        v66 = v65;
        [v4 scale];
        *buf = 138413570;
        v102 = v61;
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
        v48 = IFDefaultLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v68 = [(IFSymbol *)self name];
          v69 = v98;
          [v4 size];
          v71 = v70;
          [v4 size];
          v73 = v72;
          [v4 scale];
          *buf = 138413570;
          v102 = v68;
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
    v48 = [v6 layers];
    v49 = [v48 countByEnumeratingWithState:&v85 objects:v100 count:16];
    if (v49)
    {
      v50 = v49;
      v75 = v6;
      v76 = v7;
      v51 = *v86;
      v79 = v48;
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
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v85 + 1) + 8 * v52);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v4 size];
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
              v55 = [v54 layers];
              v56 = [v55 countByEnumeratingWithState:&v81 objects:v99 count:16];
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
                      objc_enumerationMutation(v55);
                    }

                    v60 = *(*(&v81 + 1) + 8 * j);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v4 size];
                      [(IFSymbol *)self _flipImageInLayer:v60 requestedWidth:?];
                    }
                  }

                  v57 = [v55 countByEnumeratingWithState:&v81 objects:v99 count:16];
                }

                while (v57);
              }

              v51 = v78;
              v48 = v79;
              v50 = v80;
            }
          }

          ++v52;
        }

        while (v52 != v50);
        v50 = [v48 countByEnumeratingWithState:&v85 objects:v100 count:16];
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

- (void)_flipImageInLayer:(id)a3 requestedWidth:(double)a4
{
  v5 = a3;
  v6 = [v5 image];
  Width = CGImageGetWidth(v6);
  Height = CGImageGetHeight(v6);
  v19 = [IFGraphicsContext bitmapContextWithSize:0 scale:Width preset:Height, 1.0];
  CGContextTranslateCTM([v19 cgContext], Width, 0.0);
  CGContextScaleCTM([v19 cgContext], -1.0, 1.0);
  [v19 drawCGImage:objc_msgSend(v5 centeredInRect:{"image"), 0.0, 0.0, Width, Height}];
  v9 = [v19 image];
  [v5 setImage:{objc_msgSend(v9, "CGImage")}];
  [v5 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v5 frame];
  v17 = a4 - v16;
  [v5 frame];
  [v5 setFrame:{v17 - v18, v11, v13, v15}];
}

- (BOOL)_shouldFlipFromSymbolImage:(id)a3 desiredDirection:(int64_t)a4
{
  v5 = a3;
  if (![v5 isFlippable])
  {
    goto LABEL_7;
  }

  if (a4 != 4)
  {
    if (a4 == 5 && [v5 layoutDirection] == 4)
    {
      goto LABEL_5;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  if ([v5 layoutDirection] != 5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = 1;
LABEL_8:

  return v6;
}

- (id)_graphicVariantVectorGlyphForGraphicSymbolDescriptor:(id)a3 resolvedRenderingMode:(int64_t *)a4 allowXOffsetFlip:(BOOL)a5 shouldFlipSymbolImage:(BOOL *)a6
{
  v7 = a5;
  v66 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [(IFSymbol *)self imageForDescriptor:v10];
  if (v11)
  {
    v12 = [(IFSymbol *)self name];
    [v10 setName:v12];

    if (-[IFSymbol _shouldFlipFromSymbolImage:desiredDirection:](self, "_shouldFlipFromSymbolImage:desiredDirection:", v11, [v10 layoutDirection]))
    {
      [v10 setFlipXOffsetOverride:v7];
      *a6 = 1;
    }

    v13 = objc_alloc_init(MEMORY[0x1E6999438]);
    -[NSObject setShape:](v13, "setShape:", [v10 resolvedShape]);
    -[NSObject setFill:](v13, "setFill:", [v10 resolvedFill]);
    -[NSObject setContentEffect:](v13, "setContentEffect:", [v10 resolvedSymbolEffect]);
    -[NSObject setShapeEffect:](v13, "setShapeEffect:", [v10 resolvedEnclosureEffect]);
    [v10 symbolOffset];
    [v13 setImageOffset:?];
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v15 = [v10 resolvedEnclosureColors];
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v65 count:16];
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
            objc_enumerationMutation(v15);
          }

          [v14 addObject:{objc_msgSend(*(*(&v41 + 1) + 8 * i), "cgColor")}];
        }

        v17 = [v15 countByEnumeratingWithState:&v41 objects:v65 count:16];
      }

      while (v17);
    }

    [v13 setFillColors:v14];
    [v10 resolvedBorderWidth];
    [v13 setBorderWidth:?];
    v20 = [v10 resolvedBorderColor];
    -[NSObject setBorderColor:](v13, "setBorderColor:", [v20 cgColor]);

    v21 = [v11 vectorGlyph];
    v22 = [v10 resolvedRenderingModeFromSuggestedMode:{objc_msgSend(v21, "preferredRenderingMode")}];

    if (v22 == 1)
    {
      v23 = [v10 resolvedSymbolColors];
      v24 = [v23 objectAtIndexedSubscript:0];
      -[NSObject setMonochromeForegroundColor:](v13, "setMonochromeForegroundColor:", [v24 cgColor]);
    }

    *a4 = v22;
    v25 = IFDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v40 = [(IFSymbol *)self name];
      v39 = [v13 fillColors];
      v38 = [v13 shape];
      v37 = [v13 fill];
      v36 = [v13 contentEffect];
      v31 = [v13 monochromeForegroundColor];
      v32 = [v10 resolvedName];
      [v13 borderWidth];
      v34 = v33;
      v35 = [v13 borderColor];
      *buf = 138414594;
      v46 = v40;
      v47 = 2112;
      v48 = v13;
      v49 = 2112;
      v50 = v39;
      v51 = 2048;
      v52 = v38;
      v53 = 2048;
      v54 = v37;
      v55 = 2048;
      v56 = v36;
      v57 = 2112;
      v58 = v31;
      v59 = 2112;
      v60 = v32;
      v61 = 2048;
      v62 = v34;
      v63 = 2112;
      v64 = v35;
    }

    v26 = [v11 vectorGlyph];
    v27 = [v26 graphicVariantWithOptions:v13];

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
      v29 = [(IFSymbol *)self name];
      *buf = 138412290;
      v46 = v29;
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
  v5 = [(IFSymbol *)self name];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

- (BOOL)_useIconStack
{
  v2 = +[IFDefaults sharedInstance];
  v3 = [v2 iconStackAppIconsAllowed];

  return v3;
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