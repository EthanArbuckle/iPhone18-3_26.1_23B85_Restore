@interface BWMovieLevelMetadataForProResRaw
- (BWMovieLevelMetadataForProResRaw)init;
- (id)description;
- (id)proResRawAugmentedMovieLevelMetadataWithMovieLevelMetadata:(id)metadata;
- (void)dealloc;
- (void)releaseRetainedProperties;
- (void)reset;
- (void)updateMetadataFromSampleBuffer:(opaqueCMSampleBuffer *)buffer withCameraInfo:(id)info;
@end

@implementation BWMovieLevelMetadataForProResRaw

- (BWMovieLevelMetadataForProResRaw)init
{
  v5.receiver = self;
  v5.super_class = BWMovieLevelMetadataForProResRaw;
  v2 = [(BWMovieLevelMetadataForProResRaw *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWMovieLevelMetadataForProResRaw *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  self->_isMetadataValid = 0;
  [(BWMovieLevelMetadataForProResRaw *)&self->super.isa releaseRetainedProperties];
  self->_isoSpeedRating = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_shutterSpeedAngle = _Q0;
  self->_whiteBalanceCCT = -1;
  self->_currentFrameRate = -1.0;
}

- (void)releaseRetainedProperties
{
  if (self)
  {

    self[2] = 0;
    self[3] = 0;

    self[4] = 0;
    self[5] = 0;

    self[7] = 0;
    self[6] = 0;

    self[12] = 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@: [%p] \nisoSpeedRating: %d \ncameraManufacturer: %@ \ncameraModelName: %@ \ncolorTranslationMatrices: %@ \nwhiteBalanceFactors: %@ \nshutterSpeedAngle: %f \nexposureTime: %f \nwhiteBalanceCCT: %d\n lscGains %@\n cctAndTintColorMatrices: %@\n", NSStringFromClass(v4), self, self->_isoSpeedRating, self->_cameraManufacturer, self->_cameraModelName, self->_colorTranslationMatrices, self->_whiteBalanceFactors, *&self->_shutterSpeedAngle, *&self->_exposureTime, self->_whiteBalanceCCT, self->_lscGains, self->_cctAndTintColorMatrices];
}

- (id)proResRawAugmentedMovieLevelMetadataWithMovieLevelMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (self->_isMetadataValid)
  {
    v5 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithISOSpeedRating(metadata, self->_isoSpeedRating);
    v6 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithCameraManufacturer(v5, self->_cameraManufacturer, self->_cameraModelName);
    colorTranslationMatrices = self->_colorTranslationMatrices;
    if (colorTranslationMatrices)
    {
      v6 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithColorTranslationMatrices(v6, colorTranslationMatrices);
    }

    whiteBalanceFactors = self->_whiteBalanceFactors;
    if (whiteBalanceFactors)
    {
      v6 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithWhiteBalanceFactors(v6, whiteBalanceFactors);
    }

    lscGains = self->_lscGains;
    if (lscGains)
    {
      v6 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithLSCGains(v6, lscGains);
    }

    shutterSpeedAngle = self->_shutterSpeedAngle;
    if (shutterSpeedAngle != -1.0)
    {
      v6 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithShutterSpeedAngle(v6, shutterSpeedAngle);
    }

    v11 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithExposureTime(v6, self->_exposureTime);
    v12 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithWhiteBalanceCCT(v11, self->_whiteBalanceCCT);
    metadataCopy = v12;
    cctAndTintColorMatrices = self->_cctAndTintColorMatrices;
    if (cctAndTintColorMatrices)
    {
      metadataCopy = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithColorCorrectionTemperatureAndTintColorCorrectionMatrices(v12, cctAndTintColorMatrices);
    }

    if (self->_currentFrameRate > 60.0)
    {
      if (![metadataCopy count])
      {
        goto LABEL_27;
      }

      v14 = 0;
      v15 = *MEMORY[0x1E6971F88];
      v16 = *MEMORY[0x1E6971ED8];
      while (([objc_msgSend(objc_msgSend(metadataCopy objectAtIndexedSubscript:{v14), "objectForKeyedSubscript:", v15), "isEqual:", v16}] & 1) == 0)
      {
        if (++v14 >= [metadataCopy count])
        {
          goto LABEL_27;
        }
      }

      v17 = [metadataCopy objectAtIndexedSubscript:v14];
      if (v17 && (v18 = [v17 objectForKeyedSubscript:*MEMORY[0x1E6971F90]], v27 = 0u, v28 = 0u, v29 = 0u, v30 = 0u, (v19 = objc_msgSend(v18, "countByEnumeratingWithState:objects:count:", &v27, v26, 16)) != 0))
      {
        v20 = v19;
        v21 = *v28;
        v22 = *MEMORY[0x1E6971F40];
LABEL_21:
        v23 = 0;
        while (1)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if ([@"com.apple.quicktime.full-frame-rate-playback-intent" isEqualToString:{objc_msgSend(*(*(&v27 + 1) + 8 * v23), "objectForKeyedSubscript:", v22)}])
          {
            break;
          }

          if (v20 == ++v23)
          {
            v20 = [v18 countByEnumeratingWithState:&v27 objects:v26 count:16];
            if (v20)
            {
              goto LABEL_21;
            }

            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        metadataCopy = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithFullFrameRatePlaybackIntent(metadataCopy, 1);
      }
    }

    stabilizationInfo = self->_stabilizationInfo;
    if (stabilizationInfo)
    {
      return FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithStabilizationInfo(metadataCopy, stabilizationInfo);
    }
  }

  return metadataCopy;
}

- (void)updateMetadataFromSampleBuffer:(opaqueCMSampleBuffer *)buffer withCameraInfo:(id)info
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v7 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v168 = 0;
  v169 = 0;
  FigCaptureMetadataGetManufacturerAndMarketingName(buffer, 0, &v169, &v168);
  self->_cameraManufacturer = v169;
  self->_cameraModelName = v168;
  self->_isoSpeedRating = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B3B0), "intValue"}];
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (ImageBuffer)
  {
    v10 = ImageBuffer;
    v11 = CVBufferCopyAttachment(ImageBuffer, *MEMORY[0x1E69661D8], 0);
    if (v11)
    {
      v11 = CFAutorelease(v11);
    }

    [v11 floatValue];
    v13 = v12;
    v14 = CVBufferCopyAttachment(v10, *MEMORY[0x1E69661C8], 0);
    if (v14)
    {
      v14 = CFAutorelease(v14);
    }
  }

  else
  {
    [objc_msgSend(v8 objectForKeyedSubscript:{@"ProResRawWhiteBalanceRedFactor", "floatValue"}];
    v13 = v15;
    v14 = [v8 objectForKeyedSubscript:@"ProResRawWhiteBalanceBlueFactor"];
  }

  [v14 floatValue];
  v17 = v16;
  v18 = [info objectForKeyedSubscript:*off_1E7989E48];
  v155 = *off_1E7989F30;
  v19 = [info objectForKeyedSubscript:?];
  v20 = [v19 count];
  v21 = 0;
  selfCopy = self;
  if (v17 > 0.0 && v13 > 0.0 && v20 == 2)
  {
    v23 = [v18 objectForKeyedSubscript:*off_1E798AA60];
    v24 = *off_1E798AA50;
    [objc_msgSend(v23 objectForKeyedSubscript:{*off_1E798AA50), "doubleValue"}];
    v26 = v25;
    v27 = *off_1E798AA48;
    [objc_msgSend(v23 objectForKeyedSubscript:{*off_1E798AA48), "doubleValue"}];
    v29 = v28;
    v30 = [v18 objectForKeyedSubscript:*off_1E798AA58];
    [objc_msgSend(v30 objectForKeyedSubscript:{v24), "doubleValue"}];
    v32 = v31;
    [objc_msgSend(v30 objectForKeyedSubscript:{v27), "doubleValue"}];
    if (v26 <= 0.0 || v29 <= 0.0 || v32 <= 0.0 || (v34 = v33, v33 <= 0.0))
    {
      [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
    }

    else
    {
      v35 = BWDNGColorCalibrations(v19, 1);
      if (v35)
      {
        v36 = v35;
        if ([v35 count] == 2)
        {
          v37 = [v36 objectAtIndexedSubscript:0];
          if ([v37 count] == 2)
          {
            v38 = [v36 objectAtIndexedSubscript:1];
            if ([v38 count] == 2)
            {
              v39 = [v38 objectAtIndexedSubscript:0];
              if ([v39 count] == 9)
              {
                v154 = v8;
                v40 = [v38 objectAtIndexedSubscript:1];
                if ([v40 count] == 9)
                {
                  v41 = [objc_msgSend(v37 objectAtIndexedSubscript:{0), "integerValue"}];
                  v42 = [objc_msgSend(v37 objectAtIndexedSubscript:{1), "integerValue"}];
                  if (v41 < v42)
                  {
                    infoCopy = info;
                    bufferCopy = buffer;
                    v43 = v13;
                    v44 = 1.0 / v26 / v13;
                    v45 = v17;
                    v46 = 1.0 / v29 / v17;
                    v160 = v45;
                    v161 = v43;
                    v47 = 1.0 / v32 / v43;
                    v48 = 1.0 / v34 / v45;
                    v49 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:24];
                    *&v175 = [MEMORY[0x1E696AD98] numberWithDouble:v44];
                    *(&v175 + 1) = [MEMORY[0x1E696AD98] numberWithDouble:v46];
                    [v49 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v175, 2), &unk_1F2243EA0}];
                    *&size.width = [MEMORY[0x1E696AD98] numberWithDouble:v47];
                    *&size.height = [MEMORY[0x1E696AD98] numberWithDouble:v48];
                    v163 = v49;
                    [v49 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &size, 2), &unk_1F2243EB8}];
                    v50 = 0;
                    v162 = v42;
                    v157 = 1.0 / v41 - 1.0 / v42;
                    v158 = 1.0 / v41;
                    v159 = v41;
                    do
                    {
                      v51 = prrmu_createWhiteBalanceFactorsFromCalibrations_wbFactorCCTs[v50];
                      if (v50 < 4 || v50 - 13 <= 8)
                      {
                        v52 = 0;
                        if (1000000.0 / v51 <= 600.0)
                        {
                          v53 = 1000000.0 / v51;
                        }

                        else
                        {
                          v53 = 600.0;
                        }

                        v54 = 30;
                        do
                        {
                          if (v53 >= kBWProResRawPlanckianLocus[6 * ((v54 + v52) >> 1)])
                          {
                            v52 = (v54 + v52) >> 1;
                          }

                          else
                          {
                            v54 = (v54 + v52) >> 1;
                          }
                        }

                        while (v54 - v52 > 1);
                        v55 = &kBWProResRawPlanckianLocus[6 * v52];
                        v57 = *v55;
                        v56 = v55[1];
                        v58 = &kBWProResRawPlanckianLocus[6 * v54];
                        v59 = v58[1];
                        v60 = v55[2];
                        v166 = *v58;
                        v167 = v58[2];
                        v61 = v55[4];
                        v62 = v55[5];
                        v164 = v58[4];
                        v165 = v58[5];
                        array = [MEMORY[0x1E695DF70] array];
                        v64 = v39;
                        if (v51 > v41)
                        {
                          v64 = v40;
                          if (v51 < v162)
                          {
                            v65 = array;
                            for (i = 0; i != 9; ++i)
                            {
                              v67 = MEMORY[0x1E696AD98];
                              [objc_msgSend(v39 objectAtIndexedSubscript:{i), "doubleValue"}];
                              v69 = v68;
                              [objc_msgSend(v40 objectAtIndexedSubscript:{i), "doubleValue"}];
                              [v65 setObject:objc_msgSend(v67 atIndexedSubscript:{"numberWithDouble:", v69 + (v158 + -1.0 / v51) / v157 * (v70 - v69)), i}];
                            }

                            v64 = v65;
                            v41 = v159;
                          }
                        }

                        v71 = (v53 - v57) / (v166 - v57);
                        v72 = v56 + v71 * (v59 - v56);
                        v73 = v60 + v71 * (v167 - v60);
                        v74 = v61 + v71 * (v164 - v61);
                        v75 = v62 + v71 * (v165 - v62);
                        v76 = sqrt(v75 * v75 + v74 * v74);
                        v77 = v72 + v74 / v76 * 0.0;
                        v78 = v73 + v75 / v76 * 0.0;
                        v79 = v77 + v78 * -4.0 + 2.0;
                        v80 = v77 * 1.5 / v79;
                        v81 = v78 / v79;
                        v82 = v80 / v81;
                        v83 = (1.0 - (v80 + v81)) / v81;
                        [objc_msgSend(v64 objectAtIndexedSubscript:{0), "doubleValue"}];
                        v85 = v84;
                        [objc_msgSend(v64 objectAtIndexedSubscript:{1), "doubleValue"}];
                        v87 = v86 + v85 * v82;
                        [objc_msgSend(v64 objectAtIndexedSubscript:{2), "doubleValue"}];
                        v89 = v87 + v88 * v83;
                        [objc_msgSend(v64 objectAtIndexedSubscript:{3), "doubleValue"}];
                        v91 = v90;
                        [objc_msgSend(v64 objectAtIndexedSubscript:{4), "doubleValue"}];
                        v93 = v92;
                        [objc_msgSend(v64 objectAtIndexedSubscript:{5), "doubleValue"}];
                        v95 = v94;
                        [objc_msgSend(v64 objectAtIndexedSubscript:{6), "doubleValue"}];
                        v97 = v96;
                        [objc_msgSend(v64 objectAtIndexedSubscript:{7), "doubleValue"}];
                        v99 = v98;
                        [objc_msgSend(v64 objectAtIndexedSubscript:{8), "doubleValue"}];
                        if (v89 > 0.0)
                        {
                          v101 = v93 + v91 * v82 + v95 * v83;
                          if (v101 > 0.0)
                          {
                            v102 = v99 + v97 * v82 + v100 * v83;
                            if (v102 > 0.0)
                            {
                              v103 = v101 / v102 / v160;
                              v174[0] = [MEMORY[0x1E696AD98] numberWithDouble:v101 / v89 / v161];
                              v174[1] = [MEMORY[0x1E696AD98] numberWithDouble:v103];
                              v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:2];
                              [v163 setObject:v104 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v51)}];
                            }
                          }
                        }
                      }

                      ++v50;
                    }

                    while (v50 != 22);
                    v105 = [objc_msgSend(v163 "allKeys")];
                    v106 = [v105 count];
                    v107 = v106;
                    if (v106 < 3uLL)
                    {
                      [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
                      v21 = 0;
                      buffer = bufferCopy;
                      v8 = v154;
                    }

                    else
                    {
                      v108 = v106;
                      v21 = objc_alloc_init(MEMORY[0x1E695DF88]);
                      v173 = bswap32(v108) >> 16;
                      [(NSData *)v21 appendBytes:&v173 length:2];
                      v172 = 256;
                      [(NSData *)v21 appendBytes:&v172 length:2];
                      v109 = 0;
                      buffer = bufferCopy;
                      v8 = v154;
                      do
                      {
                        v110 = [v105 objectAtIndexedSubscript:v109];
                        unsignedIntValue = [v110 unsignedIntValue];
                        v112 = [v163 objectForKeyedSubscript:v110];
                        [objc_msgSend(v112 objectAtIndexedSubscript:{0), "floatValue"}];
                        v114 = v113;
                        [objc_msgSend(v112 objectAtIndexedSubscript:{1), "floatValue"}];
                        v116 = v115;
                        v178[0] = bswap32(unsignedIntValue);
                        [(NSData *)v21 appendBytes:v178 length:4];
                        v171 = bswap32(v114);
                        [(NSData *)v21 appendBytes:&v171 length:4];
                        v170 = bswap32(v116);
                        [(NSData *)v21 appendBytes:&v170 length:4];
                        ++v109;
                      }

                      while (v107 != v109);
                    }

                    info = infoCopy;
                    goto LABEL_50;
                  }
                }

                else
                {
                  [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
                }

                v21 = 0;
                v8 = v154;
                goto LABEL_50;
              }

              [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
            }

            else
            {
              [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
            }
          }

          else
          {
            [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
          }
        }

        else
        {
          [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
        }
      }

      else
      {
        [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
      }
    }

    v21 = 0;
  }

LABEL_50:
  self->_whiteBalanceFactors = v21;
  v117 = v155;
  v118 = [info objectForKeyedSubscript:v155];
  if ([v118 count] == 2 && (v119 = getColorTranslationMatrixFromCalibration(v118, 0, 2800)) != 0)
  {
    v149 = v119;
    ColorTranslationMatrixFromCalibration = getColorTranslationMatrixFromCalibration(v118, 1u, 6500);
    if (ColorTranslationMatrixFromCalibration)
    {
      v151 = ColorTranslationMatrixFromCalibration;
      v120 = objc_alloc_init(MEMORY[0x1E695DF88]);
      LOWORD(v175) = 1024;
      [(NSData *)v120 appendBytes:&v175 length:2];
      LOWORD(size.width) = 256;
      [(NSData *)v120 appendBytes:&size length:2];
      writeMatrixArrayRefDataEntry(0x7D0u, v149, v120);
      writeMatrixArrayRefDataEntry(0xAF0u, v149, v120);
      writeMatrixArrayRefDataEntry(0x1964u, v151, v120);
      writeMatrixArrayRefDataEntry(0x3A98u, v151, v120);
    }

    else
    {
      v120 = 0;
    }

    v117 = v155;
  }

  else
  {
    v120 = 0;
  }

  self->_colorTranslationMatrices = v120;
  v121 = [info objectForKeyedSubscript:v117];
  if ([v121 count] == 2)
  {
    v122 = BWDNGColorCalibrations(v121, 1);
    if (v122)
    {
      v123 = v122;
      if ([v122 count] == 2)
      {
        v124 = [v123 objectAtIndexedSubscript:0];
        if ([v124 count] == 2)
        {
          v125 = [v123 objectAtIndexedSubscript:1];
          if ([v125 count] == 2)
          {
            v126 = [v125 objectAtIndexedSubscript:0];
            if ([v126 count] == 9)
            {
              v127 = [v125 objectAtIndexedSubscript:1];
              if ([v127 count] == 9)
              {
                v128 = [objc_msgSend(v124 objectAtIndexedSubscript:{0), "integerValue"}];
                v129 = [objc_msgSend(v124 objectAtIndexedSubscript:{1), "integerValue"}];
                v130 = v129;
                if (v128 < v129)
                {
                  v131 = v8;
                  bufferCopy2 = buffer;
                  infoCopy2 = info;
                  if (v128 <= 0x7D0)
                  {
                    v134 = 2;
                  }

                  else
                  {
                    v134 = 3;
                  }

                  v135 = v129 >> 3;
                  if (v129 >> 3 >= 0x753)
                  {
                    v136 = v134;
                  }

                  else
                  {
                    v136 = v134 + 1;
                  }

                  v137 = objc_alloc_init(MEMORY[0x1E695DF88]);
                  LOWORD(v175) = v136 << 8;
                  [(NSData *)v137 appendBytes:&v175 length:2];
                  LOWORD(size.width) = 256;
                  [(NSData *)v137 appendBytes:&size length:2];
                  if (v128 >= 0x7D1)
                  {
                    writeMatrixArrayRefDataEntry(0x7D0u, v126, v137);
                  }

                  writeMatrixArrayRefDataEntry(v128, v126, v137);
                  writeMatrixArrayRefDataEntry(v130, v127, v137);
                  if (v135 <= 0x752)
                  {
                    writeMatrixArrayRefDataEntry(0x3A98u, v127, v137);
                  }

                  info = infoCopy2;
                  buffer = bufferCopy2;
                  v8 = v131;
                  self = selfCopy;
                  goto LABEL_72;
                }
              }

              else
              {
                [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
              }
            }

            else
            {
              [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
            }
          }

          else
          {
            [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
          }
        }

        else
        {
          [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
        }
      }

      else
      {
        [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
      }
    }

    else
    {
      [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
    }
  }

  v137 = 0;
LABEL_72:
  self->_cctAndTintColorMatrices = v137;
  v174[0] = 0;
  v138 = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B540), "isEqualToString:", *off_1E798A0C0}];
  v139 = [info objectForKeyedSubscript:*off_1E7989EE0];
  if (v138)
  {
    CMILSCOISAdaptation_extrapolateV2LSCTable();
    v139 = v174[0];
  }

  else
  {
    v174[0] = v139;
  }

  self->_lscGains = [v139 copy];
  [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
  v141 = v140;
  [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B210), "doubleValue"}];
  self->_currentFrameRate = v142;
  if (v142 > 0.0)
  {
    self->_shutterSpeedAngle = v141 / (1.0 / v142) * 360.0;
  }

  self->_exposureTime = v141;
  self->_whiteBalanceCCT = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B1D0), "intValue"}];
  v143 = [CMGetAttachment(buffer @"VideoStabilizationMethod"];
  if (v143)
  {
    v144 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v145 = v144;
    if (v144)
    {
      LOBYTE(v171) = 1;
      [(NSData *)v144 appendBytes:&v171 length:1];
      v178[0] = bswap32(v143);
      [(NSData *)v145 appendBytes:v178 length:4];
      v146 = CMGetAttachment(buffer, @"VideoStabilizationGeneratedTransformsOutputDimensionsOverride", 0);
      size = *MEMORY[0x1E695F060];
      CGSizeMakeWithDictionaryRepresentation(v146, &size);
      v147 = *(MEMORY[0x1E695F058] + 16);
      v175 = *MEMORY[0x1E695F058];
      v176 = v147;
      FigCFDictionaryGetCGRectIfPresent();
      v148 = ((*(&v176 + 1) - size.height) * 0.5);
      v178[0] = bswap32(((*&v176 - size.width) * 0.5));
      [(NSData *)v145 appendBytes:v178 length:4];
      v178[0] = bswap32(v148);
      [(NSData *)v145 appendBytes:v178 length:4];
      v178[0] = bswap32(size.width);
      [(NSData *)v145 appendBytes:v178 length:4];
      v178[0] = bswap32(size.height);
      [(NSData *)v145 appendBytes:v178 length:4];
    }

    else
    {
      [BWMovieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:withCameraInfo:];
    }
  }

  else
  {
    v145 = 0;
  }

  self->_stabilizationInfo = v145;
  self->_isMetadataValid = 1;
}

- (void)dealloc
{
  [(BWMovieLevelMetadataForProResRaw *)&self->super.isa releaseRetainedProperties];
  v3.receiver = self;
  v3.super_class = BWMovieLevelMetadataForProResRaw;
  [(BWMovieLevelMetadataForProResRaw *)&v3 dealloc];
}

@end