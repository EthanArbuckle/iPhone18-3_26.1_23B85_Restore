@interface ImageAnalyzerImageColor
+ (CGColor)_colorFromITColor:(ITColor)a3;
+ (CGContext)createContextForImage:(CGImage *)a3;
+ (ImageAnalyzerImageColor)defaultColors;
+ (ImageAnalyzerImageColor)imageColorWithAnalyzedImageColors:(const AnalyzedImageColors *)a3;
+ (ImageAnalyzerImageColor)imageColorWithImageAnalyzer:(const void *)a3;
+ (id)analyzeImage:(CGImage *)a3 error:(id *)a4;
+ (id)determineColors:(CGImage *)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToImageColor:(id)a3;
- (ImageAnalyzerImageColor)initWithAnalyzedImageColors:(const AnalyzedImageColors *)a3;
- (ImageAnalyzerImageColor)initWithImageAnalyzer:(const void *)a3;
- (id)colorString:(CGColor *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation ImageAnalyzerImageColor

- (BOOL)isEqualToImageColor:(id)a3
{
  v4 = a3;
  v5 = v4 && CGColorEqualToColor(-[ImageAnalyzerImageColor backgroundColor](self, "backgroundColor"), [v4 backgroundColor]) && CGColorEqualToColor(-[ImageAnalyzerImageColor primaryTextColor](self, "primaryTextColor"), objc_msgSend(v4, "primaryTextColor")) && CGColorEqualToColor(-[ImageAnalyzerImageColor tertiaryTextColor](self, "tertiaryTextColor"), objc_msgSend(v4, "tertiaryTextColor")) && CGColorEqualToColor(-[ImageAnalyzerImageColor quaternaryTextColor](self, "quaternaryTextColor"), objc_msgSend(v4, "quaternaryTextColor")) && CGColorEqualToColor(-[ImageAnalyzerImageColor primaryDropShadowColor](self, "primaryDropShadowColor"), objc_msgSend(v4, "primaryDropShadowColor")) && CGColorEqualToColor(-[ImageAnalyzerImageColor secondaryDropShadowColor](self, "secondaryDropShadowColor"), objc_msgSend(v4, "secondaryDropShadowColor")) && CGColorEqualToColor(-[ImageAnalyzerImageColor tertiaryDropShadowColor](self, "tertiaryDropShadowColor"), objc_msgSend(v4, "tertiaryDropShadowColor")) && CGColorEqualToColor(-[ImageAnalyzerImageColor quarnaryDropShadowColor](self, "quarnaryDropShadowColor"), objc_msgSend(v4, "quarnaryDropShadowColor"));

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ImageAnalyzerImageColor *)self isEqualToImageColor:v4];

  return v5;
}

- (ImageAnalyzerImageColor)initWithAnalyzedImageColors:(const AnalyzedImageColors *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = ImageAnalyzerImageColor;
  v4 = [(ImageAnalyzerImageColor *)&v34 init];
  if (v4)
  {
    v5 = *&a3->var0.var2;
    *components = *&a3->var0.var0;
    v36 = v5;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v7 = CGColorCreate(DeviceRGB, components);
    CGColorSpaceRelease(DeviceRGB);
    v4->_backgroundColor = v7;
    v8 = *&a3->var1.var2;
    *components = *&a3->var1.var0;
    v36 = v8;
    v9 = CGColorSpaceCreateDeviceRGB();
    v10 = CGColorCreate(v9, components);
    CGColorSpaceRelease(v9);
    v4->_primaryTextColor = v10;
    v11 = *&a3->var2.var2;
    *components = *&a3->var2.var0;
    v36 = v11;
    v12 = CGColorSpaceCreateDeviceRGB();
    v13 = CGColorCreate(v12, components);
    CGColorSpaceRelease(v12);
    v4->_secondaryTextColor = v13;
    v14 = *&a3->var3.var2;
    *components = *&a3->var3.var0;
    v36 = v14;
    v15 = CGColorSpaceCreateDeviceRGB();
    v16 = CGColorCreate(v15, components);
    CGColorSpaceRelease(v15);
    v4->_tertiaryTextColor = v16;
    v17 = *&a3->var4.var2;
    *components = *&a3->var4.var0;
    v36 = v17;
    v18 = CGColorSpaceCreateDeviceRGB();
    v19 = CGColorCreate(v18, components);
    CGColorSpaceRelease(v18);
    v4->_quaternaryTextColor = v19;
    v20 = *&a3->var5.var2;
    *components = *&a3->var5.var0;
    v36 = v20;
    v21 = CGColorSpaceCreateDeviceRGB();
    v22 = CGColorCreate(v21, components);
    CGColorSpaceRelease(v21);
    v4->_primaryDropShadowColor = v22;
    v23 = *&a3->var7.var2;
    *components = *&a3->var7.var0;
    v36 = v23;
    v24 = CGColorSpaceCreateDeviceRGB();
    v25 = CGColorCreate(v24, components);
    CGColorSpaceRelease(v24);
    v4->_tertiaryDropShadowColor = v25;
    v26 = *&a3->var6.var2;
    *components = *&a3->var6.var0;
    v36 = v26;
    v27 = CGColorSpaceCreateDeviceRGB();
    v28 = CGColorCreate(v27, components);
    CGColorSpaceRelease(v27);
    v4->_secondaryDropShadowColor = v28;
    v29 = *&a3->var8.var2;
    *components = *&a3->var8.var0;
    v36 = v29;
    v30 = CGColorSpaceCreateDeviceRGB();
    v31 = CGColorCreate(v30, components);
    CGColorSpaceRelease(v30);
    v4->_quarnaryDropShadowColor = v31;
    v4->_isBackgroundLight = a3->var11;
    v4->_isPrimaryColorLight = a3->var12;
    v4->_isSecondaryColorLight = a3->var13;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  CGColorRelease(self->_backgroundColor);
  CGColorRelease(self->_primaryTextColor);
  CGColorRelease(self->_secondaryTextColor);
  CGColorRelease(self->_tertiaryTextColor);
  CGColorRelease(self->_quaternaryTextColor);
  CGColorRelease(self->_primaryDropShadowColor);
  CGColorRelease(self->_tertiaryDropShadowColor);
  CGColorRelease(self->_secondaryDropShadowColor);
  CGColorRelease(self->_quarnaryDropShadowColor);
  v3.receiver = self;
  v3.super_class = ImageAnalyzerImageColor;
  [(ImageAnalyzerImageColor *)&v3 dealloc];
}

- (ImageAnalyzerImageColor)initWithImageAnalyzer:(const void *)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = ImageAnalyzerImageColor;
  v4 = [(ImageAnalyzerImageColor *)&v40 init];
  if (v4)
  {
    v5 = *(a3 + 3);
    *components = *(a3 + 2);
    v42 = v5;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v7 = CGColorCreate(DeviceRGB, components);
    CGColorSpaceRelease(DeviceRGB);
    v4->_backgroundColor = v7;
    v8 = *(a3 + 5);
    *components = *(a3 + 4);
    v42 = v8;
    v9 = CGColorSpaceCreateDeviceRGB();
    v10 = CGColorCreate(v9, components);
    CGColorSpaceRelease(v9);
    v4->_primaryTextColor = v10;
    v11 = *(a3 + 7);
    *components = *(a3 + 6);
    v42 = v11;
    v12 = CGColorSpaceCreateDeviceRGB();
    v13 = CGColorCreate(v12, components);
    CGColorSpaceRelease(v12);
    v4->_secondaryTextColor = v13;
    v14 = *(a3 + 9);
    *components = *(a3 + 8);
    v42 = v14;
    v15 = CGColorSpaceCreateDeviceRGB();
    v16 = CGColorCreate(v15, components);
    CGColorSpaceRelease(v15);
    v4->_tertiaryTextColor = v16;
    v17 = *(a3 + 11);
    *components = *(a3 + 10);
    v42 = v17;
    v18 = CGColorSpaceCreateDeviceRGB();
    v19 = CGColorCreate(v18, components);
    CGColorSpaceRelease(v18);
    v4->_quaternaryTextColor = v19;
    v20 = *(a3 + 13);
    *components = *(a3 + 12);
    v42 = v20;
    v21 = CGColorSpaceCreateDeviceRGB();
    v22 = CGColorCreate(v21, components);
    CGColorSpaceRelease(v21);
    v4->_primaryDropShadowColor = v22;
    v23 = *(a3 + 15);
    *components = *(a3 + 14);
    v42 = v23;
    v24 = CGColorSpaceCreateDeviceRGB();
    v25 = CGColorCreate(v24, components);
    CGColorSpaceRelease(v24);
    v4->_tertiaryDropShadowColor = v25;
    v26 = *(a3 + 17);
    *components = *(a3 + 16);
    v42 = v26;
    v27 = CGColorSpaceCreateDeviceRGB();
    v28 = CGColorCreate(v27, components);
    CGColorSpaceRelease(v27);
    v4->_secondaryDropShadowColor = v28;
    v29 = *(a3 + 19);
    *components = *(a3 + 18);
    v42 = v29;
    v30 = CGColorSpaceCreateDeviceRGB();
    v31 = CGColorCreate(v30, components);
    CGColorSpaceRelease(v30);
    v4->_quarnaryDropShadowColor = v31;
    ITColor::GetLuminance(v32, *(a3 + 2), *(a3 + 6));
    v4->_isBackgroundLight = v33 >= 0.180000007;
    ITColor::GetLuminance(v34, *(a3 + 4), *(a3 + 10));
    v4->_isPrimaryColorLight = v35 >= 0.180000007;
    ITColor::GetLuminance(v36, *(a3 + 6), *(a3 + 14));
    v4->_isSecondaryColorLight = v37 >= 0.180000007;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)colorString:(CGColor *)a3
{
  Components = CGColorGetComponents(a3);
  NumberOfComponents = CGColorGetNumberOfComponents(a3);
  v6 = 1.0;
  v7 = 0;
  if (NumberOfComponents > 2)
  {
    if (NumberOfComponents != 3)
    {
      v8 = 0;
      v9 = 0;
      if (NumberOfComponents != 4)
      {
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"red: %f, green: %f, blue: %f, alpha: %f", v7, v8, v9, *&v6];
      }

      v6 = Components[3];
    }

    v7 = *Components;
    v8 = *(Components + 1);
    v9 = *(Components + 2);
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"red: %f, green: %f, blue: %f, alpha: %f", v7, v8, v9, *&v6];
  }

  if (NumberOfComponents == 1)
  {
    goto LABEL_5;
  }

  v8 = 0;
  v9 = 0;
  if (NumberOfComponents == 2)
  {
    v6 = Components[1];
LABEL_5:
    v7 = *Components;
    v8 = *Components;
    v9 = *Components;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"red: %f, green: %f, blue: %f, alpha: %f", v7, v8, v9, *&v6];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ImageAnalyzerImageColor *)self colorString:[(ImageAnalyzerImageColor *)self backgroundColor]];
  v5 = [(ImageAnalyzerImageColor *)self colorString:[(ImageAnalyzerImageColor *)self primaryTextColor]];
  v6 = [(ImageAnalyzerImageColor *)self colorString:[(ImageAnalyzerImageColor *)self secondaryTextColor]];
  v7 = [(ImageAnalyzerImageColor *)self colorString:[(ImageAnalyzerImageColor *)self tertiaryTextColor]];
  v8 = [(ImageAnalyzerImageColor *)self colorString:[(ImageAnalyzerImageColor *)self quaternaryTextColor]];
  v9 = [v3 stringWithFormat:@"backgroundColor:{%@}, textPrimaryColor:{%@}, secondaryTextColor:{%@}, tertiaryTextColor:{%@}, quaternaryTextColor:{%@}", v4, v5, v6, v7, v8];

  return v9;
}

+ (CGContext)createContextForImage:(CGImage *)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(v3);
  v6 = 0;
  if (Width && Height)
  {
    if (CGColorSpaceGetSRGB(void)::sOnceToken != -1)
    {
      dispatch_once(&CGColorSpaceGetSRGB(void)::sOnceToken, &__block_literal_global_413);
    }

    v7 = CGColorSpaceGetSRGB(void)::sSpace;
    if (CGColorSpaceGetSRGB(void)::sSpace)
    {
      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v3, CGColorSpaceGetSRGB(void)::sSpace);
      v9 = CopyWithColorSpace;
      if (CopyWithColorSpace)
      {
        v3 = CopyWithColorSpace;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = CGBitmapContextCreate(0, 0x16uLL, 0x16uLL, 8uLL, 0x58uLL, v7, 0x2002u);
    v6 = v10;
    if (v10)
    {
      v12.origin.x = *MEMORY[0x1E695EFF8];
      v12.origin.y = *(MEMORY[0x1E695EFF8] + 8);
      v12.size.width = 22.0;
      v12.size.height = 22.0;
      CGContextDrawImage(v10, v12, v3);
    }

    if (v9)
    {
      CGImageRelease(v9);
    }
  }

  return v6;
}

+ (CGColor)_colorFromITColor:(ITColor)a3
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  components[4] = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  components[0] = var0;
  components[1] = var1;
  components[2] = var2;
  components[3] = var3;
  v8 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);
  CFAutorelease(v8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)analyzeImage:(CGImage *)a3 error:(id *)a4
{
  v4 = [a1 createContextForImage:a3];
  v5 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    ImageAnalyzer::image_analyzer_error::image_analyzer_error(exception, 2, "+[ImageColor analyzeImage:error:] - failed to create CGContext.", v9, v10, v11, v12, v13, v14);
  }

  memset(&v15, 0, 24);
  v15.var0.var3 = 1.0;
  memset(&v15.var1, 0, 24);
  v15.var1.var3 = 1.0;
  memset(&v15.var2, 0, 24);
  v15.var2.var3 = 1.0;
  memset(&v15.var3, 0, 24);
  v15.var3.var3 = 1.0;
  memset(&v15.var4, 0, 24);
  v15.var4.var3 = 1.0;
  memset(&v15.var5, 0, 24);
  v15.var5.var3 = 1.0;
  memset(&v15.var6, 0, 24);
  v15.var6.var3 = 1.0;
  memset(&v15.var7, 0, 24);
  v15.var7.var3 = 1.0;
  memset(&v15.var8, 0, 24);
  v15.var8.var3 = 1.0;
  *(&v15.var9 + 5) = 0.0;
  v15.var9 = 0.0;
  AnalyzeImagePlease(v4, &v15);
  v6 = [ImageAnalyzerImageColor imageColorWithAnalyzedImageColors:&v15];
  CGContextRelease(v5);

  return v6;
}

+ (id)determineColors:(CGImage *)a3 error:(id *)a4
{
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0x3FF0000000000000;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0x3FF0000000000000;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0x3FF0000000000000;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0x3FF0000000000000;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0x3FF0000000000000;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0x3FF0000000000000;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0x3FF0000000000000;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0x3FF0000000000000;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0x3FF0000000000000;
  v99[0] = 0uLL;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ImageAnalyzer::AnalyzeImage() - CGImageRef parameter is nil.");
    exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
    __cxa_throw(exception, off_1E7981700, MEMORY[0x1E69E5298]);
  }

  AlphaInfo = CGImageGetAlphaInfo(a3);
  v6 = AlphaInfo;
  if (AlphaInfo)
  {
    if (AlphaInfo == kCGImageAlphaLast)
    {
      v6 = 1;
    }

    else if (AlphaInfo == kCGImageAlphaFirst)
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 5;
  }

  ColorSpace = CGImageGetColorSpace(a3);
  v8 = ColorSpace;
  if (ColorSpace)
  {
    Model = CGColorSpaceGetModel(ColorSpace);
    v10 = CGColorSpaceSupportsOutput(v8);
    if (Model != kCGColorSpaceModelRGB || !v10)
    {
      if (CGColorSpaceGetSRGB(void)::sOnceToken != -1)
      {
        dispatch_once(&CGColorSpaceGetSRGB(void)::sOnceToken, &__block_literal_global_413);
      }

      v8 = CGColorSpaceGetSRGB(void)::sSpace;
    }
  }

  v12 = CGBitmapContextCreate(0, 0x16uLL, 0x16uLL, 8uLL, 0, v8, 1u);
  v13 = v12;
  if (!v12)
  {
    v57 = __cxa_allocate_exception(0x18uLL);
    ImageAnalyzer::image_analyzer_error::image_analyzer_error(v57, 2, "ImageAnalyzer::GenerateColorMaps() - Failed to create CG Context", v58, v59, v60, v61, v62, v88);
  }

  v145 = v12;
  v146 = 1;
  v149.origin.x = 0.0;
  v149.origin.y = 0.0;
  v149.size.width = 22.0;
  v149.size.height = 22.0;
  CGContextDrawImage(v12, v149, a3);
  Image = CGBitmapContextCreateImage(v13);
  v15 = Image;
  if (!Image)
  {
    v63 = __cxa_allocate_exception(0x18uLL);
    ImageAnalyzer::image_analyzer_error::image_analyzer_error(v63, 3, "ImageAnalyzer::GenerateColorMaps() - Failed to create CG Image", v64, v65, v66, v67, v68, v88);
  }

  v143 = Image;
  v144 = 1;
  BitmapInfo = CGImageGetBitmapInfo(Image);
  memset(&dest, 0, sizeof(dest));
  v141 = 0;
  memset(v140, 0, sizeof(v140));
  v17 = MEMORY[0x1B26ECF90](&dest, v140, 0, v15, 256);
  if (v17)
  {
    v69 = v17;
    v70 = __cxa_allocate_exception(0x18uLL);
    ImageAnalyzer::image_analyzer_error::image_analyzer_error(v70, 4, "ImageAnalyzer::GenerateColorMaps() - Failed to create vImageBuffer from CGImage (%zd)", v71, v72, v73, v74, v75, v69);
  }

  if (v6 == 1)
  {
    v18 = vImageUnpremultiplyData_RGBA8888(&dest, &dest, 0x100u);
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_24;
    }

    v18 = vImageUnpremultiplyData_ARGB8888(&dest, &dest, 0x100u);
  }

  if (v18)
  {
    v82 = v18;
    v76 = __cxa_allocate_exception(0x18uLL);
    ImageAnalyzer::image_analyzer_error::image_analyzer_error(v76, 4, "ImageAnalyzer::GenerateColorMaps() - vImage error un-premultiplying image data. (%zd)", v83, v84, v85, v86, v87, v82);
LABEL_60:
  }

LABEL_24:
  height = dest.height;
  width = dest.width;
  rowBytes = dest.rowBytes;
  data = dest.data;
  c = v13;
  v90 = malloc_type_calloc(dest.height * dest.width, 0x28uLL, 0x10000400A747E1EuLL);
  if (!v90)
  {
    v76 = __cxa_allocate_exception(0x18uLL);
    ImageAnalyzer::image_analyzer_error::image_analyzer_error(v76, 1, "ImageAnalyzer::getHSVMap() - Failed to allocate memory for imageHSVMap.", v77, v78, v79, v80, v81, v88);
    goto LABEL_60;
  }

  v23 = height - 1;
  if (height - 1 < 2)
  {
    goto LABEL_49;
  }

  v24 = 0;
  v25 = (v6 - 2) & 0xFFFFFFFB;
  v26 = width - 1;
  v27 = (BitmapInfo & 0x3000) != 0;
  v28 = (BitmapInfo & 0x3000) == 0 || ((v6 - 2) & 0xFFFFFFFB) == 0;
  if (v25)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  if (v25)
  {
    v30 = v27;
  }

  else
  {
    v30 = 1;
  }

  v91 = width - 2;
  v31 = 1;
  v92 = width - 1;
  v93 = v23;
  do
  {
    if (v26 < 2)
    {
      goto LABEL_48;
    }

    v32 = &data[v31 * rowBytes];
    v33 = v32 + 7;
    v34 = v91;
    v35 = v90 + 40 * v24 + 16;
    v24 += v91;
    do
    {
      v36 = v32;
      v32 += 4;
      if (!v28)
      {
        v40 = v36 + 7;
        v39 = v36 + 6;
        v37 = v36 + 5;
        v38 = v32;
        goto LABEL_46;
      }

      if (v29)
      {
        v37 = v33 - 1;
        v38 = v33 - 2;
        v39 = v33;
LABEL_44:
        v40 = v32;
        goto LABEL_46;
      }

      if (v30)
      {
        v39 = v36 + 5;
        v37 = v36 + 6;
        v38 = v36 + 7;
        goto LABEL_44;
      }

      v37 = v36 + 5;
      v38 = v36 + 6;
      v39 = v32;
      v40 = v33;
LABEL_46:
      LOBYTE(v21) = *v39;
      *&v41 = *&v21;
      v42.n128_f64[0] = *&v41 / 255.0;
      LOBYTE(v41) = *v37;
      LOBYTE(v22) = *v38;
      *&v22 = v22;
      v43 = *&v22 / 255.0;
      LOBYTE(v22) = *v40;
      v42.n128_f64[1] = v41 / 255.0;
      v96 = v42;
      v97 = v43;
      *&v22 = v22;
      v98 = v22;
      *&v44 = v43;
      *(&v44 + 1) = v22;
      *&v147.var0 = v42;
      *&v147.var2 = v44;
      HSVColor = ITColor::GetHSVColor(&v147);
      v47 = v46;
      v49 = v48;
      ITColor::GetLuminance(v50, v96, v97);
      *(v35 - 16) = HSVColor;
      *(v35 - 8) = v47;
      *v35 = v49;
      *(v35 + 8) = v51;
      *(&v22 + 1) = *(&v98 + 1);
      *(v35 + 16) = v98;
      *&v22 = *(&v139 + 1);
      v21 = v51 + *(&v139 + 1);
      *(&v139 + 1) = v21;
      v33 += 4;
      v35 += 40;
      --v34;
    }

    while (v34);
    v26 = v92;
    v23 = v93;
LABEL_48:
    ++v31;
  }

  while (v31 != v23);
LABEL_49:
  *(&v139 + 1) = *(&v139 + 1) / 400.0;
  v99[0].n128_u64[0] = v90;
  if (dest.data)
  {
    free(dest.data);
  }

  final_act<ImageAnalyzer::GenerateColorMaps(CGImage *)::$_1>::~final_act(&v143);
  CGContextRelease(c);
  ImageAnalyzer::QuantizeColorMaps(v99);
  ImageAnalyzer::PickBackgroundColor(v99);
  ImageAnalyzer::PickTextColors(v99);
  ImageAnalyzer::DoPostImageAnalysis(v99, v52, v53);
  v54 = [ImageAnalyzerImageColor imageColorWithImageAnalyzer:v99];
  ImageAnalyzer::~ImageAnalyzer(v99);

  return v54;
}

+ (ImageAnalyzerImageColor)imageColorWithAnalyzedImageColors:(const AnalyzedImageColors *)a3
{
  v3 = [[a1 alloc] initWithAnalyzedImageColors:a3];

  return v3;
}

+ (ImageAnalyzerImageColor)imageColorWithImageAnalyzer:(const void *)a3
{
  v3 = [[a1 alloc] initWithImageAnalyzer:a3];

  return v3;
}

+ (ImageAnalyzerImageColor)defaultColors
{
  if (+[ImageAnalyzerImageColor defaultColors]::onceToken != -1)
  {
    dispatch_once(&+[ImageAnalyzerImageColor defaultColors]::onceToken, &__block_literal_global_55);
  }

  v3 = +[ImageAnalyzerImageColor defaultColors]::_defaultColors;

  return v3;
}

CGColorRef __40__ImageAnalyzerImageColor_defaultColors__block_invoke()
{
  v0 = objc_opt_new();
  v1 = +[ImageAnalyzerImageColor defaultColors]::_defaultColors;
  +[ImageAnalyzerImageColor defaultColors]::_defaultColors = v0;

  *(+[ImageAnalyzerImageColor defaultColors]::_defaultColors + 16) = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  *(+[ImageAnalyzerImageColor defaultColors]::_defaultColors + 24) = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  result = CGColorCreateGenericRGB(0.333, 0.333, 0.333, 1.0);
  v3 = +[ImageAnalyzerImageColor defaultColors]::_defaultColors;
  *(+[ImageAnalyzerImageColor defaultColors]::_defaultColors + 32) = result;
  *(v3 + 8) = 1;
  return result;
}

@end