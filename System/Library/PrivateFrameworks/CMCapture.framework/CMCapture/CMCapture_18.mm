void FigCaptureNormalizedFocusWindowFromMetadata(void *a1)
{
  if (a1)
  {
    v1 = [a1 objectForKeyedSubscript:*off_1E7989DF8];
    if (v1)
    {
      v2 = v1;
      if ([v1 count] == 4)
      {
        [objc_msgSend(OUTLINED_FUNCTION_4_3() "objectAtIndexedSubscript:"intValue"")];
        [objc_msgSend(v2 objectAtIndexedSubscript:{1), "intValue"}];
        [objc_msgSend(v2 objectAtIndexedSubscript:{2), "intValue"}];
        [objc_msgSend(v2 objectAtIndexedSubscript:{3), "intValue"}];
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  OUTLINED_FUNCTION_3();
}

__CFDictionary *FigCaptureMetadataUtiliesCreateExifAuxRegionsDictForSampleBuffer(const void *a1, int a2, uint64_t a3, int a4)
{
  v9 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v10 = OUTLINED_FUNCTION_4_3();
  CMGetAttachment(v10, v11, v12);
  v13 = FigCFEqual();
  v14 = *(MEMORY[0x1E695F058] + 16);
  v163.origin = *MEMORY[0x1E695F058];
  v163.size = v14;
  memset(&rect, 0, sizeof(rect));
  v15 = OUTLINED_FUNCTION_4_3();
  v18 = CMGetAttachment(v15, v16, v17);
  if (!v18)
  {
    v19 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    Count = 0;
    v21 = 0;
    goto LABEL_9;
  }

  v19 = CGRectMakeWithDictionaryRepresentation(v18, &rect);
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v20 = [objc_msgSend(objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB8), "objectForKeyedSubscript:", *off_1E798ACE8}];
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = [v9 objectForKeyedSubscript:*off_1E798B218];
    if (!v21)
    {
      Count = 0;
      goto LABEL_9;
    }
  }

  Count = CFArrayGetCount(v21);
LABEL_9:
  if (Count == 0 && !v19 && !v13)
  {
    return 0;
  }

  v123 = v4;
  HIDWORD(v108) = v19;
  v23 = OUTLINED_FUNCTION_26_0();
  Mutable = CFDictionaryCreateMutable(v23, v24, v25, v26);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_0();
LABEL_72:
    FigDebugAssert3();
    return Mutable;
  }

  memset(&v161, 0, sizeof(v161));
  v28 = [v9 objectForKeyedSubscript:*off_1E798A960];
  if (v28)
  {
    FigCaptureAffineTransformFromDictionaryRepresentation(v28, &v161);
  }

  else
  {
    v29 = *(MEMORY[0x1E695EFD0] + 16);
    *&v161.a = *MEMORY[0x1E695EFD0];
    *&v161.c = v29;
    *&v161.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  memset(&v160, 0, sizeof(v160));
  LODWORD(v125) = v13;
  if (v13)
  {
    v160 = v161;
  }

  else
  {
    FigCaptureZoomTransformToFinalCropRect(v9, &v160);
  }

  v156 = FigCaptureUnityRect();
  v157 = v30;
  v158 = v31;
  v159 = v32;
  if (!v13)
  {
    FigCFDictionaryGetCGRectIfPresent();
  }

  v107 = v9;
  v33 = OUTLINED_FUNCTION_4_3();
  v36 = CMGetAttachment(v33, v34, v35);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E696D8E0], [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(v36, "requestedSettings"), "outputWidth")}]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E696D8D8], [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(v36, "requestedSettings"), "outputHeight")}]);
  v37 = OUTLINED_FUNCTION_26_0();
  theArray = CFArrayCreateMutable(v37, v38, v39);
  if (!theArray)
  {
    OUTLINED_FUNCTION_0();
    goto LABEL_72;
  }

  v109 = Mutable;
  if (Count >= 1)
  {
    v40 = 0;
    v41 = *off_1E798B5C0;
    v123 = *MEMORY[0x1E696D948];
    v121 = *MEMORY[0x1E696D940];
    v118 = *MEMORY[0x1E696D950];
    v117 = *MEMORY[0x1E696D928];
    key = *off_1E798B780;
    v106 = *MEMORY[0x1E696D908];
    v115 = *off_1E798B168;
    v105 = *MEMORY[0x1E696D8F0];
    v114 = *off_1E798B160;
    v104 = *MEMORY[0x1E696D8E8];
    v113 = *off_1E798B1F0;
    v103 = *MEMORY[0x1E696D8F8];
    v112 = *off_1E798B2B8;
    v102 = *MEMORY[0x1E696D900];
    v111 = *MEMORY[0x1E696D938];
    v42 = *MEMORY[0x1E696D918];
    v43 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v21, v40);
      Value = CFDictionaryGetValue(ValueAtIndex, v41);
      if (Value)
      {
        if (CGRectMakeWithDictionaryRepresentation(Value, &v163))
        {
          v46 = FigCaptureTransformRectToCoordinateSpaceOfRect(v163.origin.x, v163.origin.y, v163.size.width, v163.size.height, v156, v157, v158);
          v163.origin.x = OUTLINED_FUNCTION_21_3(v46, v47, v48, v49);
          v163.origin.y = v50;
          v163.size.width = v51;
          v163.size.height = v52;
          if (v51 * v52 >= v5 * v6 * 0.5)
          {
            v53 = OUTLINED_FUNCTION_26_0();
            v55 = CFDictionaryCreateMutable(v53, v54, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v55)
            {
              v56 = v55;
              v164.origin.x = OUTLINED_FUNCTION_31_3();
              CGRectGetMidX(v164);
              FigCFDictionarySetCGFloat();
              v165.origin.x = OUTLINED_FUNCTION_31_3();
              CGRectGetWidth(v165);
              FigCFDictionarySetCGFloat();
              v166.origin.x = OUTLINED_FUNCTION_31_3();
              CGRectGetMidY(v166);
              FigCFDictionarySetCGFloat();
              v167.origin.x = OUTLINED_FUNCTION_31_3();
              CGRectGetHeight(v167);
              FigCFDictionarySetCGFloat();
              if (CFDictionaryGetValue(ValueAtIndex, key))
              {
                v57 = OUTLINED_FUNCTION_7();
                CFDictionaryAddValue(v57, v106, v58);
              }

              if (CFDictionaryGetValue(ValueAtIndex, v115))
              {
                v59 = OUTLINED_FUNCTION_7();
                CFDictionaryAddValue(v59, v105, v60);
              }

              if (CFDictionaryGetValue(ValueAtIndex, v114))
              {
                v61 = OUTLINED_FUNCTION_7();
                CFDictionaryAddValue(v61, v104, v62);
              }

              if (CFDictionaryGetValue(ValueAtIndex, v113))
              {
                v63 = OUTLINED_FUNCTION_7();
                CFDictionaryAddValue(v63, v103, v64);
              }

              if (CFDictionaryGetValue(ValueAtIndex, v112))
              {
                v65 = OUTLINED_FUNCTION_7();
                CFDictionaryAddValue(v65, v102, v66);
              }

              CFDictionaryAddValue(v56, v111, v42);
              CFArrayAppendValue(theArray, v56);
              CFRelease(v56);
            }
          }
        }
      }

      ++v40;
    }

    while (v43 != v40);
  }

  v67 = theArray;
  if (HIDWORD(v108))
  {
    FigCaptureMetadataUtilitiesGetFinalCropRect();
    OUTLINED_FUNCTION_8_3();
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    FigCaptureComputeAffineTransformFromSourceAndDestRects(&v153, v156, v157, v158, v159, v68, v69, v70, v71);
    v168.origin.x = OUTLINED_FUNCTION_25_1();
    *&v152.a = v153;
    *&v152.c = v154;
    *&v152.tx = v155;
    v169 = CGRectApplyAffineTransform(v168, &v152);
    rect.origin.x = OUTLINED_FUNCTION_21_3(v169.origin.x, v169.origin.y, v169.size.width, v169.size.height);
    rect.origin.y = v72;
    rect.size.width = v73;
    rect.size.height = v74;
    if (v73 * v74 >= v5 * v6 * 0.5)
    {
      v75 = OUTLINED_FUNCTION_26_0();
      v79 = CFDictionaryCreateMutable(v75, v76, v77, v78);
      v170.origin.x = OUTLINED_FUNCTION_25_1();
      CGRectGetMidX(v170);
      OUTLINED_FUNCTION_22_1();
      v171.origin.x = OUTLINED_FUNCTION_25_1();
      CGRectGetWidth(v171);
      OUTLINED_FUNCTION_22_1();
      v172.origin.x = OUTLINED_FUNCTION_25_1();
      CGRectGetMidY(v172);
      OUTLINED_FUNCTION_22_1();
      v173.origin.x = OUTLINED_FUNCTION_25_1();
      CGRectGetHeight(v173);
      OUTLINED_FUNCTION_22_1();
      CFDictionaryAddValue(v79, *MEMORY[0x1E696D938], *MEMORY[0x1E696D920]);
      CFArrayAppendValue(theArray, v79);
      CFRelease(v79);
    }
  }

  Mutable = v109;
  if (v125)
  {
    v153 = 0u;
    v154 = 0u;
    if (FigCFDictionaryGetCGRectIfPresent())
    {
      v80 = OUTLINED_FUNCTION_26_0();
      v84 = CFDictionaryCreateMutable(v80, v81, v82, v83);
      v174.origin.x = OUTLINED_FUNCTION_29_0();
      CGRectGetMidX(v174);
      OUTLINED_FUNCTION_22_1();
      v175.origin.x = OUTLINED_FUNCTION_29_0();
      CGRectGetWidth(v175);
      OUTLINED_FUNCTION_22_1();
      v176.origin.x = OUTLINED_FUNCTION_29_0();
      CGRectGetMidY(v176);
      OUTLINED_FUNCTION_22_1();
      v177.origin.x = OUTLINED_FUNCTION_29_0();
      CGRectGetHeight(v177);
      OUTLINED_FUNCTION_22_1();
      CFDictionaryAddValue(v84, *MEMORY[0x1E696D938], *MEMORY[0x1E696D910]);
      CFArrayAppendValue(theArray, v84);
      CFRelease(v84);
    }
  }

  v85 = FigCaptureNormalizeAngle(a4);
  if (!(v85 % 360))
  {
    goto LABEL_65;
  }

  v86 = v85;
  if (![(__CFArray *)theArray count])
  {
    goto LABEL_65;
  }

  if (!(v86 % 90))
  {
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    LODWORD(v121) = v86;
    fcmu_rotationTransformInsideUnitSquare(v86, &v153);
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v95 = OUTLINED_FUNCTION_19_6(v87, v88, v89, v90, v91, v92, v93, v94, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v111, v112, v113, v114, v115, key, v117, v118, theArray, v121, v123, v124, v125, v127, v128, v129, v130, v131, v132[0], v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, 0);
    if (v95)
    {
      v96 = v95;
      v97 = *v149;
      v126 = *MEMORY[0x1E695EFF8];
      do
      {
        for (i = 0; i != v96; ++i)
        {
          if (*v149 != v97)
          {
            objc_enumerationMutation(theArraya);
          }

          *&v152.a = v126;
          if (FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
          {
            *&v152.a = vaddq_f64(v155, vmlaq_n_f64(vmulq_n_f64(v154, v152.b), v153, v152.a));
            FigCFDictionarySetCGFloat();
            FigCFDictionarySetCGFloat();
          }

          if (v122 % 180 == 90 && FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
          {
            FigCFDictionarySetCGFloat();
            FigCFDictionarySetCGFloat();
          }

          if (FigCFDictionaryGetInt32IfPresent())
          {
            FigCaptureNormalizeAngle(v122);
            FigCFDictionarySetInt32();
          }
        }

        v67 = theArraya;
        v96 = [(__CFArray *)theArraya countByEnumeratingWithState:&v148 objects:v132 count:16];
      }

      while (v96);
    }

    Mutable = v110;
LABEL_65:
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E696D930], v67);
  }

  CFRelease(v67);
  return Mutable;
}

uint64_t FigCaptureWritePackedValueForModuleAndCalibrationValidationStatusesFromMetadata(uint64_t result, _DWORD *a2)
{
  if (result && ((v3 = result, v4 = [result objectForKeyedSubscript:*off_1E798A558], v5 = objc_msgSend(v3, "objectForKeyedSubscript:", *off_1E798A590), objc_msgSend(v4, "count")) || (result = objc_msgSend(v5, "count")) != 0))
  {
    v6 = [objc_msgSend(v5 objectForKeyedSubscript:{@"RearCameraAssembly", "intValue"}];
    v7 = [objc_msgSend(v5 objectForKeyedSubscript:{@"FrontCameraAssembly", "intValue"}];
    v8 = [objc_msgSend(v4 objectForKeyedSubscript:{0x1F21ADBD0), "intValue"}];
    v9 = [objc_msgSend(v4 objectForKeyedSubscript:{@"CmPMValidationStatus", "intValue"}];
    v10 = [objc_msgSend(v4 objectForKeyedSubscript:{@"FCClValidationStatus", "intValue"}];
    if (v6 <= 1 && v7 < 2)
    {
      v18 = 0;
      result = 0;
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      v12 = v10;
      v13 = BWShiftedValueWithBitmask(0, 0xFu);
      v14 = BWShiftedValueWithBitmask(v6, 0xF0u) | v13;
      v15 = BWShiftedValueWithBitmask(v7, 0xF00u);
      v16 = v14 | v15 | BWShiftedValueWithBitmask(v8, 0xF000u);
      v17 = BWShiftedValueWithBitmask(v9, 0xF0000u);
      v18 = v16 | v17 | BWShiftedValueWithBitmask(v12, 0xF00000u);
      result = 1;
      if (!a2)
      {
        return result;
      }
    }
  }

  else
  {
    v18 = 0;
    if (!a2)
    {
      return result;
    }
  }

  *a2 = v18;
  return result;
}

uint64_t FigCaptureMetadataUtilitiesUpdateISPSpatialMetadataForStillImageCrop(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 < 1 || SHIDWORD(a2) <= 0)
    {
      OUTLINED_FUNCTION_0();
      return FigDebugAssert3();
    }

    else
    {
      OUTLINED_FUNCTION_9_7();
      v4 = v3;
      if (CGRectIsNull(v48))
      {
        FigCaptureRectFromDimensions();
        OUTLINED_FUNCTION_11_1();
      }

      v5 = OUTLINED_FUNCTION_3_1();
      FigCaptureMetadataUtilitiesNormalizeCropRect(v5, v6, v7, v8);
      OUTLINED_FUNCTION_2_3();
      FigCaptureMetadataUtilitiesUpdateDetectedObjectsInfoAndFacesArrayWithCropRect(v4);
      FigCaptureNormalizedFocusWindowFromMetadata(v4);
      OUTLINED_FUNCTION_36_2(v9, v10, v11, v12);
      FigCaptureSetNormalizedFocusWindowToMetadata(v4);
      v13 = *off_1E798B308;
      v14 = [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
      [v14 count];
      v15 = [OUTLINED_FUNCTION_7() arrayWithCapacity:?];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v23 = OUTLINED_FUNCTION_35_1(v15, v16, v17, v18, v19, v20, v21, v22, v37, v39);
      if (v23)
      {
        v24 = v23;
        v25 = *v45;
        v41 = *(MEMORY[0x1E695F050] + 16);
        v42 = *MEMORY[0x1E695F050];
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v45 != v25)
            {
              objc_enumerationMutation(v14);
            }

            v27 = *(*(&v44 + 1) + 8 * i);
            recta.origin = v42;
            recta.size = v41;
            v28 = CGRectMakeWithDictionaryRepresentation(v27, &recta);
            if (v28)
            {
              v49.origin.x = OUTLINED_FUNCTION_36_2(recta.origin.x, recta.origin.y, recta.size.width, recta.size.height);
              DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v49);
              CFAutorelease(DictionaryRepresentation);
              v28 = [OUTLINED_FUNCTION_7() addObject:?];
            }
          }

          v24 = OUTLINED_FUNCTION_35_1(v28, v29, v30, v31, v32, v33, v34, v35, v38, v40);
        }

        while (v24);
      }

      return [v4 setObject:v15 forKeyedSubscript:v13];
    }
  }

  return result;
}

void FigCaptureMetadataUtilitiesUpdateDetectedObjectsInfoAndFacesArrayWithCropRect(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_7();
    v2 = v1;
    if (!CGRectIsNull(v15))
    {
      if ([OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?])
      {
        v3 = OUTLINED_FUNCTION_3_1();
        FacesArrayForCropRect = FigCaptureMetadataUtilitiesCreateFacesArrayForCropRect(v4, v3, v5, v6);
        [OUTLINED_FUNCTION_12_0() setObject:? forKeyedSubscript:?];
      }

      v8 = *off_1E798B220;
      if ([OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?])
      {
        v9 = OUTLINED_FUNCTION_3_1();
        DetectedObjectsInfoForCropRect = FigCaptureMetadataUtilitiesCreateDetectedObjectsInfoForCropRect(v10, v9, v11, v12);
        [v2 setObject:DetectedObjectsInfoForCropRect forKeyedSubscript:v8];
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }
}

uint64_t FigCaptureSetNormalizedFocusWindowToMetadata(void *a1)
{
  OUTLINED_FUNCTION_9_7();
  result = CGRectIsNull(v12);
  if ((result & 1) == 0)
  {
    if (a1)
    {
      LODWORD(v7) = llround(v4 * 1000.0);
      v11[0] = [MEMORY[0x1E696AD98] numberWithInt:v7];
      LODWORD(v8) = llround(v3 * 1000.0);
      v11[1] = [MEMORY[0x1E696AD98] numberWithInt:v8];
      LODWORD(v9) = llround(v2 * 1000.0);
      v11[2] = [MEMORY[0x1E696AD98] numberWithInt:v9];
      LODWORD(v10) = llround(v1 * 1000.0);
      v11[3] = [MEMORY[0x1E696AD98] numberWithInt:v10];
      return [a1 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v11, 4), *off_1E7989DF8}];
    }

    else
    {
      OUTLINED_FUNCTION_0();
      return FigDebugAssert3();
    }
  }

  return result;
}

uint64_t FigCaptureMetadataUtilitiesUpdateDepthDataMetadataForStillImageCropAndScale(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = *MEMORY[0x1E695F060];
  v37 = 0u;
  size = v12;
  memset(v36, 0, sizeof(v36));
  point = *MEMORY[0x1E695EFF8];
  if (!a1)
  {
    FigDebugAssert3();
    goto LABEL_19;
  }

  v13 = [a1 objectForKeyedSubscript:*off_1E798CFE0];
  if (!v13)
  {
    OUTLINED_FUNCTION_2_23();
    goto LABEL_19;
  }

  if (!CGSizeMakeWithDictionaryRepresentation(v13, &size) || (v14 = [a1 objectForKeyedSubscript:*off_1E798CFD8]) == 0)
  {
    OUTLINED_FUNCTION_2_23();
    goto LABEL_19;
  }

  v15 = v14;
  result = [v14 length];
  if (result != 48)
  {
    return result;
  }

  [v15 getBytes:v36 length:48];
  v17 = [a1 objectForKeyedSubscript:*off_1E798CFF0];
  if (!v17)
  {
    OUTLINED_FUNCTION_2_23();
    goto LABEL_19;
  }

  if (!CGPointMakeWithDictionaryRepresentation(v17, &point))
  {
    OUTLINED_FUNCTION_2_23();
LABEL_19:
    result = FigSignalErrorAtGM();
    if (result)
    {
      return result;
    }
  }

  v18 = *off_1E798D000;
  [objc_msgSend(OUTLINED_FUNCTION_27_1() "objectForKeyedSubscript:"floatValue"")];
  v20 = *&v37 - a2 * size.width;
  v21 = point.x - a2 * size.width;
  v22 = *(&v37 + 1) - a3 * size.height;
  point.x = v21;
  point.y = point.y - a3 * size.height;
  v23 = a4 * size.width;
  v24 = a5 * size.height;
  size.width = a4 * size.width;
  size.height = a5 * size.height;
  if (a6 > 0.0)
  {
    v25 = v19 / a6;
    v26 = v25;
  }

  else
  {
    v26 = v19;
  }

  v27 = v23;
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(&v24 - 1));
  [OUTLINED_FUNCTION_12_0() setObject:? forKeyedSubscript:?];

  v29 = v20;
  *&v30 = v29;
  v31 = v22;
  *(&v30 + 1) = v31;
  *&v37 = v30;
  v32 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v36 length:48];
  [OUTLINED_FUNCTION_12_0() setObject:? forKeyedSubscript:?];

  v33 = CGPointCreateDictionaryRepresentation(point);
  [OUTLINED_FUNCTION_12_0() setObject:? forKeyedSubscript:?];

  *&v34 = v26;
  return [a1 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v34), v18}];
}

uint64_t FigCaptureMetadataUtilitiesComputeNormalizedPixelBufferCoordinateTransformBetweenSampleBuffers(void *a1, void *a2, int a3, _OWORD *a4)
{
  if (!a4)
  {
    return 4294954516;
  }

  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v11 = *MEMORY[0x1E695EFD0];
  *&v16.a = *MEMORY[0x1E695EFD0];
  *&v16.c = v10;
  v9 = *(MEMORY[0x1E695EFD0] + 32);
  *&v16.tx = v9;
  result = fcmu_transformFromNormalizedBufferCoordsToDenormalizedSensorCoordsForSampleBuffer(a1, a3 ^ 1u, &v16);
  if (!result)
  {
    *&v15.a = v11;
    *&v15.c = v10;
    *&v15.tx = v9;
    result = fcmu_transformFromNormalizedBufferCoordsToDenormalizedSensorCoordsForSampleBuffer(a2, a3 ^ 1u, &v15);
    if (!result)
    {
      v14 = v15;
      CGAffineTransformInvert(&t2, &v14);
      t1 = v16;
      CGAffineTransformConcat(&v14, &t1, &t2);
      result = 0;
      v8 = *&v14.c;
      *a4 = *&v14.a;
      a4[1] = v8;
      a4[2] = *&v14.tx;
    }
  }

  return result;
}

uint64_t fcmu_transformFromNormalizedBufferCoordsToDenormalizedNonBinnedSensorCoords(void *a1, unint64_t a2, int a3, _OWORD *a4)
{
  if (!a4 || !a1 || ((v5 = a2, v6 = HIDWORD(a2), a2 >= 1) ? (v7 = SHIDWORD(a2) <= 0) : (v7 = 1), v7))
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 4294954516;
  }

  v10 = *(MEMORY[0x1E695F050] + 16);
  *&v160.a = *MEMORY[0x1E695F050];
  *&v160.c = v10;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    v11 = [a1 objectForKeyedSubscript:*off_1E798B588];
    if (v11)
    {
      v12 = v11;
      v160.a = v160.a * [v11 intValue];
      v160.b = v160.b * [v12 intValue];
      v160.c = v160.c * [v12 intValue];
      v160.d = v160.d * [v12 intValue];
    }
  }

  v13 = *&v160.a;
  v14 = *&v160.c;
  v162.origin = *&v160.a;
  v162.size = *&v160.c;
  if (CGRectIsNull(v162))
  {
    return 4294954516;
  }

  FigCaptureMetadataUtilitiesGetValidBufferRect();
  OUTLINED_FUNCTION_2_3();
  v23 = *MEMORY[0x1E695EFD0];
  v24 = *(MEMORY[0x1E695EFD0] + 16);
  *&v161.a = *MEMORY[0x1E695EFD0];
  *&v161.c = v24;
  v25 = *(MEMORY[0x1E695EFD0] + 32);
  *&v161.tx = v25;
  if (!a3)
  {
LABEL_17:
    v159.b = v161.b;
    *&v159.c = *&v161.c;
    *&v159.tx = *&v161.tx;
    v31 = OUTLINED_FUNCTION_34_1(v15, v16, v17, v18, v19, v20, v21, v22, v90, v96, v102, *(&v102 + 1), v113, v119, v125, *(&v125 + 1), v136, *(&v136 + 1), v147, *(&v147 + 1), *&v158.a, *&v158.b, *&v158.c, *&v158.d, *&v158.tx, *&v158.ty, SLOBYTE(v161.a));
    v33 = CGAffineTransformTranslate(v32, v31, *&v13, *(&v13 + 1));
    v161 = v160;
    v159.b = v160.b;
    *&v159.c = *&v160.c;
    *&v159.tx = *&v160.tx;
    v41 = OUTLINED_FUNCTION_34_1(v33, v34, v35, v36, v37, v38, v39, v40, v91, v97, v103, v108, v114, v120, v126, v131, v137, v142, v148, v153, *&v158.a, *&v158.b, *&v158.c, *&v158.d, *&v158.tx, *&v158.ty, SLOBYTE(v160.a));
    v43 = CGAffineTransformScale(v42, v41, *&v14, *(&v14 + 1));
    OUTLINED_FUNCTION_33_4(v43, v44, v45, v46, v47, v48, v49, v50, v92, v98, v104, v109, v115, v121, v127, v132, v138, v143, v149, v154, *&v158.a, *&v158.b, *&v158.c, *&v158.d, *&v158.tx, *&v158.ty, *&v159.a, *&v159.b, *&v159.c, *&v159.d, *&v159.tx, *&v159.ty, *&v160.a, *&v160.c, v51);
    v163.origin.x = OUTLINED_FUNCTION_3();
    v164.size.width = v5;
    v164.size.height = v6;
    if (!CGRectEqualToRect(v163, v164))
    {
      v52 = OUTLINED_FUNCTION_3();
      v56 = FigCaptureMetadataUtilitiesNormalizeCropRect(v52, v53, v54, v55);
      v159.b = v161.b;
      *&v159.c = *&v161.c;
      *&v159.tx = *&v161.tx;
      v64 = OUTLINED_FUNCTION_34_1(v56, v57, v58, v59, v60, v61, v62, v63, v93, v99, v105, v110, v116, v122, v128, v133, v139, v144, v150, v155, *&v158.a, *&v158.b, *&v158.c, *&v158.d, *&v158.tx, *&v158.ty, SLOBYTE(v161.a));
      v68 = CGAffineTransformScale(v65, v64, v66, v67);
      v161 = v160;
      v159.b = v160.b;
      *&v159.c = *&v160.c;
      *&v159.tx = *&v160.tx;
      v76 = OUTLINED_FUNCTION_34_1(v68, v69, v70, v71, v72, v73, v74, v75, v94, v100, v106, v111, v117, v123, v129, v134, v140, v145, v151, v156, *&v158.a, *&v158.b, *&v158.c, *&v158.d, *&v158.tx, *&v158.ty, SLOBYTE(v160.a));
      v80 = CGAffineTransformTranslate(v77, v76, v78, v79);
      OUTLINED_FUNCTION_33_4(v80, v81, v82, v83, v84, v85, v86, v87, v95, v101, v107, v112, v118, v124, v130, v135, v141, v146, v152, v157, *&v158.a, *&v158.b, *&v158.c, *&v158.d, *&v158.tx, *&v158.ty, *&v159.a, *&v159.b, *&v159.c, *&v159.d, *&v159.tx, *&v159.ty, *&v160.a, *&v160.c, v88);
    }

    result = 0;
    v89 = *&v161.c;
    *a4 = *&v161.a;
    a4[1] = v89;
    a4[2] = *&v161.tx;
    return result;
  }

  v125 = v25;
  v136 = v24;
  v147 = v23;
  v26 = *(MEMORY[0x1E69E9B10] + 16);
  *&v160.a = *MEMORY[0x1E69E9B10];
  *&v160.c = v26;
  *&v160.tx = *(MEMORY[0x1E69E9B10] + 32);
  v27 = [a1 objectForKeyedSubscript:*off_1E798A948];
  if (!v27)
  {
    return 4294954516;
  }

  v28 = v27;
  if ([v27 length] != 48)
  {
    return 0;
  }

  [v28 getBytes:&v160 length:48];
  result = 4294954516;
  if (*&v160.a > 0.0 && *(&v160.c + 1) > 0.0)
  {
    v102 = *&v160.tx;
    v119 = *(&v13 + 1);
    v30 = *(&v160.tx + 1);
    *&v159.a = v147;
    *&v159.c = v136;
    *&v159.tx = v125;
    CGAffineTransformScale(&v161, &v159, 1.0 / *&v160.a, 1.0 / *(&v160.c + 1));
    v158 = v161;
    v15 = CGAffineTransformTranslate(&v159, &v158, 0.0 - *&v102, 0.0 - v30);
    v161 = v159;
    goto LABEL_17;
  }

  return result;
}

void FigCaptureMetadataUtilitiesNormalizedRectEnforcedWithinValidRegionAfterGDC(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, void *a10, unint64_t a11)
{
  OUTLINED_FUNCTION_9_7();
  memset(v36, 0, sizeof(v36));
  if (![MEMORY[0x1E69916C0] getGDCParams:v36 cameraInfo:? metadata:?])
  {
    v17 = OUTLINED_FUNCTION_3_1();
    v23 = FigCaptureMetadataUtilitiesNormalizedSensorRectFromNormalizedBufferRect(v18, v19, v17, v20, v21, v22);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    FigCaptureMetadataUtilitiesNormalizedSensorRectFromNormalizedBufferRect(a10, a11, a5, a6, a7, a8);
    OUTLINED_FUNCTION_8_3();
    v30 = OUTLINED_FUNCTION_3();
    [v31 adjustCropRectangle:v30 validCropRectangle:? withGDCParams:?];
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    v38.origin.x = v23;
    v38.origin.y = v25;
    v38.size.width = v27;
    v38.size.height = v29;
    if (!CGRectEqualToRect(v37, v38))
    {
      FigCaptureMetadataUtilitiesNormalizedBufferRectFromNormalizedSensorRect(a10, a11, x, y, width, height);
      OUTLINED_FUNCTION_11_1();
    }
  }

  OUTLINED_FUNCTION_3_1();
}

CFTypeRef FigCaptureMetadataUtilitiesCreateBoxedVideoOrientationBlockBuffer()
{
  if (FigBoxedMetadataCreateForConstruction() || FigBoxedMetadataAppendValue() || FigBoxedMetadataEndConstruction())
  {
    return 0;
  }

  BlockBuffer = FigBoxedMetadataGetBlockBuffer();
  return CFRetain(BlockBuffer);
}

CMSampleBufferRef FigCaptureMetadataUtilitiesCreateVideoOrientationSampleBuffer(CMTime *a1, OpaqueCMBlockBuffer *cf, uint64_t a3, const opaqueCMFormatDescription *a4)
{
  v11 = 0;
  if (cf)
  {
    v6 = cf;
    CFRetain(cf);
  }

  else
  {
    result = FigCaptureMetadataUtilitiesCreateBoxedVideoOrientationBlockBuffer();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  __dst.presentationTimeStamp = *a1;
  sampleSizeArray = CMBlockBufferGetDataLength(v6);
  v7 = CMSampleBufferCreate(*MEMORY[0x1E695E480], v6, 1u, 0, 0, a4, 1, 1, &__dst, 1, &sampleSizeArray, &v11);
  CFRelease(v6);
  result = v11;
  if (v7)
  {
    if (v11)
    {
      CFRelease(v11);
      return 0;
    }
  }

  return result;
}

void *FigCaptureMetadataUtilitiesCreateMetadataSidecarFileURL(void *result)
{
  if (result)
  {
    v1 = [objc_msgSend(objc_msgSend(objc_msgSend(result "resourceSpecifier")];
    if (!v1 || (result = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v1]) == 0)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptureMetadataUtilitiesAdjustValidBufferRectForDarkShadeCropping(void *a1)
{
  v2 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  result = fcmu_darkShadeHorizontalCrop([v2 objectForKeyedSubscript:*off_1E798B540]);
  if (result)
  {
    v4 = result;
    v18 = *MEMORY[0x1E695F058];
    v19 = *(MEMORY[0x1E695F058] + 16);
    v5 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B5A8), "intValue"}];
    v6 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B5A0), "intValue"}];
    result = FigCFDictionaryGetCGRectIfPresent();
    if (result || (result = FigCFDictionaryGetCGRectIfPresent(), result))
    {
      v8 = *(&v18 + 1);
      v7 = *&v18;
      v10 = *(&v19 + 1);
      v9 = *&v19;
    }

    else
    {
      v9 = v5;
      v10 = v6;
      v8 = 0.0;
      v7 = 0.0;
    }

    v11 = v5 - 2 * (v4 >> (v5 == 2112));
    if (v9 > v11)
    {
      v12 = v9 / v11;
      v13 = (1.0 / v12);
      fcmu_scaleValidBufferRectOverWidth(v7, v8, v9, v10, v13);
      FigCFDictionarySetCGRect();
      if (FigCFDictionaryGetCGRectIfPresent())
      {
        height = 0.0;
        width = 0.0;
      }

      else
      {
        FormatDescription = CMSampleBufferGetFormatDescription(a1);
        Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
        width = Dimensions.width;
        height = Dimensions.height;
      }

      fcmu_scaleValidBufferRectOverWidth(0.0, 0.0, width, height, v13);
      return FigCFDictionarySetCGRect();
    }
  }

  return result;
}

uint64_t fcmu_addValueToAuxiliaryImageProperties(CGImageMetadata *a1, CFTypeRef value, CFStringRef xmlns, CFStringRef prefix, CFStringRef name)
{
  if (value)
  {
    v8 = CGImageMetadataTagCreate(xmlns, prefix, name, kCGImageMetadataTypeDefault, value);
    if (v8)
    {
      v9 = v8;
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@", prefix, name];
      if (v10)
      {
        if (CGImageMetadataSetTagWithPath(a1, 0, v10, v9))
        {
          v11 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
          v11 = 4294954516;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        v11 = 4294954510;
      }

      CFRelease(v9);
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v10 = 0;
      v11 = 4294954510;
    }
  }

  else
  {
    v10 = 0;
    v11 = 4294954516;
  }

  return v11;
}

void *FigCaptureMetadataUtilitiesHasFlicker(void *result, double a2)
{
  if (result)
  {
    v3 = result;
    result = [result objectForKeyedSubscript:*off_1E798B980];
    if (result)
    {
      if ([result intValue] == 1)
      {
        result = [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798B960), "firstObject"}];
        if (result)
        {
          [objc_msgSend(result objectForKeyedSubscript:{*off_1E798B958), "doubleValue"}];
          *&v4 = v4;
          return (1.0 / (*&v4 + *&v4) > a2);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void FigCaptureMetadataUtiltiesCreateFlexRangeImagePropertiesFromGainMapMetadata_cold_1(const void *a1)
{
  FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t FigCaptureMetadataUtiltiesCreateFlexRangeImagePropertiesFromGainMapMetadata_cold_2(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:*off_1E798A640];
  [v1 objectForKeyedSubscript:*off_1E798A650];
  v2 = OUTLINED_FUNCTION_6_18();
  fcmu_addValueToAuxiliaryImageProperties(v2, v3, v4, v5, v6);
  [v1 objectForKeyedSubscript:*off_1E798A618];
  v7 = OUTLINED_FUNCTION_6_18();
  fcmu_addValueToAuxiliaryImageProperties(v7, v8, v9, v10, v11);
  [v1 objectForKeyedSubscript:*off_1E798A608];
  v12 = OUTLINED_FUNCTION_6_18();
  fcmu_addValueToAuxiliaryImageProperties(v12, v13, v14, v15, v16);
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[0].%@", @"ChannelMetadata", @"BaseOffset"];
  [v1 objectForKeyedSubscript:*off_1E798A620];
  v18 = OUTLINED_FUNCTION_5_23();
  fcmu_addValueToAuxiliaryImageProperties(v18, v19, v20, v21, v17);
  v23 = OUTLINED_FUNCTION_39_1(MEMORY[0x1E696AEC0], v22);
  [v1 objectForKeyedSubscript:*off_1E798A610];
  v24 = OUTLINED_FUNCTION_5_23();
  fcmu_addValueToAuxiliaryImageProperties(v24, v25, v26, v27, v23);
  v29 = OUTLINED_FUNCTION_39_1(MEMORY[0x1E696AEC0], v28);
  [v1 objectForKeyedSubscript:*off_1E798A648];
  v30 = OUTLINED_FUNCTION_5_23();
  fcmu_addValueToAuxiliaryImageProperties(v30, v31, v32, v33, v29);
  v35 = OUTLINED_FUNCTION_39_1(MEMORY[0x1E696AEC0], v34);
  [v1 objectForKeyedSubscript:*off_1E798A638];
  v36 = OUTLINED_FUNCTION_5_23();
  fcmu_addValueToAuxiliaryImageProperties(v36, v37, v38, v39, v35);
  v41 = OUTLINED_FUNCTION_39_1(MEMORY[0x1E696AEC0], v40);
  [v1 objectForKeyedSubscript:*off_1E798A628];
  v42 = OUTLINED_FUNCTION_5_23();

  return fcmu_addValueToAuxiliaryImageProperties(v42, v43, v44, v45, v41);
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_6()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_37_4(v2);
  OUTLINED_FUNCTION_17_3();
  if (!fcmu_addValueToAuxiliaryImageProperties(v3, v4, v5, v6, v7))
  {
    [*(v1 + 3480) numberWithDouble:*(v0 + 8)];
    OUTLINED_FUNCTION_17_3();
    if (!fcmu_addValueToAuxiliaryImageProperties(v8, v9, v10, v11, v12))
    {
      return 1;
    }
  }

  OUTLINED_FUNCTION_0_26();
  FigDebugAssert3();
  return 0;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_9()
{
  OUTLINED_FUNCTION_14_4();
  v1 = [v0 bytes];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  for (i = 0; i != 32; i += 4)
  {
    LODWORD(v3) = *(v1 + i);
    [v2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v3)}];
  }

  OUTLINED_FUNCTION_17_3();
  if (!fcmu_addValueToAuxiliaryImageProperties(v5, v6, v7, v8, v9))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_26();
  FigDebugAssert3();
  return 0;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_10()
{
  OUTLINED_FUNCTION_14_4();
  v1 = [v0 bytes];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  for (i = 0; i != 32; i += 4)
  {
    LODWORD(v3) = *(v1 + i);
    [v2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v3)}];
  }

  OUTLINED_FUNCTION_17_3();
  if (!fcmu_addValueToAuxiliaryImageProperties(v5, v6, v7, v8, v9))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_26();
  FigDebugAssert3();
  return 0;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_11()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_37_4(v2);
  OUTLINED_FUNCTION_17_3();
  if (!fcmu_addValueToAuxiliaryImageProperties(v3, v4, v5, v6, v7))
  {
    [*(v1 + 3480) numberWithDouble:*(v0 + 8)];
    OUTLINED_FUNCTION_17_3();
    if (!fcmu_addValueToAuxiliaryImageProperties(v8, v9, v10, v11, v12))
    {
      return 1;
    }
  }

  OUTLINED_FUNCTION_0_26();
  FigDebugAssert3();
  return 0;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_13(CGImageMetadata *a1, const void *a2, const __CFString *a3, const __CFString *a4)
{
  if (!fcmu_addValueToAuxiliaryImageProperties(a1, a2, a3, a4, *off_1E798CFB8))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_26();
  FigDebugAssert3();
  return 0;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_14(CGImageMetadata *a1, const void *a2, const __CFString *a3, const __CFString *a4)
{
  if (!fcmu_addValueToAuxiliaryImageProperties(a1, a2, a3, a4, *off_1E798CFB0))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_26();
  FigDebugAssert3();
  return 0;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_16(CGImageMetadata *a1, const void *a2, const __CFString *a3, const __CFString *a4)
{
  if (!fcmu_addValueToAuxiliaryImageProperties(a1, a2, a3, a4, *off_1E798CF18))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_26();
  FigDebugAssert3();
  return 0;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_17(CGImageMetadata *a1, const void *a2, const __CFString *a3, const __CFString *a4)
{
  if (!fcmu_addValueToAuxiliaryImageProperties(a1, a2, a3, a4, *off_1E798CF10))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_26();
  FigDebugAssert3();
  return 0;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_18(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_19(CGImageMetadata *a1, const void *a2, const __CFString *a3, const __CFString *a4)
{
  if (!fcmu_addValueToAuxiliaryImageProperties(a1, a2, a3, a4, *off_1E798CFA0))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_26();
  FigDebugAssert3();
  return 0;
}

void BWAddStillImageCaptureFrameMetadataToSampleBuffer(const void *a1, void *a2, int a3, uint64_t *a4)
{
  v4 = a4;
  HIDWORD(v57) = a3;
  target = a1;
  if (a4)
  {
    v59 = *a4;
    if (!a2)
    {
      return;
    }
  }

  else
  {
    v59 = 0;
    if (!a2)
    {
      return;
    }
  }

  v6 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = [a2 captureType];
  v9 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
  v10 = [a2 unifiedBracketedCaptureParams];
  if (v9 >= 1)
  {
    v11 = v10;
    switch(v8)
    {
      case 1u:
        [a2 captureFlags];
        goto LABEL_33;
      case 3u:
        v20 = [objc_msgSend(a2 "bracketSettings")];
        if ([v20 count] < v9)
        {
          return;
        }

        [objc_msgSend(v20 objectAtIndexedSubscript:{(v9 - 1)), "doubleValue"}];
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        v15 = off_1E798A830;
        goto LABEL_27;
      case 4u:
        goto LABEL_15;
      case 5u:
      case 6u:
        v12 = [objc_msgSend(objc_msgSend(a2 "bracketSettings")];
        if ([v12 count] < v9)
        {
          return;
        }

        v13 = [objc_msgSend(v12 objectAtIndexedSubscript:{(v9 - 1)), "intValue"}];
        v14 = [MEMORY[0x1E696AD98] numberWithInt:v13];
        v15 = off_1E798A5B8;
LABEL_27:
        v16 = *v15;
        goto LABEL_28;
      case 7u:
LABEL_33:
        if (v11)
        {
          goto LABEL_34;
        }

        goto LABEL_29;
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
LABEL_34:
        v22 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}];
        v23 = v22;
        v31 = OUTLINED_FUNCTION_1_31(v22, v24, v25, v26, v27, v28, v29, v30, v55, v57, v59, target, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, 0);
        if (!v31)
        {
          return;
        }

        v32 = v31;
        v33 = 0;
        v34 = MEMORY[0];
        v35 = *off_1E798C698;
        v56 = v4;
        break;
      default:
        goto LABEL_29;
    }

LABEL_36:
    v36 = 0;
    while (1)
    {
      if (MEMORY[0] != v34)
      {
        objc_enumerationMutation(v11);
      }

      v37 = *(8 * v36);
      v38 = [objc_msgSend(v37 objectForKeyedSubscript:{v35, v56), "intValue"}];
      if (v38 != 1)
      {
        ++v33;
      }

      v46 = v33 == v9 && v23 == (v38 == 1);
      if (v46)
      {
        break;
      }

      if (v32 == ++v36)
      {
        v32 = OUTLINED_FUNCTION_1_31(v38, v39, v40, v41, v42, v43, v44, v45, v56, v58, v60, target, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v94);
        if (v32)
        {
          goto LABEL_36;
        }

        return;
      }
    }

    v4 = v56;
    if (!v37)
    {
      return;
    }

    v19 = v60;
    if (v60)
    {
      v47 = *off_1E798C918;
      v48 = *off_1E798C648;
    }

    else
    {
      v48 = *off_1E798C648;
      [objc_msgSend(v37 objectForKeyedSubscript:{*off_1E798C648), "floatValue"}];
      v50 = v49;
      v47 = *off_1E798C918;
      v51 = [objc_msgSend(v37 objectForKeyedSubscript:{*off_1E798C918), "intValue"}];
      if (v50 < 0.0)
      {
        v52 = 1;
      }

      else
      {
        v52 = v23;
      }

      v53 = 2;
      if (v51 == 2)
      {
        v53 = 64;
      }

      if (v51 == 1)
      {
        v53 = 8;
      }

      v46 = v52 == 0;
      v54 = 4;
      if (v46)
      {
        v54 = v53;
      }

      if (HIDWORD(v58))
      {
        v19 = v54 | 0x10;
      }

      else
      {
        v19 = v54;
      }
    }

    [v7 setObject:objc_msgSend(v37 forKeyedSubscript:{"objectForKeyedSubscript:", v47), *off_1E798A950}];
    [v7 setObject:objc_msgSend(v37 forKeyedSubscript:{"objectForKeyedSubscript:", v48), *off_1E798A830}];
LABEL_65:
    v21 = v19;
    CMSetAttachment(target, @"StillImageCaptureFrameFlags", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v19], 1u);
    if (!v4)
    {
      return;
    }

    goto LABEL_66;
  }

  if (v8 <= 0xD)
  {
    if (((1 << v8) & 0x3400) != 0)
    {
      if (!v59)
      {
        v17 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}];
        v18 = 2;
        if (v17)
        {
          v18 = 4;
        }

        if (HIDWORD(v57))
        {
          v18 |= 0x10uLL;
        }

        v59 = v18;
      }
    }

    else
    {
      if (((1 << v8) & 0x30) != 0)
      {
        if ([a2 expectedTimeMachineFrameCaptureCount] >= 1 && (objc_msgSend(objc_msgSend(v7, "objectForKeyedSubscript:", *off_1E798B558), "BOOLValue") & 1) == 0)
        {
LABEL_15:
          v16 = *off_1E798A5B8;
          v14 = &unk_1F2242E38;
LABEL_28:
          [v7 setObject:v14 forKeyedSubscript:v16];
        }

        goto LABEL_29;
      }

      if (v8 != 11)
      {
        goto LABEL_29;
      }
    }

    if ([a2 isUnifiedBracketingErrorRecoveryFrame:target isReferenceFrame:HIDWORD(v57)])
    {
      v19 = v59 | 0x20;
      goto LABEL_65;
    }
  }

LABEL_29:
  v19 = v59;
  if (v59)
  {
    goto LABEL_65;
  }

  v21 = 0;
  if (v4)
  {
LABEL_66:
    *v4 = v21;
  }
}

uint64_t BWReferenceFrameSelectionUsingBlurScores(void *a1, int a2, _DWORD *a3, _DWORD *a4)
{
  if (a2 < 1)
  {
    return 4294954516;
  }

  v17 = v4;
  v18 = v5;
  if ([a1 count] < a2 || objc_msgSend(a1, "count") > 4)
  {
    return 4294954516;
  }

  v15 = 0;
  v16 = 0;
  result = FigMotionComputeBlurScores(a1);
  if (!result)
  {
    if ([a1 count] < 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      do
      {
        if (*(&v15 + v12) < *(&v15 + v11))
        {
          v11 = v12;
        }

        ++v12;
      }

      while ([a1 count] > v12);
    }

    LODWORD(v13) = v11;
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        if (!v11)
        {
          LODWORD(v13) = 0;
          if (!a4)
          {
LABEL_25:
            result = 0;
            if (a3)
            {
              *a3 = v13;
            }

            return result;
          }

LABEL_24:
          *a4 = v11;
          goto LABEL_25;
        }

        v14 = [a1 count];
        v13 = v11 - 1;
        if (v14 - 1 != v11)
        {
          if (*(&v15 + v13) > *(&v15 + v11 + 1))
          {
            LODWORD(v13) = v11;
          }

          if (!a4)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else if (v11 >= a2)
      {
        LODWORD(v13) = v11 - a2 + 1;
      }

      else
      {
        LODWORD(v13) = 0;
      }
    }

    if (!a4)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return result;
}

uint64_t BWReferenceFrameSelectionUsingMotionAndFocusScores(void *a1, void *a2, int a3, _DWORD *a4, int *a5)
{
  if (a3 < 1)
  {
    return 4294954516;
  }

  v62[2] = v12;
  v62[3] = v11;
  v62[4] = v10;
  v62[5] = v9;
  v62[6] = v8;
  v62[7] = v7;
  v62[18] = v5;
  v62[19] = v6;
  if ([a1 count] < a3 || !objc_msgSend(a1, "count") || objc_msgSend(a1, "count") > 4 || objc_msgSend(a2, "count") != 3)
  {
    return 4294954516;
  }

  v62[0] = 0;
  v62[1] = 0;
  v61[0] = 0;
  v61[1] = 0;
  v60[0] = 0;
  v60[1] = 0;
  v57 = a5;
  v58 = a4;
  v56 = a3;
  if ([a1 count])
  {
    v18 = 0;
    v19 = *off_1E798B4F0;
    v20 = *off_1E798B1A0;
    v21 = *off_1E798B318;
    v22 = *off_1E798B9A0;
    v59 = *off_1E798B310;
    v23 = 0.0;
    v24 = 0.0;
    do
    {
      v25 = [a1 objectAtIndexedSubscript:v18];
      [objc_msgSend(v25 objectForKeyedSubscript:{v19), "floatValue"}];
      v27 = v26;
      *(v62 + v18) = v26;
      [objc_msgSend(v25 objectForKeyedSubscript:{v20), "floatValue"}];
      v29 = v28;
      *(v61 + v18) = v28;
      v30 = [objc_msgSend(v25 objectForKeyedSubscript:{v21), "objectForKeyedSubscript:", v22}];
      if ([v30 count])
      {
        v31 = [objc_msgSend(v25 objectForKeyedSubscript:{v59), "intValue"}] == 2;
        v32 = 0.0;
        if ([v30 count] - 1 > v31)
        {
          v33 = v31;
          do
          {
            [objc_msgSend(v30 objectAtIndexedSubscript:{v33), "floatValue"}];
            v32 = v32 + v34;
            ++v33;
          }

          while (v33 < [v30 count] - 1);
        }

        v35 = [v30 count] + ~v31;
        v36 = v32 / v35;
        if (v36 > 0.0)
        {
          *(v61 + v18) = v36;
          v29 = v32 / v35;
        }
      }

      if (v23 <= v27)
      {
        v23 = v27;
      }

      if (v24 <= v29)
      {
        v24 = v29;
      }

      ++v18;
    }

    while ([a1 count] > v18);
  }

  else
  {
    v24 = 0.0;
    v23 = 0.0;
  }

  if ([a1 count])
  {
    v37 = 0;
    do
    {
      *(v62 + v37) = *(v62 + v37) / v23;
      *(v61 + v37) = *(v61 + v37) / v24;
      ++v37;
    }

    while ([a1 count] > v37);
  }

  if ([a1 count])
  {
    v38 = 0;
    v39 = 0;
    v40 = 3.4028e38;
    do
    {
      [objc_msgSend(a2 objectAtIndexedSubscript:{0), "floatValue"}];
      v42 = v41;
      v43 = *(v61 + v38);
      [objc_msgSend(a2 objectAtIndexedSubscript:{1), "floatValue"}];
      v45 = v42 + (v43 * v44);
      v46 = *(v62 + v38);
      [objc_msgSend(a2 objectAtIndexedSubscript:{2), "floatValue"}];
      v48 = v45 + (v46 * v47);
      *(v60 + v38) = v48;
      if (v48 < v40)
      {
        v40 = v48;
        v39 = v38;
      }

      ++v38;
    }

    while ([a1 count] > v38);
  }

  else
  {
    v39 = 0;
  }

  v49 = [MEMORY[0x1E696AD50] indexSetWithIndex:v39];
  v50 = [v49 count];
  v51 = v56 - v50;
  if (v56 > v50)
  {
    do
    {
      v52 = [v49 firstIndex] - 1;
      v53 = [v49 lastIndex] + 1;
      if ((v52 & 0x8000000000000000) == 0)
      {
        if (v53 <= [a1 count] - 1)
        {
          if (*(v60 + v52) <= *(v60 + v53))
          {
            v53 = v52;
          }
        }

        else
        {
          v53 = v52;
        }
      }

      [v49 addIndex:v53];
      --v51;
    }

    while (v51);
  }

  if (v57)
  {
    *v57 = v39;
  }

  if (!v58)
  {
    return 0;
  }

  v54 = [v49 firstIndex];
  result = 0;
  *v58 = v54;
  return result;
}

void psn_blurPixelBufferBorder(void *a1, CVPixelBufferRef pixelBuffer, double a3, double a4, double a5, CGFloat a6, float a7)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  OUTLINED_FUNCTION_28_3();
  v20.size.height = a6;
  if (!CGRectContainsRect(v20, v21))
  {
    if (a1)
    {
      if (pixelBuffer)
      {
        v16 = Height - (a4 + a6);
        v17 = [objc_msgSend(objc_msgSend(MEMORY[0x1E695F658] imageWithCVPixelBuffer:{pixelBuffer), "imageByClampingToRect:", a3, v16, a5, a6), "imageByApplyingGaussianBlurWithSigma:", a7}];
        v18 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:pixelBuffer];
        if (!Width || v16 == 0.0 || (v19 = 0, OUTLINED_FUNCTION_58_4(), OUTLINED_FUNCTION_55_2(), [objc_msgSend(a1 startTaskToRender:v17 fromRect:v18 toDestination:0) atPoint:"waitUntilCompletedAndReturnError:" error:&v19], !v19))
        {
          if (!Width || Height - (a6 + v16) == 0.0 || ([objc_msgSend(OUTLINED_FUNCTION_91_0() "startTaskToRender:"waitUntilCompletedAndReturnError:" fromRect:&v19 toDestination:? atPoint:? error:?")], !v19))
          {
            if (a3 == 0.0 || a6 == 0.0 || ([objc_msgSend(OUTLINED_FUNCTION_91_0() "startTaskToRender:"waitUntilCompletedAndReturnError:" fromRect:&v19 toDestination:? atPoint:? error:?")], !v19))
            {
              if (Width - (a3 + a5) != 0.0 && a6 != 0.0)
              {
                v19 = 0;
                [objc_msgSend(a1 startTaskToRender:v17 fromRect:v18 toDestination:0) atPoint:"waitUntilCompletedAndReturnError:" error:&v19];
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_28_3();
}

uint64_t captureSourceRemote_SetPixelBufferProperty(uint64_t a1, uint64_t a2, __CVBuffer *a3)
{
  xdict = 0;
  v4 = captureSourceRemote_createBasicMessage(a1, 1937010786, &xdict);
  if (v4 || (v4 = FigXPCMessageSetCFString(), v4))
  {
    v7 = v4;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_23();
LABEL_11:
    FigDebugAssert3();
    goto LABEL_7;
  }

  if (a3)
  {
    IOSurface = CVPixelBufferGetIOSurface(a3);
    if (!IOSurface)
    {
      v7 = 4294954516;
      goto LABEL_7;
    }

    XPCObject = IOSurfaceCreateXPCObject(IOSurface);
    xpc_dictionary_set_value(xdict, kFigCaptureSourceRemoteProprietaryDefaultMessagePayload_Value, XPCObject);
    xpc_release(XPCObject);
  }

  v7 = FigXPCRemoteClientSendSyncMessage();
  if (v7)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_23();
    goto LABEL_11;
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

uint64_t FigCaptureSourceRemoteCopyCaptureSources_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyCaptureSources_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyCaptureSources_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyCaptureSources_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyCaptureSources_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_createInternal_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_createInternal_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_createInternal_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_createInternal_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyProxySource_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyProxySource_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyProxySource_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyProxySource_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyProxySource_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyProxySource_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyExternalSyncDeviceDiscoverySessionSource_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyExternalSyncDeviceDiscoverySessionSource_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyExternalSyncDeviceDiscoverySessionSource_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyExternalSyncDeviceDiscoverySessionSource_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteMaxStillImageJPEGDataSize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteMaxStillImageJPEGDataSize_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteMaxStillImageJPEGDataSize_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_ShowSystemUserInterface_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_ShowSystemUserInterface_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_ShowSystemUserInterface_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemotePublishFrameSenderServerEndpoint_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemotePublishFrameSenderServerEndpoint_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemotePublishFrameSenderServerEndpoint_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteSuppressFrameSenderServerEndpoint_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteSuppressFrameSenderServerEndpoint_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteSuppressFrameSenderServerEndpoint_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyFrameSenderEndpoints_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyFrameSenderEndpoints_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyFrameSenderEndpoints_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyFrameSenderEndpoints_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyFrameSenderEndpoints_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigCaptureSourceRemoteCopyFrameSenderEndpoints_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t csr_deadConnectionCallback_cold_1_0()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_Invalidate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_Invalidate_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_Finalize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_Finalize_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_4_7(v0);
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyProperty_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_4_7(v0);
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyProperty_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_4_7(v0);
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyProperty_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyProperty_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

CFTypeRef captureSourceRemote_CopyProperty_cold_8(uint64_t a1, const void **a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (*(a1 + 48) <= 0)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  *a2 = *v2;
  return CFRetain(v3);
}

uint64_t __captureSourceRemote_copyClock_block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t __captureSourceRemote_copyClock_block_invoke_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_createBasicMessage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_createBasicMessage_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_getObjectID_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSourceRemote_getObjectID_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSourceRemote_CheckTCCAccess_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CheckTCCAccess_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyProprietaryDefault_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyProprietaryDefault_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyProprietaryDefault_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyProprietaryDefault_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyProprietaryDefault_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyProprietaryDefault_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_SetProprietaryDefault_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_SetProprietaryDefault_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_SetProprietaryDefault_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_SetProprietaryDefault_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_RegisterNotificationForProprietaryDefaultChanges_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_RegisterNotificationForProprietaryDefaultChanges_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_RegisterNotificationForProprietaryDefaultChanges_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UnregisterNotificationForProprietaryDefaultChanges_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UnregisterNotificationForProprietaryDefaultChanges_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UnregisterNotificationForProprietaryDefaultChanges_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UpdateCameraHistory_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UpdateCameraHistory_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UpdateCameraHistory_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UpdateCameraHistory_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UpdateCameraHistory_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UpdateCameraHistory_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UpdateCameraOverrideHistory_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UpdateCameraOverrideHistory_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UpdateCameraOverrideHistory_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UpdateCameraOverrideHistory_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_UpdateCameraOverrideHistory_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CameraHistoryDownplayOverrideList_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CameraHistoryDownplayOverrideList_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CameraHistoryDownplayOverrideList_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_PerformReactionEffect_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_PerformReactionEffect_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_PerformReactionEffect_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_PerformReactionEffect_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_ProprietaryDefaultsDomainForAuditToken_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_ProprietaryDefaultsDomainForAuditToken_cold_2(uint64_t a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  result = FigDebugAssert3();
  *a3 = *a2;
  return result;
}

uint64_t captureSourceRemote_ProprietaryDefaultsDomainForAuditToken_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_ProprietaryDefaultsDomainForAuditToken_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyWildcardProprietaryDefault_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyWildcardProprietaryDefault_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyWildcardProprietaryDefault_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyWildcardProprietaryDefault_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyWildcardProprietaryDefault_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_CopyWildcardProprietaryDefault_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_SetWildcardProprietaryDefault_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_SetWildcardProprietaryDefault_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_SetWildcardProprietaryDefault_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_SetWildcardProprietaryDefault_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureSourceRemote_SetWildcardProprietaryDefault_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t mrcn_createSampleBufferProcessor_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t FigCapturePleaseFileRadar_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_38();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("fcru_promptOpenTapToRadarIfNecessary");
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_6_2();
  }

  return OUTLINED_FUNCTION_0_34();
}

uint64_t FigCapturePleaseFileRadar_cold_6()
{
  v0 = OUTLINED_FUNCTION_1_38();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("fcru_promptOpenTapToRadarIfNecessary");
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_6_2();
  }

  return OUTLINED_FUNCTION_0_34();
}

uint64_t FigCapturePleaseFileRadar_cold_7()
{
  v0 = OUTLINED_FUNCTION_1_38();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("fcru_promptOpenTapToRadarIfNecessary");
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_6_2();
  }

  return OUTLINED_FUNCTION_0_34();
}

void FigCapturePleaseFileRadar_cold_8(uint64_t a1, void *a2)
{
  v4 = *(*a1 + 40);
  if (v4)
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(*a1 + 40));
    *(*a1 + 40) = 0;
  }

  _Block_object_dispose(a2, 8);
}

uint64_t FigCapturePleaseFileRadar_cold_9()
{
  v0 = OUTLINED_FUNCTION_1_38();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("fcru_promptOpenTapToRadar");
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_6_2();
  }

  return OUTLINED_FUNCTION_0_34();
}

void FigCaptureLogCameraStillImageCapturePowerEvent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_14_10();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_14_10();
  fig_note_initialize_category_with_default_work_cf();
  if (sCameraPowerLogEventQueue)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%dx%d", a1, a2, a3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __FigCaptureLogCameraStillImageCapturePowerEvent_block_invoke;
    block[3] = &unk_1E7990078;
    block[4] = v8;
    v10 = a4;
    dispatch_async(sCameraPowerLogEventQueue, block);
  }
}

uint64_t FigCaptureLogCameraStreamingPowerEvent_cold_1()
{
  v0 = OUTLINED_FUNCTION_9_13();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("FigCaptureLogCameraStreamingPowerEvent");
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1();
}

uint64_t FigCaptureLogCameraStreamingPowerEvent_cold_2()
{
  v0 = OUTLINED_FUNCTION_9_13();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("FigCaptureLogCameraStreamingPowerEvent");
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1();
}

void *qtmfsn_movieRecordingIsProRes(void *a1)
{
  result = [objc_msgSend(a1 "videoSettings")];
  if (result)
  {
    v2 = BWOSTypeForString(result);
    return ((v2 - 1634755432) <= 0xB && ((1 << (v2 - 104)) & 0x8C1) != 0 || v2 == 1634759278 || v2 == 1634759272);
  }

  return result;
}

void qtmfsn_setTrackProperties(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v25 = 0;
  v6 = qtmfsn_movieRecordingIsProRes(a4);
  v7 = MEMORY[0x1E695E480];
  v8 = MEMORY[0x1E6960CC0];
  if (v6)
  {
    if (a3 == 1986618469)
    {
      FigBaseObject = FigFormatWriterGetFigBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(FigBaseObject, *MEMORY[0x1E6971BE8], *v7, &v25);
      }
    }

    else
    {
      v12 = *MEMORY[0x1E695E480];
      time = **&MEMORY[0x1E6960CC0];
      v25 = CMTimeCopyAsDictionary(&time, v12);
    }

    v11 = 0x4000;
  }

  else
  {
    v11 = 0;
  }

  [MEMORY[0x1E696AD98] numberWithInt:v11];
  if (*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    v13 = OUTLINED_FUNCTION_74_0();
    v14(v13);
  }

  [MEMORY[0x1E696AD98] numberWithInt:0x100000];
  if (*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    v15 = OUTLINED_FUNCTION_74_0();
    v16(v15);
  }

  if (v25)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v17 = OUTLINED_FUNCTION_74_0();
      v18(v17);
    }

    CFRelease(v25);
  }

  memset(&time, 0, sizeof(time));
  if (a4)
  {
    [a4 movieFragmentInterval];
    if (time.flags)
    {
      time1 = time;
      time2 = *v8;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        dictionaryRepresentation = 0;
        if (*(*(CMBaseObjectGetVTable() + 16) + 16))
        {
          v19 = OUTLINED_FUNCTION_100_1();
          v20(v19);
        }
      }
    }
  }
}

void *qtmfsn_movieRecordingIsProResRaw(void *a1)
{
  result = [objc_msgSend(a1 "videoSettings")];
  if (result)
  {
    v2 = BWOSTypeForString(result);
    return (v2 == 1634759278 || v2 == 1634759272);
  }

  return result;
}

uint64_t qtmfsn_formatWriterDidWriteFragment(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 763) = 1;
    return [*(a2 + 712) parseAdditionalFragments];
  }

  return result;
}

void DiskArbitrationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *DiskArbitrationLibrary(void)") description:{@"BWQuickTimeMovieFileSinkNode.m", 104, @"%s", *a1}];
  __break(1u);
}

void VisionLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *VisionLibrary(void)") description:{@"BWVisionSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

void __getVNImageRequestHandlerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNImageRequestHandlerClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 14, @"Unable to find class %s", "VNImageRequestHandler"}];
  __break(1u);
}

void __getVNSequenceRequestHandlerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNSequenceRequestHandlerClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 15, @"Unable to find class %s", "VNSequenceRequestHandler"}];
  __break(1u);
}

void __getVNProcessingDeviceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNProcessingDeviceClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 16, @"Unable to find class %s", "VNProcessingDevice"}];
  __break(1u);
}

void __getVNFaceObservationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNFaceObservationClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 17, @"Unable to find class %s", "VNFaceObservation"}];
  __break(1u);
}

void __getVNDetectedObjectObservationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNDetectedObjectObservationClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 19, @"Unable to find class %s", "VNDetectedObjectObservation"}];
  __break(1u);
}

void __getVNDetectFaceLandmarksRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNDetectFaceLandmarksRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 24, @"Unable to find class %s", "VNDetectFaceLandmarksRequest"}];
  __break(1u);
}

void __getVNDetectFaceRectanglesRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNDetectFaceRectanglesRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 25, @"Unable to find class %s", "VNDetectFaceRectanglesRequest"}];
  __break(1u);
}

void __getVNTranslationalImageRegistrationRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNTranslationalImageRegistrationRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 28, @"Unable to find class %s", "VNTranslationalImageRegistrationRequest"}];
  __break(1u);
}

void __getVNClassifyImageAestheticsRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNClassifyImageAestheticsRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 30, @"Unable to find class %s", "VNClassifyImageAestheticsRequest"}];
  __break(1u);
}

void __getVNGenerateAttentionBasedSaliencyImageRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNGenerateAttentionBasedSaliencyImageRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 31, @"Unable to find class %s", "VNGenerateAttentionBasedSaliencyImageRequest"}];
  __break(1u);
}

void __getVNGenerateFaceSegmentsRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNGenerateFaceSegmentsRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 32, @"Unable to find class %s", "VNGenerateFaceSegmentsRequest"}];
  __break(1u);
}

void __getVNClassifyJunkImageRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNClassifyJunkImageRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 33, @"Unable to find class %s", "VNClassifyJunkImageRequest"}];
  __break(1u);
}

void __getVNCreateSceneprintRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNCreateSceneprintRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 34, @"Unable to find class %s", "VNCreateSceneprintRequest"}];
  __break(1u);
}

void __getVN5kJNH3eYuyaLxNpZr5Z7ziClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVN5kJNH3eYuyaLxNpZr5Z7ziClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 35, @"Unable to find class %s", "VN5kJNH3eYuyaLxNpZr5Z7zi"}];
  __break(1u);
}

void __getVNClassifyFaceAttributesRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNClassifyFaceAttributesRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 36, @"Unable to find class %s", "VNClassifyFaceAttributesRequest"}];
  __break(1u);
}

void __getVNRecognizeFoodAndDrinkRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNRecognizeFoodAndDrinkRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 37, @"Unable to find class %s", "VNRecognizeFoodAndDrinkRequest"}];
  __break(1u);
}

void __getVNTrackObjectRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNTrackObjectRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 38, @"Unable to find class %s", "VNTrackObjectRequest"}];
  __break(1u);
}

void __getVNSessionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNSessionClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 39, @"Unable to find class %s", "VNSession"}];
  __break(1u);
}

void __getVNRecognizedObjectObservationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNRecognizedObjectObservationClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 41, @"Unable to find class %s", "VNRecognizedObjectObservation"}];
  __break(1u);
}

void __getVNProcessingDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNProcessingDescriptorClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 42, @"Unable to find class %s", "VNProcessingDescriptor"}];
  __break(1u);
}

void __getVNResourceVersionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNResourceVersionClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 43, @"Unable to find class %s", "VNResourceVersion"}];
  __break(1u);
}

void __getVNDetectHumanRectanglesRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNDetectHumanRectanglesRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 44, @"Unable to find class %s", "VNDetectHumanRectanglesRequest"}];
  __break(1u);
}

void __getVNDetectFaceCaptureQualityRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNDetectFaceCaptureQualityRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 45, @"Unable to find class %s", "VNDetectFaceCaptureQualityRequest"}];
  __break(1u);
}

void getVNInferenceNetworkIdentifierFaceprint_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (VNInferenceNetworkIdentifierFaceprint) (*)(void))0)()) getVNInferenceNetworkIdentifierFaceprint(void)") description:{@"BWVisionSoftLinking.m", 52, @"%s", dlerror()}];
  __break(1u);
}

void getVNFaceAttributeEyesClosed_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (VNFaceAttributeEyesClosed) (*)(void))0)()) getVNFaceAttributeEyesClosed(void)") description:{@"BWVisionSoftLinking.m", 53, @"%s", dlerror()}];
  __break(1u);
}

void BWVNSetRequestConcurrentTasksProcessingTimeout_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void BWVNSetRequestConcurrentTasksProcessingTimeout(int64_t)") description:{@"BWVisionSoftLinking.m", 54, @"%s", dlerror()}];
  __break(1u);
}

void BWVNSetRequiresHighQoS_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void BWVNSetRequiresHighQoS(BOOL)") description:{@"BWVisionSoftLinking.m", 55, @"%s", dlerror()}];
  __break(1u);
}

void BWVNSetTargetDispatchQueue_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void BWVNSetTargetDispatchQueue(dispatch_queue_t)") description:{@"BWVisionSoftLinking.m", 56, @"%s", dlerror()}];
  __break(1u);
}

void getVNErrorDomain_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (VNErrorDomain) (*)(void))0)()) getVNErrorDomain(void)") description:{@"BWVisionSoftLinking.m", 58, @"%s", dlerror()}];
  __break(1u);
}

uint64_t BWStereoUtilitiesComputeRectificationQuaternion_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t su_getIntrinsicsMatrix_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t su_getIntrinsicsMatrix_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_17()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  fig_log_get_emitter();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  fig_log_get_emitter();
  FigDebugAssert3();
  return 0;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_19()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_20()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_21(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeStereoBaseline_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWStereoUtilitiesComputeStereoBaseline_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWStereoUtilitiesComputeStereoBaseline_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t su_getViewMatrixInCameraCoordinates_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t su_getViewMatrixInCameraCoordinates_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t su_getViewMatrixInCameraCoordinates_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWPortraitUtilitiesAttachSyntheticFocusRectangleToSampleBuffer(CMAttachmentBearerRef target)
{
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v109.size = *MEMORY[0x1E695EFD0];
  v110 = v4;
  v111 = *(MEMORY[0x1E695EFD0] + 32);
  v5 = MEMORY[0x1E695F050];
  if (target)
  {
    v6 = CMGetAttachment(target, *off_1E798A3C8, 0);
    if (v6)
    {
      v7 = v6;
      v106 = *(v5 + 16);
      v109.origin = *v5;
      v131.origin = *v5;
      v131.size = v106;
      if (FigCFDictionaryGetCGRectIfPresent())
      {
        FigCaptureMetadataUtilitiesGetFinalCropRect();
        OUTLINED_FUNCTION_8_3();
        v8 = FigCaptureComputeAffineTransformFromSourceAndDestRects(&v109.size, v131.origin.x, v131.origin.y, v131.size.width, v131.size.height, v9, v10, v11, v12);
      }

      v13 = [v7 objectForKeyedSubscript:{*off_1E798B308, v8}];
      v14 = off_1E798B218;
      v15 = off_1E798B5C0;
      if (!v13)
      {
        goto LABEL_41;
      }

      v16 = v13;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v17 = [v13 countByEnumeratingWithState:&v132 objects:&v131 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v133;
        while (1)
        {
          if (*v133 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if (!--v18)
          {
            v18 = [v16 countByEnumeratingWithState:&v132 objects:&v131 count:16];
            if (!v18)
            {
              break;
            }
          }
        }
      }

      if ([objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B2F8), "intValue"}] < 1)
      {
        goto LABEL_41;
      }

      if ([v16 count])
      {
        v20 = [v16 objectAtIndexedSubscript:{objc_msgSend(v16, "count") > 1}];
        recta.origin = v109.origin;
        recta.size = v106;
        if (CGRectMakeWithDictionaryRepresentation(v20, &recta) && !CGRectIsEmpty(recta))
        {
          v21 = [objc_msgSend(objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB8), "objectForKeyedSubscript:", *off_1E798ACE8}];
          if (!v21)
          {
            v21 = [v7 objectForKeyedSubscript:*off_1E798B218];
          }

          if ([v21 count])
          {
            width = recta.size.width;
            height = recta.size.height;
            FigCaptureNormalizedFocusWindowFromMetadata(v7);
            v25 = v24;
            OUTLINED_FUNCTION_5_33();
            if (CGRectIsNull(v136))
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_16();
              FigDebugAssert3();
            }

            else
            {
              v26 = fabs(width * height);
              rect1 = v25;
              OUTLINED_FUNCTION_4_32();
              v138 = CGRectIntersection(v137, v152);
              v27 = v138.size.width;
              v28 = v138.size.height;
              IsNull = CGRectIsNull(v138);
              v37 = 0.0;
              if (!IsNull)
              {
                v37 = fabs(v27 * v28) / fmin(fabs(v1 * v2), v26);
              }

              v128 = 0u;
              v129 = 0u;
              v126 = 0u;
              v127 = 0u;
              v38 = OUTLINED_FUNCTION_9_16(IsNull, v30, v31, v32, v33, v34, v35, v36, v94, v96, rect1, v102, v106, *(&v106 + 1), *&v109.origin.x, *&v109.origin.y, *&v109.size.width, *&v109.size.height, v110, *(&v110 + 1), v111, *(&v111 + 1), *&v112.origin.x, *&v112.origin.y, *&v112.size.width, *&v112.size.height, SLOBYTE(v113.origin.x), *&v113.origin.y, *&v113.size.width, *&v113.size.height, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, 0);
              if (v38)
              {
                v39 = v38;
                v40 = *v127;
                v41 = off_1E798B5C0;
                v42 = *off_1E798B5C0;
LABEL_24:
                v43 = 0;
                while (1)
                {
                  if (*v127 != v40)
                  {
                    objc_enumerationMutation(v21);
                  }

                  if (v37 >= 0.5)
                  {
                    break;
                  }

                  v44 = [*(*(&v126 + 1) + 8 * v43) objectForKeyedSubscript:v42];
                  if (!v44 || (v112.origin = v109.origin, v112.size = v106, !CGRectMakeWithDictionaryRepresentation(v44, &v112)))
                  {
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_1_16();
                    FigDebugAssert3();
                    v15 = off_1E798B5C0;
                    v14 = off_1E798B218;
                    goto LABEL_40;
                  }

                  v139 = CGRectIntersection(v112, recta);
                  v45 = v139.size.width;
                  v46 = v139.size.height;
                  v47 = CGRectIsNull(v139);
                  v55 = 0.0;
                  if (!v47)
                  {
                    v55 = fabs(v45 * v46) / fmin(fabs(v112.size.width * v112.size.height), v26);
                  }

                  v37 = fmax(v37, v55);
                  if (v39 == ++v43)
                  {
                    v39 = OUTLINED_FUNCTION_9_16(v47, v48, v49, v50, v51, v52, v53, v54, v94, v96, rect1a, v103, v106, *(&v106 + 1), *&v109.origin.x, *&v109.origin.y, *&v109.size.width, *&v109.size.height, v110, *(&v110 + 1), v111, *(&v111 + 1), *&v112.origin.x, *&v112.origin.y, *&v112.size.width, *&v112.size.height, SLOBYTE(v113.origin.x), *&v113.origin.y, *&v113.size.width, *&v113.size.height, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
                    if (v39)
                    {
                      goto LABEL_24;
                    }

                    break;
                  }
                }
              }

              else
              {
                v41 = off_1E798B5C0;
              }

              v15 = v41;
              v14 = off_1E798B218;
              if (v37 < 0.5)
              {
                OUTLINED_FUNCTION_4_32();
                v56 = CGRectCreateDictionaryRepresentation(v140);
                if (v56)
                {
LABEL_52:
                  v20 = v56;
                  goto LABEL_53;
                }

                goto LABEL_70;
              }
            }
          }

LABEL_40:
          if (v20)
          {
LABEL_53:
            v67 = 0;
            goto LABEL_54;
          }

          goto LABEL_41;
        }
      }

LABEL_70:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_16();
      FigDebugAssert3();
LABEL_41:
      Value = CFDictionaryGetValue(v7, *v14);
      if (Value)
      {
        v58 = Value;
        Count = CFArrayGetCount(Value);
        FigCaptureUnityRect();
        if (Count >= 1)
        {
          OUTLINED_FUNCTION_5_33();
          v60 = 0;
          v20 = 0;
          v61 = *v15;
          v62 = Count & 0x7FFFFFFF;
          v63 = 0.0;
          while (1)
          {
            v131.origin = v109.origin;
            v131.size = v106;
            ValueAtIndex = CFArrayGetValueAtIndex(v58, v60);
            v65 = CFDictionaryGetValue(ValueAtIndex, v61);
            if (!CGRectMakeWithDictionaryRepresentation(v65, &v131))
            {
              break;
            }

            OUTLINED_FUNCTION_3_32();
            if (CGRectIntersectsRect(v141, v153))
            {
              v66 = v131.size.width * v131.size.height;
              if (v63 < v66)
              {
                v63 = v131.size.width * v131.size.height;
                v20 = v65;
              }
            }

            if (v62 == ++v60)
            {
              if (v63 <= 0.0)
              {
                break;
              }

              if (v20)
              {
                goto LABEL_53;
              }

              goto LABEL_51;
            }
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_16();
        FigDebugAssert3();
      }

LABEL_51:
      v142.origin.x = 0.25;
      v142.origin.y = 0.25;
      v142.size.width = 0.5;
      v142.size.height = 0.5;
      v56 = CGRectCreateDictionaryRepresentation(v142);
      goto LABEL_52;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_16();
  FigDebugAssert3();
  v20 = 0;
  v67 = 4294954516;
LABEL_54:
  v68 = *(v5 + 16);
  v113.origin = *v5;
  v113.size = v68;
  if (!CGRectMakeWithDictionaryRepresentation(v20, &v113))
  {
    CMSetAttachment(target, *off_1E798D340, v20, 1u);
LABEL_66:
    v69 = [(__CFDictionary *)v20 copy];
    goto LABEL_67;
  }

  v109.origin.x = v113.origin.x;
  v104 = *&v113.size.width;
  *&v106 = v113.origin.y;
  rect1c = *&v113.size.height;
  v69 = CGRectCreateDictionaryRepresentation(v113);
  OUTLINED_FUNCTION_6_26(v69, v70, v71, v72, v73, v74, v75, v76, v94, v96, rect1c, v104, v106, *(&v106 + 1), *&v109.origin.x, *&v109.origin.y, *&v109.size.width, *&v109.size.height, v110, *(&v110 + 1), v111);
  IsIdentity = CGAffineTransformIsIdentity(v77);
  if (!IsIdentity)
  {
    OUTLINED_FUNCTION_6_26(IsIdentity, v79, v80, v81, v82, v83, v84, v85, v95, v97, *&rect1b, *&v105, *&v107, v108, *&v109.origin.x, *&v109.origin.y, *&v109.size.width, *&v109.size.height, v110, *(&v110 + 1), v111);
    v143.origin.x = OUTLINED_FUNCTION_2_41();
    CGRectApplyAffineTransform(v143, v86);
  }

  OUTLINED_FUNCTION_16_5();
  v144.origin.x = OUTLINED_FUNCTION_2_41();
  CGRectIntersection(v144, v154);
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_2_41();
  OUTLINED_FUNCTION_3_32();
  CGRectEqualToRect(v145, v155);
  OUTLINED_FUNCTION_16_5();
  v146.origin.x = v109.origin.x;
  v146.origin.y = v107;
  v146.size.width = v105;
  v146.size.height = rect1b;
  CGRectIntersection(v146, v156);
  OUTLINED_FUNCTION_8_3();
  v147.origin.x = v109.origin.x;
  x = v157.origin.x;
  v147.origin.y = v107;
  y = v157.origin.y;
  v147.size.width = v105;
  v89 = v157.size.width;
  v147.size.height = rect1b;
  v90 = v157.size.height;
  CGRectEqualToRect(v147, v157);
  OUTLINED_FUNCTION_3_32();
  if (!CGRectEqualToRect(v148, v158))
  {
    OUTLINED_FUNCTION_4_32();
    v91 = CGRectCreateDictionaryRepresentation(v149);
    if (v91)
    {
      v20 = v91;
    }
  }

  v150.origin.x = v109.origin.x;
  v150.size.width = v105;
  v150.origin.y = v107;
  v150.size.height = rect1b;
  v159.origin.x = x;
  v159.origin.y = y;
  v159.size.width = v89;
  v159.size.height = v90;
  if (!CGRectEqualToRect(v150, v159))
  {
    v151.origin.x = x;
    v151.origin.y = y;
    v151.size.width = v89;
    v151.size.height = v90;
    v92 = CGRectCreateDictionaryRepresentation(v151);
    if (v92)
    {
      v69 = v92;
    }
  }

  CMSetAttachment(target, *off_1E798D340, v20, 1u);
  if (!v69)
  {
    goto LABEL_66;
  }

LABEL_67:
  CMSetAttachment(target, *off_1E798D360, v69, 1u);
  return v67;
}

uint64_t BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

void __adsie_createStateMachine_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  [(BWJasperColorStillsExecutorController *)a2 _serviceNextRequest];

  objc_autoreleasePoolPop(v3);
}

void __adsie_createStateMachine_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [*(a2 + 112) setErr:-[BWJasperColorStillsExecutorController _setupJasperColorStillsExecutor](a2)];
  }

  objc_autoreleasePoolPop(v3);
}

void __adsie_createStateMachine_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  [(BWJasperColorStillsExecutorController *)a2 _execute];

  objc_autoreleasePoolPop(v3);
}

uint64_t FigCapturePreloadShadersInternal_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigCapturePreloadShadersInternal_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t __FigCapturePreloadShadersInternal_block_invoke_2_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

void __FigCapturePreloadShadersInternal_block_invoke_2_cold_2(GLuint a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  glDeleteShader(a1);
}

uint64_t __FigCapturePreloadShadersInternal_block_invoke_2_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t __FigCapturePreloadShadersInternal_block_invoke_2_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_2_46(v0);
  return FigDebugAssert3();
}

uint64_t __FigCapturePreloadShadersInternal_block_invoke_2_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_2_46(v0);
  return FigDebugAssert3();
}

uint64_t __FigCapturePreloadShadersInternal_block_invoke_2_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_2_46(v0);
  return FigDebugAssert3();
}

uint64_t __FigCapturePreloadShadersInternal_block_invoke_2_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t __FigCapturePreloadShadersInternal_block_invoke_2_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t __FigCapturePreloadShadersInternal_block_invoke_2_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t __FigCapturePreloadShadersInternal_block_invoke_2_cold_11(id *a1)
{
  fig_log_get_emitter();
  LODWORD(v4) = 0;
  FigDebugAssert3();
  fig_log_get_emitter();
  [*a1 code];
  return FigSignalErrorAtGM();
}

uint64_t __FigWaitForDeferredShaderCacheCopyCompletion_block_invoke_cold_2(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  result = FigDebugAssert3();
  *(*(*(a1 + 32) + 8) + 24) = -15420;
  return result;
}

uint64_t gl_UtilsCreateShader_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

void VisionCoreLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *VisionCoreLibrary(void)") description:{@"BWVisionCoreSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

uint64_t BWMemcpyPixelBuffer(__CVBuffer *a1, __CVBuffer *a2, double a3, double a4, double a5, double a6)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (!PixelFormatType)
  {
    goto LABEL_46;
  }

  v15 = PixelFormatType;
  v16 = CVPixelBufferGetPixelFormatType(a2);
  if (!v16)
  {
    goto LABEL_46;
  }

  if (v15 != v16)
  {
    return 0;
  }

  if (!FigCapturePixelFormatIsDepthData(v15) || !FigCapturePixelFormatIsDepthData(v15))
  {
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    if (Width >= 1 && Height > 0)
    {
      v21 = CVPixelBufferGetWidth(a2);
      v22 = CVPixelBufferGetHeight(a2);
      v23 = v22;
      if (v21 >= 1 && v22 > 0)
      {
        v25 = v21 | (v22 << 32);
        v70.origin.x = OUTLINED_FUNCTION_13_16();
        if (CGRectIsNull(v70) || (v26 = OUTLINED_FUNCTION_13_16(), FigCaptureRectIsFullBufferRectForPixelBuffer(a1, v26, v27, v28, v29)))
        {
          FigCaptureRectFromDimensions();
          a5 = v30;
          a6 = v31;
          v32 = 0;
        }

        else
        {
          v32 = 1;
        }

        LODWORD(v6) = llround(a5);
        LODWORD(v7) = llround(a6);
        if ((v6 | (v7 << 32)) != v25)
        {
          return 0;
        }

        CVPixelBufferGetIOSurface(a1);
        CVPixelBufferGetIOSurface(a2);
        OUTLINED_FUNCTION_12_22();
        IOSurfaceLock(v33, v34, v35);
        OUTLINED_FUNCTION_12_22();
        IOSurfaceUnlock(v36, v37, v38);
        OUTLINED_FUNCTION_12_22();
        IOSurfaceLock(v39, v40, v41);
        OUTLINED_FUNCTION_12_22();
        IOSurfaceUnlock(v42, v43, v44);
        v45 = OUTLINED_FUNCTION_45();
        if (!CVPixelBufferLockBaseAddress(v45, v46))
        {
          if (!CVPixelBufferLockBaseAddress(a2, 0))
          {
            BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
            if (!BytesPerRow || (v48 = BytesPerRow, (v49 = CVPixelBufferGetBytesPerRow(a2)) == 0) || (v50 = v49, (v51 = v49 * (v23 & 0x7FFFFFFF)) == 0))
            {
              OUTLINED_FUNCTION_0();
              FigDebugAssert3();
              v17 = 0;
              goto LABEL_44;
            }

            pixelBuffer = a2;
            BaseAddress = CVPixelBufferGetBaseAddress(a1);
            if (!BaseAddress)
            {
              goto LABEL_53;
            }

            v53 = BaseAddress;
            v54 = v32;
            v55 = CVPixelBufferGetBaseAddress(pixelBuffer);
            if (v55)
            {
              v56 = v55;
              if (v54)
              {
                v57 = FigCapturePixelFormatBytesPerPixel(v15);
                if (v57 != 1.0 && v57 != 2.0)
                {
                  goto LABEL_52;
                }

                v59 = v57;
                v60 = v59 * v6;
                v61 = v60 * v7;
                if (v61)
                {
                  if (v51 >= v61)
                  {
                    v62 = &v53[v48 * vcvtad_u64_f64(a4) + v59 * vcvtad_u64_f64(a3)];
                    do
                    {
                      memcpy(v56, v62, v60);
                      v62 += v48;
                      v56 += v50;
                      --v23;
                    }

                    while (v23);
                    goto LABEL_42;
                  }

                  goto LABEL_54;
                }

LABEL_53:
                OUTLINED_FUNCTION_0();
                FigDebugAssert3();
                goto LABEL_54;
              }

              v63 = v48 * v7;
              if (v63)
              {
                if (v63 == v51)
                {
                  memcpy(v55, v53, v51);
LABEL_42:
                  v17 = 1;
LABEL_43:
                  a2 = pixelBuffer;
LABEL_44:
                  v64 = OUTLINED_FUNCTION_45();
                  CVPixelBufferUnlockBaseAddress(v64, v65);
                  CVPixelBufferUnlockBaseAddress(a2, 0);
                  return v17;
                }

LABEL_54:
                v17 = 0;
                goto LABEL_43;
              }
            }

LABEL_52:
            OUTLINED_FUNCTION_0();
            FigDebugAssert3();
            v17 = 0;
            a2 = pixelBuffer;
            goto LABEL_44;
          }

          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
          v67 = OUTLINED_FUNCTION_45();
          CVPixelBufferUnlockBaseAddress(v67, v68);
          return 0;
        }
      }
    }

LABEL_46:
    OUTLINED_FUNCTION_0();
LABEL_56:
    FigDebugAssert3();
    return 0;
  }

  if (FigDepthScaleBuffer(a1, a2))
  {
    OUTLINED_FUNCTION_1_5();
    goto LABEL_56;
  }

  return 1;
}

uint64_t BWProcessWiderAndNarrowerFOVBuffersForFacePropagation(const void *a1, const void *a2, uint64_t a3)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_39();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_3_39();
  fig_note_initialize_category_with_default_work_cf();
  v5 = *off_1E798A3C8;
  v6 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v7 = *off_1E798B220;
  v8 = [v6 objectForKeyedSubscript:*off_1E798B220];
  v9 = CMGetAttachment(a2, v5, 0);
  v10 = [v9 objectForKeyedSubscript:v7];
  if (v8 | v10)
  {
    v11 = v10;
    v12 = [v8 count];
    v13 = [v11 count];
    if (v12 >= v13)
    {
      result = OUTLINED_FUNCTION_17_11(v13, v14, v15, v16, v17, v18, v19, v20, v62, a3, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v121, v123, v125, v127, v129, v131, v133);
      if (result)
      {
        v39 = result;
        v40 = MEMORY[0];
        v41 = *off_1E798ACE8;
LABEL_14:
        v42 = 0;
        while (1)
        {
          if (MEMORY[0] != v40)
          {
            objc_enumerationMutation(v8);
          }

          v43 = *(8 * v42);
          v44 = [objc_msgSend(v8 objectForKeyedSubscript:{v43), "objectForKeyedSubscript:", v41}];
          [objc_msgSend(v11 objectForKeyedSubscript:{v43), "objectForKeyedSubscript:", v41}];
          v45 = OUTLINED_FUNCTION_6_32();
          result = bwu_propagateDetectedObjects(v45, v46, v47, v44, v48, v43);
          if (!result)
          {
            break;
          }

          if (v39 == ++v42)
          {
            result = OUTLINED_FUNCTION_17_11(result, v49, v50, v51, v52, v53, v54, v55, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v120, v122, v124, v126, v128, v130, v132, v134);
            v39 = result;
            if (result)
            {
              goto LABEL_14;
            }

            return result;
          }
        }
      }
    }

    else
    {
      result = OUTLINED_FUNCTION_10_0(v13, v14, v15, v16, v17, v18, v19, v20, v62, a3, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, 0);
      if (result)
      {
        v22 = result;
        v23 = MEMORY[0];
        v24 = *off_1E798ACE8;
LABEL_5:
        v25 = 0;
        while (1)
        {
          if (MEMORY[0] != v23)
          {
            objc_enumerationMutation(v11);
          }

          v26 = *(8 * v25);
          v27 = [objc_msgSend(v8 objectForKeyedSubscript:{v26), "objectForKeyedSubscript:", v24}];
          [objc_msgSend(v11 objectForKeyedSubscript:{v26), "objectForKeyedSubscript:", v24}];
          v28 = OUTLINED_FUNCTION_6_32();
          result = bwu_propagateDetectedObjects(v28, v29, v30, v27, v31, v26);
          if (!result)
          {
            break;
          }

          if (v22 == ++v25)
          {
            result = OUTLINED_FUNCTION_10_0(result, v32, v33, v34, v35, v36, v37, v38, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117);
            v22 = result;
            if (result)
            {
              goto LABEL_5;
            }

            return result;
          }
        }
      }
    }
  }

  else
  {
    v56 = *off_1E798B218;
    v57 = [v6 objectForKeyedSubscript:*off_1E798B218];
    [v9 objectForKeyedSubscript:v56];
    v58 = OUTLINED_FUNCTION_6_32();

    return bwu_propagateDetectedObjects(v58, v59, v60, v57, v61, v56);
  }

  return result;
}

BOOL bwu_propagateDetectedObjects(const void *a1, const void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = [a3 count];
  if (v12 != 2)
  {
    return v12 == 2;
  }

  [objc_msgSend(a3 objectAtIndexedSubscript:{0), "floatValue"}];
  v14 = v13;
  [objc_msgSend(a3 objectAtIndexedSubscript:{1), "floatValue"}];
  v16 = v15;
  if ([a4 count] && !objc_msgSend(a5, "count"))
  {
    if (v14 > v16)
    {
      v17 = v14 / v16;
    }

    else
    {
      v17 = v16 / v14;
    }

    if (!a2)
    {
      return v12 == 2;
    }
  }

  else
  {
    if (![a5 count] || objc_msgSend(a4, "count"))
    {
      return v12 == 2;
    }

    v17 = v14 > v16 ? v16 / v14 : v14 / v16;
    a4 = a5;
    a2 = a1;
    if (!a1)
    {
      return v12 == 2;
    }
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v26 = OUTLINED_FUNCTION_16(v18, v19, v20, v21, v22, v23, v24, v25, v56, a6, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, 0);
  if (v26)
  {
    v27 = v26;
    v28 = v17;
    v29 = *v77;
    v30 = *off_1E798B5C0;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v77 != v29)
        {
          objc_enumerationMutation(a4);
        }

        v32 = *(*(&v76 + 1) + 8 * i);
        memset(&rect, 0, sizeof(rect));
        v33 = CGRectMakeWithDictionaryRepresentation([v32 objectForKeyedSubscript:v30], &rect);
        if (v33)
        {
          v41 = rect.size.width * v28;
          v42 = rect.size.height * v28;
          v43 = (rect.origin.x + -0.5) * v28 + 0.5;
          v44 = (rect.origin.y + -0.5) * v28 + 0.5;
          v45 = [v32 mutableCopy];
          v80.origin.x = v43;
          v80.origin.y = v44;
          v80.size.width = v41;
          v80.size.height = v42;
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v80);
          [v45 setObject:DictionaryRepresentation forKeyedSubscript:v30];
          if (DictionaryRepresentation)
          {
            CFRelease(DictionaryRepresentation);
          }

          [v18 addObject:v45];
        }
      }

      v27 = OUTLINED_FUNCTION_16(v33, v34, v35, v36, v37, v38, v39, v40, v57, v58, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
    }

    while (v27);
  }

  v47 = *off_1E798A3C8;
  v48 = [CMGetAttachment(a2 *off_1E798A3C8];
  v49 = *off_1E798B218;
  if ([v58 isEqualToString:*off_1E798B218])
  {
    v50 = v48;
    v51 = v18;
    v52 = v49;
  }

  else
  {
    v53 = *off_1E798B220;
    v54 = [v48 objectForKeyedSubscript:*off_1E798B220];
    if (!v54)
    {
      v54 = [MEMORY[0x1E695DF90] dictionary];
      [v48 setObject:v54 forKeyedSubscript:v53];
    }

    if (![v54 objectForKeyedSubscript:v58])
    {
      [v54 setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v58}];
    }

    v50 = [v54 objectForKeyedSubscript:v58];
    v52 = *off_1E798ACE8;
    v51 = v18;
  }

  [v50 setObject:v51 forKeyedSubscript:v52];
  CMSetAttachment(a2, v47, v48, 1u);

  return v12 == 2;
}

uint64_t BWVersionMakeWithObject(uint64_t result, _WORD *a2)
{
  v10 = 0;
  v11 = 0;
  v9 = 0;
  if (result)
  {
    v3 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 floatValue];
      v5 = v4;
      v6 = (((v4 - v4) * 10.0) + 0.5);
      if (vabds_f32(-((10 * v4) - (v4 * 10.0)), v6) < 0.01)
      {
        v7 = 0;
LABEL_5:
        *a2 = v5;
        a2[1] = v6;
        result = 1;
        a2[2] = v7;
        return result;
      }

      OUTLINED_FUNCTION_0();
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      result = [v3 length];
      if (!result)
      {
        return result;
      }

      v8 = [v3 componentsSeparatedByString:@"."];
      v6 = [v8 count];
      if (!v6)
      {
        v7 = 0;
        LOWORD(v5) = 0;
        goto LABEL_5;
      }

      if (v6 == 1 || (v6 == 2 || (bwu_validateLongConversion([v8 objectAtIndexedSubscript:2], &v9)) && (bwu_validateLongConversion(objc_msgSend(v8, "objectAtIndexedSubscript:", 1), &v10)) && bwu_validateLongConversion(objc_msgSend(v8, "objectAtIndexedSubscript:", 0), &v11))
      {
        LOWORD(v6) = v10;
        LOWORD(v5) = v11;
        v7 = v9;
        goto LABEL_5;
      }

      OUTLINED_FUNCTION_0();
    }

    FigDebugAssert3();
    return 0;
  }

  return result;
}

void *BWGetHDRImageStatisticsDictFromSampleBuffer(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 objectForKeyedSubscript:*off_1E798B368];
  if (v2)
  {
    v3 = [OUTLINED_FUNCTION_40() objectForKeyedSubscript:?];
    v4 = MEMORY[0x1E6965EB8];
    v5 = MEMORY[0x1E6965EB0];
    v6 = MEMORY[0x1E6965EA8];
    v7 = MEMORY[0x1E6965EA0];
    if (v3)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      [v8 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_40() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *off_1E798AE10), *v4}];
      [v8 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_40() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *off_1E798AE08), *v5}];
      [v8 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_40() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *off_1E798ADF8), *v6}];
      v9 = MEMORY[0x1E6965F70];
      [v8 setObject:*MEMORY[0x1E6965F70] forKeyedSubscript:*v7];
      v10 = off_1E798ADE8;
      v11 = [objc_msgSend(OUTLINED_FUNCTION_40() "objectForKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798ADE8}")];
      v12 = MEMORY[0x1E6983CA0];
      [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6983CA0]];
      v13 = off_1E798ADF0;
      v14 = [objc_msgSend(OUTLINED_FUNCTION_40() "objectForKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798ADF0}")];
      v15 = MEMORY[0x1E6983CA8];
      [v8 setObject:v14 forKeyedSubscript:*MEMORY[0x1E6983CA8]];
    }

    else
    {
      v9 = MEMORY[0x1E6965F70];
      v10 = off_1E798ADE8;
      v12 = MEMORY[0x1E6983CA0];
      v13 = off_1E798ADF0;
      v15 = MEMORY[0x1E6983CA8];
      v8 = 0;
    }

    if ([OUTLINED_FUNCTION_8_6() objectForKeyedSubscript:?])
    {
      v16 = [MEMORY[0x1E695DF90] dictionary];
      [v16 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8_6() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *off_1E798AE10), *MEMORY[0x1E6965EB8]}];
      [v16 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8_6() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *off_1E798AE08), *MEMORY[0x1E6965EB0]}];
      [v16 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8_6() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *off_1E798ADF8), *MEMORY[0x1E6965EA8]}];
      [v16 setObject:*v9 forKeyedSubscript:*MEMORY[0x1E6965EA0]];
      [v16 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8_6() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *v10), *v12}];
      [v16 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8_6() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *v13), *v15}];
    }

    else
    {
      v16 = 0;
    }

    if (v8 | v16)
    {
      v2 = [MEMORY[0x1E695DF90] dictionary];
      [v2 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6965E98]];
      [OUTLINED_FUNCTION_40() setObject:? forKeyedSubscript:?];
      return v2;
    }

    return 0;
  }

  return v2;
}

void *BWUtilitiesWarnIfInputFormatsMismatch(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = [result count];
    if (result)
    {
      OUTLINED_FUNCTION_43();
      result = [v3 countByEnumeratingWithState:? objects:? count:?];
      if (result)
      {
        v4 = result;
        v5 = MEMORY[0];
        do
        {
          v6 = 0;
          do
          {
            if (MEMORY[0] != v5)
            {
              objc_enumerationMutation(v3);
            }

            v7 = *(8 * v6);
            if (v7 != a2)
            {
              [objc_msgSend(v7 "format")];
            }

            v6 = v6 + 1;
          }

          while (v4 != v6);
          OUTLINED_FUNCTION_43();
          result = [v3 countByEnumeratingWithState:? objects:? count:?];
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

void DuetActivitySchedulerLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *DuetActivitySchedulerLibrary(void)") description:{@"FigCaptureCalibrationMonitor.m", 48, @"%s", *a1}];
  __break(1u);
}

uint64_t BWSampleBufferHasDetectedFaces(const void *a1, int a2, int a3, int a4, int a5, int a6)
{
  v12 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798A5B0), "intValue"}];
  FigCaptureMetadataUtilitiesGetFinalCropRect();
  OUTLINED_FUNCTION_2_3();
  if (a2)
  {
    v13 = [BWInferenceGetAttachedInference(a1 802];
    if (v13 && a6)
    {
      v14 = OUTLINED_FUNCTION_3();
      if (simu_faceObservationsContainFacesWithinNormalizedRect(v15, v16, v14, v17, v18, v19))
      {
        return 1;
      }
    }

    else if (v13)
    {
      return 1;
    }
  }

  if (a3)
  {
    v20 = [BWInferenceGetAttachedInference(a1 802];
    if (v20 && a6)
    {
      v21 = OUTLINED_FUNCTION_3();
      if (simu_faceObservationsContainFacesWithinNormalizedRect(v22, v23, v21, v24, v25, v26))
      {
        return 1;
      }
    }

    else if (v20)
    {
      return 1;
    }
  }

  if (a4)
  {
    v28 = [BWInferenceGetAttachedInference(a1 801];
    result = v28 != 0;
    if (v28 && a6)
    {
      v29 = OUTLINED_FUNCTION_3();
      result = simu_faceObservationsContainFacesWithinNormalizedRect(v30, v31, v29, v32, v33, v34);
      if (result)
      {
        return result;
      }
    }

    else if (v28)
    {
      return result;
    }

    if (!a5)
    {
      return result;
    }
  }

  else if (!a5)
  {
    return 0;
  }

  return BWMetadataHasDetectedFaces(v12, a6);
}

uint64_t BWMetadataHasDetectedHumanBodies(uint64_t result)
{
  if (result)
  {
    v1 = result;
    FigCaptureMetadataUtilitiesGetFinalCropRect();
    OUTLINED_FUNCTION_2_3();
    [objc_msgSend(objc_msgSend(v1 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB0), "objectForKeyedSubscript:", *off_1E798ACE8}];
    v3 = OUTLINED_FUNCTION_3();

    return simu_detectedFacesArrayContainFacesWithinNormalizedRect(v2, v3, v4, v5, v6);
  }

  return result;
}

CFTypeRef BWSampleBufferHasDetectedHumanBodies(const void *a1)
{
  result = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (result)
  {
    v2 = result;
    FigCaptureMetadataUtilitiesGetFinalCropRect();
    OUTLINED_FUNCTION_2_3();
    [objc_msgSend(objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB0), "objectForKeyedSubscript:", *off_1E798ACE8}];
    v4 = OUTLINED_FUNCTION_3();

    return simu_detectedFacesArrayContainFacesWithinNormalizedRect(v3, v4, v5, v6, v7);
  }

  return result;
}

uint64_t BWFaceDetectionObservationsFromISPDetectedFacesMetadata(void *a1, CGAffineTransform *a2)
{
  v4 = [objc_msgSend(objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB8), "objectForKeyedSubscript:", *off_1E798ACE8}];
  if (!v4)
  {
    v4 = [a1 objectForKeyedSubscript:*off_1E798B218];
  }

  if (![v4 count])
  {
    return MEMORY[0x1E695E0F0];
  }

  return BWVisionFaceObservationsFromISPDetectedFacesInBufferCoordinates(v4, a2);
}

void BWUpdateLandmarksForStillImageCrop()
{
  OUTLINED_FUNCTION_6_4();
  v1 = v0;
  v3 = v2;
  v165 = *&v4;
  v168 = *&v5;
  v171 = *&v6;
  v174 = *&v7;
  IsUnityRect = FigCaptureIsUnityRect(v4, v5, v6, v7);
  if ((v1 - 803) >= 0xFFFFFFFE && !IsUnityRect)
  {
    v9 = CMGetAttachment(v3, *off_1E798A3C8, 0);
    if (v9 && (v10 = [v9 objectForKeyedSubscript:*off_1E798A5B0]) != 0)
    {
      memset(&v246, 0, sizeof(v246));
      BWISPBufferCoordinatesToVisionCoordinatesTransform([v10 intValue], &v246);
      memset(&v245, 0, sizeof(v245));
      OUTLINED_FUNCTION_27_6();
      CGAffineTransformInvert(&v245, &v244);
      v121 = CMGetAttachment(v3, @"Inferences", 0);
      v131 = [v121 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v1)}];
      v11 = [objc_msgSend(v131 "inferences")];
      if (![v11 count])
      {
        v11 = [objc_msgSend(v131 "inferences")];
      }

      HIDWORD(v126) = v1;
      v12 = objc_alloc(MEMORY[0x1E695DF70]);
      [v11 count];
      v13 = [OUTLINED_FUNCTION_17() initWithCapacity:?];
      v21 = OUTLINED_FUNCTION_59_5(v13, v14, v15, v16, v17, v18, v19, v20, v104, v107, v110, v113, v116, 0x1F219E5F0, v121, @"Inferences", v126, v3, v131, v134, v137, v13, v142, v146, v149, v153, v157, v161, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v230, v232, v234, v236, v238, v240, v242);
      if (v21)
      {
        v22 = v21;
        v23 = MEMORY[0];
        v135 = MEMORY[0];
        v138 = v11;
        do
        {
          v24 = 0;
          v144 = v22;
          do
          {
            if (MEMORY[0] != v23)
            {
              objc_enumerationMutation(v11);
            }

            v25 = *(8 * v24);
            [v25 boundingBox];
            OUTLINED_FUNCTION_25_7(v26, v27, v28, v29);
            OUTLINED_FUNCTION_2_3();
            [v25 alignedBoundingBoxAsCGRect];
            OUTLINED_FUNCTION_25_7(v30, v31, v32, v33);
            OUTLINED_FUNCTION_26_2();
            OUTLINED_FUNCTION_3_32();
            v34 = CGRectContainsRect(v247, v253);
            if (v34)
            {
              v42 = OUTLINED_FUNCTION_3();
              v46 = FigCaptureTransformRectToCoordinateSpaceOfRect(v42, v43, v44, v45, *&v166, *&v169, *&v172);
              v159 = v47;
              v163 = v46;
              v151 = v49;
              v155 = v48;
              v50 = OUTLINED_FUNCTION_3_0();
              FigCaptureTransformRectToCoordinateSpaceOfRect(v50, v51, v52, v53, *&v166, *&v169, *&v172);
              OUTLINED_FUNCTION_26_2();
              OUTLINED_FUNCTION_27_6();
              v248.origin.y = v159;
              v248.origin.x = v163;
              v248.size.height = v151;
              v248.size.width = v155;
              v249 = CGRectApplyAffineTransform(v248, &v244);
              v158 = *&v249.origin.y;
              v162 = *&v249.origin.x;
              v150 = *&v249.size.height;
              v154 = *&v249.size.width;
              OUTLINED_FUNCTION_27_6();
              v250.origin.x = OUTLINED_FUNCTION_3_0();
              CGRectApplyAffineTransform(v250, v54);
              OUTLINED_FUNCTION_2_3();
              [objc_msgSend(objc_msgSend(objc_msgSend(v25 "faceAttributes")];
              getVNFaceAttributeEyesClosed();
              v55 = [OUTLINED_FUNCTION_17() isEqual:?];
              v56 = v55;
              v57 = 0;
              if (v55)
              {
                [objc_msgSend(objc_msgSend(objc_msgSend(v25 "faceAttributes")];
                v57 = v58;
              }

              getVNFaceObservationClass();
              [v25 requestRevision];
              v147 = [v25 roll];
              [v25 yaw];
              [v25 pitch];
              [v25 isBoundingBoxAligned];
              [v25 landmarks];
              v59 = [v25 landmarks65];
              [v25 landmarkScore];
              v61 = v60;
              [v25 faceOrientationIndex];
              v63 = v62;
              [v25 faceJunkinessIndex];
              LODWORD(v114) = v64;
              v111 = __PAIR64__(v63, v57);
              BYTE4(v108) = v56;
              LODWORD(v108) = v61;
              v105 = v59;
              OUTLINED_FUNCTION_3_32();
              v34 = [v140 addObject:{objc_msgSend(v65, "faceObservationWithRequestRevision:boundingBox:roll:yaw:pitch:isBoundingBoxAligned:alignedBoundingBox:landmarks:landmarks65:landmarkScore:isBlinking:blinkScore:faceOrientationIndex:faceJunkinessIndex:")}];
              v23 = v135;
              v11 = v138;
              v22 = v144;
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = OUTLINED_FUNCTION_59_5(v34, v35, v36, v37, v38, v39, v40, v41, v105, v108, v111, v114, v117, v119, v122, key, v127, target, v132, v135, v138, v140, v144, v147, v150, v154, v158, v162, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v231, v233, v235, v237, v239, v241, v243);
        }

        while (v22);
      }

      v66 = [objc_msgSend(v132 "inferences")];
      v67 = objc_alloc(MEMORY[0x1E695DF70]);
      [v66 count];
      v68 = [OUTLINED_FUNCTION_17() initWithCapacity:?];
      v76 = OUTLINED_FUNCTION_60_5(v68, v69, v70, v71, v72, v73, v74, v75, v105, v108, v111, v114, v117, v119, v122, key, v127, target, v132, v135, v138, v140, v143, v147, v150, v154, v158, v162, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, 0);
      if (v76)
      {
        v77 = v76;
        v78 = MEMORY[0];
        do
        {
          for (i = 0; i != v77; ++i)
          {
            if (MEMORY[0] != v78)
            {
              objc_enumerationMutation(v66);
            }

            v80 = *(8 * i);
            [v80 boundingBox];
            OUTLINED_FUNCTION_25_7(v81, v82, v83, v84);
            OUTLINED_FUNCTION_2_3();
            OUTLINED_FUNCTION_3_32();
            v85 = CGRectContainsRect(v251, v254);
            if (v85)
            {
              v93 = OUTLINED_FUNCTION_3();
              v252.origin.x = FigCaptureTransformRectToCoordinateSpaceOfRect(v93, v94, v95, v96, *&v167, *&v170, *&v173);
              v244 = v246;
              CGRectApplyAffineTransform(v252, &v244);
              OUTLINED_FUNCTION_2_3();
              v97 = objc_alloc(getVNRecognizedObjectObservationClass());
              [v80 requestRevision];
              [v80 confidence];
              [v80 labels];
              v98 = OUTLINED_FUNCTION_3();
              v100 = [v99 initWithRequestRevision:v98 boundingBox:? confidence:? labels:?];
              [v68 addObject:v100];
            }
          }

          v77 = OUTLINED_FUNCTION_60_5(v85, v86, v87, v88, v89, v90, v91, v92, v106, v109, v112, v115, v118, v120, v123, keya, v128, targeta, v133, v136, v139, v141, v145, v148, v152, v156, v160, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227);
        }

        while (v77);
      }

      v101 = [objc_msgSend(v133 "inferences")];
      [v101 setObject:v141 forKeyedSubscript:@"VisionFaceDetectionObservations"];
      [v101 setObject:v141 forKeyedSubscript:v120];
      [v101 setObject:v68 forKeyedSubscript:0x1F219E610];
      v102 = [[BWInferenceResult alloc] initWithResult:v133 replacementInferences:v101 replacementPreventionReason:0];
      v103 = [v123 mutableCopy];
      [v103 setObject:v102 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", HIDWORD(v128))}];
      CMSetAttachment(targeta, keya, v103, 1u);
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }

  OUTLINED_FUNCTION_5_5();
}

void BWCreateSushiRawDNGDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, void *a30, void *a31, int a32)
{
  OUTLINED_FUNCTION_6_4();
  v301 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v336 = v39;
  v337 = v40;
  LODWORD(v330) = v41;
  v43 = v42;
  v45 = v44;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  fig_note_initialize_category_with_default_work_cf();
  v46 = v36;
  OUTLINED_FUNCTION_10_4();
  if (!v36)
  {
    goto LABEL_80;
  }

  if (v38 == 0.0)
  {
    goto LABEL_80;
  }

  v47 = v337;
  if (!v337)
  {
    goto LABEL_80;
  }

  v48 = v336;
  if (!HIDWORD(v336) || !v336 || !HIDWORD(v43) || !v43 || !a30)
  {
    goto LABEL_80;
  }

  if ((FigCapturePixelFormatIsBayerRaw(v45) & 1) == 0)
  {
    OUTLINED_FUNCTION_0_44();
    FigDebugAssert3();
    FigCaptureGetFrameworkRadarComponent();
    LODWORD(recta.origin.x) = 0;
    OUTLINED_FUNCTION_20_7();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v275 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
    if (OUTLINED_FUNCTION_6(v275))
    {
      v349 = 136315138;
      v350 = "BWCreateSushiRawDNGDictionary";
      OUTLINED_FUNCTION_15_12();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_17_8();
    LOWORD(v357) = 0;
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_13_18();
    v277 = OUTLINED_FUNCTION_6_1();
    FigCapturePleaseFileRadar(v277, v278, v279, v280, v281, 634, v282, v283, SLOBYTE(v284));
    free(&v357);
    goto LABEL_80;
  }

  v49 = [v337 objectForKeyedSubscript:*off_1E798A540];
  if (v49)
  {
    [v49 floatValue];
    if (v50 != 1.0)
    {
      OUTLINED_FUNCTION_20_7();
      v276 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v276, type[0]);
      OUTLINED_FUNCTION_56_5();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_80;
    }
  }

  v51 = [objc_msgSend(a30 objectForKeyedSubscript:{@"SushiRawLensShadingCorrectionType", "intValue"}];
  v341 = v51;
  if ((a29 & 1) != 0 || v51 == 1)
  {
    [objc_msgSend(a31 objectForKeyedSubscript:{*off_1E7989F18), "floatValue"}];
    if (v53 < 0.0)
    {
      goto LABEL_134;
    }

    v54 = a32;
    if (!a32)
    {
      v54 = 1.0;
    }

    v52 = v54 * v53;
    v55 = simu_oisAdjustedOpticalCenter(v337, v54 * v53);
    v332 = v56;
    v333 = v55;
  }

  else
  {
    v332 = *(MEMORY[0x1E695EFF8] + 8);
    v333 = *MEMORY[0x1E695EFF8];
    v52 = 0.0;
  }

  width = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  height = *(MEMORY[0x1E695F050] + 24);
  v326 = *(MEMORY[0x1E695F050] + 16);
  FinalCropRectFromSource = FigCaptureMetadataUtilitiesGetFinalCropRectFromSource();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = FigCaptureAspectRatioForDimensions(v43);
  v67 = [v337 objectForKeyedSubscript:*off_1E798A6F0];
  *&v321 = v336;
  v324 = v336 >> 32;
  v329 = v38;
  v334 = a31;
  HIDWORD(v328) = a29;
  *&v328 = v52;
  v315 = y;
  v318 = width;
  v313 = height;
  v335 = v66;
  if (a29 && !v67)
  {
    FigCaptureUnityRect();
    OUTLINED_FUNCTION_48_6();
    FigCaptureDenormalizeCropRect(v68, v69, v70, v71);
    if (LODWORD(v330))
    {
      v76 = BWAspectRatioValueFromAspectRatio(SLODWORD(v330));
      v77 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v336, v76);
      FigCaptureMakeCenteredRectWithDimensionsInsideDimensions(v77, v336);
      OUTLINED_FUNCTION_62_3();
      v298 = v79;
      v300 = v78;
      v340 = v80;
      v296 = v81;
      FigCaptureNormalizeCropRect(v78, v79, v80, v81);
      OUTLINED_FUNCTION_48_6();
    }

    else
    {
      v296 = v75;
      v298 = v73;
      v340 = v74;
      v300 = v72;
    }

    v121 = FigCaptureUnityRect();
    FigCaptureMetadataUtilitiesNormalizedRectEnforcedWithinValidRegionAfterGDC(v121, v122, v123, v124, height, v66, v65, width, a31, v337, v336);
    v307 = v126;
    v309 = v125;
    v303 = v128;
    v305 = v127;
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v125, v126, v127, v128);
    v129 = v66;
    v134 = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(v130, v131, v132, v133, v129);
    FigCaptureMetadataUtilitiesNormalizeCropRect(v134, v135, v136, v137);
    v142 = FigCaptureMetadataUtilitiesScaleRect(v138, v139, v140, v141, 1.11);
    v144 = v143;
    v146 = v145;
    v148 = v147;
    FigCaptureUnityRect();
    OUTLINED_FUNCTION_8_3();
    v367.origin.x = v142;
    v367.origin.y = v144;
    v367.size.width = v146;
    v367.size.height = v148;
    v368 = CGRectIntersection(v367, v372);
    x = v368.origin.x;
    y = v368.origin.y;
    width = v368.size.width;
    height = v368.size.height;
    v373.origin.x = FinalCropRectFromSource;
    v373.origin.y = v61;
    v373.size.width = v63;
    v373.size.height = v65;
    v149 = CGRectContainsRect(v368, v373);
    if (dword_1EB58DFC0)
    {
      LODWORD(recta.origin.x) = 0;
      OUTLINED_FUNCTION_20_7();
      v150 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v150, type[0]);
      OUTLINED_FUNCTION_56_5();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v48 = v336;
      v47 = v337;
    }

    if (v149)
    {
      v61 = v298;
      v65 = v300;
      v66 = v340;
      v63 = v296;
      if (!LODWORD(v330))
      {
        FigCaptureMakeCenteredRectWithDimensionsInsideDimensions(v43, v48);
        OUTLINED_FUNCTION_62_3();
        OUTLINED_FUNCTION_18_12();
      }

      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v336, v324, v309, v307, v305, v303, v335);
      OUTLINED_FUNCTION_52_7();
      goto LABEL_53;
    }

LABEL_134:
    OUTLINED_FUNCTION_0_44();
    goto LABEL_135;
  }

  OUTLINED_FUNCTION_34_7();
  if (!FigCaptureIsUnityRect(v82, v83, v84, v85) && (v34 & 1) == 0)
  {
    goto LABEL_134;
  }

  x = FinalCropRectFromSource;
  OUTLINED_FUNCTION_34_7();
  if (FigCaptureIsUnityRect(v87, v88, v89, v90))
  {
    v63 = height;
    x = v326;
    v66 = v326;
    v61 = y;
    v65 = width;
    if (FigCapturePlatformIdentifier() >= 12)
    {
      SensorReadoutRect = FigCaptureMetadataUtilitiesGetSensorReadoutRect();
      v99 = llround(v94);
      v100 = v336 <= llround(v93) && SHIDWORD(v336) <= v99;
      v63 = height;
      v61 = y;
      v66 = v326;
      v65 = width;
      if (!v100)
      {
        OUTLINED_FUNCTION_58_7(SensorReadoutRect, v92, v93, v94, v95, v96, v97, v98, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v297, v299, v301, v302, v304, v306, v308, rect2, v311, height, y, width, COERCE_DOUBLE(v336), *&v324, v326, v328, v38, v330, v332, v333, *&a31, v335);
        OUTLINED_FUNCTION_62_3();
        OUTLINED_FUNCTION_18_12();
      }

      v363.origin.x = OUTLINED_FUNCTION_17_12();
      if (CGRectIsNull(v363))
      {
        OUTLINED_FUNCTION_0_44();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      OUTLINED_FUNCTION_45_7();
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v101, v102, v103, v104, v105, v106, v66);
    OUTLINED_FUNCTION_52_7();
    if (CGRectIsNull(v364))
    {
      OUTLINED_FUNCTION_0_44();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    FinalCropRectForSushiRaw = FigCaptureMetadataUtilitiesGetFinalCropRectForSushiRaw();
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v336, v324, FinalCropRectForSushiRaw, v108, v109, v110, v66);
    OUTLINED_FUNCTION_18_12();
    if (CGRectIsNull(v365))
    {
      OUTLINED_FUNCTION_0_44();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }
  }

  ValidBufferRectForProcessedRaw = FigCaptureMetadataUtilitiesGetValidBufferRectForProcessedRaw();
  v119 = llround(v114);
  if (v336 > llround(v113) || SHIDWORD(v336) > v119)
  {
    OUTLINED_FUNCTION_58_7(ValidBufferRectForProcessedRaw, v112, v113, v114, v115, v116, v117, v118, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v297, v299, v301, v302, v304, v306, v308, rect2, v311, v313, v315, v318, v321, *&v324, v326, v328, v329, v330, v332, v333, *&v334, v335);
    OUTLINED_FUNCTION_62_3();
    OUTLINED_FUNCTION_18_12();
    if (CGRectIsNull(v366))
    {
      OUTLINED_FUNCTION_0_44();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    OUTLINED_FUNCTION_45_7();
  }

LABEL_53:
  v151 = [a30 objectForKeyedSubscript:@"SushiRawNoiseProfile"];
  if (!v151)
  {
    FigCaptureGetFrameworkRadarComponent();
    LODWORD(recta.origin.x) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v152 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_5_3();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(v357) = 0;
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_13_18();
    v153 = OUTLINED_FUNCTION_6_1();
    FigCapturePleaseFileRadar(v153, v154, v155, v156, v157, 775, v158, v159, SLOBYTE(v284));
    free(&v357);
    v151 = 0;
  }

  v369.origin.x = width;
  v369.origin.y = y;
  v369.size.width = x;
  v369.size.height = height;
  IsEmpty = CGRectIsEmpty(v369);
  v370.origin.x = OUTLINED_FUNCTION_17_12();
  v161 = CGRectIsEmpty(v370);
  v162 = v161;
  if (!IsEmpty && v161)
  {
    v197 = 0;
    goto LABEL_121;
  }

  if (!FigCaptureSushiRawDNGDictionaryCreatedInGraph())
  {
    v240 = [a30 objectForKeyedSubscript:@"CroppedSushiRawLensShadingCorrectionCoefficients"];
    if (!v240)
    {
      FigCaptureGetFrameworkRadarComponent();
      LODWORD(recta.origin.x) = 0;
      OUTLINED_FUNCTION_20_7();
      v241 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v241, type[0]);
      v242 = *off_1E798B540;
      v48 = v336;
      v168 = v334;
      OUTLINED_FUNCTION_8_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v264 = [v337 objectForKeyedSubscript:v242];
      v266 = BWPortTypeToDisplayString(v264, v265);
      v357 = 138412290;
      v358 = v266;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_13_18();
      OUTLINED_FUNCTION_10();
      FigCapturePleaseFileRadar(v267, v268, v269, v270, v271, 972, v272, v273, &v357);
      free(v242);
      v197 = 0;
      goto LABEL_73;
    }

    v197 = 0;
    v46 = v240;
LABEL_121:
    v168 = v334;
    goto LABEL_73;
  }

  v342 = x;
  v339 = height;
  v163 = [v47 objectForKeyedSubscript:*off_1E798B5A8];
  v164 = [v47 objectForKeyedSubscript:*off_1E798B5A0];
  v165 = *(MEMORY[0x1E695F050] + 16);
  recta.origin = *MEMORY[0x1E695F050];
  recta.size = v165;
  height = v61;
  x = v61;
  v166 = v66;
  v167 = v63;
  if (v162)
  {
    x = v315;
    v65 = v318;
    v166 = v326;
    v167 = v313;
    if (CGRectMakeWithDictionaryRepresentation([v47 objectForKeyedSubscript:*off_1E798B790], &recta))
    {
      v65 = recta.origin.x;
      x = recta.origin.y;
      v166 = recta.size.width;
      v167 = recta.size.height;
    }
  }

  v371.origin.x = v65;
  v371.origin.y = x;
  v371.size.width = v166;
  v371.size.height = v167;
  if (!CGRectIsNull(v371))
  {
    if (v341)
    {
      if ((v341 - 1) >= 2)
      {
        v243 = OUTLINED_FUNCTION_36_9();
        if (os_log_type_enabled(v243, v343))
        {
          v244 = *type;
        }

        else
        {
          v244 = *type & 0xFFFFFFFE;
        }

        if (v244)
        {
          v349 = 136315394;
          v350 = "BWCreateSushiRawDNGDictionary";
          v351 = 1026;
          v245 = v341;
          LODWORD(v352) = v341;
          OUTLINED_FUNCTION_15_12();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        else
        {
          v245 = v341;
        }

        OUTLINED_FUNCTION_33_10();
        x = v342;
        OUTLINED_FUNCTION_8_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v357 = 67240192;
        LODWORD(v358) = v245;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_10();
        FigCapturePleaseFileRadar(v246, v247, v248, v249, v250, 960, v251, v252, &v357);
        free(&v357);
        v197 = 0;
        v168 = v334;
        height = v339;
        goto LABEL_73;
      }

      v206 = [v334 objectForKeyedSubscript:*off_1E7989EE0];
      v207 = [v206 bytes];
      v208 = v207;
      if (!v206 || *v207 != 2)
      {
        v238 = OUTLINED_FUNCTION_36_9();
        if (os_log_type_enabled(v238, v343))
        {
          v239 = *type;
        }

        else
        {
          v239 = *type & 0xFFFFFFFE;
        }

        if (v239)
        {
          [v206 length];
          OUTLINED_FUNCTION_33_10();
          x = v342;
          v349 = 136315907;
          v350 = "BWCreateSushiRawDNGDictionary";
          v351 = 2049;
          v352 = v206;
          v353 = 2050;
          v354 = v253;
          v355 = 1026;
          v356 = v254;
          OUTLINED_FUNCTION_15_12();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
          height = v339;
        }

        else
        {
          OUTLINED_FUNCTION_44_6();
        }

        OUTLINED_FUNCTION_8_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v255 = [v206 length];
        v48 = v336;
        v168 = v334;
        if (v208)
        {
          v256 = *v208;
        }

        else
        {
          v256 = 0;
        }

        v357 = 134284033;
        v358 = v206;
        v359 = 2050;
        v360 = v255;
        v361 = 1026;
        v362 = v256;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_10();
        FigCapturePleaseFileRadar(v257, v258, v259, v260, v261, 954, v262, v263, &v357);
        free(v208);
        v197 = 0;
        goto LABEL_73;
      }

      v209 = (v65 + (2 * *(v207 + 8)));
      v210 = (x + (2 * *(v207 + 12)));
      v312 = v46;
      if (*(v207 + 4))
      {
        v209 = (v209 - v333);
        v210 = (v210 - v332);
      }

      v319 = *(v207 + 32);
      v316 = *(v207 + 36);
      v314 = *(v207 + 40);
      v322 = *(v207 + 44);
      v211 = 2 * *(v207 + 16);
      v212 = 2 * *(v207 + 20);
      v213 = v209 / v211;
      x = v212;
      v214 = v212;
      v215 = v210 / v212;
      v216 = *(v207 + 28);
      if (*(v207 + 24) - 1 >= ((v166 + v209 + v211 + -1.0) / v211))
      {
        v217 = ((v166 + v209 + v211 + -1.0) / v211);
      }

      else
      {
        v217 = *(v207 + 24) - 1;
      }

      if (v216 - 1 >= ((v167 + v210 + v212 + -1.0) / v212))
      {
        v218 = ((v167 + v210 + v212 + -1.0) / v212);
      }

      else
      {
        v218 = v216 - 1;
      }

      v327 = v217 - v213 + 1;
      v325 = v218 - v215 + 1;
      v331 = [MEMORY[0x1E695DF88] dataWithLength:12 * v325 * v327];
      v219 = [v331 mutableBytes];
      if (v218 >= v215)
      {
        v220 = 0;
        v221 = &v208[v316 + 12];
        v222 = v215;
        v223 = &v208[v322 + 12];
        do
        {
          if (v217 >= v213)
          {
            v224 = v208[6] * v222;
            v225 = v209 / v211;
            do
            {
              v226 = v224 + v225;
              v227 = *&v208[v319 + 12 + v224 + v225];
              v228 = *(v221 + 4 * (v224 + v225));
              v229 = *&v208[v314 + 12 + v224 + v225];
              if (v229 <= *(v223 + 4 * (v224 + v225)))
              {
                v229 = *(v223 + 4 * v226);
              }

              if (v228 <= v229)
              {
                if (v227 <= v229)
                {
                  v227 = v229;
                }
              }

              else if (v227 <= v228)
              {
                v227 = *(v221 + 4 * v226);
              }

              *(v219 + 4 * v220) = v227;
              *(v219 + 4 * (v220 + 1)) = v227;
              v230 = v220 + 2;
              v220 += 3;
              *(v219 + 4 * v230) = v227;
              ++v225;
            }

            while (v225 <= v217);
          }

          ++v222;
        }

        while (v222 <= v218);
      }

      v231 = (v213 * v211 - v209) / v166;
      v323 = v231;
      v232 = (v215 * v214 - v210) / v167;
      v320 = v232;
      v233 = v211 / v166;
      v317 = v233;
      v346[0] = &unk_1F2243A20;
      v345[0] = @"top";
      v345[1] = @"bottom";
      v346[1] = [MEMORY[0x1E696AD98] numberWithDouble:v167];
      v346[2] = &unk_1F2243A20;
      v345[2] = @"left";
      v345[3] = @"right";
      v346[3] = [MEMORY[0x1E696AD98] numberWithDouble:v166];
      v346[4] = &unk_1F2243A20;
      v345[4] = @"plane";
      v345[5] = @"planes";
      v346[5] = &unk_1F2243A38;
      v346[6] = &unk_1F2243A50;
      v345[6] = @"rowPitch";
      v345[7] = @"colPitch";
      v346[7] = &unk_1F2243A50;
      v345[8] = @"mapsPointsV";
      v346[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v325];
      v345[9] = @"mapsPointsH";
      v346[9] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v327];
      v345[10] = @"mapsSpacingV";
      *&v234 = x / v167;
      v346[10] = [MEMORY[0x1E696AD98] numberWithFloat:v234];
      v345[11] = @"mapsSpacingH";
      *&v235 = v317;
      v346[11] = [MEMORY[0x1E696AD98] numberWithFloat:v235];
      v345[12] = @"mapOriginV";
      *&v236 = v320;
      v346[12] = [MEMORY[0x1E696AD98] numberWithFloat:v236];
      v345[13] = @"mapOriginH";
      *&v237 = v323;
      v346[13] = [MEMORY[0x1E696AD98] numberWithFloat:v237];
      v346[14] = &unk_1F2243A38;
      v345[14] = @"mapPlanes";
      v345[15] = @"gainData";
      v346[15] = v331;
      v197 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v346 forKeys:v345 count:16];
      v48 = v336;
      v46 = v312;
      v168 = v334;
    }

    else
    {
      v168 = v334;
      if ([v46 count] != 7 || !v163 || !v164)
      {
        OUTLINED_FUNCTION_0_44();
        goto LABEL_135;
      }

      if (v166 != *MEMORY[0x1E695F060] || v167 != *(MEMORY[0x1E695F060] + 8))
      {
        *&x = sqrt(v167 * v167 + v166 * v166) * 0.5;
        [v163 floatValue];
        v171 = v170;
        [v163 floatValue];
        v173 = v172;
        [v164 floatValue];
        v175 = v174;
        [v164 floatValue];
        v177 = *&x / (sqrtf((v175 * v176) + (v171 * v173)) * 0.5);
        v178 = MEMORY[0x1E696AD98];
        [objc_msgSend(OUTLINED_FUNCTION_38_7() "objectAtIndexedSubscript:"floatValue"")];
        *&v180 = v179 * (v177 * v177);
        v347[0] = [v178 numberWithFloat:v180];
        v181 = MEMORY[0x1E696AD98];
        v182 = powf(v177, 4.0);
        [objc_msgSend(v46 objectAtIndexedSubscript:{1), "floatValue"}];
        *&v184 = v182 * v183;
        v347[1] = [v181 numberWithFloat:v184];
        v185 = MEMORY[0x1E696AD98];
        v186 = powf(v177, 6.0);
        [objc_msgSend(v46 objectAtIndexedSubscript:{2), "floatValue"}];
        *&v188 = v186 * v187;
        v347[2] = [v185 numberWithFloat:v188];
        v189 = MEMORY[0x1E696AD98];
        v190 = powf(v177, 8.0);
        [objc_msgSend(v46 objectAtIndexedSubscript:{3), "floatValue"}];
        *&v192 = v190 * v191;
        v347[3] = [v189 numberWithFloat:v192];
        v193 = MEMORY[0x1E696AD98];
        v194 = powf(v177, 10.0);
        [objc_msgSend(v46 objectAtIndexedSubscript:{4), "floatValue"}];
        *&v196 = v194 * v195;
        v347[4] = [v193 numberWithFloat:v196];
        v347[5] = [v46 objectAtIndexedSubscript:5];
        v347[6] = [v46 objectAtIndexedSubscript:6];
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v347 count:7];
      }

      v197 = 0;
    }

    OUTLINED_FUNCTION_44_6();
LABEL_73:
    if (HIDWORD(v328))
    {
      v198 = [v168 objectForKeyedSubscript:*off_1E7989EC0];
    }

    else
    {
      v198 = 0;
    }

    if (v341)
    {
      v199 = 0;
    }

    else
    {
      v199 = v46;
    }

    [v168 objectForKeyedSubscript:*off_1E7989E70];
    v200 = OUTLINED_FUNCTION_17_12();
    if (simu_createDNGDictionary(v201, v202, *&v329, v199, v151, v200, v203, v204, v205, width, y, x, height, v48, v198, v197, *&v328, v333, v332))
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_0_44();
LABEL_135:
    FigDebugAssert3();
  }

LABEL_80:
  OUTLINED_FUNCTION_5_5();
}

uint64_t simu_createDNGDictionary(int a1, void *a2, void *a3, void *a4, void *a5, double a6, double a7, double a8, double a9, double a10, CGFloat a11, CGFloat a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, float a17, double a18, double a19)
{
  if (!a2)
  {
    FigCaptureGetFrameworkRadarComponent();
    v95 = OUTLINED_FUNCTION_11_22();
    v96 = OUTLINED_FUNCTION_24_8(v95);
    if (OUTLINED_FUNCTION_6(v96))
    {
      v119 = 136315138;
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_53_5();
    }

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_17_8();
    LOWORD(v120[0]) = 0;
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_13_18();
    v105 = OUTLINED_FUNCTION_6_1();
    v112 = 1288;
    goto LABEL_96;
  }

  if (qword_1ED844ED0 != -1)
  {
    v97 = a13;
    v98 = a10;
    dispatch_once(&qword_1ED844ED0, &__block_literal_global_48);
    a10 = v98;
    a13 = v97;
  }

  if (!_MergedGlobals_3)
  {
    FigCaptureGetFrameworkRadarComponent();
    v99 = OUTLINED_FUNCTION_11_22();
    v100 = OUTLINED_FUNCTION_24_8(v99);
    if (OUTLINED_FUNCTION_6(v100))
    {
      v119 = 136315138;
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_53_5();
    }

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_17_8();
    LOWORD(v120[0]) = 0;
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_13_18();
    v105 = OUTLINED_FUNCTION_6_1();
    v112 = 1295;
    goto LABEL_96;
  }

  v114 = a10;
  v115 = a13;
  v29 = [a2 objectForKeyedSubscript:*off_1E798B540];
  if (!v29)
  {
    FigCaptureGetFrameworkRadarComponent();
    v101 = OUTLINED_FUNCTION_11_22();
    v102 = OUTLINED_FUNCTION_24_8(v101);
    if (OUTLINED_FUNCTION_6(v102))
    {
      v119 = 136315138;
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_53_5();
    }

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_17_8();
    LOWORD(v120[0]) = 0;
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_13_18();
    v105 = OUTLINED_FUNCTION_6_1();
    v112 = 1301;
    goto LABEL_96;
  }

  v30 = v29;
  if ([v29 isEqualToString:*off_1E798A0E0])
  {
    v31 = @"front camera";
    goto LABEL_16;
  }

  if ([v30 isEqualToString:*off_1E798A0F8])
  {
    v31 = @"front ultra wide camera";
    goto LABEL_16;
  }

  if ([v30 isEqualToString:*off_1E798A0C0])
  {
    v31 = @"back camera";
    goto LABEL_16;
  }

  if ([v30 isEqualToString:*off_1E798A0D8])
  {
    v31 = @"back telephoto camera";
    goto LABEL_16;
  }

  if (([v30 isEqualToString:*off_1E798A0D0] & 1) == 0)
  {
    FigCaptureGetFrameworkRadarComponent();
    v103 = OUTLINED_FUNCTION_11_22();
    v104 = OUTLINED_FUNCTION_24_8(v103);
    if (OUTLINED_FUNCTION_6(v104))
    {
      v119 = 136315138;
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_53_5();
    }

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_17_8();
    LOWORD(v120[0]) = 0;
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_13_18();
    v105 = OUTLINED_FUNCTION_6_1();
    v112 = 1319;
LABEL_96:
    FigCapturePleaseFileRadar(v105, v106, v107, v108, v109, v112, v110, v111, v113);
    free(v120);
    v32 = 0;
    goto LABEL_97;
  }

  v31 = @"back ultra wide camera";
LABEL_16:
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", _MergedGlobals_3, v31];
  [v32 setObject:v33 forKeyedSubscript:*MEMORY[0x1E696D858]];
  v34 = *MEMORY[0x1E696D878];
  if (a1 == 1)
  {
    [v32 setObject:&unk_1F2243A68 forKeyedSubscript:v34];
    v35 = [a2 objectForKeyedSubscript:*off_1E798B700];
    if (!v35)
    {
      goto LABEL_97;
    }

    v36 = v35;
    v37 = MEMORY[0x1E696D7B0];
  }

  else
  {
    [v32 setObject:&unk_1F2243A80 forKeyedSubscript:v34];
    [v32 setObject:&unk_1F2243A98 forKeyedSubscript:*MEMORY[0x1E696D7B0]];
    v36 = &unk_1F224A800;
    v37 = MEMORY[0x1E696D7A8];
  }

  [v32 setObject:v36 forKeyedSubscript:*v37];
  v38 = [a2 objectForKeyedSubscript:*off_1E798B0D8];
  if (!v38)
  {
    v38 = [a2 objectForKeyedSubscript:*off_1E798B120];
  }

  v39 = [a2 objectForKeyedSubscript:*off_1E798B0D0];
  if (!v39)
  {
    v39 = [a2 objectForKeyedSubscript:*off_1E798B0F8];
  }

  v40 = [a2 objectForKeyedSubscript:*off_1E798B0C8];
  if (!v40)
  {
    v40 = [a2 objectForKeyedSubscript:*off_1E798B0C0];
  }

  v41 = [v38 intValue];
  v42 = [v39 intValue];
  v43 = [v40 intValue];
  if (v41 < 1 || v42 < 1 || v43 < 1)
  {
    goto LABEL_97;
  }

  if (v42 >= v43)
  {
    v47 = v43;
  }

  else
  {
    v47 = v42;
  }

  if (v41 < v47)
  {
    v47 = v41;
  }

  *&v44 = v47 / v41;
  v48 = v47 / v42;
  v49 = v47 / v43;
  v118[0] = [MEMORY[0x1E696AD98] numberWithFloat:v44];
  *&v50 = v48;
  v118[1] = [MEMORY[0x1E696AD98] numberWithFloat:v50];
  *&v51 = v49;
  v118[2] = [MEMORY[0x1E696AD98] numberWithFloat:v51];
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:3];
  [v32 setObject:v52 forKeyedSubscript:*MEMORY[0x1E696D778]];
  if ([a3 count] != 2)
  {
    goto LABEL_97;
  }

  v53 = [OUTLINED_FUNCTION_38_7() objectAtIndexedSubscript:?];
  if (![v53 count])
  {
    goto LABEL_97;
  }

  [v32 setObject:OUTLINED_FUNCTION_42_7() forKeyedSubscript:*MEMORY[0x1E696D7B8]];
  if ([v53 count] >= 2)
  {
    [v32 setObject:OUTLINED_FUNCTION_41_7() forKeyedSubscript:*MEMORY[0x1E696D7C0]];
  }

  v54 = [a3 objectAtIndexedSubscript:1];
  if (![v54 count])
  {
    goto LABEL_97;
  }

  [v32 setObject:OUTLINED_FUNCTION_42_7() forKeyedSubscript:*MEMORY[0x1E696D7E0]];
  if ([v54 count] >= 2)
  {
    [v32 setObject:OUTLINED_FUNCTION_41_7() forKeyedSubscript:*MEMORY[0x1E696D7E8]];
  }

  v55 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B7B8), "intValue"}];
  v57 = 0.0;
  if (v55 >= 1)
  {
    v58 = v55;
    [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B7C0), "floatValue"}];
    if (*&v56 > 0.0)
    {
      v57 = log2f(vcvts_n_f32_u32(v58, 8uLL) / *&v56) + 0.0;
    }
  }

  if (a1 != 1)
  {
    v59 = [a2 objectForKeyedSubscript:*off_1E798A738];
    if (!v59)
    {
      goto LABEL_52;
    }

    [v59 floatValue];
    v57 = log2f(1.0 / v60);
  }

  *&v56 = v57;
  v61 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
  [v32 setObject:v61 forKeyedSubscript:*MEMORY[0x1E696D798]];
LABEL_52:
  v121.origin.x = OUTLINED_FUNCTION_2_41();
  if (!CGRectIsEmpty(v121))
  {
    v62 = OUTLINED_FUNCTION_2_41();
    BWSetRawDenormalizedActiveRectToDNGDictionary(v32, v62, v63, v64, v65);
    [v32 setObject:&unk_1F2248760 forKeyedSubscript:*MEMORY[0x1E696D7F8]];
    v117[0] = [MEMORY[0x1E696AD98] numberWithInt:a8];
    v117[1] = [MEMORY[0x1E696AD98] numberWithInt:a9];
    v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
    [v32 setObject:v66 forKeyedSubscript:*MEMORY[0x1E696D800]];
  }

  if (a4 && [a4 count] == 7)
  {
    [v32 setObject:a4 forKeyedSubscript:*MEMORY[0x1E696D810]];
  }

  if (a16)
  {
    [v32 setObject:a16 forKeyedSubscript:@"GainMap"];
  }

  if (a1 == 1)
  {
    if (!a5)
    {
      goto LABEL_77;
    }

    v67 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B3B0), "shortValue"}];
    if (v67)
    {
      v68 = v67;
      v69 = [a5 objectForKeyedSubscript:@"SushiRawNoiseProfile_ISOArray"];
      v70 = [a5 objectForKeyedSubscript:@"SushiRawNoiseProfile_SignalComponentArray"];
      v71 = [a5 objectForKeyedSubscript:@"SushiRawNoiseProfile_DarkComponentArray"];
      if (v69)
      {
        if (v70)
        {
          v72 = v71;
          if (v71)
          {
            v73 = [v69 count];
            if (v73)
            {
              v74 = v73;
              if (v73 == [v70 count] && v74 == objc_msgSend(v72, "count"))
              {
                v75 = [objc_msgSend(v69 objectAtIndexedSubscript:{0), "shortValue"}];
                v76 = 0;
                if (v74 == 1)
                {
LABEL_75:
                  [objc_msgSend(v70 objectAtIndexedSubscript:{v76), "doubleValue"}];
                  v81 = v80;
                  [objc_msgSend(v72 objectAtIndexedSubscript:{v76), "doubleValue"}];
                  v83 = v82;
                  v120[0] = [MEMORY[0x1E696AD98] numberWithDouble:v81];
                  v120[1] = [MEMORY[0x1E696AD98] numberWithDouble:v83];
                  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:2];
LABEL_76:
                  [v32 setObject:v84 forKeyedSubscript:*MEMORY[0x1E696D820]];
LABEL_77:
                  if (a15)
                  {
                    v88 = OUTLINED_FUNCTION_2_41();
                    [v32 setObject:simu_createWarpRectilinearDictionary(v89 forKeyedSubscript:{v90, v91, v88, v92, v93, v94, v114, a11, a12, v115, a17, a18, a19), @"WarpRectilinear2"}];
                  }

                  goto LABEL_79;
                }

                v77 = v75;
                v78 = 1;
                while (1)
                {
                  v79 = [objc_msgSend(v69 objectAtIndexedSubscript:{v78), "shortValue"}];
                  if (v79 <= v77)
                  {
                    break;
                  }

                  if ((v79 + v77) >> 1 > v68)
                  {
                    goto LABEL_74;
                  }

                  ++v78;
                  v77 = v79;
                  if (v74 == v78)
                  {
                    v78 = v74;
LABEL_74:
                    v76 = v78 - 1;
                    goto LABEL_75;
                  }
                }
              }
            }
          }
        }
      }
    }

    v84 = 0;
    goto LABEL_76;
  }

  [v32 setObject:&unk_1F224A810 forKeyedSubscript:*MEMORY[0x1E696D828]];
  [v32 setObject:&unk_1F2248778 forKeyedSubscript:*MEMORY[0x1E696D820]];
  simu_addToneCurvesToDNGDictionary();
  if ((v87 & 1) == 0)
  {
LABEL_97:
    v85 = 0;
    goto LABEL_80;
  }

LABEL_79:
  v85 = [v32 copy];
LABEL_80:

  return v85;
}

uint64_t BWCreateDemosaicedRawDNGDictionary(uint64_t a1, _BOOL8 a2, void *a3, void *a4, void *a5, float a6)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_9_22();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_9_22();
  OUTLINED_FUNCTION_10_4();
  result = 0;
  if (!HIDWORD(a1) || !a1 || a6 == 0.0 || !a3 || !a4)
  {
    return result;
  }

  if (!FigCapturePixelFormatIsDemosaicedRaw(a2))
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    FigCaptureGetFrameworkRadarComponent();
    v38 = 0;
    v37 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_17_8();
    v26 = BWStringFromCVPixelFormatType(a2);
    LODWORD(recta.origin.x) = 138412290;
    *(&recta.origin.x + 4) = v26;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_13_18();
    v27 = OUTLINED_FUNCTION_6_1();
    FigCapturePleaseFileRadar(v27, v28, v29, v30, v31, 1029, v32, v33, &recta);
    free(&recta);
    return 0;
  }

  v13 = [a3 objectForKeyedSubscript:*off_1E798A5C8];
  if (v13)
  {
    v14 = *(MEMORY[0x1E695F058] + 16);
    recta.origin = *MEMORY[0x1E695F058];
    recta.size = v14;
    if (CGRectMakeWithDictionaryRepresentation(v13, &recta))
    {
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(a1, a1 >> 32, recta.origin.x, recta.origin.y, recta.size.width, recta.size.height, a6);
      OUTLINED_FUNCTION_2_3();
      if (CGRectIsNull(v39))
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }
    }
  }

  [a5 objectForKeyedSubscript:*off_1E7989E70];
  v34 = *MEMORY[0x1E695EFF8];
  v35 = *(MEMORY[0x1E695EFF8] + 8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_32();
  result = simu_createDNGDictionary(v15, v16, a4, 0, 0, v17, v18, v19, v20, v21, v22, v23, v24, a1, 0, 0, 0.0, v34, v35);
  if (!result)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  return result;
}

id BWCreateProResRawGDCMetadata(unint64_t a1, void *a2, void *a3, float a4)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_61_2();
  OUTLINED_FUNCTION_54_5();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_10_4();
  if (!a3)
  {
    return 0;
  }

  v12 = [a3 objectForKeyedSubscript:*off_1E7989EC0];
  result = 0;
  if (!HIDWORD(a1) || !a1 || !a2 || !v12)
  {
    return result;
  }

  if (a4 < 0.0)
  {
    OUTLINED_FUNCTION_0();
LABEL_15:
    FigDebugAssert3();
    return 0;
  }

  rect.origin.x = 0.0;
  rect.origin.y = 0.0;
  rect.size.width = a1;
  rect.size.height = SHIDWORD(a1);
  v14 = [a2 objectForKeyedSubscript:*off_1E798B7A0];
  if (v14)
  {
    CGRectMakeWithDictionaryRepresentation(v14, &rect);
  }

  v15 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  v16 = v15;
  if (!v15)
  {
    v16 = 1.0;
  }

  v17 = v16 * a4;
  FigCaptureUnityRect();
  OUTLINED_FUNCTION_26_7();
  FigCaptureUnityRect();
  OUTLINED_FUNCTION_8_3();
  v18 = OUTLINED_FUNCTION_49_4();
  FigCaptureMetadataUtilitiesNormalizedRectEnforcedWithinValidRegionAfterGDC(v18, v19, v20, v21, v22, v23, v24, v25, a3, a2, a1);
  OUTLINED_FUNCTION_26_7();
  FigCaptureDenormalizeCropRect(v26, v27, v28, v29);
  FigCaptureAspectRatioForDimensions(a1);
  v30 = OUTLINED_FUNCTION_49_4();
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v31, v32, v30, v33, v34, v35, v36);
  OUTLINED_FUNCTION_26_7();
  v37 = simu_oisAdjustedOpticalCenter(a2, v17);
  result = simu_createWarpRectilinearDictionary(a2, a1, v12, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, v4, v5, v6, v7, v17, v37, v38);
  if (!result)
  {
    OUTLINED_FUNCTION_0();
    goto LABEL_15;
  }

  return result;
}

id simu_createWarpRectilinearDictionary(void *a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, float a12, double a13, double a14)
{
  if (CGRectIsNull(*&a4))
  {
    goto LABEL_17;
  }

  v68.origin.x = a8;
  v68.origin.y = a9;
  v68.size.width = a10;
  v68.size.height = a11;
  if (CGRectIsNull(v68))
  {
    goto LABEL_17;
  }

  v27 = [a3 objectForKeyedSubscript:*off_1E798ADC0];
  if (!v27)
  {
    return v27;
  }

  v28 = v27;
  if ([v27 length] != 64)
  {
    goto LABEL_17;
  }

  v29 = [v28 bytes];
  v27 = [a3 objectForKeyedSubscript:*off_1E798ADC8];
  if (!v27)
  {
    return v27;
  }

  v30 = v27;
  if ([v27 length] != 64)
  {
LABEL_17:
    v27 = 0;
    return v27;
  }

  v31 = [v30 bytes];
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B260), "floatValue"}];
  v33 = 0;
  v34 = (a13 + (a2 / 2)) / a2;
  v35 = (a14 + (SHIDWORD(a2) / 2)) / SHIDWORD(a2);
  v36 = 1.0 - v34;
  if (v34 > 1.0 - v34)
  {
    v36 = (a13 + (a2 / 2)) / a2;
  }

  v37 = 1.0 - v35;
  if (v35 > 1.0 - v35)
  {
    v37 = (a14 + (SHIDWORD(a2) / 2)) / SHIDWORD(a2);
  }

  v38 = sqrt(a11 * a11 * (v37 * v37) + v36 * v36 * (a10 * a10));
  v39 = (v29 + 32);
  v40 = (v31 + 32);
  v41 = ((a12 / 1000.0) * v38);
  v58 = vdupq_lane_s32(v32, 0);
  v42 = xmmword_1ACF06180;
  do
  {
    v43 = *v39++;
    v44 = v43;
    v45 = *v40++;
    v46 = vmlaq_f32(v44, v58, v45);
    v63 = vcvt_hight_f64_f32(v46);
    v64 = v42;
    v62 = vcvtq_f64_f32(*v46.f32);
    v47 = vaddq_s32(v42, v42);
    v48.i64[0] = v47.u32[2];
    v48.i64[1] = v47.u32[3];
    __y = vcvtq_f64_u64(v48);
    v48.i64[0] = v47.u32[0];
    v48.i64[1] = v47.u32[1];
    v60 = vcvtq_f64_u64(v48);
    v61 = pow(v41, v60.f64[0]);
    v60.f64[0] = pow(v41, v60.f64[1]);
    v59 = pow(v41, __y.f64[0]);
    v49 = pow(v41, __y.f64[1]);
    v50.f64[0] = v59;
    v50.f64[1] = v49;
    v51.f64[0] = v61;
    v51.f64[1] = v60.f64[0];
    v52 = &v67[v33];
    *v52 = vmulq_f64(v51, v62);
    v52[1] = vmulq_f64(v50, v63);
    v53.i64[0] = 0x400000004;
    v53.i64[1] = 0x400000004;
    v42 = vaddq_s32(v64, v53);
    v33 += 4;
  }

  while (v33 != 8);
  v54 = 0;
  v67[0] = 100.0;
  v55 = a6 / a10;
  v56 = v55 / 100.0;
  do
  {
    *&v67[v54] = vmulq_n_f64(*&v67[v54], v56);
    v54 += 2;
  }

  while (v54 != 8);
  v66[0] = [MEMORY[0x1E696AD98] numberWithDouble:v67[0]];
  v66[1] = &unk_1F224C190;
  v66[2] = [MEMORY[0x1E696AD98] numberWithDouble:v67[1]];
  v66[3] = &unk_1F224C190;
  v66[4] = [MEMORY[0x1E696AD98] numberWithDouble:v67[2]];
  v66[5] = &unk_1F224C190;
  v66[6] = [MEMORY[0x1E696AD98] numberWithDouble:v67[3]];
  v66[7] = &unk_1F224C190;
  v66[8] = [MEMORY[0x1E696AD98] numberWithDouble:v67[4]];
  v66[9] = &unk_1F224C190;
  v66[10] = [MEMORY[0x1E696AD98] numberWithDouble:v67[5]];
  v66[11] = &unk_1F224C190;
  v66[12] = [MEMORY[0x1E696AD98] numberWithDouble:v67[6]];
  v66[13] = &unk_1F224C190;
  v66[14] = [MEMORY[0x1E696AD98] numberWithDouble:v67[7]];
  v66[15] = &unk_1F224C190;
  v66[16] = &unk_1F224C190;
  v66[17] = &unk_1F224C190;
  v66[18] = &unk_1F224C1A0;
  v66[19] = [MEMORY[0x1E696AD98] numberWithDouble:v34];
  v66[20] = [MEMORY[0x1E696AD98] numberWithDouble:v35];
  v66[21] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:22];
  return v27;
}

void *BWDNGColorCalibrations(void *a1, int a2)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_2_16();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_10_4();
  if (!a1 || [a1 count] != 2)
  {
    return 0;
  }

  v50 = 0;
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  if ([a1 count])
  {
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = [a1 objectAtIndexedSubscript:v4];
      result = [v6 objectForKeyedSubscript:@"Temperature"];
      if (!result)
      {
        break;
      }

      if (a2)
      {
        v8 = [result shortValue];
      }

      else
      {
        [result floatValue];
        v8 = CMPhotoDNGGetLightSourceTagFromTemp();
      }

      *(&v50 + v4) = v8;
      result = [v6 objectForKeyedSubscript:@"DeviceRGBToXYZMatrix"];
      if (!result)
      {
        break;
      }

      v9 = result;
      if ([result length] != 36)
      {
        return 0;
      }

      v10 = [v9 bytes];
      v12 = v10[7];
      v11 = v10[8];
      v13 = v10[4];
      v14 = v10[5];
      v15 = v10[6];
      v16.f32[0] = (v13 * v11) - (v14 * v12);
      v17 = *v10;
      v18 = v10[1];
      v20 = v10[2];
      v19 = v10[3];
      v21 = (v19 * v12) - (v13 * v15);
      *v22.i32 = ((v18 * ((v14 * v15) - (v19 * v11))) + (*v10 * v16.f32[0])) + (v20 * v21);
      if (*v22.i32 == 0.0)
      {
        return 0;
      }

      v16.f32[1] = (v20 * v12) - (v18 * v11);
      v16.f32[2] = (v18 * v14) - (v20 * v13);
      v16.f32[3] = (v14 * v15) - (v19 * v11);
      v23 = (v48 + 36 * v4);
      v24 = vdupq_lane_s32(v22, 0);
      v25.f32[0] = (v17 * v11) - (v20 * v15);
      v25.f32[1] = (v20 * v19) - (v17 * v14);
      v25.i64[1] = __PAIR64__((v18 * v15) - (v17 * v12), LODWORD(v21));
      *v23 = vdivq_f32(v16, v24);
      v23[1] = vdivq_f32(v25, v24);
      v23[2].f32[0] = ((v17 * v13) - (v18 * v19)) / *v22.i32;
      v4 = v5;
      if ([a1 count] <= v5++)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v27 = 9;
    v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:9];
    v29 = [MEMORY[0x1E695DF70] arrayWithCapacity:9];
    v31 = v48;
    do
    {
      LODWORD(v30) = *v31;
      [MEMORY[0x1E696AD98] numberWithFloat:v30];
      [OUTLINED_FUNCTION_17() addObject:?];
      LODWORD(v32) = v31[9];
      [v29 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v32)}];
      ++v31;
      --v27;
    }

    while (v27);
    LOBYTE(v46) = [MEMORY[0x1E696AD98] numberWithShort:v50];
    v33 = [MEMORY[0x1E696AD98] numberWithShort:SHIWORD(v50)];
    v41 = OUTLINED_FUNCTION_39_6(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, v45, v46, v47);
    v44 = v28;
    v45 = v29;
    v42 = v41;
    v43 = [MEMORY[0x1E696AEC8] arrayWithObjects:&v44 count:2];
    return [MEMORY[0x1E696AEC8] arrayWithObjects:&v42 count:2];
  }

  return result;
}

uint64_t BWCreateDNGDictionaryWithZoomedGDCParameters(void *a1, void *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_3_39();
  OUTLINED_FUNCTION_61_2();
  OUTLINED_FUNCTION_54_5();
  OUTLINED_FUNCTION_3_39();
  OUTLINED_FUNCTION_10_4();
  if (!a1)
  {
    goto LABEL_11;
  }

  if ([a2 count] != 4 || (v23.origin.x = a4, v23.origin.y = a5, v23.size.width = a6, v23.size.height = a7, CGRectIsEmpty(v23)) || (a8 == *MEMORY[0x1E695EFF8] ? (v18 = a9 == *(MEMORY[0x1E695EFF8] + 8)) : (v18 = 0), v18))
  {
    a1 = 0;
LABEL_11:
    v20 = 0;
    goto LABEL_9;
  }

  a1 = [a1 mutableCopy];
  v22[0] = OUTLINED_FUNCTION_42_7();
  v22[2] = [a2 objectAtIndexedSubscript:{2, v22[0], OUTLINED_FUNCTION_41_7()}];
  v22[3] = [a2 objectAtIndexedSubscript:3];
  v22[4] = &unk_1F224C180;
  v22[5] = &unk_1F224C180;
  v22[6] = [MEMORY[0x1E696AD98] numberWithDouble:{(a8 + vcvtd_n_f64_s32(a3, 1uLL) - a4) / a6}];
  v22[7] = [MEMORY[0x1E696AD98] numberWithDouble:{(a9 + vcvtd_n_f64_s32(HIDWORD(a3), 1uLL) - a5) / a7}];
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:8];
  [a1 setObject:v19 forKeyedSubscript:*MEMORY[0x1E696D870]];
  v20 = [a1 copy];
LABEL_9:

  return v20;
}

uint64_t BWCreateDNGDictionaryWithUpdatedDimensionsIfNeeded(id *a1, unint64_t a2, unint64_t a3)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_50_6();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_10_4();
  if (!a1)
  {
    goto LABEL_21;
  }

  v6 = 0;
  if (!HIDWORD(a2))
  {
    goto LABEL_22;
  }

  v7 = 0;
  if (!a2)
  {
    goto LABEL_18;
  }

  v6 = 0;
  if (!HIDWORD(a3))
  {
LABEL_22:
    v7 = 0;
    goto LABEL_18;
  }

  v7 = 0;
  if (a3)
  {
    if (a2 != a3 || HIDWORD(a2) != HIDWORD(a3))
    {
      v9 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696D768]];
      v10 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696D7F8]];
      v11 = *MEMORY[0x1E696D800];
      v12 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696D800]];
      v13 = v12;
      if (v9 || v10 || v12)
      {
        v41 = v11;
        v6 = [a1 mutableCopy];
        v14 = 1.0 / (a2 / a3);
        v15 = 1.0 / (SHIDWORD(a2) / SHIDWORD(a3));
        if (v9)
        {
          v36 = BWRawDenormalizedActiveRectFromDNGDictionary(a1);
          BWSetRawDenormalizedActiveRectToDNGDictionary(v6, v14 * v36, v15 * v37, v14 * v38, v15 * v39);
          if (v10)
          {
LABEL_15:
            if (v13)
            {
              [objc_msgSend(v10 objectAtIndexedSubscript:{0), "doubleValue"}];
              v17 = v16;
              [objc_msgSend(v10 objectAtIndexedSubscript:{1), "doubleValue"}];
              v19 = v18;
              [objc_msgSend(v13 objectAtIndexedSubscript:{0), "doubleValue"}];
              v21 = v20;
              [objc_msgSend(v13 objectAtIndexedSubscript:{1), "doubleValue"}];
              v22 = v14 * v17;
              v23 = v15 * v19;
              v24 = v14 * v21;
              v26 = v15 * v25;
              LOBYTE(v44) = [MEMORY[0x1E696AD98] numberWithDouble:v22];
              v27 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
              OUTLINED_FUNCTION_39_6(v27, v28, v29, v30, v31, v32, v33, v34, v40, v41, v42, v43, v44, v45);
              [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
              v42 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
              v43 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
              [a1[473] arrayWithObjects:&v42 count:2];
              [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
            }
          }
        }

        else if (v10)
        {
          goto LABEL_15;
        }

        v7 = [v6 copy];
        goto LABEL_18;
      }
    }

LABEL_21:
    v6 = 0;
    v7 = 0;
  }

LABEL_18:

  return v7;
}

double BWRawDenormalizedActiveRectFromDNGDictionary(void *a1)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_12();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_10_4();
  v2 = *MEMORY[0x1E695F050];
  if (a1)
  {
    v3 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696D768]];
    if (v3)
    {
      v4 = v3;
      if ([v3 count] == 4)
      {
        [OUTLINED_FUNCTION_42_7() intValue];
        v2 = [OUTLINED_FUNCTION_41_7() intValue];
        [objc_msgSend(v4 objectAtIndexedSubscript:{2), "intValue"}];
        [objc_msgSend(v4 objectAtIndexedSubscript:{3), "intValue"}];
      }
    }
  }

  return v2;
}

uint64_t BWCreateDNGDictionaryWithUpdatedToneCurvesIfNeeded(void *a1, unint64_t a2, void *a3)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_3_39();
  OUTLINED_FUNCTION_61_2();
  OUTLINED_FUNCTION_54_5();
  OUTLINED_FUNCTION_3_39();
  OUTLINED_FUNCTION_10_4();
  if (!a1)
  {
    goto LABEL_19;
  }

  v6 = 0;
  if (!a3 || !HIDWORD(a2))
  {
    v7 = 0;
    goto LABEL_18;
  }

  v7 = 0;
  if (a2)
  {
    FigNote_AllowInternalDefaultLogs();
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_61_2();
    OUTLINED_FUNCTION_54_5();
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_10_4();
    v20 = 0;
    v8 = simu_ltmLUTsFromMetadata(a3, &v20);
    if (v8 && (v20 & 0xFFFFFFFE) == 4)
    {
      v9 = 8;
      if (v20 == 4)
      {
        v9 = 2;
      }

      v10 = 7;
      if (v20 == 4)
      {
        v10 = 1;
      }

      v11 = v8[v10];
      v12 = v8[v9];
      v13 = [a1 objectForKeyedSubscript:@"ProfileGainTableMap"];
      if (!v13 || ((v14 = v13, v15 = [objc_msgSend(v13 objectForKeyedSubscript:{@"MapPointsH", "unsignedIntValue"}], v16 = objc_msgSend(objc_msgSend(v14, "objectForKeyedSubscript:", @"MapPointsV"), "unsignedIntValue"), v15 == v11) ? (v17 = v16 == v12) : (v17 = 0), !v17))
      {
        v6 = [a1 mutableCopy];
        [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798B240), "floatValue"}];
        simu_addToneCurvesToDNGDictionary();
        if (v18)
        {
          v7 = [v6 copy];
          goto LABEL_18;
        }

LABEL_20:
        v7 = 0;
        goto LABEL_18;
      }
    }

LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

LABEL_18:

  return v7;
}

void simu_addToneCurvesToDNGDictionary()
{
  OUTLINED_FUNCTION_6_4();
  v112 = v0;
  v115 = v1;
  v3 = v2;
  v5 = v4;
  v6 = *MEMORY[0x1E696D850];
  [v4 setObject:0 forKeyedSubscript:*MEMORY[0x1E696D850]];
  v7 = *MEMORY[0x1E696D7F0];
  [OUTLINED_FUNCTION_38_7() setObject:? forKeyedSubscript:?];
  [OUTLINED_FUNCTION_38_7() setObject:? forKeyedSubscript:?];
  v8 = OUTLINED_FUNCTION_38_7();
  v107 = v9;
  [v8 setObject:? forKeyedSubscript:?];
  v10 = [v3 objectForKeyedSubscript:*off_1E798B358];
  v113 = v3;
  v114 = v6;
  if (v10)
  {
    v11 = v10;
    v12 = [v10 bytes];
    v13 = *v12;
    if (2 * v13 + 2 != [v11 length])
    {
      goto LABEL_84;
    }

    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * v13];
    if (v13)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        *&v15 = v17 / (v13 + -1.0);
        [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithFloat:", v15), v16 * 2}];
        LOWORD(v19) = v12[v16 + 1];
        LOWORD(v18) = v12[v13];
        *&v19 = LODWORD(v19) / v18;
        if (*&v19 >= 0.04045)
        {
          *&v19 = powf((*&v19 + 0.055) / 1.055, 2.4);
        }

        else
        {
          *&v19 = *&v19 / 12.92;
        }

        [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithFloat:", v19), v16 * 2 + 1}];
        ++v17;
        ++v16;
      }

      while (v13 != v16);
    }

    [v5 setObject:v14 forKeyedSubscript:v6];
    [v5 setObject:&unk_1F2243A50 forKeyedSubscript:v7];
  }

  v20 = [v3 objectForKeyedSubscript:*off_1E798A738];
  v128 = 1.0;
  v124 = 1.0;
  if (v20)
  {
    [v20 floatValue];
    v124 = 1.0 / v21;
  }

  v22 = *off_1E798A720;
  v23 = [v3 objectForKeyedSubscript:*off_1E798A720];
  v24 = [v3 objectForKeyedSubscript:*off_1E798A740];
  if (v23)
  {
    v25 = v24;
    [v5 setObject:v23 forKeyedSubscript:v22];
    [v23 floatValue];
    v124 = v124 * v26;
    [v25 floatValue];
    if (v27 > 0.0)
    {
      [v23 floatValue];
      v29 = v28;
      [v25 floatValue];
      v128 = 1.0;
      if ((v29 / v30) >= 1.0)
      {
        [v23 floatValue];
        v32 = v31;
        [v25 floatValue];
        v128 = v32 / v33;
      }
    }
  }

  v34 = [v3 objectForKeyedSubscript:*off_1E798A6A0];
  v35 = [v3 objectForKeyedSubscript:*off_1E798B338];
  if (v35)
  {
    v36 = v35;
    if ([v35 length] >= 2)
    {
      v37 = [v36 bytes];
      v38 = v37 + 1;
      v129 = *v37;
      v134[0] = 0;
      v39 = simu_ltmLUTsFromMetadata(v3, v134);
      if (v39)
      {
        if ((v134[0] & 0xFFFFFFFE) == 4)
        {
          v40 = v39;
          v111 = v5;
          v41 = 7;
          if (v134[0] == 4)
          {
            v41 = 1;
          }

          v42 = 8;
          if (v134[0] == 4)
          {
            v42 = 2;
          }

          v43 = 9;
          if (v134[0] == 4)
          {
            v44 = 3;
          }

          else
          {
            v44 = 9;
          }

          if (v134[0] != 4)
          {
            v43 = 3;
          }

          v45 = 4;
          if (v134[0] == 4)
          {
            v45 = 10;
          }

          v46 = v39[v41];
          v47 = v39[v42];
          v117 = v39[v44];
          v108 = v39[v43];
          v109 = v39[v45];
          v122 = v39[11];
          v110 = [MEMORY[0x1E695DF88] dataWithLength:4 * v129 * (v47 * v46)];
          v121 = [v110 mutableBytes];
          if (v47)
          {
            v120 = 0;
            v116 = v40 + 12;
            v49 = v129 - 1;
            v126 = (v129 - 1);
            v127 = v129 + -1.0;
            v50 = 1.0 / (v129 - 1);
            v125 = v50;
            v51 = (v122 - 1);
            v118 = 4 * v46 * v129;
            v123 = v46;
            v119 = v47;
            do
            {
              if (v46)
              {
                v53 = 0;
                v54 = v121;
                do
                {
                  if (v129)
                  {
                    v55 = 0;
                    v56 = &v116[v53 * v122] + ((v120 * v117) & 0xFFFFFFFFFFFFFFFELL);
                    do
                    {
                      v57 = v55 / v127;
                      v58 = 1.0;
                      if (v34)
                      {
                        v59 = vcvtms_u32_f32(v57 * v126);
                        if (v59 + 1 < v49)
                        {
                          v60 = v59 + 1;
                        }

                        else
                        {
                          v60 = v129 - 1;
                        }

                        if (v59)
                        {
                          v61 = v59;
                        }

                        else
                        {
                          v61 = v60;
                        }

                        if (v59)
                        {
                          v62 = v57 * v126;
                        }

                        else
                        {
                          v62 = v60;
                        }

                        if (v59)
                        {
                          v63 = v55 / v127;
                        }

                        else
                        {
                          v63 = v125;
                        }

                        v64 = [objc_msgSend(v34 objectAtIndex:{v61), "unsignedShortValue"}] / 65535.0;
                        v57 = ((v62 - v61) * ([objc_msgSend(v34 objectAtIndex:{v60), "unsignedShortValue"}] / 65535.0)) + (1.0 - (v62 - v61)) * v64;
                        v65 = v57 / v63;
                        if (v63 == 0.0)
                        {
                          v65 = 1.0;
                        }
                      }

                      else
                      {
                        v65 = 1.0;
                      }

                      v66 = v128 * v57;
                      if ((v128 * v57) > 1.0)
                      {
                        v66 = 1.0;
                      }

                      v67 = v66 * v51;
                      v68 = vcvtms_u32_f32(v66 * v51);
                      if (v57 == 0.0)
                      {
                        v69 = 1.0;
                      }

                      else
                      {
                        v69 = v66 / v57;
                      }

                      if (v68 + 1 < v122 - 1)
                      {
                        v70 = v68 + 1;
                      }

                      else
                      {
                        v70 = v122 - 1;
                      }

                      if (v68)
                      {
                        v71 = v66;
                      }

                      else
                      {
                        v67 = v70;
                        v68 = v70;
                        v52 = 1.0 / (v122 - 1);
                        v71 = v52;
                      }

                      LOWORD(v48) = *(v56 + 2 * v68);
                      v72 = LODWORD(v48) / 65535.0;
                      LOWORD(v48) = *(v56 + 2 * v70);
                      *&v48 = LODWORD(v48) / 65535.0;
                      v73 = v67 - v68;
                      v74 = 1.0 - v73;
                      v75 = (v73 * *&v48) + v74 * v72;
                      if (v71 != 0.0)
                      {
                        v58 = v75 / (v124 * v71);
                      }

                      v76 = 1.0;
                      if (v75 != 0.0)
                      {
                        v77 = vcvtms_u32_f32(v126 * v75);
                        v78 = (v126 * v75) - v77;
                        LOWORD(v48) = v38[v77];
                        v48 = (LODWORD(v48) / 65535.0);
                        if (v77 + 1 < v49)
                        {
                          v79 = v77 + 1;
                        }

                        else
                        {
                          v79 = v129 - 1;
                        }

                        LOWORD(v74) = v38[v79];
                        v80 = (v78 * (LODWORD(v74) / 65535.0)) + (1.0 - v78) * v48;
                        v76 = v80 / v75;
                      }

                      *(v54 + 4 * v55++) = ((v65 * v69) * v58) * v76;
                    }

                    while (v129 != v55);
                  }

                  ++v53;
                  v46 = v123;
                  v54 += 4 * v129;
                }

                while (v53 != v123);
              }

              v47 = v119;
              ++v120;
              v121 += v118;
            }

            while (v120 != v119);
          }

          v81 = ((v115 - v108 * v46) / 2 + (v108 >> 1)) / v115;
          v82 = ((HIDWORD(v115) - v109 * v47) / 2 + (v109 >> 1)) / SHIDWORD(v115);
          if ([objc_msgSend(v113 objectForKeyedSubscript:{*off_1E798A6A8), "BOOLValue"}])
          {
            v83 = *(MEMORY[0x1E695F050] + 16);
            v133.origin = *MEMORY[0x1E695F050];
            v133.size = v83;
            v85 = v110;
            v84 = v111;
            v86 = v114;
            v87 = 0x1E696A000;
            if (FigCFDictionaryGetCGRectIfPresent())
            {
              v88 = CGRectGetMidX(v133) + -0.5;
              v89 = CGRectGetMidY(v133) + -0.5;
              v81 = v81 + v88;
              v82 = v82 + v89;
            }
          }

          else
          {
            v85 = v110;
            v84 = v111;
            v86 = v114;
            v87 = 0x1E696A000uLL;
          }

          v90 = v108 / v115;
          v91 = v109 / SHIDWORD(v115);
          if (v112)
          {
            [objc_msgSend(v113 objectForKeyedSubscript:{*off_1E798B240), "floatValue"}];
            v92 = (v90 * v46) * 0.5;
            v93 = (v91 * v47) * 0.5;
            v90 = v90 / v94;
            v91 = v91 / v94;
            v81 = v81 + (v92 - ((v90 * v46) * 0.5));
            v82 = v82 + (v93 - ((v91 * v47) * 0.5));
          }

          v95 = 0.1063 / v124;
          *&v95 = v95;
          v96 = 0.3576 / v124;
          v97 = 0.0361 / v124;
          v132[0] = [*(v87 + 3480) numberWithFloat:v95];
          *&v98 = v96;
          v132[1] = [*(v87 + 3480) numberWithFloat:v98];
          *&v99 = v97;
          v132[2] = [*(v87 + 3480) numberWithFloat:v99];
          *&v100 = 0.0 / v124;
          v132[3] = [*(v87 + 3480) numberWithFloat:v100];
          *&v101 = 0.5 / v124;
          v132[4] = [*(v87 + 3480) numberWithFloat:v101];
          v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:5];
          v130[0] = @"MapPointsV";
          v131[0] = [*(v87 + 3480) numberWithUnsignedShort:v47];
          v130[1] = @"MapPointsH";
          v131[1] = [*(v87 + 3480) numberWithUnsignedShort:v46];
          v130[2] = @"MapPointsN";
          v131[2] = [*(v87 + 3480) numberWithUnsignedLong:v129];
          v130[3] = @"MapSpacingV";
          *&v103 = v91;
          v131[3] = [*(v87 + 3480) numberWithFloat:v103];
          v130[4] = @"MapSpacingH";
          *&v104 = v90;
          v131[4] = [*(v87 + 3480) numberWithFloat:v104];
          v130[5] = @"MapOriginV";
          *&v105 = v82;
          v131[5] = [*(v87 + 3480) numberWithFloat:v105];
          v130[6] = @"MapOriginH";
          *&v106 = v81;
          v131[6] = [*(v87 + 3480) numberWithFloat:v106];
          v131[7] = v102;
          v130[7] = @"MapInputWeights";
          v130[8] = @"GainValues";
          v131[8] = v85;
          [v84 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v131, v130, 9), @"ProfileGainTableMap"}];
          if ([v84 objectForKeyedSubscript:@"ProfileGainTableMap"] || objc_msgSend(v84, "objectForKeyedSubscript:", v86))
          {
            [v84 setObject:@"Apple Embedded Color Profile" forKeyedSubscript:v107];
          }
        }
      }
    }
  }

LABEL_84:
  OUTLINED_FUNCTION_5_5();
}

void *BWCreateRawMetadataFromMetadata(void *a1, void *a2, unsigned int a3, uint64_t a4)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_9_22();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_9_22();
  OUTLINED_FUNCTION_10_4();
  v7 = [a1 mutableCopy];
  [v7 setObject:a2 forKeyedSubscript:*MEMORY[0x1E696D808]];
  [v7 removeObjectForKey:*MEMORY[0x1E696D320]];
  v8 = *MEMORY[0x1E696D9B0];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v7, "objectForKeyedSubscript:", *MEMORY[0x1E696D9B0])}];
  [v9 removeObjectForKey:*MEMORY[0x1E696D968]];
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_9_22();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_9_22();
  OUTLINED_FUNCTION_10_4();
  if (a2)
  {
    v10 = [a2 objectForKeyedSubscript:*MEMORY[0x1E696D800]];
    if (v10)
    {
      if ([v10 count] == 2)
      {
        v11 = [OUTLINED_FUNCTION_42_7() intValue];
        v12 = [OUTLINED_FUNCTION_41_7() intValue];
        if (v12)
        {
          if (v11)
          {
            v13 = v12;
            v14 = [MEMORY[0x1E696AD98] numberWithInt:v11];
            [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696DAA8]];
            v15 = [MEMORY[0x1E696AD98] numberWithInt:v13];
            [v9 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696DAB0]];
          }
        }
      }
    }
  }

  [v7 setObject:v9 forKeyedSubscript:v8];
  v16 = *MEMORY[0x1E696DE30];
  v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v7, "objectForKeyedSubscript:", *MEMORY[0x1E696DE30])}];
  v18 = *off_1E7989D10;
  v19 = [objc_msgSend(v17 objectForKeyedSubscript:{*off_1E7989D10), "unsignedIntValue"}];
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v19 | a3), v18}];
  if (a3 == 0x10000)
  {
    [v17 setObject:a4 forKeyedSubscript:*off_1E7989AA0];
  }

  [v7 setObject:v17 forKeyedSubscript:v16];
  return v7;
}

unsigned __int16 *simu_ltmLUTsFromMetadata(void *a1, int *a2)
{
  v3 = [a1 objectForKeyedSubscript:*off_1E798B450];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if ([v3 length] < 0x16)
  {
    return 0;
  }

  v5 = [v4 bytes];
  v6 = v5;
  v7 = *v5;
  if (v7 != 5)
  {
    if (v7 == 4)
    {
      v8 = v5[3] * v5[2] + 24;
      if ([v4 length] >= v8)
      {
        if (a2)
        {
          v9 = 4;
LABEL_11:
          *a2 = v9;
          return v6;
        }

        return v6;
      }
    }

    else
    {
      FigCaptureGetFrameworkRadarComponent();
      v23 = 0;
      v22 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_8_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v12 = *v6;
      v21[0] = 67109120;
      v21[1] = v12;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10();
      FigCapturePleaseFileRadar(v13, v14, v15, v16, v17, 1996, v18, v19, v21);
      free(v6);
    }

    return 0;
  }

  v10 = v5[9] * v5[8] + 24;
  if ([v4 length] < v10)
  {
    return 0;
  }

  if (a2)
  {
    v9 = 5;
    goto LABEL_11;
  }

  return v6;
}

void SoundAnalysisLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *SoundAnalysisLibrary(void)") description:{@"BWSoundAnalysisSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

void __getSNMovieRemixClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getSNMovieRemixClass(void)_block_invoke") description:{@"BWSoundAnalysisSoftLinking.m", 17, @"Unable to find class %s", "SNMovieRemix"}];
  __break(1u);
}

void __getSNMovieRemixRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getSNMovieRemixRequestClass(void)_block_invoke") description:{@"BWSoundAnalysisSoftLinking.m", 18, @"Unable to find class %s", "SNMovieRemixRequest"}];
  __break(1u);
}

uint64_t FigCaptureAffineTransformFromDictionaryRepresentation@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v5;
  *(a2 + 32) = *(v4 + 32);
  result = FigCaptureContainsAffineTransformDictionaryRepresentation(a1);
  if (result)
  {
    [objc_msgSend(a1 objectForKeyedSubscript:{@"a", "doubleValue"}];
    v8 = v7;
    [objc_msgSend(a1 objectForKeyedSubscript:{@"b", "doubleValue"}];
    v10 = v9;
    [objc_msgSend(a1 objectForKeyedSubscript:{@"c", "doubleValue"}];
    v12 = v11;
    [objc_msgSend(a1 objectForKeyedSubscript:{@"d", "doubleValue"}];
    v14 = v13;
    [objc_msgSend(a1 objectForKeyedSubscript:{@"tx", "doubleValue"}];
    v16 = v15;
    result = [objc_msgSend(a1 objectForKeyedSubscript:{@"ty", "doubleValue"}];
    *a2 = v8;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
    *(a2 + 24) = v14;
    *(a2 + 32) = v16;
    *(a2 + 40) = v17;
  }

  return result;
}

void __getMPSImageStatisticsMeanClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getMPSImageStatisticsMeanClass(void)_block_invoke") description:{@"BWFusionTrackerInferenceAdapter.m", 52, @"Unable to find class %s", "MPSImageStatisticsMean"}];
  __break(1u);
}

void __getMPSImageStatisticsMeanClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *MetalPerformanceShadersLibrary(void)") description:{@"BWFusionTrackerInferenceAdapter.m", 51, @"%s", *a1}];
  __break(1u);
}

uint64_t FigCaptureCreateScaledCalibrationDataDictionaryFromSampleBufferMetadata(void *a1, uint64_t a2, void *a3, int a4, int a5, void *a6, const __CFDictionary *a7, int a8, unsigned __int8 a9, char a10, char a11)
{
  v19 = [MEMORY[0x1E695DF90] dictionary];
  v20 = [a3 objectForKeyedSubscript:{objc_msgSend(a1, "objectForKeyedSubscript:", *off_1E798B540)}];
  [objc_msgSend(v20 objectForKeyedSubscript:{*off_1E7989F18), "floatValue"}];
  v22 = v21;
  memset(v80, 0, sizeof(v80));
  [a6 getBytes:v80 length:48];
  v23 = [v20 objectForKeyedSubscript:*off_1E7989E78];
  v79 = 0u;
  v75 = 0x3F800000uLL;
  v76 = 0x3F80000000000000uLL;
  v78 = 1065353216;
  v77 = 0;
  if (v23)
  {
    v24 = v23;
    if ([v23 length] != 48)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_45();
      goto LABEL_30;
    }

    [v24 getBytes:time length:48];
    v75.i32[2] = v71;
    v75.i64[0] = vzip1q_s32(*time, *&time[16]).u64[0];
    LODWORD(v78) = v73;
    DWORD2(v76) = v72;
    *&v76 = vtrn2q_s32(*time, *&time[16]).u64[0];
    v77 = vzip1q_s32(vdupq_laneq_s32(*time, 2), vdupq_laneq_s32(*&time[16], 2)).u64[0];
    DWORD2(v79) = v74;
    *&v79 = vuzp2q_s32(vuzp2q_s32(*time, *&time[16]), *time).u64[0];
  }

  size = *MEMORY[0x1E695F060];
  if (!CGSizeMakeWithDictionaryRepresentation(a7, &size))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_45();
LABEL_30:
    FigDebugAssert3();
    return 0;
  }

  v25 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  if (v25 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v27 = (v26 * a5);
  v28 = v26 * a4;
  v68 = 1.0;
  if (a11)
  {
    [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B608), "floatValue"}];
    v68 = v29;
    if (v29 <= 0.0)
    {
      v68 = 1.0;
      v30 = FigMotionComputeLensPositionScalingFactor(a1, size.width, size.height, v28, v27, &v68);
      if (v30)
      {
        v60 = v30;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_45();
        LODWORD(v61) = v60;
        FigDebugAssert3();
      }
    }
  }

  v67 = *MEMORY[0x1E695EFF8];
  *time = *a2;
  *&time[16] = *(a2 + 16);
  CMTimeGetSeconds(time);
  if (FigMotionComputeDistortionCenter(a1, size.width, size.height, v28, v27, &v67, 1.0 / v22, v68))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_45();
    goto LABEL_30;
  }

  if (!a10)
  {
LABEL_17:
    v33 = 0;
    v34 = 0;
    goto LABEL_24;
  }

  v31 = [a1 objectForKeyedSubscript:*off_1E798B260];
  if (v31)
  {
    [v31 floatValue];
    if (v32 == 0.0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_45();
      FigDebugAssert3();
      goto LABEL_17;
    }
  }

  else
  {
    v32 = 1.0;
  }

  v66 = v32;
  v35 = [v20 objectForKeyedSubscript:{*off_1E7989EC0, v61}];
  if (!v35)
  {
    fig_log_get_emitter();
    v59 = FigSignalErrorAtGM();
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    if (!v59)
    {
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  v36 = v35;
  v37 = [v35 objectForKeyedSubscript:*off_1E798ADC0];
  if ([v37 length] != 64 || (v38 = objc_msgSend(v37, "bytes"), v64 = *v38, v65 = v38[1], v62 = v38[2], v63 = v38[3], v39 = objc_msgSend(v36, "objectForKeyedSubscript:", *off_1E798ADC8), objc_msgSend(v39, "length") != 64))
  {
LABEL_28:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_54();
    FigDebugAssert3();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_54();
    goto LABEL_30;
  }

  v40 = [v39 bytes];
  v42 = *v40;
  v41 = v40[1];
  v44 = v40[2];
  v43 = v40[3];
  v46 = v64;
  v45 = v65;
  v48 = v62;
  v47 = v63;
LABEL_23:
  *time = vmlaq_n_f32(v48, v44, v66);
  *&time[16] = vmlaq_n_f32(v47, v43, v66);
  v81[0] = vmlaq_n_f32(v46, v42, v66);
  v81[1] = vmlaq_n_f32(v45, v41, v66);
  v33 = [MEMORY[0x1E695DEF0] dataWithBytes:time length:32];
  v34 = [MEMORY[0x1E695DEF0] dataWithBytes:v81 length:32];
LABEL_24:
  v49 = FigCaptureConvertRotationAndMirroringToExifOrientation(a8, a9);
  if (!FigCaptureRotateCalibrationData(&size.width, v80, &v67, &v75, v49, v50, v51, v52, v53, v54, v55, v56))
  {
    *&v57 = (v22 * 0.001) / v68;
    [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v57), @"PixelSize"}];
    [v19 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v80, 48), @"IntrinsicMatrix"}];
    [v19 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v75, 64), @"ExtrinsicMatrix"}];
    [v19 setObject:CGPointCreateDictionaryRepresentation(v67) forKeyedSubscript:@"LensDistortionCenter"];
    [v19 setObject:CGSizeCreateDictionaryRepresentation(size) forKeyedSubscript:@"IntrinsicMatrixReferenceDimensions"];
    [v19 setObject:v33 forKeyedSubscript:@"LensDistortionCoefficients"];
    [v19 setObject:v34 forKeyedSubscript:@"InverseLensDistortionCoefficients"];
    return [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v19];
  }

  return 0;
}

uint64_t FigCaptureCreateCalibrationDataDictionaryFromSampleBufferMetadataIncludeMaxRadius(void *a1, __int128 *a2, void *a3, int a4, int a5, void *a6, const __CFDictionary *a7, int a8, unsigned __int8 a9, char a10, char a11)
{
  v19 = *a2;
  v20 = *(a2 + 2);
  ScaledCalibrationDataDictionaryFromSampleBufferMetadata = FigCaptureCreateScaledCalibrationDataDictionaryFromSampleBufferMetadata(a1, &v19, a3, a4, a5, a6, a7, a8, a9, a10, 0);
  if (!ScaledCalibrationDataDictionaryFromSampleBufferMetadata)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    goto LABEL_8;
  }

  v14 = ScaledCalibrationDataDictionaryFromSampleBufferMetadata;
  v15 = [MEMORY[0x1E695DF90] dictionary];
  [v15 addEntriesFromDictionary:v14];

  v16 = [a3 objectForKeyedSubscript:{objc_msgSend(a1, "objectForKeyedSubscript:", *off_1E798B540)}];
  v18 = 0;
  if (a11)
  {
    if (!FigCaptureGetDistortionCalibrationValidMaxRadiusInPixels(v16, &v18))
    {
      [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v18), @"DistortionCalibrationValidMaxRadiusInPixels"}];
      return [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v15];
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
LABEL_8:
    FigDebugAssert3();
    return 0;
  }

  return [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v15];
}

uint64_t FigCaptureGetDistortionCalibrationValidMaxRadiusInPixels(uint64_t a1, int *a2)
{
  result = 4294954516;
  if (a1 && a2)
  {
    if (BWDeviceIsiPad() && !OUTLINED_FUNCTION_4_43())
    {
      v8 = 1837;
    }

    else
    {
      [OUTLINED_FUNCTION_4_43() floatValue];
      if (v5 <= 0.0)
      {
        return 4294954516;
      }

      v6 = v5;
      if (!OUTLINED_FUNCTION_4_43())
      {
        return 4294954516;
      }

      [OUTLINED_FUNCTION_4_43() floatValue];
      if (v7 <= 0.0)
      {
        return 4294954516;
      }

      v8 = ((v6 * 1000.0) / v7);
    }

    result = 0;
    *a2 = v8;
  }

  return result;
}

uint64_t FigCaptureCreateColorCameraCalibrationForColorSampleBuffer(void *a1, void *a2, int a3, int a4, void *a5)
{
  v62 = *MEMORY[0x1E695EFF8];
  if (a5)
  {
    v10 = *off_1E798A3C8;
    v11 = CMGetAttachment(a1, *off_1E798A3C8, 0);
    size = *MEMORY[0x1E695F060];
    v12 = CMGetAttachment(a1, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0);
    if (v12)
    {
      if (CGSizeMakeWithDictionaryRepresentation(v12, &size))
      {
        v13 = CMGetAttachment(a1, @"OriginalCameraIntrinsicMatrix", 0);
        if (v13)
        {
          v14 = [v13 bytes];
          v57 = v14[1];
          v58 = *v14;
          v56 = v14[2];
          v15 = [objc_msgSend(a2 "cameraInfo")];
          if (v15)
          {
            v16 = v15;
            if ([v15 length] == 48)
            {
              [v16 getBytes:v60 length:48];
              *v17.i64 = OUTLINED_FUNCTION_1_60(v60[0], v60[1], v60[2]);
              v21 = FigCaptureTransformExtrinsicMatrix(v17, v18, v19, v20, _PromotedConst_52, unk_1AD0553F0, xmmword_1AD055400);
              v54 = v22;
              v55 = v21;
              v52 = v24;
              v53 = v23;
              [objc_msgSend(objc_msgSend(a2 "cameraInfo")];
              if (v25 > 0.0)
              {
                v26 = v25;
                v27 = 1.0 / v25;
                if (a1)
                {
                  v28 = [CMGetAttachment(a1 v10];
                  CMTimeMakeFromDictionary(&time, v28);
                  CMTimeGetSeconds(&time);
                }

                v29 = 1.0;
                result = FigMotionComputeDistortionCenter(v11, size.width, size.height, a3, a4, &v62, v27, 1.0);
                if (result)
                {
                  v46 = 0;
                  goto LABEL_27;
                }

                v31 = [(__CFDictionary *)v11 objectForKeyedSubscript:*off_1E798B260];
                if (!v31 || ([v31 floatValue], v29 = v32, v32 != 0.0))
                {
                  v33 = [objc_msgSend(a2 "cameraInfo")];
                  if (v33)
                  {
                    v34 = v33;
                    v35 = [v33 objectForKeyedSubscript:*off_1E798ADC0];
                    if ([v35 length] == 64)
                    {
                      v36 = [v35 bytes];
                      v37 = [v34 objectForKeyedSubscript:*off_1E798ADC8];
                      if ([v37 length] == 64)
                      {
                        v38 = v26 * 0.001;
                        v39 = [v37 bytes];
                        v40 = 0;
                        memset(v59, 0, sizeof(v59));
                        do
                        {
                          v41 = (v59 + v40);
                          *v41 = *(v36 + v40) + (*(v39 + v40) * v29);
                          v41[8] = *(v36 + v40 + 32) + (*(v39 + v40 + 32) * v29);
                          v40 += 4;
                        }

                        while (v40 != 32);
                        v42 = objc_alloc(getADPolynomialsLensDistortionModelClass());
                        v43 = [v42 initWithDistortionCenter:v59 andPolynomials:*&v62];
                        if (v43)
                        {
                          v44 = v43;
                          v45 = objc_alloc(getADCameraCalibrationClass());
                          v46 = [v45 initWithIntrinsics:v44 cameraToPlatformTransform:*&v58 pixelSize:*&v57 forReferenceDimensions:*&v56 withDistortionModel:{v55, v54, v53, v52, v38, *&size.width, *&size.height}];

                          if (v46)
                          {
                            ImageBuffer = CMSampleBufferGetImageBuffer(a1);
                            Width = CVPixelBufferGetWidth(ImageBuffer);
                            Height = CVPixelBufferGetHeight(ImageBuffer);
                            if (size.width != Width || size.height != Height)
                            {
                              v51 = [v46 mutableCopy];
                              if (![v51 scale:{Width, Height}])
                              {
                                result = 4294954513;
                                goto LABEL_27;
                              }

                              v46 = [v51 copy];
                            }

                            result = 0;
LABEL_27:
                            *a5 = v46;
                            return result;
                          }
                        }

                        else
                        {
                          v46 = 0;
                        }

                        result = 4294954510;
                        goto LABEL_27;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v46 = 0;
    result = 4294954516;
    goto LABEL_27;
  }

  return 4294954516;
}

uint64_t FigCaptureCreateDepthMetadataForColorCameraCalibration(void *a1, uint64_t a2, void *a3)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0x3F800000uLL;
  DWORD1(v24) = 1065353216;
  DWORD2(v25) = 1065353216;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  [a1 intrinsicMatrix];
  DWORD2(v20) = v6;
  DWORD2(v21) = v7;
  *&v20 = v8;
  *&v21 = v9;
  DWORD2(v22) = v10;
  *&v22 = v11;
  v12 = [MEMORY[0x1E695DEF0] dataWithBytes:&v20 length:48];
  if (!a3)
  {
    return 4294954516;
  }

  v13 = v12;
  [a1 referenceDimensions];
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v27);
  v15 = [a1 distortionModel];
  v16 = [v15 distortionPolynomials];
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v17 setObject:&unk_1F2243E88 forKeyedSubscript:*off_1E798D008];
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", a2), *off_1E798CFD0}];
  [v17 setObject:&unk_1F2243E88 forKeyedSubscript:*off_1E798CFC0];
  [v17 setObject:DictionaryRepresentation forKeyedSubscript:*off_1E798CFE0];
  [v17 setObject:v13 forKeyedSubscript:*off_1E798CFD8];
  [v17 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v23, 64), *off_1E798CFC8}];
  v18 = MEMORY[0x1E696AD98];
  [a1 pixelSize];
  [v17 setObject:objc_msgSend(v18 forKeyedSubscript:{"numberWithFloat:"), *off_1E798D000}];
  [v15 distortionCenter];
  [v17 setObject:CGPointCreateDictionaryRepresentation(v28) forKeyedSubscript:*off_1E798CFF0];
  [v17 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v16, 32), *off_1E798CFF8}];
  [v17 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v16 + 32, 32), *off_1E798CFE8}];
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", (FigDepthDataGetCurrentMajorVersion() << 16) | 0xEA61), *off_1E798D010}];
  CFRelease(DictionaryRepresentation);
  result = 0;
  *a3 = v17;
  return result;
}

uint64_t FigCaptureCreateJasperToColorCameraTransformForJasperSensorConfiguration(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294954516;
  }

  v3 = [objc_msgSend(a1 "cameraInfo")];
  if (!v3)
  {
    return 4294954516;
  }

  v4 = v3;
  if ([v3 length] != 48)
  {
    return 4294954516;
  }

  [v4 getBytes:v18 length:48];
  *v5.i64 = OUTLINED_FUNCTION_1_60(v18[0], v18[1], v18[2]);
  v9 = FigCaptureTransformExtrinsicMatrix(v5, v6, v7, v8, _PromotedConst_52, unk_1AD0553F0, xmmword_1AD055400);
  result = 0;
  *(a2 + 8) = v11;
  *(a2 + 24) = v12;
  *(a2 + 40) = v13;
  *(a2 + 56) = v14;
  *a2 = v9;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  return result;
}

uint64_t FigCaptureRotateCalibrationData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptureRotateCalibrationData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void *getColorTranslationMatrixFromCalibration(void *a1, unsigned int a2, int a3)
{
  v4 = [a1 objectAtIndexedSubscript:a2];
  result = [v4 objectForKeyedSubscript:@"Temperature"];
  if (!result)
  {
    return result;
  }

  if ([result unsignedIntValue] != a3)
  {
    return 0;
  }

  result = [v4 objectForKeyedSubscript:@"DeviceRGBToXYZMatrix"];
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ([result length] != 36)
  {
    return 0;
  }

  v7 = [v6 bytes];
  v8 = vcvtq_f64_f32(v7[1]);
  v34 = vcvtq_f64_f32(*v7);
  v35[0] = v8;
  v9 = vcvtq_f64_f32(v7[3]);
  v35[1] = vcvtq_f64_f32(v7[2]);
  v35[2] = v9;
  v36 = v7[4].f32[0];
  if (a3 == 6500)
  {
    v19 = &v34;
    goto LABEL_13;
  }

  if (a3 != 2800)
  {
    return 0;
  }

  v10 = 0;
  v11 = v33;
  do
  {
    v12 = (&getColorTranslationMatrixFromCalibration_CA_2800toD65 + 24 * v10);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v35 + 1;
    v17 = v11;
    v18 = 3;
    do
    {
      *v17++ = v14 * *v16 + v13 * *(v16 - 3) + v15 * v16[3];
      ++v16;
      --v18;
    }

    while (v18);
    ++v10;
    v11 += 3;
  }

  while (v10 != 3);
  v19 = v33;
LABEL_13:
  if (!invert3x3Matrix(v19->f64, v32))
  {
    return 0;
  }

  v20 = 0;
  v30[9] = v32[1] + v32[0] * 0.950455927 + v32[2] * 1.08905775;
  v30[11] = 0.0;
  v31[0] = 0;
  v30[10] = 0.0;
  *&v31[1] = v32[4] + v32[3] * 0.950455927 + v32[5] * 1.08905775;
  memset(&v31[2], 0, 24);
  *&v31[5] = v32[7] + v32[6] * 0.950455927 + v32[8] * 1.08905775;
  v21 = v30;
  do
  {
    v22 = &v19->f64[3 * v20];
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    v26 = v31;
    v27 = v21;
    v28 = 3;
    do
    {
      *v27++ = v24 * *v26 + v23 * *(v26 - 3) + v25 * v26[3];
      ++v26;
      --v28;
    }

    while (v28);
    ++v20;
    v21 += 3;
  }

  while (v20 != 3);
  v29[0] = [MEMORY[0x1E696AD98] numberWithDouble:v30[0]];
  v29[1] = [MEMORY[0x1E696AD98] numberWithDouble:v30[1]];
  v29[2] = [MEMORY[0x1E696AD98] numberWithDouble:v30[2]];
  v29[3] = [MEMORY[0x1E696AD98] numberWithDouble:v30[3]];
  v29[4] = [MEMORY[0x1E696AD98] numberWithDouble:v30[4]];
  v29[5] = [MEMORY[0x1E696AD98] numberWithDouble:v30[5]];
  v29[6] = [MEMORY[0x1E696AD98] numberWithDouble:v30[6]];
  v29[7] = [MEMORY[0x1E696AD98] numberWithDouble:v30[7]];
  v29[8] = [MEMORY[0x1E696AD98] numberWithDouble:v30[8]];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:9];
}

uint64_t BWUpdateFrameLevelMetadataForProResRaw_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWUpdateFrameLevelMetadataForProResRaw_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWUpdateFrameLevelMetadataForProResRaw_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

float BWSampleBufferComputeIOSurfaceCompressionRatio(opaqueCMSampleBuffer *a1, unint64_t *a2, unint64_t *a3)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  if (ImageBuffer && (v6 = ImageBuffer, CVPixelBufferGetIOSurface(ImageBuffer)))
  {
    CompressionTypeOfPlane = IOSurfaceGetCompressionTypeOfPlane();
    v8 = 0.0;
    if (CompressionTypeOfPlane && (v9 = CompressionTypeOfPlane, (PlaneCount = CVPixelBufferGetPlaneCount(v6)) != 0))
    {
      v11 = PlaneCount;
      v12 = 0;
      v13 = 0;
      v14 = v9 - 3;
      do
      {
        if (v14 >= 2)
        {
          v12 += IOSurfaceGetCompressedTileDataRegionMemoryUsedOfPlane();
        }

        ++v13;
      }

      while (v11 != v13);
      if (v12)
      {
        extraColumnsOnRight = 0;
        extraColumnsOnLeft = 0;
        extraRowsOnBottom = 0;
        extraRowsOnTop = 0;
        CVPixelBufferGetExtendedPixels(v6, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
        Width = CVPixelBufferGetWidth(v6);
        v16 = extraColumnsOnLeft + Width + extraColumnsOnRight;
        Height = CVPixelBufferGetHeight(v6);
        v18 = extraRowsOnTop + Height + extraRowsOnBottom;
        PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
        v20 = (FigCapturePixelFormatBytesPerPixel(PixelFormatType) * (v18 * v16));
        v8 = v12 / v20;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
      v12 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_8_28();
    FigDebugAssert3();
    v20 = 0;
    v12 = 0;
    v8 = 0.0;
  }

  *a2 = v12;
  *a3 = v20;
  return v8;
}

uint64_t BWSampleBufferComputeIOSurfaceCompressionHistogram(opaqueCMSampleBuffer *a1)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  if (!ImageBuffer)
  {
    return 4294954516;
  }

  v2 = ImageBuffer;
  if (!CVPixelBufferGetIOSurface(ImageBuffer) || IOSurfaceGetCompressionTypeOfPlane() != 3 || CVPixelBufferGetPlaneCount(v2) != 2)
  {
    return 4294954516;
  }

  result = CVPixelBufferCalculateSparseHistogramOfCompressedTileDataUsageOfPlane();
  if (!result)
  {

    return CVPixelBufferCalculateSparseHistogramOfCompressedTileDataUsageOfPlane();
  }

  return result;
}

void *BWGetScaledCameraIntrinsicsMatrix(void *result, float a2)
{
  if (result)
  {
    v3 = result;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    if ([result length] == 48)
    {
      [v3 getBytes:&v10 length:{objc_msgSend(v3, "length")}];
      v4 = *&v10 * a2;
      v5 = *(&v11 + 1) * a2;
      v7 = *&v12;
      v8 = DWORD2(v12);
      v6 = *(&v12 + 1);
      CGAffineTransformMakeScale(&v9, a2, a2);
      *&v10 = v4;
      *(&v11 + 1) = v5;
      DWORD2(v12) = v8;
      *&v12 = vcvt_f32_f64(vaddq_f64(*&v9.tx, vmlaq_n_f64(vmulq_n_f64(*&v9.c, v6), *&v9.a, v7)));
      return [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:48];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void BWPropagateZoomInformationToAttachedMediaSampleBuffer(const void *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *off_1E798A3C8;
      if (CMGetAttachment(a1, *off_1E798A3C8, 0))
      {
        v4 = CMGetAttachment(a2, v3, 0);
        if (v4)
        {
          v5 = v4;
          v6 = OUTLINED_FUNCTION_2_7();
          FigCaptureMetadataUtilitiesCopyZoomRelatedMetadata(v6, v7);

          CMSetAttachment(a2, v3, v5, 1u);
        }
      }
    }
  }
}

uint64_t BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWCMSampleBufferCreateCopyIncludingMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWCMSampleBufferCopyReattachAndReturnMutableMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWCMSampleBufferCopyMetadataToSampleBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWCMSampleBufferCopyMetadataToSampleBuffer_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWSampleBufferCreateFromEncodedImageSurface_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateFromEncodedImageSurface_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

void BWSampleBufferCreateFromEncodedImageSurface_cold_3(uint64_t a1, const void *a2)
{
  fig_log_get_emitter();
  FigDebugAssert3();
  CFRelease(a2);
}

uint64_t BWSampleBufferCreateFromEncodedImageSurface_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateFromEncodedImageSurface_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWSampleBufferCreateFromEncodedImageSurface_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWSampleBufferCreateFromEncodedImageSurface_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWSampleBufferCreateForDroppedFrame_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateForDroppedFrame_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWSampleBufferCreateForDroppedFrame_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWOverCaptureSampleBufferUnpackAndRetain_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateFromDataBufferWithNumberOfPoints_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateFromDataBufferWithNumberOfPoints_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateFromDataBufferWithNumberOfPoints_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateFromDataBufferWithNumberOfPoints_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateFromDataBufferWithNumberOfPoints_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateAttachedMediaFromPixelBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateAttachedMediaFromPixelBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateAttachedMediaFromPixelBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateAttachedMediaFromPixelBuffer_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferCreateAttachedMediaFromPixelBuffer_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t BWSampleBufferSetAttachedMediaFromPixelBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

double ssln_getMaskValidBufferRectFromMetadata(void *a1, opaqueCMSampleBuffer *target)
{
  v8 = *MEMORY[0x1E695F050];
  if (a1 && target && (!CMGetAttachment(target, *off_1E798A3C8, 0) || !FigCFDictionaryGetCGRectIfPresent()))
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(target);
    if (ImageBuffer)
    {
      v5 = ImageBuffer;
      v6 = [a1 objectForKeyedSubscript:*off_1E798B540];
      *&v8 = 0;
      CVPixelBufferGetWidth(v5);
      CVPixelBufferGetHeight(v5);
      if ([v6 isEqual:*off_1E798A0F8])
      {
        *&v8 = 0;
      }
    }
  }

  return *&v8;
}

uint64_t FigExternalStorageDeviceManagerServerReplyingMessageHandler_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigExternalStorageDeviceManagerServerReplyingMessageHandler_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigExternalStorageDeviceManagerServerReplyingMessageHandler_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigExternalStorageDeviceManagerServerReplyingMessageHandler_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigExternalStorageDeviceManagerServerReplyingMessageHandler_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigExternalStorageDeviceManagerServerReplyingMessageHandler_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigExternalStorageDeviceManagerServerReplyingMessageHandler_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

BOOL FigExternalStorageDeviceManagerServerReplyingMessageHandler_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t FigExternalStorageDeviceManagerServerReplyingMessageHandler_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigExternalStorageDeviceManagerServerNoReplyMessageHandler_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerBeginMonitoring_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerBeginMonitoring_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceProperty_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceProperty_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceProperty_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceProperty_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCheckAuthorizationStatus_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t HandleExternalStorageDeviceManagerCheckAuthorizationStatus_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerRequestAuthorization_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t externalStorageDeviceManagerCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t externalStorageDeviceManagerCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t externalStorageDeviceManagerCallback_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t externalStorageDeviceManagerCallback_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();

  return FigSignalErrorAtGM();
}

void __getICAccessManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getICAccessManagerClass(void)_block_invoke") description:{@"FigExternalStorageDeviceManagerServer.m", 31, @"Unable to find class %s", "ICAccessManager"}];
  __break(1u);
}

void __getICAccessManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *ImageCaptureCoreLibrary(void)") description:{@"FigExternalStorageDeviceManagerServer.m", 30, @"%s", *a1}];
  __break(1u);
}

uint64_t __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  return FigSignalErrorAtGM();
}

uint64_t __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  return FigSignalErrorAtGM();
}

uint64_t __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  FigSignalErrorAtGM();
  return FigSimpleMutexUnlock();
}

uint64_t __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureDeferredContainerManagerRemoteCopyContainerManager_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureDeferredContainerManagerRemoteCopyContainerManager_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureDeferredContainerManagerRemoteCopyContainerManager_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t FigCaptureDeferredContainerManagerRemoteCopyContainerManager_cold_4()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_5_17();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_5_17();
  return FigDebugAssert3();
}

uint64_t FigCaptureDeferredContainerManagerRemoteCopyContainerManager_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigCaptureDeferredContainerManagerRemoteIsConnectionValid_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigCaptureDeferredContainerManagerRemoteIsConnectionValid_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t containerManager_deadConnectionCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_Invalidate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_Invalidate_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_Finalize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_Finalize_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_CopyContainerIdentifiers_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_CopyContainerIdentifiers_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_CopyContainerIdentifiers_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_QueryContainerStatus_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_QueryContainerStatus_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_QueryContainerStatus_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_CopyRemoteContainer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_CopyRemoteContainer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_CopyRemoteContainer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_ReleaseRemoteContainer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_ReleaseRemoteContainer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_DeleteContainer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_DeleteContainer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_WaitForShaderCompilation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_WaitForShaderCompilation_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

unint64_t ubp_addFrame(int a1, id *a2, void *a3, void *a4, int a5)
{
  LODWORD(v9) = a1;
  result = [(BWUBNRFProcessorRequest *)a2 processingType];
  if (!result)
  {
    return result;
  }

  if ([a2 err] || !-[BWUBProcessorRequest useFrameForMultiFrameProcessing:](a2, a4))
  {
    if (dword_1EB58DE40)
    {
      v13 = OUTLINED_FUNCTION_4_45();
      OUTLINED_FUNCTION_33_12(v13);
      OUTLINED_FUNCTION_4_0();
      if (v9)
      {
        [objc_msgSend(a2 "input")];
        if ([objc_msgSend(objc_msgSend(a2 "input")])
        {
          [objc_msgSend(objc_msgSend(a2 "input")];
        }

        else
        {
          [(BWUBProcessorRequest *)a2 expectedFrameCount];
        }

        [a2 err];
        BWStillImageSampleBufferToDisplayString(a4);
        OUTLINED_FUNCTION_21_14();
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
    }

    result = [a2 err];
    if (a2)
    {
      if (result)
      {
        result = [objc_msgSend(a2[1] "captureStreamSettings")];
        if (result)
        {
          result = [objc_msgSend(a2 "input")];
          if (!result)
          {
            result = [objc_msgSend(objc_msgSend(a2 "input")];
            if (result)
            {
              return -[BWUBProcessorInput _setErrorRecoveryFrame:]([a2 input], a4);
            }
          }
        }
      }
    }

    return result;
  }

  if (a5)
  {
    [a3 setReferenceFrameIndex:{objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing")}];
    if (!dword_1EB58DE40)
    {
      goto LABEL_31;
    }

    v11 = OUTLINED_FUNCTION_4_45();
    if (os_log_type_enabled(v11, v38))
    {
      v12 = v39;
    }

    else
    {
      v12 = v39 & 0xFFFFFFFE;
    }

    if (v12)
    {
      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EB58DE40)
  {
    v14 = OUTLINED_FUNCTION_4_45();
    if (os_log_type_enabled(v14, v38))
    {
      v15 = v39;
    }

    else
    {
      v15 = v39 & 0xFFFFFFFE;
    }

    if (v15)
    {
      BWStillImageSampleBufferToDisplayString(a4);
      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_31:
  if (![a2 deepFusionOutput] || !+[BWUBProcessorController lazilyAllocatesDeepFusionOutputBuffers](BWUBProcessorController, "lazilyAllocatesDeepFusionOutputBuffers") || (!objc_msgSend(a3, "referenceFrameHasEVMinus") || objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing") != 1) && ((objc_msgSend(a3, "referenceFrameHasEVMinus") & 1) != 0 || !a5))
  {
    goto LABEL_46;
  }

  v16 = [a2 deepFusionOutput];
  if (![v16 proxyPixelBuffer])
  {
    [a2 input];
    v17 = [OUTLINED_FUNCTION_28_8() processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (!v17)
    {
      goto LABEL_86;
    }

    v18 = v17;
    [v16 setProxyPixelBuffer:v17];
    CFRelease(v18);
  }

  if (![v16 referencePixelBuffer])
  {
    [a2 input];
    v19 = [OUTLINED_FUNCTION_28_8() processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (!v19)
    {
      goto LABEL_86;
    }

    v20 = v19;
    [v16 setReferencePixelBuffer:v19];
    CFRelease(v20);
  }

  if (![v16 referenceNoisePixelBuffer])
  {
    [a2 input];
    v21 = [OUTLINED_FUNCTION_28_8() processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (v21)
    {
      v9 = v21;
      [v16 setReferenceNoisePixelBuffer:v21];
      CFRelease(v9);
      goto LABEL_46;
    }

LABEL_86:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v23 = 4294954510;
LABEL_50:
    result = [a2 err];
    if (!result)
    {
      return [a2 setErr:v23];
    }

    return result;
  }

LABEL_46:
  v22 = [a3 addFrame:a4];
  if (v22)
  {
    v23 = v22;
    if (a2 && [objc_msgSend(a2[1] "captureStreamSettings")])
    {
      -[BWUBProcessorInput _setErrorRecoveryFrame:]([a2 input], objc_msgSend(objc_msgSend(a2, "input"), "errorRecoveryFrame"));
      [objc_msgSend(a2 "input")];
      [a3 resetState];
    }

    goto LABEL_50;
  }

  [a2 setNumberOfFramesAddedForMultiFrameProcessing:{objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing") + 1}];
  [objc_msgSend(CMGetAttachment(a4 *off_1E798A3C8];
  v25 = v24;
  [a2 totalExposureTimesOfFramesAddedForMultiFrameProcessing];
  *&v27 = v25 + v26;
  [a2 setTotalExposureTimesOfFramesAddedForMultiFrameProcessing:v27];
  [a2 minExposureTimesOfFramesAddedForMultiFrameProcessing];
  if (v25 < *&v28)
  {
    *&v28 = v25;
  }

  [a2 setMinExposureTimesOfFramesAddedForMultiFrameProcessing:v28];
  [a2 maxExposureTimesOfFramesAddedForMultiFrameProcessing];
  if (v25 >= *&v29)
  {
    *&v29 = v25;
  }

  [a2 setMaxExposureTimesOfFramesAddedForMultiFrameProcessing:v29];
  if (dword_1EB58DE40)
  {
    v30 = OUTLINED_FUNCTION_4_45();
    OUTLINED_FUNCTION_33_12(v30);
    OUTLINED_FUNCTION_4_0();
    if (v9)
    {
      [objc_msgSend(a2 "input")];
      if ([objc_msgSend(objc_msgSend(a2 "input")])
      {
        [objc_msgSend(objc_msgSend(a2 "input")];
      }

      else
      {
        [(BWUBProcessorRequest *)a2 expectedFrameCount];
      }

      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_21_14();
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_4_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0();
  }

  result = [objc_msgSend(objc_msgSend(a2 "input")];
  if ((result & 0x80000000) != 0)
  {
    result = [a3 referenceFrameIndex];
    if ((result & 0x80000000) == 0)
    {
      v31 = result;
      result = [objc_msgSend(a2 "input")];
      if (!result)
      {
        v32 = 0;
        v33 = 0;
        while (1)
        {
          v34 = [a2 input];
          if (v34)
          {
            v34 = OUTLINED_FUNCTION_42_8(v34);
          }

          result = [v34 count];
          if (result <= v32)
          {
            break;
          }

          v35 = [a2 input];
          if (v35)
          {
            v35 = OUTLINED_FUNCTION_42_8(v35);
          }

          v36 = [v35 objectAtIndexedSubscript:v32];
          result = [(BWUBProcessorRequest *)a2 useFrameForMultiFrameProcessing:v36];
          if (result)
          {
            if (v33 == v31)
            {
              if (v36)
              {
                -[BWUBProcessorInput _setReferenceFrame:]([a2 input], v36);
                result = -[BWUBProcessorInput _setErrorRecoveryFrame:]([a2 input], objc_msgSend(objc_msgSend(a2, "input"), "errorRecoveryFrame"));
                if (a2)
                {
                  result = [objc_msgSend(a2[1] "captureStreamSettings")];
                  if (result)
                  {
                    result = [objc_msgSend(a2 "input")];
                  }
                }

                if (dword_1EB58DE40)
                {
                  v37 = OUTLINED_FUNCTION_4_45();
                  OUTLINED_FUNCTION_33_12(v37);
                  OUTLINED_FUNCTION_4_0();
                  if (v33)
                  {
                    [objc_msgSend(objc_msgSend(a2 "input")];
                    OUTLINED_FUNCTION_2_1();
                    OUTLINED_FUNCTION_4_4();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_2_4();
                  return OUTLINED_FUNCTION_39_0();
                }
              }

              return result;
            }

            ++v33;
          }

          ++v32;
        }
      }
    }
  }

  return result;
}

uint64_t __ubp_createStateMachine_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [*(a2 + 88) setOutput:0];
    [*(a2 + 88) resetState];
  }

  [(BWUBProcessorController *)a2 _serviceNextRequest];
  objc_autoreleasePoolPop(v3);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __ubp_createStateMachine_block_invoke_3_0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBProcessorController *)v5 _setupProcessor];
  objc_autoreleasePoolPop(v2);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __ubp_createStateMachine_block_invoke_4_0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBProcessorController *)v5 _processSingleImage];
  objc_autoreleasePoolPop(v2);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __ubp_createStateMachine_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBProcessorController *)v5 _processUBOriginalImage];
  objc_autoreleasePoolPop(v2);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __ubp_createStateMachine_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBProcessorController *)v5 _processUBFusion];
  objc_autoreleasePoolPop(v2);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __ubp_createStateMachine_block_invoke_7(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [(BWUBProcessorController *)a2 _processUBFusion];
  }

  objc_autoreleasePoolPop(v3);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __ubp_createStateMachine_block_invoke_8(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBProcessorController *)v5 _processDeepFusion];
  objc_autoreleasePoolPop(v2);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t nrfp_addFrame_0(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  result = [(BWNRFProcessorRequest *)a2 processingType];
  if (!result)
  {
    return result;
  }

  result = [(BWNRFProcessorRequest *)a2 processingType];
  if (result == 6)
  {
    return result;
  }

  result = [(BWNRFProcessorRequest *)a2 processingType];
  if (result == 7)
  {
    return result;
  }

  v11 = CMGetAttachment(a4, *off_1E798A3C8, 0);
  if ([(BWNRFProcessorRequest *)a2 keepFramesUntilReferenceFrameSelected]&& (BWStillImageCaptureFrameFlagsForSampleBuffer(a4) & 0x20) != 0)
  {
    -[BWNRFProcessorInput _setErrorRecoveryFrame:]([a2 input]);
  }

  result = [a2 err];
  if (result || (result = [(BWNRFProcessorRequest *)a2 useFrameForMultiFrameProcessing:a4], !result))
  {
    if (!dword_1EB58E0E0)
    {
      return result;
    }

    OUTLINED_FUNCTION_58_3();
    v16 = OUTLINED_FUNCTION_54_0();
    os_log_type_enabled(v16, v48);
    OUTLINED_FUNCTION_4_0();
    if (a1)
    {
      [objc_msgSend(a2 "input")];
      if (a2 && [(BWNRFProcessorRequest *)a2 processingType])
      {
        [*(a2 + 16) expectedFrameCount];
      }

      [a2 err];
      BWStillImageSampleBufferToDisplayString(a4);
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_5_1();
    }

    OUTLINED_FUNCTION_1_63();
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B1E8), "intValue"}])
  {
    goto LABEL_22;
  }

  if (a5)
  {
    [a3 setReferenceFrameIndex:{objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing")}];
    if (dword_1EB58E0E0)
    {
      OUTLINED_FUNCTION_58_3();
      v47 = OUTLINED_FUNCTION_54_0();
      v19 = os_log_type_enabled(v47, v48);
      v20 = v49 & 0xFFFFFFFE;
      if (v19)
      {
        v20 = v49;
      }

      if (v20)
      {
        [objc_msgSend(objc_msgSend(a2 "input")];
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([(BWNRFProcessorRequest *)a2 keepFramesUntilReferenceFrameSelected])
    {
      -[BWNRFProcessorInput _setReferenceFrame:]([a2 input]);
      [objc_msgSend(a2 "input")];
    }
  }

  if ([a2 deepFusionOutput] && (objc_msgSend(a3, "referenceFrameHasEVMinus") && objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing") == 1 || (objc_msgSend(a3, "referenceFrameHasEVMinus") & 1) == 0 && a5))
  {
    v12 = [a2 deepFusionOutput];
    if (![objc_msgSend(objc_msgSend(a2 "input")])
    {
      if ([objc_msgSend(objc_msgSend(a2 "input")])
      {
        v17 = [objc_msgSend(objc_msgSend(a2 "input")];
        v18 = +[FigCaptureCameraParameters sharedInstance];
        if (v17)
        {
          [(FigCaptureCameraParameters *)v18 softISPCropDimensionsForOptimizedLearnedFusionForSuperwide];
        }

        else
        {
          [(FigCaptureCameraParameters *)v18 nrfProcessingDimensionsForOptimizedLearnedFusionForSuperwide];
        }
      }

LABEL_43:
      if ([objc_msgSend(objc_msgSend(a2 "input")] && !objc_msgSend(v12, "proxyPixelBuffer"))
      {
        [a2 input];
        v21 = [OUTLINED_FUNCTION_51_7() processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
        if (!v21)
        {
          goto LABEL_103;
        }

        v22 = v21;
        [v12 setProxyPixelBuffer:v21];
        CVPixelBufferRelease(v22);
        [MEMORY[0x1E695DF90] dictionary];
        [OUTLINED_FUNCTION_37_0() setProxyMetadata:?];
      }

      [MEMORY[0x1E695DF90] dictionary];
      [OUTLINED_FUNCTION_37_0() setSyntheticReferenceMetadata:?];
      if ([v12 syntheticReferencePixelBuffer] || objc_msgSend(objc_msgSend(objc_msgSend(a2, "input"), "captureSettings"), "captureType") != 13)
      {
        goto LABEL_51;
      }

      [a2 input];
      v23 = [OUTLINED_FUNCTION_51_7() processorController:? newOutputPixelBufferForProcessorInput:? type:?];
      if (v23)
      {
        v24 = v23;
        [v12 setSyntheticReferencePixelBuffer:v23];
        CVPixelBufferRelease(v24);
LABEL_51:
        if ([objc_msgSend(objc_msgSend(a2 "input")] && !objc_msgSend(v12, "linearOutputPixelBuffer"))
        {
          [a2 input];
          v25 = [OUTLINED_FUNCTION_51_7() processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
          if (v25)
          {
            v26 = v25;
            [v12 setLinearOutputPixelBuffer:v25];
            CVPixelBufferRelease(v26);
            [MEMORY[0x1E695DF90] dictionary];
            [OUTLINED_FUNCTION_37_0() setLinearOutputMetadata:?];
          }

          else
          {
            [a2 setDemosaicedRawErr:4294954510];
          }
        }

        if (![a2 processSmartStyleRenderingInput])
        {
          goto LABEL_61;
        }

        if (a2)
        {
          v27 = *(a2 + 64);
        }

        else
        {
          v27 = 0;
        }

        v28 = [v27 processorController:a1 newOutputPixelBufferForProcessorInput:objc_msgSend(a2 type:{"input"), 41}];
        if (v28)
        {
          v29 = v28;
          [v12 setLinearOutputMIWBAppliedPixelBuffer:v28];
          [MEMORY[0x1E695DF90] dictionary];
          [OUTLINED_FUNCTION_37_0() setLinearOutputMIWBAppliedMetadata:?];
          CVPixelBufferRelease(v29);
LABEL_61:
          if ([a2 gainMapEnabled] && !objc_msgSend(v12, "gainMapOutputPixelBuffer"))
          {
            if (a2)
            {
              v30 = *(a2 + 64);
            }

            else
            {
              v30 = 0;
            }

            v31 = [v30 processorController:a1 newOutputPixelBufferForProcessorInput:objc_msgSend(a2 type:{"input"), 19}];
            if (v31 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [MEMORY[0x1E695DF90] dictionary];
              [OUTLINED_FUNCTION_37_0() setGainMapOutputMetadata:?];
            }

            [v12 setGainMapOutputPixelBuffer:v31];
            CVPixelBufferRelease(v31);
          }

          goto LABEL_69;
        }
      }

LABEL_103:
      v15 = 4294954510;
LABEL_97:
      result = [a2 err];
      if (!result)
      {
        return [a2 setErr:v15];
      }

      return result;
    }

    v13 = BWPixelBufferDimensionsFromSampleBuffer(a4);
    if (v13 >= 1 && SHIDWORD(v13) > 0)
    {
      goto LABEL_43;
    }

LABEL_22:
    v15 = 4294954516;
    goto LABEL_97;
  }

LABEL_69:
  if (dword_1EB58E0E0)
  {
    OUTLINED_FUNCTION_58_3();
    v32 = OUTLINED_FUNCTION_54_0();
    if (os_log_type_enabled(v32, v48))
    {
      v33 = v49;
    }

    else
    {
      v33 = v49 & 0xFFFFFFFE;
    }

    if (v33)
    {
      BWStillImageSampleBufferToDisplayString(a4);
      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_0_51();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a4);
  v35 = CVBufferCopyAttachment(ImageBuffer, *off_1E798A0B8, 0);
  if (v35)
  {
    v36 = [a3 addInputResource:v35];
  }

  else
  {
    v36 = [OUTLINED_FUNCTION_53_1() addFrame:?];
  }

  v15 = v36;

  v37 = OUTLINED_FUNCTION_39_9();
  CVBufferRemoveAttachment(v37, v38);
  if (v15)
  {
    if ([(BWNRFProcessorRequest *)a2 keepFramesUntilReferenceFrameSelected])
    {
      [objc_msgSend(a2 "input")];
      [a3 resetState];
    }

    goto LABEL_97;
  }

  [a2 setNumberOfFramesAddedForMultiFrameProcessing:{objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing") + 1}];
  [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B2A8), "floatValue"}];
  v40 = v39;
  [a2 totalExposureTimesOfFramesAddedForMultiFrameProcessing];
  *&v42 = v40 + v41;
  [a2 setTotalExposureTimesOfFramesAddedForMultiFrameProcessing:v42];
  [a2 minExposureTimesOfFramesAddedForMultiFrameProcessing];
  if (v40 < *&v43)
  {
    *&v43 = v40;
  }

  [a2 setMinExposureTimesOfFramesAddedForMultiFrameProcessing:v43];
  [a2 maxExposureTimesOfFramesAddedForMultiFrameProcessing];
  if (v40 >= *&v44)
  {
    *&v44 = v40;
  }

  result = [a2 setMaxExposureTimesOfFramesAddedForMultiFrameProcessing:v44];
  if (dword_1EB58E0E0)
  {
    OUTLINED_FUNCTION_58_3();
    v45 = OUTLINED_FUNCTION_54_0();
    if (os_log_type_enabled(v45, v48))
    {
      v46 = v49;
    }

    else
    {
      v46 = v49 & 0xFFFFFFFE;
    }

    if (v46)
    {
      [objc_msgSend(a2 "input")];
      if (a2)
      {
        if ([(BWNRFProcessorRequest *)a2 processingType])
        {
          [*(a2 + 16) expectedFrameCount];
        }
      }

      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}