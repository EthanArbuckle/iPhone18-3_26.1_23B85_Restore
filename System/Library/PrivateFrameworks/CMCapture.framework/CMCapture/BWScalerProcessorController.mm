@interface BWScalerProcessorController
- (BWScalerProcessorController)initWithConfiguration:(id)configuration;
- (VTPixelTransferSessionRef)_ensurePixelTransferSessionForMediaKey:(uint64_t)key;
- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out;
- (int)process;
- (uint64_t)_zoomSampleBuffer:(void *)buffer settings:(unsigned int)settings processingMode:(void *)mode mediaKey:(uint64_t)key bufferType:(void *)type request:(void *)request newZoomedSampleBufferOut:;
- (void)dealloc;
- (void)reset;
@end

@implementation BWScalerProcessorController

- (BWScalerProcessorController)initWithConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = BWScalerProcessorController;
  v3 = [(BWStillImageProcessorController *)&v5 initWithName:@"ScalerPC" type:18 configuration:configuration];
  if (v3)
  {
    v3->_pixelTransferSessionByMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3->_formatDescriptionByMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v3;
}

- (void)dealloc
{
  [(BWScalerProcessorController *)self reset];

  v3.receiver = self;
  v3.super_class = BWScalerProcessorController;
  [(BWStillImageProcessorController *)&v3 dealloc];
}

- (void)reset
{
  if (![(BWStillImageProcessorController *)self hasPendingRequests])
  {
    [(NSMutableDictionary *)self->_pixelTransferSessionByMediaKey removeAllObjects];
    formatDescriptionByMediaKey = self->_formatDescriptionByMediaKey;

    [(NSMutableDictionary *)formatDescriptionByMediaKey removeAllObjects];
  }
}

- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWScalerProcessorControllerRequest alloc] initWithInput:input delegate:delegate];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (out)
  {
    *out = v7;
  }

  return v6;
}

- (int)process
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_5_14();
  }

  configuration = [(BWStillImageProcessorController *)self configuration];
  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
  v9 = currentRequest;
  if (!currentRequest)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    goto LABEL_72;
  }

  input = [(BWStillImageProcessorControllerRequest *)currentRequest input];
  if (!input)
  {
LABEL_72:
    OUTLINED_FUNCTION_2_95();
    v89 = 4294954516;
    goto LABEL_69;
  }

  v11 = input;
  if ([(BWStillImageProcessorControllerInput *)input frame])
  {
    if ([(BWStillImageProcessorControllerInput *)v11 bufferType])
    {
      bufferType = [(BWStillImageProcessorControllerInput *)v11 bufferType];
      v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{-[BWStillImageProcessorControllerInput frame](v11, "frame")}];
      v102 = objc_alloc_init(MEMORY[0x1E695DF90]);
      selfCopy = self;
      v116 = 0;
      v106 = v12;
      v107 = v9;
      if ([objc_msgSend(v9 "input")] - 3 <= 3)
      {
        v116 = [objc_msgSend(v9 "delegate")];
        v13 = [MEMORY[0x1E695DFA8] set];
        v14 = [-[BWStillImageProcessorControllerConfiguration providedInferenceAttachedMediaByMode](configuration "providedInferenceAttachedMediaByMode")];
        if (v14)
        {
          [v13 addObjectsFromArray:v14];
        }

        v15 = [-[BWStillImageProcessorControllerConfiguration providedInferenceAttachedMediaByMode](configuration "providedInferenceAttachedMediaByMode")];
        if (v15)
        {
          [v13 addObjectsFromArray:v15];
        }

        v214 = 0u;
        v215 = 0u;
        v212 = 0u;
        v213 = 0u;
        v16 = [v13 countByEnumeratingWithState:&v212 objects:v211 count:16];
        if (v16)
        {
          v17 = v16;
          v120 = *v213;
          v117 = *off_1E798A788;
          obj = v13;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v213 != v120)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v212 + 1) + 8 * i);
              AttachedMedia = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)v11 frame], v19);
              if (AttachedMedia)
              {
                goto LABEL_28;
              }

              v21 = [v116 inferenceBufferForAttachedMediaKey:v19];
              if (v21)
              {
                v22 = v21;
                v23 = [v116 metadataForAttachedMediaKey:v19];
                v24 = [(NSMutableDictionary *)self->_formatDescriptionByMediaKey objectForKeyedSubscript:v19];
                if (v24)
                {
                  v24 = CFRetain(v24);
                }

                cf = v24;
                v25 = BWMetadataAttachmentKeyForAttachedMediaKey(v19);
                v26 = [objc_msgSend(v116 "inferenceAttachedMediaMetadata")];
                v27 = 0;
                if (v25 && v26)
                {
                  v209 = v25;
                  v210 = v26;
                  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
                }

                BWSampleBufferSetAttachedMediaFromPixelBuffer([(BWStillImageProcessorControllerInput *)v11 frame], v19, v22, &cf, v23, v27, 1);
                self = selfCopy;
                [(NSMutableDictionary *)selfCopy->_formatDescriptionByMediaKey setObject:cf forKeyedSubscript:v19];
                if (cf)
                {
                  CFRelease(cf);
                }

                v9 = v107;
              }

              AttachedMedia = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)v11 frame], v19);
              if (AttachedMedia)
              {
LABEL_28:
                v28 = AttachedMedia;
                delegate = [v9 delegate];
                input2 = [v9 input];
                ImageBuffer = CMSampleBufferGetImageBuffer([(BWStillImageProcessorControllerInput *)v11 frame]);
                LODWORD(delegate) = [delegate processorController:self outputPixelBufferDimensionsForProcessorInput:input2 type:1 attachedMediaKey:@"PrimaryFormat" pixelFormat:CVPixelBufferGetPixelFormatType(ImageBuffer) dimensions:0];
                v32 = CMSampleBufferGetImageBuffer(v28);
                Width = CVPixelBufferGetWidth(v32);
                CVPixelBufferGetHeight(v32);
                v34 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v28);
                *&v35 = delegate / Width;
                [v34 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v35), v117}];
              }
            }

            v17 = [obj countByEnumeratingWithState:&v212 objects:v211 count:16];
          }

          while (v17);
          v12 = v106;
        }
      }

      v36 = BWSampleBufferCopyDictionaryOfAttachedMedia([(BWStillImageProcessorControllerInput *)v11 frame]);
      [v12 addEntriesFromDictionary:v36];

      v207 = 0u;
      v208 = 0u;
      v205 = 0u;
      v206 = 0u;
      v45 = &dword_1EB58E000;
      v121 = OUTLINED_FUNCTION_7_59(v37, v38, v39, v40, v41, v42, v43, v44, @"PrimaryFormat", 0, v5, bufferType, v97, v100, v102, v106, v107, obj, selfCopy, v116, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v176, v178, v180, v182, v184, v186, *v188, *&v188[8], *&v188[16], v189, *(&v189 + 1), v190, cf, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
      if (v121)
      {
        obja = *v206;
        *&v46 = 136315907;
        v98 = v46;
        while (2)
        {
          for (j = 0; j != v121; ++j)
          {
            if (*v206 != obja)
            {
              objc_enumerationMutation(v12);
            }

            v48 = *(*(&v205 + 1) + 8 * j);
            v49 = [v48 isEqualToString:{@"PrimaryFormat", v91, v92}];
            if (v49)
            {
              v50 = 1;
            }

            else
            {
              v50 = BWStillImageBufferTypeForAttachedMediaKey(v48);
            }

            v51 = [v12 objectForKeyedSubscript:v48];
            v204[0] = 0;
            v52 = [(BWScalerProcessorController *)&v113->super.super.isa _zoomSampleBuffer:v51 settings:[(BWStillImageProcessorControllerInput *)v11 stillImageSettings] processingMode:[(BWStillImageProcessorControllerInput *)v11 processingMode] mediaKey:v48 bufferType:v50 request:v108 newZoomedSampleBufferOut:v204];
            if (v52)
            {
              LODWORD(v118) = v52;
              v203 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v53 = v45;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v55 = v203;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v56 = v55;
              }

              else
              {
                v56 = v55 & 0xFFFFFFFE;
              }

              if (v56)
              {
                settingsID = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)v11 settings] settingsID];
                *v188 = v98;
                *&v188[4] = "[BWScalerProcessorController process]";
                *&v188[12] = 2113;
                *&v188[14] = v48;
                *&v188[22] = 1026;
                LODWORD(v189) = v118;
                WORD2(v189) = 2050;
                *(&v189 + 6) = settingsID;
                LODWORD(v92) = 38;
                v91 = v188;
                _os_log_send_and_compose_impl();
              }

              v45 = v53;
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v12 = v105;
              if (v49)
              {
                OUTLINED_FUNCTION_0();
                FigDebugAssert3();
                v4 = 0;
                self = v113;
                v9 = v108;
                v2 = v96;
                v3 = v103;
                v89 = v118;
                goto LABEL_69;
              }
            }

            else
            {
              if (v204[0])
              {
                v58 = v204[0];
              }

              else
              {
                v58 = v51;
              }

              [v103 setObject:v58 forKeyedSubscript:v48];
            }

            v66 = v204[0];
            if (v204[0])
            {
              CFRelease(v204[0]);
            }

            self = v113;
          }

          v121 = OUTLINED_FUNCTION_7_59(v66, v59, v60, v61, v62, v63, v64, v65, v91, v92, v93, v96, v98, *(&v98 + 1), v103, v105, v108, obja, v113, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v177, v179, v181, v183, v185, v187, *v188, *&v188[8], *&v188[16], v189, *(&v189 + 1), v190, cf, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
          if (v121)
          {
            continue;
          }

          break;
        }
      }

      v3 = v103;
      v67 = [v103 objectForKeyedSubscript:@"PrimaryFormat"];
      v4 = v67;
      if (v67)
      {
        BWSampleBufferRemoveAllAttachedMedia(v67);
        v76 = OUTLINED_FUNCTION_9_52(v68, v69, v70, v71, v72, v73, v74, v75, v91, v92, v93, v96, v98, *(&v98 + 1), v103, v105, v108, obja, v113, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, 0);
        if (v76)
        {
          v77 = v76;
          v78 = MEMORY[0];
          do
          {
            for (k = 0; k != v77; ++k)
            {
              if (MEMORY[0] != v78)
              {
                objc_enumerationMutation(v3);
              }

              v80 = *(8 * k);
              v81 = [v80 isEqualToString:@"PrimaryFormat"];
              if ((v81 & 1) == 0)
              {
                BWSampleBufferSetAttachedMedia(v4, v80, [v3 objectForKeyedSubscript:v80]);
              }
            }

            v77 = OUTLINED_FUNCTION_9_52(v81, v82, v83, v84, v85, v86, v87, v88, v91, v92, v94, v96, v99, v101, v104, v105, v108, objb, v114, v115, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173);
          }

          while (v77);
        }

        if (*MEMORY[0x1E695FF58] == 1)
        {
          OUTLINED_FUNCTION_5_14();
        }

        v89 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        v89 = 4294954516;
      }

      v9 = v108;
      v2 = v96;
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      OUTLINED_FUNCTION_2_95();
      v89 = 4294894083;
    }
  }

  else
  {
    v89 = 4294894082;
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    OUTLINED_FUNCTION_2_95();
  }

LABEL_69:
  [objc_msgSend(v9 delegate];

  [(BWScalerProcessorController *)self reset];
  return v89;
}

- (uint64_t)_zoomSampleBuffer:(void *)buffer settings:(unsigned int)settings processingMode:(void *)mode mediaKey:(uint64_t)key bufferType:(void *)type request:(void *)request newZoomedSampleBufferOut:
{
  if (!self)
  {
    return 0;
  }

  v146 = 0;
  v147 = 0;
  v16 = [mode isEqualToString:@"PrimaryFormat"];
  v17 = [objc_msgSend(objc_msgSend(self "configuration")];
  v18 = v17;
  modeCopy = mode;
  if ((v16 & 1) != 0 || v17)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    if (!ImageBuffer)
    {
      v128 = 4294894082;
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v93 = 0;
      goto LABEL_101;
    }

    v20 = ImageBuffer;
    Width = CVPixelBufferGetWidth(ImageBuffer);
    Height = CVPixelBufferGetHeight(v20);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v20);
    if (!CMGetAttachment(a2, *off_1E798A3C8, 0))
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v93 = 0;
      v128 = 4294894083;
      goto LABEL_101;
    }

    v140 = a2;
    requestedSettings = [buffer requestedSettings];
    LODWORD(v8) = 1.0;
    if ((v16 & 1) == 0)
    {
      [v18 floatValue];
      LODWORD(v8) = v24;
    }

    v139 = Width | (Height << 32);
    v138 = ([requestedSettings outputWidth] / *&v8);
    v137 = ([requestedSettings outputHeight] / *&v8);
    delegate = [type delegate];
    input = [type input];
    keyCopy = key;
    if ((v16 & 1) == 0)
    {
      keyCopy = BWStillImageBufferTypeForAttachedMediaKey(mode);
    }

    v28 = [delegate processorController:self outputPixelBufferDimensionsForProcessorInput:input type:keyCopy attachedMediaKey:mode pixelFormat:PixelFormatType dimensions:0];
    FigCaptureMetadataUtilitiesGetFinalCropRect();
    OUTLINED_FUNCTION_2_3();
    v136 = v138 | (v137 << 32);
    v29 = FigCaptureAspectRatioForDimensions(v136);
    if (settings == 2)
    {
      v33 = OUTLINED_FUNCTION_3();
      v37 = FigCaptureRectMidPoint(v33, v34, v35, v36);
      v39 = FigCaptureMetadataUtilitiesDenormalizePoint(v37, v38, Width);
      if (Width >= v28)
      {
        v41 = v28;
      }

      else
      {
        v41 = Width;
      }

      v42 = v41;
      v43 = vcvtd_n_f64_s32(v41, 1uLL);
      if (Height >= SHIDWORD(v28))
      {
        v44 = HIDWORD(v28);
      }

      else
      {
        v44 = Height;
      }

      v45 = v39 - v43;
      v46 = v44;
      v47 = v40 - vcvtd_n_f64_s32(v44, 1uLL);
      if (v45 >= 0.0)
      {
        v48 = v45;
      }

      else
      {
        v48 = 0.0;
      }

      if (v47 >= 0.0)
      {
        v49 = v47;
      }

      else
      {
        v49 = 0.0;
      }

      v154.origin.x = FigCaptureRectFromDimensions();
      v154.origin.y = v50;
      v154.size.width = v51;
      v154.size.height = v52;
      v149.origin.x = v48;
      v149.origin.y = v49;
      v149.size.width = v42;
      v149.size.height = v46;
      v150 = CGRectIntersection(v149, v154);
      v10 = v150.size.width;
      v11 = v150.size.height;
      FigCaptureMetadataUtilitiesNormalizeCropRect(v150.origin.x, v150.origin.y, v150.size.width, v150.size.height);
      v8 = v53;
      v9 = v54;
      v32 = v55;
      v31 = v56;
      v30 = v10 / v11;
    }

    else
    {
      v30 = v29;
      if (settings == 1)
      {
        v31 = 1.0;
      }

      else
      {
        v31 = v11;
      }

      if (settings == 1)
      {
        v32 = 1.0;
      }

      else
      {
        v32 = v10;
      }

      if (settings == 1)
      {
        v9 = 0.0;
        v8 = 0.0;
      }
    }

    v151.origin.x = OUTLINED_FUNCTION_3_83();
    if (CGRectIsNull(v151))
    {
      goto LABEL_114;
    }

    v57 = Width;
    if (v16)
    {
      v58 = OUTLINED_FUNCTION_3_83();
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v59, v60, v58, v61, v62, v63, v30);
    }

    else
    {
      [v18 intValue];
      v64 = OUTLINED_FUNCTION_3_83();
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(v65, v66, v64, v67, v68, v69, v30, v70);
    }

    OUTLINED_FUNCTION_2_3();
    settingsCopy = settings;
    if (CGRectIsNull(v152))
    {
LABEL_114:
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v93 = 0;
      goto LABEL_115;
    }

    v133 = v30;
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v8, v9, v32, v31);
    if (settings || ((v75 = vabdd_f64(v73, v11), vabdd_f64(v72, v10) <= 2.0) ? (v76 = v75 <= 2.0) : (v76 = 0), v76))
    {
      v74 = 0;
    }

    else
    {
      v77 = OUTLINED_FUNCTION_3();
      FigCaptureMetadataUtilitiesNormalizeCropRect(v77, v78, v79, v80);
      v74 = 1;
    }

    LODWORD(settingsCopy) = llround(v10);
    LODWORD(v57) = llround(v11);
    v135 = v74;
    v81 = (llround(v8) & 1) == 0 && ((llround(v9) | settingsCopy) & 1) == 0 && (v57 & 1) == 0;
    v82 = [requestedSettings outputFormat] == 1785750887 || objc_msgSend(requestedSettings, "outputFormat") == 1752589105;
    v83 = FigCapturePixelFormatIsDemosaicedRaw([requestedSettings rawOutputFormat]) && objc_msgSend(requestedSettings, "outputFormat") == 0;
    v84 = settingsCopy | (v57 << 32);
    if (v82)
    {
      settingsCopy3 = settings;
      if (settings)
      {
LABEL_56:
        v86 = 1;
        goto LABEL_63;
      }
    }

    else
    {
      settingsCopy3 = settings;
      if (settings)
      {
        v83 = 0;
      }

      if (!v83)
      {
        goto LABEL_56;
      }
    }

    v87 = v84 == v136 && v81;
    if (v139 == v84)
    {
      v87 = v139 == v136;
    }

    v86 = !v87;
LABEL_63:
    if (((settingsCopy3 == 0) & v86) != 0 || (Width <= v28 ? (v88 = Height <= SHIDWORD(v28)) : (v88 = 0), !v88))
    {
      v89 = [(BWScalerProcessorController *)self _ensurePixelTransferSessionForMediaKey:modeCopy];
      if (v89)
      {
        v90 = v89;
        delegate2 = [type delegate];
        input2 = [type input];
        if ((v16 & 1) == 0)
        {
          key = BWStillImageBufferTypeForAttachedMediaKey(modeCopy);
        }

        v93 = [delegate2 processorController:self newOutputPixelBufferForProcessorInput:input2 type:key attachedMediaKey:modeCopy pixelFormat:PixelFormatType dimensions:0];
        if (!v93)
        {
          v128 = 4294954510;
          goto LABEL_101;
        }

        settingsCopy5 = settings;
        v95 = v138 | (v137 << 32);
        if (settings == 2)
        {
          v95 = v84;
        }

        v96 = v28;
        v97 = SHIDWORD(v28);
        v98 = 0.0;
        if (v28 == v95)
        {
          v99 = 0.0;
          goto LABEL_82;
        }

        if (v28 >= v138 && SHIDWORD(v28) >= v137)
        {
          if (settings - 1 >= 2)
          {
            v99 = 0.0;
            if (settings)
            {
              v103 = v28;
            }

            else
            {
              v103 = v138;
            }

            if (settings)
            {
              v104 = SHIDWORD(v28);
            }

            else
            {
              v104 = v137;
            }

            goto LABEL_89;
          }

          v101 = v133;
          v99 = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(0.0, 0.0, v96, v97, v101);
          v98 = v102;
LABEL_82:
          v103 = v96;
          v104 = v97;
LABEL_89:
          if (dword_1EB58E320)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_4_73();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            settingsCopy5 = settings;
          }

          v106 = OUTLINED_FUNCTION_3();
          v111 = BWScalePixelBuffer(v107, v93, v90, v106, v108, v109, v110, v99, v98, v103, v104);
          if (v111)
          {
            v128 = v111;
            goto LABEL_101;
          }

          v146 = [self[9] objectForKeyedSubscript:modeCopy];
          v112 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(v140, v93, &v146, &v147);
          if (v112)
          {
            v128 = v112;
            FigDebugAssert3();
            goto LABEL_101;
          }

          [self[9] setObject:v146 forKeyedSubscript:modeCopy];
          v113 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v147);
          CVBufferRemoveAttachment(v93, *MEMORY[0x1E6965D70]);
          if (v135)
          {
            FigCFDictionarySetCGRect();
          }

          v114 = OUTLINED_FUNCTION_3();
          FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v115, v116, v28, v114, v117, v118, v119, v99, v98, v103, v104);
          FigCaptureMetadataUtilitiesUpdateMetadataForNewFinalDimensions(v113, v139, v28);
          if (!settingsCopy5)
          {
            v153.origin.x = OUTLINED_FUNCTION_6_66();
            if (CGRectEqualToRect(v153, v155))
            {
              FigCaptureMetadataUtilitiesPreventFurtherCropping(v113, v120);
            }
          }

          [objc_msgSend(objc_msgSend(self configuration];
          if (CMGetAttachment(v147, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0))
          {
            v148.width = v28;
            v148.height = SHIDWORD(v28);
            v121 = CGSizeCreateDictionaryRepresentation(v148);
            CMSetAttachment(v147, @"OriginalCameraIntrinsicMatrixReferenceDimensions", v121, 1u);
            v122 = OUTLINED_FUNCTION_3();
            BWUpdateCameraIntrinsicsMatrixOnSampleBuffer(v123, v124, 0, 0, v122, v125, v126, v127, v99, v98, v103, v104);
          }

          goto LABEL_100;
        }

LABEL_115:
        v128 = 4294954516;
        goto LABEL_101;
      }

      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    v93 = 0;
    v128 = 0;
    goto LABEL_101;
  }

  v93 = 0;
LABEL_100:
  v128 = 0;
LABEL_101:
  if (dword_1EB58E320)
  {
    v129 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_4_73();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v128)
  {
    if (v147)
    {
      CFRelease(v147);
    }
  }

  else if (request)
  {
    *request = v147;
  }

  CVPixelBufferRelease(v93);
  if (v146)
  {
    CFRelease(v146);
  }

  return v128;
}

- (VTPixelTransferSessionRef)_ensurePixelTransferSessionForMediaKey:(uint64_t)key
{
  if (!key)
  {
    return 0;
  }

  v4 = [*(key + 64) objectForKeyedSubscript:a2];
  pixelTransferSessionOut = v4;
  if (!v4)
  {
    v5 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut);
    v4 = pixelTransferSessionOut;
    if (!v5)
    {
      [*(key + 64) setObject:pixelTransferSessionOut forKeyedSubscript:a2];
      if (pixelTransferSessionOut)
      {
        CFRelease(pixelTransferSessionOut);
        return pixelTransferSessionOut;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

@end