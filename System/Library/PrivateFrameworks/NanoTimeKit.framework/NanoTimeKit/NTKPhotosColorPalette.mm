@interface NTKPhotosColorPalette
+ (void)applyColorRamp:(id)ramp colorRampAmount:(double)amount monochromeColorMatrix:(id)matrix toView:(id)view;
+ (void)colorRampForMonochromeColorMatrix:(id)matrix fromPalette:(id)palette toPalette:(id)toPalette transitionFraction:(double)fraction completion:(id)completion;
+ (void)removeColorRampFromView:(id)view;
- (BOOL)isOriginalColor;
- (id)_monocolorRampColor;
- (id)colorRampImage;
- (id)colorRampsIndex;
- (id)colorRampsIndexByColorName;
- (id)monocolorRampImage;
- (id)swatchImageForSize:(CGSize)size;
- (id)swatchPrimaryColor;
@end

@implementation NTKPhotosColorPalette

- (id)colorRampImage
{
  if ([(NTKPhotosColorPalette *)self isOriginalColor])
  {
    v3 = 0;
  }

  else
  {
    imageAsset = [(NTKPhotosColorPalette *)self imageAsset];
    colorRampsIndex = [(NTKPhotosColorPalette *)self colorRampsIndex];
    v6 = colorRampsIndex;
    if (colorRampsIndex)
    {
      intValue = [colorRampsIndex intValue];
    }

    else
    {
      [imageAsset size];
      v9 = v8;
      [imageAsset scale];
      intValue = (v9 * v10 + -1.0);
    }

    [imageAsset size];
    v3 = NTKCropImage(imageAsset, 0.0, intValue, v11, 1.0);
  }

  return v3;
}

- (id)monocolorRampImage
{
  if ([(NTKPhotosColorPalette *)self isOriginalColor])
  {
    v3 = 0;
  }

  else
  {
    monocolorRampColor = [(NTKPhotosColorPalette *)self monocolorRampColor];
    v7.width = 1.0;
    v7.height = 1.0;
    UIGraphicsBeginImageContextWithOptions(v7, 1, 1.0);
    [monocolorRampColor setFill];
    v8.origin.x = 0.0;
    v8.origin.y = 0.0;
    v8.size.width = 1.0;
    v8.size.height = 1.0;
    UIRectFill(v8);
    v3 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v3;
}

- (id)swatchImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(NTKPhotosColorPalette *)self isOriginalColor])
  {
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      [NTKEditOption sizeForSwatchStyle:0];
      width = v7;
      height = v8;
    }

    blackColor = [MEMORY[0x277D75348] blackColor];
    v29.width = width;
    v29.height = height;
    UIGraphicsBeginImageContextWithOptions(v29, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    [blackColor set];
    v33.origin.x = 0.0;
    v33.origin.y = 0.0;
    v33.size.width = width;
    v33.size.height = height;
    CGContextFillEllipseInRect(CurrentContext, v33);
    v11 = UIGraphicsGetCurrentContext();
    Image = CGBitmapContextCreateImage(v11);
    UIGraphicsEndImageContext();
    v30.width = width;
    v30.height = height;
    UIGraphicsBeginImageContextWithOptions(v30, 0, 0.0);
    v13 = UIGraphicsGetCurrentContext();
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = width;
    v34.size.height = height;
    CGContextClipToMask(v13, v34, Image);
    [blackColor set];
    transform.b = 0.0;
    transform.c = 0.0;
    transform.a = 1.0;
    *&transform.d = xmmword_22DCE9750;
    transform.ty = height;
    CGContextConcatCTM(v13, &transform);
    NTKImageNamed(@"NoneSwatch");
  }

  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    colorRampImage = [(NTKPhotosColorPalette *)self colorRampImage];
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      [NTKEditOption sizeForSwatchStyle:0];
      width = v16;
      height = v17;
    }

    v31.width = width;
    v31.height = height;
    UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
    v18 = UIGraphicsGetCurrentContext();
    blackColor2 = [MEMORY[0x277D75348] blackColor];
    [blackColor2 set];

    v35.origin.x = 0.0;
    v35.origin.y = 0.0;
    v35.size.width = width;
    v35.size.height = height;
    CGContextFillEllipseInRect(v18, v35);
    v20 = UIGraphicsGetCurrentContext();
    v21 = CGBitmapContextCreateImage(v20);
    UIGraphicsEndImageContext();
    v32.width = width;
    v32.height = height;
    UIGraphicsBeginImageContextWithOptions(v32, 0, 0.0);
    v22 = UIGraphicsGetCurrentContext();
    v36.origin.x = 0.0;
    v36.origin.y = 0.0;
    v36.size.width = width;
    v36.size.height = height;
    CGContextClipToMask(v22, v36, v21);
    CGContextTranslateCTM(v22, width * 0.5, height * 0.5);
    CGContextRotateCTM(v22, -2.35619449);
    CGContextTranslateCTM(v22, width * -0.5, height * -0.5);
    cGImage = [colorRampImage CGImage];
    v37.origin.x = 0.0;
    v37.origin.y = 0.0;
    v37.size.width = width;
    v37.size.height = height;
    CGContextDrawImage(v22, v37, cGImage);
    height = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    CGImageRelease(v21);
  }

  else
  {
    v26.receiver = self;
    v26.super_class = NTKPhotosColorPalette;
    height = [(NTKFaceColorPalette *)&v26 swatchImageForSize:width, height];
  }

  return height;
}

- (id)swatchPrimaryColor
{
  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    swatchPrimaryColor = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NTKPhotosColorPalette;
    swatchPrimaryColor = [(NTKFaceColorPalette *)&v5 swatchPrimaryColor];
  }

  return swatchPrimaryColor;
}

- (id)colorRampsIndex
{
  colorRampsIndexByColorName = [(NTKPhotosColorPalette *)self colorRampsIndexByColorName];
  pigmentEditOption = [(NTKFaceColorPalette *)self pigmentEditOption];
  identifier = [pigmentEditOption identifier];
  v6 = [colorRampsIndexByColorName objectForKeyedSubscript:identifier];

  if (!v6)
  {
    colorRampsIndexByColorName2 = [(NTKPhotosColorPalette *)self colorRampsIndexByColorName];
    configuration = [(NTKFaceColorPalette *)self configuration];
    colorOption = [configuration colorOption];
    v6 = [colorRampsIndexByColorName2 objectForKeyedSubscript:colorOption];
  }

  return v6;
}

- (id)colorRampsIndexByColorName
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NTKPhotosColorPalette_colorRampsIndexByColorName__block_invoke;
  block[3] = &unk_27877F258;
  block[4] = v5;
  if (colorRampsIndexByColorName_once != -1)
  {
    dispatch_once(&colorRampsIndexByColorName_once, block);
  }

  v2 = colorRampsIndexByColorName___d;
  _Block_object_dispose(v5, 8);

  return v2;
}

void __51__NTKPhotosColorPalette_colorRampsIndexByColorName__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = colorRampsIndexByColorName___d;
  colorRampsIndexByColorName___d = v2;

  v4 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v5 = [v4 numberWithInteger:?];
  v6 = colorRampsIndexByColorName___d;
  v7 = [NTKPigmentEditOption duotoneNameWithName:"duotoneNameWithName:otherName:" otherName:?];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v8 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v9 = [v8 numberWithInteger:?];
  v10 = colorRampsIndexByColorName___d;
  v11 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2019.lemonCream" otherName:@"seasons.winter2019.beryl"];
  [v10 setObject:v9 forKeyedSubscript:v11];

  v12 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v13 = [v12 numberWithInteger:?];
  v14 = colorRampsIndexByColorName___d;
  v15 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.winter2019.beryl" otherName:?];
  [v14 setObject:v13 forKeyedSubscript:v15];

  v16 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v17 = [v16 numberWithInteger:?];
  v18 = colorRampsIndexByColorName___d;
  v19 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2019.lemonCream" otherName:?];
  [v18 setObject:v17 forKeyedSubscript:v19];

  v20 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v21 = [v20 numberWithInteger:?];
  v22 = colorRampsIndexByColorName___d;
  v23 = [NTKPigmentEditOption duotoneNameWithName:"duotoneNameWithName:otherName:" otherName:?];
  [v22 setObject:v21 forKeyedSubscript:v23];

  v24 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v25 = [v24 numberWithInteger:?];
  v26 = colorRampsIndexByColorName___d;
  v27 = [NTKPigmentEditOption duotoneNameWithName:"duotoneNameWithName:otherName:" otherName:?];
  [v26 setObject:v25 forKeyedSubscript:v27];

  v28 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v29 = [v28 numberWithInteger:?];
  v30 = colorRampsIndexByColorName___d;
  v31 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2015.orange" otherName:?];
  [v30 setObject:v29 forKeyedSubscript:v31];

  v32 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v33 = [v32 numberWithInteger:?];
  v34 = colorRampsIndexByColorName___d;
  v35 = [NTKPigmentEditOption duotoneNameWithName:"duotoneNameWithName:otherName:" otherName:?];
  [v34 setObject:v33 forKeyedSubscript:v35];

  v36 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v37 = [v36 numberWithInteger:?];
  v38 = colorRampsIndexByColorName___d;
  v39 = [NTKPigmentEditOption duotoneNameWithName:"duotoneNameWithName:otherName:" otherName:?];
  [v38 setObject:v37 forKeyedSubscript:v39];

  v40 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v41 = [v40 numberWithInteger:?];
  v42 = colorRampsIndexByColorName___d;
  v43 = [NTKPigmentEditOption duotoneNameWithName:"duotoneNameWithName:otherName:" otherName:?];
  [v42 setObject:v41 forKeyedSubscript:v43];

  v44 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v45 = [v44 numberWithInteger:?];
  v46 = colorRampsIndexByColorName___d;
  v47 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2015.orange" otherName:@"seasons.summer2020.coastalGray"];
  [v46 setObject:v45 forKeyedSubscript:v47];

  v48 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v49 = [v48 numberWithInteger:?];
  v50 = colorRampsIndexByColorName___d;
  v51 = [NTKPigmentEditOption duotoneNameWithName:"duotoneNameWithName:otherName:" otherName:?];
  [v50 setObject:v49 forKeyedSubscript:v51];

  v52 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v53 = [v52 numberWithInteger:?];
  v54 = colorRampsIndexByColorName___d;
  v55 = [NTKPigmentEditOption duotoneNameWithName:"duotoneNameWithName:otherName:" otherName:?];
  [v54 setObject:v53 forKeyedSubscript:v55];

  v56 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v57 = [v56 numberWithInteger:?];
  v58 = colorRampsIndexByColorName___d;
  v59 = [NTKPigmentEditOption duotoneNameWithName:"duotoneNameWithName:otherName:" otherName:?];
  [v58 setObject:v57 forKeyedSubscript:v59];

  v60 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v61 = [v60 numberWithInteger:?];
  v62 = colorRampsIndexByColorName___d;
  v63 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2020.pinkCitrus" otherName:@"seasons.fall2020.kumquat"];
  [v62 setObject:v61 forKeyedSubscript:v63];

  v64 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v65 = [v64 numberWithInteger:?];
  v66 = colorRampsIndexByColorName___d;
  v67 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.spring2015.pink" otherName:?];
  [v66 setObject:v65 forKeyedSubscript:v67];

  v68 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v69 = [v68 numberWithInteger:?];
  v70 = colorRampsIndexByColorName___d;
  v71 = [NTKPigmentEditOption duotoneNameWithName:"duotoneNameWithName:otherName:" otherName:?];
  [v70 setObject:v69 forKeyedSubscript:v71];

  v72 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v73 = [v72 numberWithInteger:?];
  v74 = colorRampsIndexByColorName___d;
  v75 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.summer2021.olive" otherName:?];
  [v74 setObject:v73 forKeyedSubscript:v75];

  v76 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v77 = [v76 numberWithInteger:?];
  v78 = colorRampsIndexByColorName___d;
  v79 = [NTKPigmentEditOption duotoneNameWithName:"duotoneNameWithName:otherName:" otherName:?];
  [v78 setObject:v77 forKeyedSubscript:v79];

  v80 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v81 = [v80 numberWithInteger:?];
  v82 = colorRampsIndexByColorName___d;
  v83 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.summer2021.olive" otherName:?];
  [v82 setObject:v81 forKeyedSubscript:v83];

  v84 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v85 = [v84 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v85 forKeyedSubscript:@"seasons.spring2015.gold"];

  v86 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v87 = [v86 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v87 forKeyedSubscript:@"seasons.spring2015.goldRose"];

  v88 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v89 = [v88 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v89 forKeyedSubscript:@"seasons.spring2015.goldYellow"];

  ++*(*(*(a1 + 32) + 8) + 24);
  v90 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v91 = [v90 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v91 forKeyedSubscript:@"seasons.fall2020.pinkCitrus"];

  v92 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v93 = [v92 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v93 forKeyedSubscript:@"seasons.fall2020.deepNavy"];

  v94 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v95 = [v94 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v95 forKeyedSubscript:@"seasons.fall2020.cyprusGreen"];

  v96 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v97 = [v96 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v97 forKeyedSubscript:@"seasons.fall2020.kumquat"];

  v98 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v99 = [v98 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v99 forKeyedSubscript:@"seasons.fall2020.northernBlue"];

  v100 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v101 = [v100 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v101 forKeyedSubscript:@"seasons.fall2020.plum"];

  ++*(*(*(a1 + 32) + 8) + 24);
  v102 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v103 = [v102 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v103 forKeyedSubscript:@"seasons.fall2020.cream"];

  v104 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v105 = [v104 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v105 forKeyedSubscript:@"seasons.spring2021.mallardGreen"];

  v106 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v107 = [v106 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v107 forKeyedSubscript:@"seasons.summer2021.electricOrange"];

  v108 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v109 = [v108 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v109 forKeyedSubscript:@"seasons.summer2021.cloudBlue"];

  v110 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v111 = [v110 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v111 forKeyedSubscript:@"seasons.spring2021.pistachio"];

  v112 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v113 = [v112 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v113 forKeyedSubscript:@"seasons.spring2021.sunflower"];

  v114 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v115 = [v114 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v115 forKeyedSubscript:@"seasons.spring2021.seaSalt"];

  v116 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v117 = [v116 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v117 forKeyedSubscript:@"seasons.spring2021.abyss"];

  v118 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v119 = [v118 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v119 forKeyedSubscript:?];

  v120 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v121 = [v120 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v121 forKeyedSubscript:@"seasons.fall2015.red"];

  v122 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v123 = [v122 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v123 forKeyedSubscript:@"seasons.fall2015.orange"];

  v124 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v125 = [v124 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v125 forKeyedSubscript:@"seasons.fall2019.clementine"];

  v126 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v127 = [v126 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v127 forKeyedSubscript:?];

  v128 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v129 = [v128 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v129 forKeyedSubscript:@"seasons.spring2018.peach"];

  v130 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v131 = [v130 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v131 forKeyedSubscript:@"seasons.spring2019.papaya"];

  v132 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v133 = [v132 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v133 forKeyedSubscript:@"seasons.spring2015.lightOrange"];

  v134 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v135 = [v134 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v135 forKeyedSubscript:@"seasons.winter2018.mellowYellow"];

  v136 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v137 = [v136 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v137 forKeyedSubscript:@"seasons.fall2019.lemonCream"];

  v138 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v139 = [v138 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v139 forKeyedSubscript:@"seasons.spring2016.yellow"];

  v140 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v141 = [v140 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v141 forKeyedSubscript:@"seasons.summer2017.pollen"];

  v142 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v143 = [v142 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v143 forKeyedSubscript:?];

  v144 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v145 = [v144 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v145 forKeyedSubscript:@"seasons.spring2018.flashLight"];

  v146 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v147 = [v146 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v147 forKeyedSubscript:@"seasons.fall2017.flash"];

  v148 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v149 = [v148 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v149 forKeyedSubscript:@"seasons.spring2015.green"];

  v150 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v151 = [v150 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v151 forKeyedSubscript:@"seasons.spring2019.spearmint"];

  v152 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v153 = [v152 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v153 forKeyedSubscript:@"seasons.spring2016.mint"];

  v154 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v155 = [v154 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v155 forKeyedSubscript:@"seasons.winter2019.beryl"];

  v156 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v157 = [v156 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v157 forKeyedSubscript:@"seasons.summer2020.seaFoam"];

  v158 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v159 = [v158 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v159 forKeyedSubscript:@"seasons.fall2015.turquoise"];

  v160 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v161 = [v160 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v161 forKeyedSubscript:@"seasons.fall2015.lightBlue"];

  v162 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v163 = [v162 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v163 forKeyedSubscript:@"seasons.spring2020.surfBlue"];

  v164 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v165 = [v164 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v165 forKeyedSubscript:@"seasons.spring2015.blue"];

  v166 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v167 = [v166 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v167 forKeyedSubscript:@"seasons.spring2016.royalBlue"];

  v168 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v169 = [v168 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v169 forKeyedSubscript:@"seasons.spring2019.cerulean"];

  v170 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v171 = [v170 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v171 forKeyedSubscript:@"seasons.spring2019.lilac"];

  v172 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v173 = [v172 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v173 forKeyedSubscript:?];

  v174 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v175 = [v174 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v175 forKeyedSubscript:@"seasons.spring2017.azure"];

  v176 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v177 = [v176 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v177 forKeyedSubscript:@"seasons.fall2018.stormGray"];

  v178 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v179 = [v178 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v179 forKeyedSubscript:@"seasons.spring2020.cactus"];

  v180 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v181 = [v180 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v181 forKeyedSubscript:@"seasons.winter2018.pacificGreen"];

  v182 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v183 = [v182 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v183 forKeyedSubscript:@"seasons.fall2017.blueCobalt"];

  v184 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v185 = [v184 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v185 forKeyedSubscript:@"seasons.fall2019.alaskanBlue"];

  v186 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v187 = [v186 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v187 forKeyedSubscript:@"seasons.winter2017.darkTeal"];

  v188 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v189 = [v188 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v189 forKeyedSubscript:@"seasons.fall2018.blueHorizon"];

  v190 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v191 = [v190 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v191 forKeyedSubscript:@"seasons.summer2020.linenBlue"];

  v192 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v193 = [v192 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v193 forKeyedSubscript:@"seasons.spring2018.denimBlue"];

  v194 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v195 = [v194 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v195 forKeyedSubscript:@"seasons.fall2015.midnightBlue"];

  v196 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v197 = [v196 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v197 forKeyedSubscript:@"seasons.fall2016.oceanBlue"];

  v198 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v199 = [v198 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v199 forKeyedSubscript:@"seasons.spring2019.delftBlue"];

  v200 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v201 = [v200 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v201 forKeyedSubscript:@"seasons.fall2018.indigo"];

  v202 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v203 = [v202 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v203 forKeyedSubscript:@"seasons.spring2015.purple"];

  v204 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v205 = [v204 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v205 forKeyedSubscript:@"seasons.fall2017.violet"];

  v206 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v207 = [v206 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v207 forKeyedSubscript:@"seasons.fall2018.lavenderGray"];

  v208 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v209 = [v208 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v209 forKeyedSubscript:@"seasons.fall2015.lavender"];

  v210 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v211 = [v210 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v211 forKeyedSubscript:@"seasons.fall2017.pinkSand"];

  v212 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v213 = [v212 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v213 forKeyedSubscript:@"seasons.spring2016.lightPink"];

  v214 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v215 = [v214 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v215 forKeyedSubscript:@"seasons.fall2015.vintageRose"];

  v216 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v217 = [v216 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v217 forKeyedSubscript:@"seasons.spring2020.grapefruit"];

  v218 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v219 = [v218 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v219 forKeyedSubscript:@"seasons.spring2015.pink"];

  v220 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v221 = [v220 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v221 forKeyedSubscript:@"seasons.fall2017.electricPink"];

  v222 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v223 = [v222 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v223 forKeyedSubscript:@"seasons.spring2020.neonPink"];

  v224 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v225 = [v224 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v225 forKeyedSubscript:@"seasons.summer2019.dragonFruit"];

  v226 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v227 = [v226 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v227 forKeyedSubscript:?];

  v228 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v229 = [v228 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v229 forKeyedSubscript:@"seasons.winter2019.pomegranate"];

  v230 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v231 = [v230 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v231 forKeyedSubscript:@"seasons.fall2017.roseRed"];

  v232 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v233 = [v232 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v233 forKeyedSubscript:@"seasons.spring2017.camellia"];

  v234 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v235 = [v234 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v235 forKeyedSubscript:@"seasons.summer2017.flamingo"];

  v236 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v237 = [v236 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v237 forKeyedSubscript:@"seasons.fall2019.camel"];

  v238 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v239 = [v238 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v239 forKeyedSubscript:@"seasons.fall2015.walnut"];

  v240 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v241 = [v240 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v241 forKeyedSubscript:@"seasons.fall2015.stone"];

  v242 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v243 = [v242 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v243 forKeyedSubscript:@"seasons.fall2015.antiqueWhite"];

  v244 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v245 = [v244 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v245 forKeyedSubscript:@"seasons.fall2017.softWhite"];

  v246 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v247 = [v246 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v247 forKeyedSubscript:@"seasons.spring2017.pebble"];

  v248 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v249 = [v248 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v249 forKeyedSubscript:@"seasons.fall2016.cocoa"];

  v250 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v251 = [v250 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v251 forKeyedSubscript:@"seasons.summer2020.coastalGray"];

  v252 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v253 = [v252 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v253 forKeyedSubscript:@"seasons.fall2017.darkOlive"];

  v254 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v255 = [v254 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v255 forKeyedSubscript:@"seasons.winter2019.khaki"];

  v256 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v257 = [v256 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v257 forKeyedSubscript:@"seasons.fall2019.pineGreen"];

  v258 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v259 = [v258 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v259 forKeyedSubscript:@"seasons.summer2021.olive"];

  v260 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v261 = [v260 numberWithInteger:?];
  v262 = colorRampsIndexByColorName___d;
  v263 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.spring2015.lightOrange" otherName:@"seasons.fall2021.white2t"];
  [v262 setObject:v261 forKeyedSubscript:v263];

  v264 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v265 = [v264 numberWithInteger:?];
  v266 = colorRampsIndexByColorName___d;
  v267 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2017.electricPink" otherName:@"seasons.fall2015.walnut"];
  [v266 setObject:v265 forKeyedSubscript:v267];

  v268 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v269 = [v268 numberWithInteger:?];
  v270 = colorRampsIndexByColorName___d;
  v271 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2020.kumquat" otherName:@"seasons.fall2021.green6"];
  [v270 setObject:v269 forKeyedSubscript:v271];

  v272 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v273 = [v272 numberWithInteger:?];
  v274 = colorRampsIndexByColorName___d;
  v275 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2021.blue11" otherName:@"seasons.fall2021.green1"];
  [v274 setObject:v273 forKeyedSubscript:v275];

  v276 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v277 = [v276 numberWithInteger:?];
  v278 = colorRampsIndexByColorName___d;
  v279 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2021.red2sg" otherName:@"seasons.fall2021.purple1"];
  [v278 setObject:v277 forKeyedSubscript:v279];

  v280 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v281 = [v280 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v281 forKeyedSubscript:@"seasons.fall2021.purple2"];

  v282 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v283 = [v282 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v283 forKeyedSubscript:@"seasons.fall2021.green3"];

  v284 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v285 = [v284 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v285 forKeyedSubscript:?];

  v286 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v287 = [v286 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v287 forKeyedSubscript:@"seasons.fall2021.red2sg"];

  v288 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v289 = [v288 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v289 forKeyedSubscript:@"seasons.fall2021.blue11"];

  v290 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v291 = [v290 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v291 forKeyedSubscript:@"seasons.fall2021.purple1"];

  v292 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v293 = [v292 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v293 forKeyedSubscript:@"seasons.spring2022.blue2"];

  v294 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v295 = [v294 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v295 forKeyedSubscript:@"seasons.spring2022.green3"];

  v296 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v297 = [v296 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v297 forKeyedSubscript:@"seasons.spring2022.green5"];

  v298 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v299 = [v298 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v299 forKeyedSubscript:@"seasons.spring2022.orange2"];

  v300 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v301 = [v300 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v301 forKeyedSubscript:@"seasons.spring2022.pink6t"];

  v302 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v303 = [v302 numberWithInteger:?];
  v304 = colorRampsIndexByColorName___d;
  v305 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2020.deepNavy" otherName:@"seasons.spring2016.apricot"];
  [v304 setObject:v303 forKeyedSubscript:v305];

  v306 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v307 = [v306 numberWithInteger:?];
  v308 = colorRampsIndexByColorName___d;
  v309 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.spring2022.lavender" otherName:@"seasons.spring2022.lilac"];
  [v308 setObject:v307 forKeyedSubscript:v309];

  v310 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v311 = [v310 numberWithInteger:?];
  v312 = colorRampsIndexByColorName___d;
  v313 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.spring2022.oatmilk" otherName:@"seasons.summer2019.canaryYellow"];
  [v312 setObject:v311 forKeyedSubscript:v313];

  v314 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v315 = [v314 numberWithInteger:?];
  v316 = colorRampsIndexByColorName___d;
  v317 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.summer2020.linenBlue" otherName:@"seasons.spring2022.green5"];
  [v316 setObject:v315 forKeyedSubscript:v317];

  v318 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v319 = [v318 numberWithInteger:?];
  v320 = colorRampsIndexByColorName___d;
  v321 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.spring2022.orange2" otherName:@"seasons.winter2018.hibiscus"];
  [v320 setObject:v319 forKeyedSubscript:v321];

  v322 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v323 = [v322 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v323 forKeyedSubscript:@"seasons.fall2022.red"];

  v324 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v325 = [v324 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v325 forKeyedSubscript:@"seasons.fall2022.succulent"];

  v326 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v327 = [v326 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v327 forKeyedSubscript:@"seasons.fall2022.elderberry"];

  v328 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v329 = [v328 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v329 forKeyedSubscript:@"seasons.fall2022.slateBlue"];

  v330 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v331 = [v330 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v331 forKeyedSubscript:@"seasons.fall2022.stormBlue"];

  v332 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v333 = [v332 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v333 forKeyedSubscript:@"seasons.fall2022.sunglow"];

  v334 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v335 = [v334 numberWithInteger:?];
  v336 = colorRampsIndexByColorName___d;
  v337 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2022.red" otherName:@"seasons.fall2020.kumquat"];
  [v336 setObject:v335 forKeyedSubscript:v337];

  v338 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v339 = [v338 numberWithInteger:?];
  v340 = colorRampsIndexByColorName___d;
  v341 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2017.pinkSand" otherName:@"seasons.spring2022.orange2"];
  [v340 setObject:v339 forKeyedSubscript:v341];

  v342 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v343 = [v342 numberWithInteger:?];
  v344 = colorRampsIndexByColorName___d;
  v345 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2021.stardust" otherName:@"seasons.fall2022.sunglow"];
  [v344 setObject:v343 forKeyedSubscript:v345];

  v346 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v347 = [v346 numberWithInteger:?];
  v348 = colorRampsIndexByColorName___d;
  v349 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2021.stardust" otherName:@"seasons.summer2017.mistBlue"];
  [v348 setObject:v347 forKeyedSubscript:v349];

  v350 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v351 = [v350 numberWithInteger:?];
  v352 = colorRampsIndexByColorName___d;
  v353 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2021.stardust" otherName:@"seasons.fall2017.darkOlive"];
  [v352 setObject:v351 forKeyedSubscript:v353];

  v354 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v355 = [v354 numberWithInteger:?];
  v356 = colorRampsIndexByColorName___d;
  v357 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2022.stormBlue" otherName:@"seasons.spring2015.white"];
  [v356 setObject:v355 forKeyedSubscript:v357];

  v358 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v359 = [v358 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v359 forKeyedSubscript:@"seasons.spring2023.sky"];

  v360 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v361 = [v360 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v361 forKeyedSubscript:@"seasons.spring2023.purpleFog"];

  v362 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v363 = [v362 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v363 forKeyedSubscript:@"seasons.spring2023.sproutGreen"];

  v364 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v365 = [v364 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v365 forKeyedSubscript:@"seasons.fall2023.lightPink"];

  v366 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v367 = [v366 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v367 forKeyedSubscript:@"seasons.fall2023.red"];

  v368 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v369 = [v368 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v369 forKeyedSubscript:@"seasons.fall2023.clay"];

  v370 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v371 = [v370 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v371 forKeyedSubscript:@"seasons.fall2023.mulberry"];

  v372 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v373 = [v372 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v373 forKeyedSubscript:?];

  v374 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v375 = [v374 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v375 forKeyedSubscript:?];

  v376 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v377 = [v376 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v377 forKeyedSubscript:@"seasons.fall2023.cypress"];

  v378 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v379 = [v378 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v379 forKeyedSubscript:@"seasons.fall2023.guava"];

  v380 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v381 = [v380 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v381 forKeyedSubscript:@"seasons.fall2023.taupe"];

  v382 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v383 = [v382 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v383 forKeyedSubscript:@"seasons.fall2019.alaskanBlue"];

  v384 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v385 = [v384 numberWithInteger:?];
  v386 = colorRampsIndexByColorName___d;
  v387 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2023.lightPink" otherName:@"seasons.fall2023.guava"];
  [v386 setObject:v385 forKeyedSubscript:v387];

  v388 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v389 = [v388 numberWithInteger:?];
  v390 = colorRampsIndexByColorName___d;
  v391 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2023.cypress" otherName:@"custom.fall2023.mint"];
  [v390 setObject:v389 forKeyedSubscript:v391];

  v392 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v393 = [v392 numberWithInteger:?];
  v394 = colorRampsIndexByColorName___d;
  v395 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2023.winterBlue" otherName:@"seasons.fall2023.mulberry"];
  [v394 setObject:v393 forKeyedSubscript:v395];

  v396 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v397 = [v396 numberWithInteger:?];
  v398 = colorRampsIndexByColorName___d;
  v399 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2021.stardust" otherName:@"seasons.fall2023.orangeSorbet"];
  [v398 setObject:v397 forKeyedSubscript:v399];

  v400 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v401 = [v400 numberWithInteger:?];
  v402 = colorRampsIndexByColorName___d;
  v403 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2021.stardust" otherName:@"seasons.fall2023.winterBlue"];
  [v402 setObject:v401 forKeyedSubscript:v403];

  v404 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v405 = [v404 numberWithInteger:?];
  v406 = colorRampsIndexByColorName___d;
  v407 = [NTKPigmentEditOption duotoneNameWithName:@"seasons.fall2023.orangeSorbet" otherName:@"seasons.fall2023.winterBlue"];
  [v406 setObject:v405 forKeyedSubscript:v407];

  v408 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v409 = [v408 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v409 forKeyedSubscript:@"seasons.spring2024.lightBlue"];

  v410 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v411 = [v410 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v411 forKeyedSubscript:@"seasons.spring2024.sunshine"];

  v412 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v413 = [v412 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v413 forKeyedSubscript:@"seasons.spring2024.softMint"];

  v414 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v415 = [v414 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v415 forKeyedSubscript:@"seasons.spring2024.oceanBlue"];

  v416 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v417 = [v416 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v417 forKeyedSubscript:@"seasons.spring2024.pink"];

  v418 = MEMORY[0x277CCABB0];
  ++*(*(*(a1 + 32) + 8) + 24);
  v419 = [v418 numberWithInteger:?];
  [colorRampsIndexByColorName___d setObject:v419 forKeyedSubscript:@"seasons.spring2024.raspberry"];
}

- (BOOL)isOriginalColor
{
  configuration = [(NTKFaceColorPalette *)self configuration];
  colorOption = [configuration colorOption];
  v4 = +[NTKPhotosColorEditOption originalColorName];
  v5 = [colorOption isEqualToString:v4];

  return v5;
}

- (id)_monocolorRampColor
{
  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
    primaryColor = [v3 primaryColor];
  }

  else
  {
    primaryColor = [(NTKPhotosColorPalette *)self primaryColor];
  }

  return primaryColor;
}

+ (void)colorRampForMonochromeColorMatrix:(id)matrix fromPalette:(id)palette toPalette:(id)toPalette transitionFraction:(double)fraction completion:(id)completion
{
  matrixCopy = matrix;
  paletteCopy = palette;
  toPaletteCopy = toPalette;
  v22 = matrixCopy;
  completionCopy = completion;
  v15 = NTKIsDefaultMonochromeColorMatrix(v22);
  if (![paletteCopy isOriginalColor])
  {
    if (![toPaletteCopy isOriginalColor])
    {
      if (v15)
      {
        monocolorRampImage = [paletteCopy monocolorRampImage];
        [toPaletteCopy monocolorRampImage];
      }

      else
      {
        monocolorRampImage = [paletteCopy colorRampImage];
        [toPaletteCopy colorRampImage];
      }
      v21 = ;
      v19 = NTKInterpolateBetweenImages(monocolorRampImage, v21, fraction);

      fraction = 1.0;
      v16 = v22;
      goto LABEL_12;
    }

    v16 = NTKInterpolateColorMatrixToIdentity(v22, fraction);

    fraction = 1.0 - fraction;
    v17 = paletteCopy;
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_6:
    colorRampImage = [v17 colorRampImage];
    goto LABEL_7;
  }

  v16 = NTKInterpolateColorMatrixToIdentity(v22, 1.0 - fraction);

  v17 = toPaletteCopy;
  if (!v15)
  {
    goto LABEL_6;
  }

LABEL_3:
  colorRampImage = [v17 monocolorRampImage];
LABEL_7:
  v19 = colorRampImage;
LABEL_12:
  completionCopy[2](completionCopy, v19, v16, fraction);
}

+ (void)applyColorRamp:(id)ramp colorRampAmount:(double)amount monochromeColorMatrix:(id)matrix toView:(id)view
{
  v20[2] = *MEMORY[0x277D85DE8];
  rampCopy = ramp;
  matrixCopy = matrix;
  if (rampCopy)
  {
    v12 = MEMORY[0x277CD9EA0];
    v13 = *MEMORY[0x277CDA2C0];
    viewCopy = view;
    viewCopy2 = [v12 filterWithType:v13];
    [viewCopy2 setValue:matrixCopy forKey:@"inputColorMatrix"];
    v16 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA588]];
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:amount];
    [v16 setValue:v17 forKey:@"inputAmount"];

    [v16 setValue:objc_msgSend(rampCopy forKey:{"CGImage"), @"inputColorMap"}];
    v20[0] = viewCopy2;
    v20[1] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    layer = [viewCopy layer];

    [layer setFilters:v18];
  }

  else
  {
    viewCopy2 = view;
    [self removeColorRampFromView:viewCopy2];
  }
}

+ (void)removeColorRampFromView:(id)view
{
  layer = [view layer];
  [layer setFilters:0];
}

@end