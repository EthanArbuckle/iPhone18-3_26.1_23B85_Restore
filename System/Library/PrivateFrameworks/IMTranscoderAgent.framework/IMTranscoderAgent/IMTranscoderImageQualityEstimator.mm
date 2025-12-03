@interface IMTranscoderImageQualityEstimator
+ (MLModel)imageQualityEstimatorModel;
+ (double)_entropyForTranscodedImage:(CGImageSource *)image;
+ (double)getEntropyForImage:(CGImage *)image;
+ (id)getInputImageFeatures:(CGImageSource *)features;
+ (id)oneHotEncodeTargetMaxDimFeature:(id)feature suggestedMaxLength:(int)length;
+ (id)standardizeModelInputFeatures:(id)features;
+ (void)setImageQualityEstimatorModel:(id)model;
@end

@implementation IMTranscoderImageQualityEstimator

+ (MLModel)imageQualityEstimatorModel
{
  v6 = qword_27F611A78;
  if (!qword_27F611A78)
  {
    objc_msgSend_setImageQualityEstimatorModel_(IMTranscoderImageQualityEstimator, a2, 0, v2, v3, v4, v5);
    v6 = qword_27F611A78;
  }

  return v6;
}

+ (void)setImageQualityEstimatorModel:(id)model
{
  v42 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v4 = MEMORY[0x277CCA8D8];
  v5 = objc_opt_class();
  v11 = objc_msgSend_bundleForClass_(v4, v6, v5, v7, v8, v9, v10);
  v18 = objc_msgSend_bundlePath(v11, v12, v13, v14, v15, v16, v17);

  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%@/%@", v20, v21, v22, v23, v18, @"Image_Estimator_HEIF.mlmodelc");
  v30 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v25, v24, v26, v27, v28, v29);
  v39 = 0;
  v35 = objc_msgSend_modelWithContentsOfURL_error_(MEMORY[0x277CBFF20], v31, v30, &v39, v32, v33, v34);
  v36 = v39;
  if (v36)
  {
    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = v36;
        _os_log_impl(&dword_254811000, v37, OS_LOG_TYPE_INFO, "Error happened when creating a compiled model instance: %@", buf, 0xCu);
      }

LABEL_11:
    }
  }

  else if (v35)
  {
    objc_storeStrong(&qword_27F611A78, v35);
  }

  else if (IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = v24;
      _os_log_impl(&dword_254811000, v37, OS_LOG_TYPE_INFO, "Failed to initialize model instance using model path %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v38 = *MEMORY[0x277D85DE8];
}

+ (id)standardizeModelInputFeatures:(id)features
{
  v91 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  objc_msgSend_allKeys(featuresCopy, v4, v5, v6, v7, v8, v9);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v10 = v87 = 0u;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v86, v90, 16, v12, v13);
  if (v19)
  {
    v20 = *v87;
    do
    {
      v21 = 0;
      do
      {
        if (*v87 != v20)
        {
          objc_enumerationMutation(v10);
        }

        v22 = *(*(&v86 + 1) + 8 * v21);
        if ((objc_msgSend_isEqual_(v22, v14, @"Input Quality Factor", v15, v16, v17, v18) & 1) != 0 || objc_msgSend_isEqual_(v22, v23, @"Input Qf Square", v24, v25, v26, v27))
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_12;
          }

          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *v85 = 0;
            _os_log_impl(&dword_254811000, v33, OS_LOG_TYPE_INFO, "These keys are not supported for HEIC model, therefore dont standardize.", v85, 2u);
          }

          goto LABEL_11;
        }

        v34 = objc_msgSend_objectForKey_(&unk_28669CE68, v28, v22, v29, v30, v31, v32);
        objc_msgSend_doubleValue(v34, v35, v36, v37, v38, v39, v40);
        v42 = v41;

        v48 = objc_msgSend_objectForKey_(&unk_28669CE90, v43, v22, v44, v45, v46, v47);
        objc_msgSend_doubleValue(v48, v49, v50, v51, v52, v53, v54);
        v56 = v55;

        v62 = objc_msgSend_objectForKey_(featuresCopy, v57, v22, v58, v59, v60, v61);
        objc_msgSend_doubleValue(v62, v63, v64, v65, v66, v67, v68);
        v70 = v69;

        if (v56 == 0.0)
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *v85 = 0;
              _os_log_impl(&dword_254811000, v33, OS_LOG_TYPE_INFO, "Do not standardize for this key.", v85, 2u);
            }

LABEL_11:
          }
        }

        else
        {
          v77 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v71, v72, v73, v74, v75, v76, (v70 - v42) / v56);
          objc_msgSend_setObject_forKey_(featuresCopy, v78, v77, v22, v79, v80, v81);
        }

LABEL_12:
        ++v21;
      }

      while (v19 != v21);
      v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v14, &v86, v90, 16, v17, v18);
      v19 = v82;
    }

    while (v82);
  }

  v83 = *MEMORY[0x277D85DE8];

  return featuresCopy;
}

+ (id)oneHotEncodeTargetMaxDimFeature:(id)feature suggestedMaxLength:(int)length
{
  featureCopy = feature;
  if (length <= 1599)
  {
    switch(length)
    {
      case 800:
        v11 = @"Target Max Dimension_800";
        break;
      case 1024:
        v11 = @"Target Max Dimension_1024";
        break;
      case 1280:
        v11 = @"Target Max Dimension_1280";
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (length > 2999)
  {
    if (length == 4032)
    {
      v11 = @"Target Max Dimension_4032";
    }

    else
    {
      if (length != 3000)
      {
        goto LABEL_18;
      }

      v11 = @"Target Max Dimension_3000";
    }
  }

  else if (length == 1600)
  {
    v11 = @"Target Max Dimension_1600";
  }

  else
  {
    if (length != 2048)
    {
      goto LABEL_18;
    }

    v11 = @"Target Max Dimension_2048";
  }

  v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, 1, v6, v7, v8, v9);
  objc_msgSend_setObject_forKey_(featureCopy, v13, v12, v11, v14, v15, v16);

LABEL_18:

  return featureCopy;
}

+ (double)getEntropyForImage:(CGImage *)image
{
  v36 = *MEMORY[0x277D85DE8];
  memset(&src, 0, sizeof(src));
  v30 = 0;
  LOBYTE(v24) = CGImageGetBitsPerComponent(image);
  v24 = v24;
  LOBYTE(v25) = CGImageGetBitsPerPixel(image);
  v25 = v25;
  ColorSpace = CGImageGetColorSpace(image);
  v26 = CGColorSpaceRetain(ColorSpace);
  BitmapInfo = CGImageGetBitmapInfo(image);
  v29 = 0;
  v28 = 0;
  if (MEMORY[0x259C1B860](&src, &v24, 0, image, 0))
  {
    free(src.data);
    v5 = -1.0;
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v6, OS_LOG_TYPE_INFO, "Error: Failed to create vImageBuffer using CGImageRef", buf, 2u);
      }
    }
  }

  else
  {
    v7 = malloc_type_malloc(0x800uLL, 0xC5D0F640uLL);
    v8 = malloc_type_malloc(0x800uLL, 0xE1C4A5C1uLL);
    v9 = malloc_type_malloc(0x800uLL, 0x4482555uLL);
    v10 = malloc_type_malloc(0x800uLL, 0xFBD82FCBuLL);
    *buf = v7;
    v33 = v8;
    v34 = v9;
    v35 = v10;
    v11 = vImageHistogramCalculation_ARGB8888(&src, buf, 0);
    if (v11)
    {
      NSLog(&cfstr_ErrorCalculati.isa, v11);
      free(src.data);
      free(v7);
      free(v8);
      free(v9);
      free(v10);
      v5 = -1.0;
    }

    else
    {
      v12 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
      vDSP_vaddD(v7, 1, v8, 1, v12, 1, 0x100uLL);
      vDSP_vaddD(v12, 1, v9, 1, v12, 1, 0x100uLL);
      __C = 0.0;
      __B = (3 * src.height * src.width);
      v13 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
      v14 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
      v15 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
      v16 = v15;
      for (i = 0; i != 256; i += 2)
      {
        *&v15[i] = vcvtq_f64_u64(*&v12[i]);
      }

      vDSP_vsdivD(v15, 1, &__B, v13, 1, 0x100uLL);
      for (j = 0; j != 256; ++j)
      {
        v19 = v13[j];
        if (v19 != 0.0)
        {
          v14[j] = log2(v19);
        }
      }

      vDSP_vnegD(v13, 1, v13, 1, 0x100uLL);
      vDSP_vmulD(v13, 1, v14, 1, v14, 1, 0x100uLL);
      vDSP_sveD(v14, 1, &__C, 0x100uLL);
      free(v14);
      free(v13);
      free(v7);
      free(v8);
      free(v9);
      free(v10);
      free(v12);
      free(v16);
      free(src.data);
      v5 = __C;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (double)_entropyForTranscodedImage:(CGImageSource *)image
{
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CBEAC0];
  v7 = *MEMORY[0x277CBED28];
  v8 = *MEMORY[0x277CD3610];
  v9 = *MEMORY[0x277CD3578];
  v10 = *MEMORY[0x277CD3568];
  v16 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v11, 1024, v12, v13, v14, v15);
  v22 = objc_msgSend_dictionaryWithObjectsAndKeys_(v6, v17, v7, v18, v19, v20, v21, v8, v7, v9, v7, v10, v16, *MEMORY[0x277CD3660], 0);

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(image, 0, v22);
  v24 = objc_alloc_init(MEMORY[0x277CBEB28]);
  if (v24)
  {
    v25 = v24;
    v26 = CGImageDestinationCreateWithData(v24, @"public.heic", 1uLL, 0);
    v27 = CGImageSourceCopyPropertiesAtIndex(image, 0, 0);
    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v34 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v29, 1, v30, v31, v32, v33);
    objc_msgSend_setObject_forKey_(v28, v35, v34, *MEMORY[0x277CD2D60], v36, v37, v38);

    v78 = v5;
    v39 = *MEMORY[0x277CD3410];
    v45 = objc_msgSend_objectForKey_(v27, v40, *MEMORY[0x277CD3410], v41, v42, v43, v44);
    objc_msgSend_setValue_forKey_(v28, v46, v45, v39, v47, v48, v49);
    objc_msgSend_addEntriesFromDictionary_(v28, v50, v27, v51, v52, v53, v54);
    LODWORD(v55) = 0.75;
    v62 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v56, v57, v58, v59, v60, v61, v55);
    objc_msgSend_setObject_forKey_(v28, v63, v62, *MEMORY[0x277CD2D48], v64, v65, v66);

    CGImageDestinationAddImage(v26, ThumbnailAtIndex, v28);
    CGImageDestinationFinalize(v26);
    v67 = CGImageSourceCreateWithData(v25, 0);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v67, 0, 0);
    objc_msgSend_getEntropyForImage_(self, v69, ImageAtIndex, v70, v71, v72, v73);
    v75 = v74;
    CGImageRelease(ThumbnailAtIndex);
    CGImageRelease(ImageAtIndex);
    CFRelease(v26);
    v76 = v67;
    v5 = v78;
    CFRelease(v76);
  }

  else
  {
    CGImageRelease(ThumbnailAtIndex);
    v75 = -1.0;
  }

  objc_autoreleasePoolPop(v5);
  return v75;
}

+ (id)getInputImageFeatures:(CGImageSource *)features
{
  v225 = *MEMORY[0x277D85DE8];
  if (!features)
  {
    if (IMOSLoggingEnabled())
    {
      v73 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        LOWORD(v223) = 0;
        _os_log_impl(&dword_254811000, v73, OS_LOG_TYPE_INFO, "Error: Image source is NULL.", &v223, 2u);
      }

      goto LABEL_15;
    }

LABEL_16:
    v74 = 0;
    goto LABEL_30;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(features, 0, 0);
  if (!ImageAtIndex)
  {
    if (IMOSLoggingEnabled())
    {
      v73 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        LOWORD(v223) = 0;
        _os_log_impl(&dword_254811000, v73, OS_LOG_TYPE_INFO, "Error: CGImage reference could not be created for the image source.", &v223, 2u);
      }

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v6 = ImageAtIndex;
  v7 = CGImageSourceCopyPropertiesAtIndex(features, 0, 0);
  v8 = CGImageSourceCopyProperties(features, 0);
  v9 = CGImageSourceCopyProperties(features, 0);
  v15 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"FileSize", v11, v12, v13, v14);
  v22 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v16, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_objectForKeyedSubscript_(v7, v23, @"PixelWidth", v24, v25, v26, v27);
  objc_msgSend_doubleValue(v28, v29, v30, v31, v32, v33, v34);
  v36 = v35;

  v42 = objc_msgSend_objectForKeyedSubscript_(v7, v37, @"PixelHeight", v38, v39, v40, v41);
  objc_msgSend_doubleValue(v42, v43, v44, v45, v46, v47, v48);
  v50 = v49;

  v56 = objc_msgSend_objectForKeyedSubscript_(v8, v51, @"FileSize", v52, v53, v54, v55);
  objc_msgSend_doubleValue(v56, v57, v58, v59, v60, v61, v62);
  v64 = v63;

  v70 = CACurrentMediaTime();
  if (v36 >= v50)
  {
    v71 = v36;
  }

  else
  {
    v71 = v50;
  }

  if (v71 >= 1024.0)
  {
    objc_msgSend__entropyForTranscodedImage_(self, v65, features, v66, v67, v68, v69);
  }

  else
  {
    objc_msgSend_getEntropyForImage_(self, v65, v6, v66, v67, v68, v69);
  }

  v75 = v72;
  CGImageRelease(v6);
  v76 = CACurrentMediaTime();
  if (IMOSLoggingEnabled())
  {
    v77 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      v223 = 134217984;
      v224 = v76 - v70;
      _os_log_impl(&dword_254811000, v77, OS_LOG_TYPE_INFO, "Time taken for computing input Entropy: %lf", &v223, 0xCu);
    }
  }

  if (v75 >= 0.0)
  {
    v79 = exp(v75);
    v80 = MEMORY[0x277CCABB0];
    objc_msgSend_doubleValue(v15, v81, v82, v83, v84, v85, v86);
    v93 = objc_msgSend_numberWithDouble_(v80, v87, v88, v89, v90, v91, v92);
    objc_msgSend_setObject_forKey_(v22, v94, v93, @"Input File Size", v95, v96, v97);

    v104 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v98, v99, v100, v101, v102, v103, v50);
    objc_msgSend_setObject_forKey_(v22, v105, v104, @"Input Height", v106, v107, v108);

    v115 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v109, v110, v111, v112, v113, v114, v75);
    objc_msgSend_setObject_forKey_(v22, v116, v115, @"Input Entropy", v117, v118, v119);

    v126 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v120, v121, v122, v123, v124, v125, v79);
    objc_msgSend_setObject_forKey_(v22, v127, v126, @"Exponential Entropy", v128, v129, v130);

    v137 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v131, v132, v133, v134, v135, v136, v36 / v50);
    objc_msgSend_setObject_forKey_(v22, v138, v137, @"Aspect Ratio", v139, v140, v141);

    objc_msgSend_setObject_forKey_(v22, v142, &unk_28669CC48, @"Target Width", v143, v144, v145);
    objc_msgSend_setObject_forKey_(v22, v146, &unk_28669CC48, @"Target Height", v147, v148, v149);
    objc_msgSend_setObject_forKey_(v22, v150, &unk_28669CE28, @"Target File Size", v151, v152, v153);
    objc_msgSend_setObject_forKey_(v22, v154, &unk_28669CC48, @"Target Max Dimension_4032", v155, v156, v157);
    objc_msgSend_setObject_forKey_(v22, v158, &unk_28669CC48, @"Target Max Dimension_3000", v159, v160, v161);
    objc_msgSend_setObject_forKey_(v22, v162, &unk_28669CC48, @"Target Max Dimension_2048", v163, v164, v165);
    objc_msgSend_setObject_forKey_(v22, v166, &unk_28669CC48, @"Target Max Dimension_1600", v167, v168, v169);
    objc_msgSend_setObject_forKey_(v22, v170, &unk_28669CC48, @"Target Max Dimension_1280", v171, v172, v173);
    objc_msgSend_setObject_forKey_(v22, v174, &unk_28669CC48, @"Target Max Dimension_1024", v175, v176, v177);
    objc_msgSend_setObject_forKey_(v22, v178, &unk_28669CC48, @"Target Max Dimension_800", v179, v180, v181);
    v188 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v182, v183, v184, v185, v186, v187, v64 / 358400.0);
    objc_msgSend_setObject_forKey_(v22, v189, v188, @"Compression Ratio", v190, v191, v192);

    v193 = v36 * v50;
    v199 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v194, v193, v195, v196, v197, v198);
    objc_msgSend_setObject_forKey_(v22, v200, v199, @"Input H x W (NumOfPixels)", v201, v202, v203);

    v204 = MEMORY[0x277CCABB0];
    v205 = log(v193);
    v212 = objc_msgSend_numberWithDouble_(v204, v206, v207, v208, v209, v210, v211, v205);
    objc_msgSend_setObject_forKey_(v22, v213, v212, @"Input log(NumOfPixels)", v214, v215, v216);

    objc_msgSend_setObject_forKey_(v22, v217, &unk_28669CC48, @"Ratio of NumOfPixels", v218, v219, v220);
    v74 = v22;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v78 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        LOWORD(v223) = 0;
        _os_log_impl(&dword_254811000, v78, OS_LOG_TYPE_INFO, "Error: Failed to compute entropy of the input image", &v223, 2u);
      }
    }

    v74 = 0;
  }

LABEL_30:
  v221 = *MEMORY[0x277D85DE8];

  return v74;
}

@end