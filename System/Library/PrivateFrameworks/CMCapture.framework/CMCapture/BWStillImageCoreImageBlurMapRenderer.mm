@interface BWStillImageCoreImageBlurMapRenderer
- (id)initForRenderingWithContext:(id)context hairnetEnabled:(BOOL)enabled;
- (int)_allocateBlurMapPixelBufferPoolWithDimensions:(id)dimensions;
- (int)_allocateBlurredGainMapPixleBufferPoolForBuffersOfWidth:(unint64_t)width height:(unint64_t)height;
- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key;
- (void)dealloc;
- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler;
@end

@implementation BWStillImageCoreImageBlurMapRenderer

- (id)initForRenderingWithContext:(id)context hairnetEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = BWStillImageCoreImageBlurMapRenderer;
  v6 = [(BWStillImageCoreImageBlurMapRenderer *)&v8 init];
  if (v6)
  {
    v6->_ciContext = context;
    v6->_hairnetEnabled = enabled;
    v6->_blurMapFilter = [MEMORY[0x1E695F648] filterWithName:@"CIDepthEffectMakeBlurMap"];
  }

  return v6;
}

- (void)dealloc
{
  blurredGainMapFormatDescription = self->_blurredGainMapFormatDescription;
  if (blurredGainMapFormatDescription)
  {
    CFRelease(blurredGainMapFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWStillImageCoreImageBlurMapRenderer;
  [(BWStillImageCoreImageBlurMapRenderer *)&v4 dealloc];
}

- (int)_allocateBlurMapPixelBufferPoolWithDimensions:(id)dimensions
{
  if (!self->_blurMapPixelBufferPool)
  {
    if (self->_hairnetEnabled)
    {
      v4 = 1380411457;
    }

    else
    {
      v4 = 843264104;
    }

    var1 = dimensions.var1;
    v12[0] = *MEMORY[0x1E6966208];
    v13[0] = [MEMORY[0x1E696AD98] numberWithInt:?];
    v12[1] = *MEMORY[0x1E69660B8];
    v13[1] = [MEMORY[0x1E696AD98] numberWithInt:var1];
    v12[2] = *MEMORY[0x1E6966130];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
    v12[3] = *MEMORY[0x1E69660D8];
    v13[2] = v6;
    v13[3] = MEMORY[0x1E695E0F8];
    v7 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4]);
    v11 = v7;
    v8 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);

    v9 = [[BWPixelBufferPool alloc] initWithVideoFormat:v8 capacity:1 name:@"Still Image Core Image Blur Map Pool" memoryPool:+[BWMemoryPool sharedMemoryPool]];
    self->_blurMapPixelBufferPool = v9;
    if (!v9)
    {
      [BWStillImageCoreImageBlurMapRenderer _allocateBlurMapPixelBufferPoolWithDimensions:];
    }
  }

  return 0;
}

- (int)_allocateBlurredGainMapPixleBufferPoolForBuffersOfWidth:(unint64_t)width height:(unint64_t)height
{
  if (!self->_blurredGainMapPixelBufferPool)
  {
    v19[0] = *MEMORY[0x1E6966208];
    v20[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:width];
    v19[1] = *MEMORY[0x1E69660B8];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:height];
    v7 = *MEMORY[0x1E6966130];
    v20[1] = v6;
    v20[2] = &unk_1F2242760;
    v8 = *MEMORY[0x1E69660D8];
    v19[2] = v7;
    v19[3] = v8;
    v20[3] = MEMORY[0x1E695E0F8];
    v9 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4]);
    v18 = v9;
    v10 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1]);

    v16 = *MEMORY[0x1E6965C70];
    v14 = *MEMORY[0x1E6965F30];
    v15 = *MEMORY[0x1E6965F60];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    LOBYTE(v13) = 0;
    v11 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:additionalPixelBufferAttributes:providesBackPressure:reportSlowBackPressureAllocations:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:additionalPixelBufferAttributes:providesBackPressure:reportSlowBackPressureAllocations:", v10, 1, @"Still Image Core Image Blurred Gain Map Pool", +[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1], 0, v13);
    self->_blurredGainMapPixelBufferPool = v11;
    if (!v11)
    {
      [BWStillImageCoreImageBlurMapRenderer _allocateBlurredGainMapPixleBufferPoolForBuffersOfWidth:height:];
    }
  }

  return 0;
}

- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key
{
  result = [parameters prepareForRenderingWithInputVideoFormat:format];
  if (!result)
  {
    if (format)
    {
      if (!self->_blurMapPixelBufferPool)
      {
        -[BWStillImageCoreImageBlurMapRenderer _allocateBlurMapPixelBufferPoolWithDimensions:](self, "_allocateBlurMapPixelBufferPoolWithDimensions:", FigCaptureScaledDimensions([format dimensions], 0.5));
      }

      return 0;
    }

    else
    {
      return -12780;
    }
  }

  return result;
}

- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  selfCopy2 = 0;
  selfCopy3 = 0;
  cf = 0;
  v11 = -12780;
  if (!buffer || !sampleBuffer)
  {
    j = 0;
    outputImage = 0;
    AttachedMedia = 0;
    value = 0;
    v203 = 0;
    newPixelBuffer = 0;
LABEL_91:
    v112 = v203;
    if (!selfCopy2)
    {
      self = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:{0, pixelBuffer, processedPixelBuffer}];
      selfCopy2 = self;
      selfCopy3 = self;
    }

    if (handlerCopy)
    {
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  j = 0;
  outputImage = 0;
  AttachedMedia = 0;
  value = 0;
  v203 = 0;
  newPixelBuffer = 0;
  if (handler)
  {
    handlerCopy2 = handler;
    v203 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = objc_autoreleasePoolPush();
    AttachedMedia = BWSampleBufferGetAttachedMedia(sampleBuffer, @"Depth");
    outputImage = BWSampleBufferGetAttachedMedia(sampleBuffer, 0x1F21AABB0);
    v19 = CMGetAttachment(sampleBuffer, *off_1E798D348, 0);
    v20 = *off_1E798A3C8;
    target = sampleBuffer;
    v21 = CMGetAttachment(sampleBuffer, *off_1E798A3C8, 0);
    context = v18;
    if (v21)
    {
      if (v19)
      {
        j = v21;
        v22 = CMGetAttachment(sampleBuffer, @"StillSettings", 0);
        if (v22)
        {
          v185 = v22;
          v189 = v19;
          key = v20;
          v181 = @"StillSettings";
          v209 = j;
          if (AttachedMedia)
          {
            AttachedMedia = CMSampleBufferGetImageBuffer(AttachedMedia);
          }

          j = 0x1E695F000uLL;
          v23 = MEMORY[0x1E695F990];
          v24 = MEMORY[0x1E695E118];
          if (outputImage)
          {
            ImageBuffer = CMSampleBufferGetImageBuffer(outputImage);
            v283 = *v23;
            v284 = v24;
            v197 = ImageBuffer;
            v187 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:ImageBuffer options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v284, &v283, 1)}];
          }

          else
          {
            v187 = 0;
            v197 = 0;
          }

          v26 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsHair");
          if (v26)
          {
            v27 = CMSampleBufferGetImageBuffer(v26);
          }

          else
          {
            v27 = 0;
          }

          v28 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsGlasses");
          if (v28)
          {
            v207 = CMSampleBufferGetImageBuffer(v28);
          }

          else
          {
            v207 = 0;
          }

          v281 = *v23;
          outputImage = v281;
          v282 = v24;
          v29 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:buffer options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v282, &v281, 1)}];
          v183 = *MEMORY[0x1E695FAB0];
          [v203 setObject:v29 forKeyedSubscript:?];
          v199 = outputImage;
          if (v197)
          {
            v279 = outputImage;
            v280 = v24;
            v30 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v197 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v280, &v279, 1)}];
          }

          else
          {
            v30 = 0;
          }

          [v203 setObject:v30 forKeyedSubscript:@"inputMatteImage"];
          v31 = CMGetAttachment(target, *off_1E798D2B8, 0);
          AuxiliaryImagePropertiesFromDepthMetadata = FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata(v31);
          if (AuxiliaryImagePropertiesFromDepthMetadata)
          {
            v33 = AuxiliaryImagePropertiesFromDepthMetadata;
            v34 = objc_alloc(NSClassFromString(&cfstr_Avdepthdata.isa));
            v35 = [v34 performSelector:NSSelectorFromString(&cfstr_Initwithpixelb.isa) withObject:AttachedMedia withObject:v31];
            value = v33;
            if (v35)
            {
              v36 = MEMORY[0x1E695F658];
              v37 = *MEMORY[0x1E695F938];
              v278[0] = v35;
              v38 = *MEMORY[0x1E695F9E0];
              v277[0] = v37;
              v175 = v38;
              v277[1] = v38;
              v173 = *MEMORY[0x1E696D228];
              v275 = *MEMORY[0x1E696D228];
              v276 = v33;
              v278[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v276 forKeys:&v275 count:1];
              [v203 setObject:objc_msgSend(v36 forKeyedSubscript:{"imageWithCVPixelBuffer:options:", AttachedMedia, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v278, v277, 2)), @"inputShiftmapImage"}];
              [v203 setObject:v33 forKeyedSubscript:@"inputAuxDataMetadata"];
              if (v27)
              {
                v273 = outputImage;
                v274 = MEMORY[0x1E695E118];
                v39 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v27 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v274, &v273, 1)}];
              }

              else
              {
                v39 = 0;
              }

              [v203 setObject:v39 forKeyedSubscript:@"inputHairImage"];
              if (v207)
              {
                v271 = outputImage;
                v272 = MEMORY[0x1E695E118];
                v40 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v207 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v272, &v271, 1)}];
              }

              else
              {
                v40 = 0;
              }

              [v203 setObject:v40 forKeyedSubscript:@"inputGlassesImage"];
              [v203 setObject:&unk_1F2242778 forKeyedSubscript:@"inputScale"];
              v177 = *off_1E798CEF8;
              [v203 setObject:objc_msgSend(v31 forKeyedSubscript:{"objectForKeyedSubscript:"), @"inputAperture"}];
              AttachedInference = BWInferenceGetAttachedInference(target, 801, 0x1F219E5F0);
              LODWORD(v207) = [objc_msgSend(v209 objectForKeyedSubscript:{*off_1E798A5B0), "intValue"}];
              v179 = v31;
              if ([AttachedInference count] >= 5)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0();
                FigDebugAssert3();
              }

              else
              {
                v290 = 0u;
                v291 = 0u;
                v288 = 0u;
                v289 = 0u;
                OUTLINED_FUNCTION_15_4();
                v42 = [AttachedInference countByEnumeratingWithState:? objects:? count:?];
                if (v42)
                {
                  v43 = v42;
                  v209 = 0;
                  v44 = *v289;
                  do
                  {
                    for (i = 0; i != v43; ++i)
                    {
                      if (*v289 != v44)
                      {
                        objc_enumerationMutation(AttachedInference);
                      }

                      v46 = *(*(&v288 + 1) + 8 * i);
                      v47 = [objc_msgSend(v46 "landmarks")];
                      j = [objc_msgSend(v46 "landmarks")];
                      v48 = [objc_msgSend(v46 "landmarks")];
                      v49 = [objc_msgSend(v46 "landmarks")];
                      if (v47)
                      {
                        if (j)
                        {
                          if (v48)
                          {
                            v50 = v49;
                            if ([v47 pointCount])
                            {
                              if ([j pointCount] && objc_msgSend(v48, "pointCount") && objc_msgSend(v50, "pointCount") == 65 && objc_msgSend(v47, "normalizedPoints") && objc_msgSend(j, "normalizedPoints") && objc_msgSend(v48, "normalizedPoints") && objc_msgSend(v50, "normalizedPoints"))
                              {
                                [v46 boundingBox];
                                *&v265 = v51;
                                *(&v265 + 1) = v52;
                                *&v266 = v53;
                                *(&v266 + 1) = v54;
                                normalizedPoints = [v47 normalizedPoints];
                                pointCount = [v47 pointCount];
                                v57 = 0uLL;
                                if (pointCount >= 1)
                                {
                                  v58 = pointCount & 0x7FFFFFFF;
                                  do
                                  {
                                    v59 = *normalizedPoints++;
                                    v57 = vaddq_f64(v57, v59);
                                    --v58;
                                  }

                                  while (v58);
                                }

                                v264 = vdivq_f64(v57, vdupq_lane_s64(COERCE__INT64(pointCount), 0));
                                v60 = &v269[64 * v209];
                                sicibmr_landmarkToC0(v207, v264.f64, &v265, v60 + 2);
                                normalizedPoints2 = [j normalizedPoints];
                                pointCount2 = [j pointCount];
                                v63 = 0uLL;
                                if (pointCount2 >= 1)
                                {
                                  v64 = pointCount2 & 0x7FFFFFFF;
                                  do
                                  {
                                    v65 = *normalizedPoints2++;
                                    v63 = vaddq_f64(v63, v65);
                                    --v64;
                                  }

                                  while (v64);
                                }

                                OUTLINED_FUNCTION_11_7();
                                sicibmr_landmarkToC0(v207, v66, v67, v60 + 4);
                                normalizedPoints3 = [v48 normalizedPoints];
                                pointCount3 = [v48 pointCount];
                                if (pointCount3 >= 1)
                                {
                                  v70 = pointCount3 & 0x7FFFFFFF;
                                  v71 = 0uLL;
                                  do
                                  {
                                    v72 = *normalizedPoints3++;
                                    v71 = vaddq_f64(v71, v72);
                                    --v70;
                                  }

                                  while (v70);
                                }

                                OUTLINED_FUNCTION_11_7();
                                sicibmr_landmarkToC0(v207, v73, v74, v60);
                                [v50 normalizedPoints];
                                OUTLINED_FUNCTION_11_7();
                                sicibmr_landmarkToC0(v207, v75, v76, v60 + 6);
                                v209 = (v209 + 1);
                              }
                            }
                          }
                        }
                      }
                    }

                    OUTLINED_FUNCTION_15_4();
                    v43 = [AttachedInference countByEnumeratingWithState:? objects:? count:?];
                  }

                  while (v43);
                  if (v209)
                  {
                    v77 = 0;
                    memset(v287, 0, 64);
                    v290 = 0u;
                    v291 = 0u;
                    v288 = 0u;
                    v289 = 0u;
                    v267 = 0u;
                    v268 = 0u;
                    v265 = 0u;
                    v266 = 0u;
                    v78 = &v270;
                    memset(&v264, 0, 64);
                    do
                    {
                      v79 = 8 * v77;
                      v80 = *(v78 - 1);
                      *(v287 + v79) = *(v78 - 2);
                      v81 = v77 + 1;
                      *(v287 + v81) = 1.0 - v80;
                      v82 = v78[1];
                      *(&v288 + v79) = *v78;
                      *(&v288 + v81) = 1.0 - v82;
                      v83 = v78[3];
                      v264.f64[v79 / 8] = v78[2];
                      v264.f64[v81] = 1.0 - v83;
                      v84 = *(v78 - 3);
                      *(&v265 + v79) = *(v78 - 4);
                      *(&v265 + v81) = 1.0 - v84;
                      v77 += 2;
                      v78 += 8;
                    }

                    while (2 * v209 != v77);
                    v85 = (2 * v209);
                    [v203 setObject:objc_msgSend(MEMORY[0x1E695F688] forKeyedSubscript:{"vectorWithValues:count:", v287, v85, 1.0), @"inputLeftEyePosition"}];
                    [v203 setObject:objc_msgSend(MEMORY[0x1E695F688] forKeyedSubscript:{"vectorWithValues:count:", &v288, v85), @"inputRightEyePosition"}];
                    [v203 setObject:objc_msgSend(MEMORY[0x1E695F688] forKeyedSubscript:{"vectorWithValues:count:", &v264, v85), @"inputChinPosition"}];
                    [v203 setObject:objc_msgSend(MEMORY[0x1E695F688] forKeyedSubscript:{"vectorWithValues:count:", &v265, v85), @"inputFaceMidPoint"}];
                  }
                }
              }

              AttachedMedia = FigCaptureMetadataUtiliesCreateExifAuxRegionsDictForSampleBuffer(target, 1, 0, 0);
              v86 = [(opaqueCMSampleBuffer *)AttachedMedia objectForKeyedSubscript:*MEMORY[0x1E696D930]];
              v288 = 0u;
              v289 = 0u;
              v290 = 0u;
              v291 = 0u;
              OUTLINED_FUNCTION_15_4();
              v88 = [v87 countByEnumeratingWithState:? objects:? count:?];
              if (v88)
              {
                v89 = v88;
                v90 = *v289;
                v91 = *MEMORY[0x1E696D938];
                v92 = *MEMORY[0x1E696D920];
                while (2)
                {
                  for (j = 0; j != v89; ++j)
                  {
                    if (*v289 != v90)
                    {
                      objc_enumerationMutation(v86);
                    }

                    v93 = *(*(&v288 + 1) + 8 * j);
                    if ([objc_msgSend(v93 objectForKeyedSubscript:{v91), "isEqualToString:", v92}])
                    {
                      if (v93)
                      {
                        v94 = [v93 objectForKeyedSubscript:*MEMORY[0x1E696D948]];
                        v95 = [v93 objectForKeyedSubscript:*MEMORY[0x1E696D950]];
                        v96 = [v93 objectForKeyedSubscript:*MEMORY[0x1E696D940]];
                        v97 = [v93 objectForKeyedSubscript:*MEMORY[0x1E696D928]];
                        [v94 floatValue];
                        [v95 floatValue];
                        [v96 floatValue];
                        [v97 floatValue];
                      }

                      goto LABEL_73;
                    }
                  }

                  OUTLINED_FUNCTION_15_4();
                  v89 = [v86 countByEnumeratingWithState:? objects:? count:?];
                  if (v89)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_73:
              v292.origin.x = OUTLINED_FUNCTION_1();
              if (!CGRectIsNull(v292))
              {
                v98 = OUTLINED_FUNCTION_1();
                [v203 setObject:objc_msgSend(v99 forKeyedSubscript:{"vectorWithCGRect:", v98), @"inputFocusRect"}];
              }

              [(CIFilter *)selfCopy->_blurMapFilter setValuesForKeysWithDictionary:v203];
              outputImage = [(CIFilter *)selfCopy->_blurMapFilter outputImage];
              newPixelBuffer = [(BWPixelBufferPool *)selfCopy->_blurMapPixelBufferPool newPixelBuffer];
              if (newPixelBuffer)
              {
                sicibmr_renderToPixelBuffer(selfCopy->_ciContext, outputImage, newPixelBuffer, &selfCopy3);
                handlerCopy = handlerCopy2;
                if (selfCopy3)
                {
                  v156 = selfCopy3;
                  OUTLINED_FUNCTION_3_12();
                }

                else
                {
                  v100 = BWSampleBufferGetAttachedMedia(target, 0x1F217BF50);
                  v101 = CMGetAttachment(v100, key, 0);
                  if (v101 && (v102 = v101, [objc_msgSend(v101 objectForKeyedSubscript:{*off_1E798A688), "intValue"}] >= 0x20000))
                  {
                    v103 = CMSampleBufferGetImageBuffer(v100);
                    v104 = v103;
                    if (!selfCopy->_blurredGainMapPixelBufferPool)
                    {
                      Width = CVPixelBufferGetWidth(v103);
                      [(BWStillImageCoreImageBlurMapRenderer *)selfCopy _allocateBlurredGainMapPixleBufferPoolForBuffersOfWidth:Width height:CVPixelBufferGetHeight(v104)];
                    }

                    AttachedMedia = objc_alloc_init(MEMORY[0x1E695DF90]);
                    v209 = [MEMORY[0x1E695F648] filterWithName:@"CIDepthEffectApplyBlurMap"];
                    [objc_msgSend(CMGetAttachment(target @"StillSettings"];
                    j = FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromGainMapSampleBuffer(v102);
                    if (!j)
                    {
                      j = CGImageMetadataCreateMutable();
                    }

                    v106 = MEMORY[0x1E695F658];
                    v263[0] = MEMORY[0x1E695E118];
                    v107 = *MEMORY[0x1E695F9A8];
                    v262[0] = v199;
                    v262[1] = v107;
                    v263[1] = [MEMORY[0x1E695DFB0] null];
                    v262[2] = v175;
                    v260 = v173;
                    v261 = j;
                    v263[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v261 forKeys:&v260 count:1];
                    v108 = [v106 imageWithCVPixelBuffer:v104 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v263, v262, 3)}];
                    v109 = BWCIFilterArrayContainsPortraitEffectStageFilters([objc_msgSend(v185 "requestedSettings")], 0);
                    if (v197)
                    {
                      v110 = v187;
                      if (v109)
                      {
                        v258 = v199;
                        v259 = MEMORY[0x1E695E118];
                        v111 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v197 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v259, &v258, 1)}];
                        v108 = [objc_msgSend(MEMORY[0x1E695F608] "componentMultiply")];
                      }
                    }

                    else
                    {
                      v110 = v187;
                    }

                    -[opaqueCMSampleBuffer setObject:forKeyedSubscript:](AttachedMedia, "setObject:forKeyedSubscript:", [v108 imageByApplyingFilter:@"CISRGBToneCurveToLinear"], v183);
                    [(opaqueCMSampleBuffer *)AttachedMedia setObject:outputImage forKeyedSubscript:@"inputBlurMap"];
                    [(opaqueCMSampleBuffer *)AttachedMedia setObject:v108 forKeyedSubscript:@"inputGainMap"];
                    [(opaqueCMSampleBuffer *)AttachedMedia setObject:value forKeyedSubscript:@"inputAuxDataMetadata"];
                    [(opaqueCMSampleBuffer *)AttachedMedia setObject:v110 forKeyedSubscript:@"inputMatteImage"];
                    -[opaqueCMSampleBuffer setObject:forKeyedSubscript:](AttachedMedia, "setObject:forKeyedSubscript:", [v179 objectForKeyedSubscript:v177], @"inputAperture");
                    if ([objc_msgSend(v209 "inputKeys")])
                    {
                      [(opaqueCMSampleBuffer *)AttachedMedia setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"inputBestHairQuality"];
                    }

                    [(opaqueCMSampleBuffer *)AttachedMedia setObject:v189 forKeyedSubscript:@"inputLumaNoiseScale"];
                    [v209 setValuesForKeysWithDictionary:AttachedMedia];
                    outputImage = [(BWPixelBufferPool *)selfCopy->_blurredGainMapPixelBufferPool newPixelBuffer];
                    if (!outputImage)
                    {
                      v11 = -12786;
                      goto LABEL_89;
                    }

                    outputImage2 = [v209 outputImage];
                    v252 = @"inputRVector";
                    v255 = OUTLINED_FUNCTION_8_14();
                    v253 = @"inputGVector";
                    v256 = OUTLINED_FUNCTION_8_14();
                    v254 = @"inputBVector";
                    v257 = OUTLINED_FUNCTION_8_14();
                    v127 = [outputImage2 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v255, &v252, 3)}];
                    CVBufferSetAttachment(outputImage, @"CVImageBufferTransferFunction", *MEMORY[0x1E6965F88], kCVAttachmentMode_ShouldPropagate);
                    sicibmr_renderToPixelBuffer(selfCopy->_ciContext, v127, outputImage, &selfCopy3);
                    if (selfCopy3)
                    {
                      v165 = selfCopy3;
                      goto LABEL_88;
                    }

                    CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(v100, outputImage, &selfCopy->_blurredGainMapFormatDescription, &cf);
                    if (CopyWithNewPixelBuffer)
                    {
                      v11 = CopyWithNewPixelBuffer;
                      goto LABEL_89;
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_3_12();
                  }

                  CMSetAttachment(target, @"PortraitStillImageFaceAdjustedBlurMap", newPixelBuffer, 1u);
                  CMSetAttachment(target, @"PortraitStillImageAuxDepthMetadata", value, 1u);
                  BWSampleBufferSetAttachedMedia(target, 0x1F21AAE30, cf);
                }

LABEL_88:
                v11 = 0;
LABEL_89:
                objc_autoreleasePoolPop(context);
                selfCopy2 = selfCopy3;
                goto LABEL_90;
              }

              OUTLINED_FUNCTION_3_12();
              v11 = -12786;
LABEL_141:
              handlerCopy = handlerCopy2;
              goto LABEL_89;
            }

            OUTLINED_FUNCTION_3_12();
LABEL_140:
            newPixelBuffer = 0;
            v11 = -12780;
            goto LABEL_141;
          }

LABEL_139:
          OUTLINED_FUNCTION_3_12();
          value = 0;
          goto LABEL_140;
        }

        FigCaptureGetFrameworkRadarComponent();
        v147 = OUTLINED_FUNCTION_1_22();
        v155 = OUTLINED_FUNCTION_9_4(v147, v148, v149, v150, v151, v152, v153, v154, v166, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, key, v18, handlerCopy2, v197, v199, 0, v203, sampleBuffer, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260);
        if (OUTLINED_FUNCTION_12(v155))
        {
          LODWORD(v288) = 136315138;
          OUTLINED_FUNCTION_2_21("[BWStillImageCoreImageBlurMapRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:]");
          OUTLINED_FUNCTION_5_19();
        }

        OUTLINED_FUNCTION_0_21();
        OUTLINED_FUNCTION_7_13();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_13_2();
        v157 = OUTLINED_FUNCTION_4_5();
        v164 = 240;
      }

      else
      {
        FigCaptureGetFrameworkRadarComponent();
        v138 = OUTLINED_FUNCTION_1_22();
        v146 = OUTLINED_FUNCTION_9_4(v138, v139, v140, v141, v142, v143, v144, v145, v166, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, key, v18, handlerCopy2, v197, v199, 0, v203, sampleBuffer, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260);
        if (OUTLINED_FUNCTION_12(v146))
        {
          LODWORD(v288) = 136315138;
          OUTLINED_FUNCTION_2_21("[BWStillImageCoreImageBlurMapRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:]");
          OUTLINED_FUNCTION_5_19();
        }

        OUTLINED_FUNCTION_0_21();
        OUTLINED_FUNCTION_7_13();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_13_2();
        v157 = OUTLINED_FUNCTION_4_5();
        v164 = 237;
      }
    }

    else
    {
      FigCaptureGetFrameworkRadarComponent();
      v129 = OUTLINED_FUNCTION_1_22();
      v137 = OUTLINED_FUNCTION_9_4(v129, v130, v131, v132, v133, v134, v135, v136, v166, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, key, v18, handlerCopy2, v197, v199, 0, v203, sampleBuffer, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260);
      if (OUTLINED_FUNCTION_12(v137))
      {
        LODWORD(v288) = 136315138;
        OUTLINED_FUNCTION_2_21("[BWStillImageCoreImageBlurMapRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:]");
        OUTLINED_FUNCTION_5_19();
      }

      OUTLINED_FUNCTION_0_21();
      OUTLINED_FUNCTION_7_13();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_13_2();
      v157 = OUTLINED_FUNCTION_4_5();
      v164 = 236;
    }

    FigCapturePleaseFileRadar(v157, v158, v159, v160, v161, v164, v162, v163, v168);
    free(outputImage);
    goto LABEL_139;
  }

LABEL_90:
  if (v11)
  {
    goto LABEL_91;
  }

  v112 = v203;
  if (handlerCopy)
  {
LABEL_94:
    self = handlerCopy[2](handlerCopy, 0, selfCopy2);
  }

LABEL_95:
  v113 = OUTLINED_FUNCTION_16_9(self, a2, selfCopy2, buffer, sampleBuffer, pixelBuffer, processedPixelBuffer, handler, v166, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, key, context, handlerCopy2, v197, v199, value, v203, target, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, 0);
  if (v113)
  {
    v114 = v113;
    v115 = MEMORY[0];
    do
    {
      for (k = 0; k != v114; ++k)
      {
        if (MEMORY[0] != v115)
        {
          objc_enumerationMutation(v112);
        }

        v117 = *(8 * k);
        v118 = [(NSArray *)[(CIFilter *)selfCopy->_blurMapFilter inputKeys] containsObject:v117];
        if (v118)
        {
          v118 = [(CIFilter *)selfCopy->_blurMapFilter setValue:0 forKey:v117];
        }
      }

      v114 = OUTLINED_FUNCTION_16_9(v118, v119, v120, v121, v122, v123, v124, v125, v167, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, keya, contexta, v196, v198, v200, valuea, v204, targeta, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244);
    }

    while (v114);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (outputImage)
  {
    CFRelease(outputImage);
  }

  if (valuea)
  {
    CFRelease(valuea);
  }

  if (newPixelBuffer)
  {
    CFRelease(newPixelBuffer);
  }

  if (j)
  {
    CFRelease(j);
  }
}

- (uint64_t)_allocateBlurMapPixelBufferPoolWithDimensions:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBlurredGainMapPixleBufferPoolForBuffersOfWidth:height:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end