@interface ImageColorAnalyzer
+ (id)colorsForImage:(id)image;
- (NSArray)dominantColors;
- (void)analyzeImage:(id)image;
@end

@implementation ImageColorAnalyzer

+ (id)colorsForImage:(id)image
{
  v75 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v4 = objc_alloc_init(self);
  objc_msgSend_analyzeImage_(v4, v5, imageCopy, v6);
  v58 = objc_msgSend_backgroundColor(v4, v7, v8, v9);
  v57 = objc_msgSend_dominantColors(v4, v10, v11, v12);
  v16 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14, v15);
  objc_msgSend_addObject_(v16, v17, v58, v18);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v57;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v68, v20, v74, 16);
  if (v23)
  {
    v24 = *v69;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v69 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v68 + 1) + 8 * i);
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v27 = objc_msgSend_copy(v16, v21, v22, 0.0, imageCopy);
        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v64, v29, v73, 16);
        if (v31)
        {
          v33 = *v65;
          while (2)
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v65 != v33)
              {
                objc_enumerationMutation(v27);
              }

              if (objc_msgSend_color_isCloseToOtherColor_(v4, v30, v26, v32, *(*(&v64 + 1) + 8 * j)))
              {

                goto LABEL_16;
              }
            }

            v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v64, v32, v73, 16);
            if (v31)
            {
              continue;
            }

            break;
          }
        }

        objc_msgSend_addObject_(v16, v35, v26, v36);
LABEL_16:
        ;
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v68, v37, v74, 16);
    }

    while (v23);
  }

  if (objc_msgSend_count(v16, v38, v39, v40) <= 7)
  {
    objc_msgSend_removeAllObjects(v16, v41, v42, v43);
    objc_msgSend_addObject_(v16, v44, v58, v45);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v46 = obj;
    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v60, v48, v72, 16);
    if (v50)
    {
      v52 = *v61;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v61 != v52)
          {
            objc_enumerationMutation(v46);
          }

          v54 = *(*(&v60 + 1) + 8 * k);
          if ((objc_msgSend_color_isCloseToOtherColor_(v4, v49, v54, v51, v58, imageCopy) & 1) == 0)
          {
            objc_msgSend_addObject_(v16, v49, v54, v51);
          }
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v49, &v60, v51, v72, 16);
      }

      while (v50);
    }
  }

  return v16;
}

- (void)analyzeImage:(id)image
{
  imageCopy = image;
  v9 = objc_msgSend_CGImage(image, v6, v7, v8);
  SRGB = CGColorSpaceGetSRGB();
  if (SRGB)
  {
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v9, SRGB);
    v12 = CopyWithColorSpace;
    if (CopyWithColorSpace)
    {
      v9 = CopyWithColorSpace;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = TSDBitmapContextCreate(3, 102.0, 102.0);
  CGContextSetInterpolationQuality(v13, kCGInterpolationHigh);
  if (v13)
  {
    v15.origin.x = *MEMORY[0x277CBF348];
    v15.origin.y = *(MEMORY[0x277CBF348] + 8);
    v15.size.width = 102.0;
    v15.size.height = 102.0;
    CGContextDrawImage(v13, v15, v9);
  }

  if (v12)
  {
    CGImageRelease(v12);
  }

  AnalyzeImagePlease(v13, &self->_analyzedColors);
  if (v13)
  {

    CGContextRelease(v13);
  }
}

- (NSArray)dominantColors
{
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_21A1757A0(&__p, self->_analyzedColors.completeColorList.__begin_, self->_analyzedColors.completeColorList.__end_, self->_analyzedColors.completeColorList.__end_ - self->_analyzedColors.completeColorList.__begin_);
  v8 = __p;
  if (v16 != __p)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v6, v7, *&v8[v9], *&v8[v9 + 8], *&v8[v9 + 16], *&v8[v9 + 24]);
      objc_msgSend_addObject_(v5, v12, v11, v13);

      ++v10;
      v8 = __p;
      v9 += 32;
    }

    while (v10 < (v16 - __p) >> 5);
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v5;
}

@end