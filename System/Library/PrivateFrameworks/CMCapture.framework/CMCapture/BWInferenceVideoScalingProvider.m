@interface BWInferenceVideoScalingProvider
- (BWInferenceVideoScalingProvider)initWithInputRequirement:(id)a3 derivedFromRequirement:(id)a4 outputRequirements:(id)a5 enableFencing:(BOOL)a6 filterType:(int)a7;
- (NSArray)inputVideoRequirements;
- (NSString)description;
- (id)bindOutputByCloningInputRequirement:(id)a3 toAttachedMediaUsingKey:(id)a4;
- (id)newStorage;
- (id)preventionReasonWithSampleBuffer:(opaqueCMSampleBuffer *)a3 executionTime:(id *)a4;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withExecutionTime:(id *)a5 completionHandler:(id)a6;
- (int)prepareForExecution;
- (uint64_t)_configureCustomFiltersForScalingFromSourceWidth:(unint64_t)a3 sourceHeight:(unint64_t)a4 destinationWidth:(unint64_t)a5 destinationHeight:(int)a6 pixelFormat:;
- (uint64_t)prepareForExecution;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6;
- (void)setCustomInferenceIdentifier:(id)a3;
@end

@implementation BWInferenceVideoScalingProvider

- (NSArray)inputVideoRequirements
{
  if ([objc_msgSend(-[NSArray firstObject](self->_outputRequirements "firstObject")] && (derivedFromRequirement = self->_derivedFromRequirement) != 0)
  {
    v9[0] = self->_inputRequirement;
    v9[1] = derivedFromRequirement;
    v4 = MEMORY[0x1E695DEC8];
    p_inputRequirement = v9;
    v6 = 2;
  }

  else
  {
    inputRequirement = self->_inputRequirement;
    v4 = MEMORY[0x1E695DEC8];
    p_inputRequirement = &inputRequirement;
    v6 = 1;
  }

  return [v4 arrayWithObjects:p_inputRequirement count:v6];
}

- (BWInferenceVideoScalingProvider)initWithInputRequirement:(id)a3 derivedFromRequirement:(id)a4 outputRequirements:(id)a5 enableFencing:(BOOL)a6 filterType:(int)a7
{
  v14.receiver = self;
  v14.super_class = BWInferenceVideoScalingProvider;
  v12 = [(BWInferenceVideoScalingProvider *)&v14 init];
  if (v12)
  {
    v12->_inputRequirement = a3;
    v12->_outputRequirements = a5;
    v12->_derivedFromRequirement = a4;
    v12->_cloneVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12->_enableFencing = a6;
    v12->_filterType = a7;
    v12->_disableRotationInLandscapeAspectRatio = 1;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceVideoScalingProvider;
  [(BWInferenceVideoScalingProvider *)&v3 dealloc];
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = BWInferenceVideoScalingProvider;
  return [(NSString *)[(BWInferenceVideoScalingProvider *)&v3 description] stringByAppendingFormat:@" applyUprightExifOrientation:%d applyValidBufferRect:%d computeAndApplyAspectRatioCrop:%d rotation:%d", self->_applyUprightExifOrientation, self->_applyValidBufferRect, self->_computeAndApplyAspectRatioCrop, self->_offsetRotationDegrees];
}

- (void)setCustomInferenceIdentifier:(id)a3
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != a3)
  {

    self->_customInferenceIdentifier = a3;
  }
}

- (id)newStorage
{
  v3 = [BWInferenceProviderStorage alloc];
  inputRequirement = self->_inputRequirement;
  return -[BWInferenceProviderStorage initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:](v3, "initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:", [MEMORY[0x1E695DEC8] arrayWithObjects:&inputRequirement count:1], self->_outputRequirements);
}

- (int)prepareForExecution
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v3 = [(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat];
  v4 = [-[NSArray firstObject](self->_outputRequirements "firstObject")];
  v5 = [(BWInferenceVideoFormat *)v3 rotationDegrees];
  v6 = [v4 rotationDegrees];
  self->_offsetRotationDegrees = v5 - v6;
  if (((v5 - v6) / 90.0) != ((v5 - v6) / 90.0))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Rotations must be a multiple of 90" userInfo:0]);
  }

  [(BWInferenceVideoScalingProvider *)v4 prepareForExecution];
  return 0;
}

- (id)preventionReasonWithSampleBuffer:(opaqueCMSampleBuffer *)a3 executionTime:(id *)a4
{
  if (self->_applyUprightExifOrientation && !CMGetAttachment(a3, @"UprightExifOrientation", 0) && ![CMGetAttachment(a3 *off_1E798A3C8])
  {
    return @"MissingOrientationInformation";
  }

  if (self->_applyCustomCrop)
  {
    v6 = [(NSArray *)self->_outputRequirements firstObject];
    if (![objc_msgSend(objc_msgSend(v6 "videoFormat")])
    {
      return @"CropNotApplicable";
    }
  }

  return 0;
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  cloneVideoRequirements = self->_cloneVideoRequirements;
  v10 = [(NSMutableArray *)cloneVideoRequirements countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(cloneVideoRequirements);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [a4 newSampleBufferSatisfyingCloneRequirement:v14];
        BWSampleBufferSetAttachedMedia(a6, [v14 attachedMediaKey], v15);
        if (v15)
        {
          CFRelease(v15);
        }
      }

      v11 = [(NSMutableArray *)cloneVideoRequirements countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v11);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  outputRequirements = self->_outputRequirements;
  v17 = [(NSArray *)outputRequirements countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(outputRequirements);
        }

        v22 = [a4 pixelBufferForRequirement:*(*(&v25 + 1) + 8 * j)];
        v23 = CMGetAttachment(v22, @"InferenceHistogramData", 0);
        if (v23)
        {
          if ((v19 & 1) == 0)
          {
            CMSetAttachment(a6, @"InferenceHistogramData", v23, 1u);
          }

          CMRemoveAttachment(v22, @"InferenceHistogramData");
          v19 = 1;
        }
      }

      v18 = [(NSArray *)outputRequirements countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v18);
  }
}

- (id)bindOutputByCloningInputRequirement:(id)a3 toAttachedMediaUsingKey:(id)a4
{
  v5 = [[BWInferenceCloneVideoRequirement alloc] initWithAttachedMediaKey:a4 sourceVideoRequirement:a3];
  [(NSMutableArray *)self->_cloneVideoRequirements addObject:v5];

  return v5;
}

- (uint64_t)_configureCustomFiltersForScalingFromSourceWidth:(unint64_t)a3 sourceHeight:(unint64_t)a4 destinationWidth:(unint64_t)a5 destinationHeight:(int)a6 pixelFormat:
{
  if (!result)
  {
    return result;
  }

  v11 = result;
  if (FigCapturePixelFormatIs420(a6))
  {
    result = FigCapturePixelFormatIs420(a6);
  }

  else
  {
    v14 = FigCapturePixelFormatIs422(a6);
    result = FigCapturePixelFormatIs420(a6);
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  a4 &= ~1uLL;
  a2 &= ~1uLL;
LABEL_6:
  if (result)
  {
    v15 = a5 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v15 = a5;
  }

  if (result)
  {
    v16 = a3 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v16 = a3;
  }

  v17 = v15 / v16;
  v18 = a4 / a2;
  if (v17 != *(v11 + 80) || v18 != *(v11 + 76))
  {
    v19 = *(v11 + 72);
    if (v19 >= 3)
    {
      v20 = 3;
    }

    else
    {
      v20 = v19;
    }

    LODWORD(v12) = 1.0;
    LODWORD(v13) = 1.0;
    result = [*(v11 + 64) setCustomFilter:v20 alignment:2 sourceWidth:a2 sourceHeight:v12 destinationWidth:v13 destinationHeight:? luma_param:? chroma_param:?];
    *(v11 + 76) = v18;
    *(v11 + 80) = v17;
  }

  return result;
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withExecutionTime:(id *)a5 completionHandler:(id)a6
{
  v10 = [a4 pixelBufferForRequirement:self->_inputRequirement];
  v168 = [objc_msgSend(a4 "inputSampleBufferAttachments")];
  v11 = [(NSArray *)self->_outputRequirements firstObject];
  v12 = [objc_msgSend(a4 pixelBufferPoolForRequirement:{v11), "newPixelBuffer"}];
  v13 = [objc_msgSend(v11 "videoFormat")];
  v14 = [objc_msgSend(v11 "videoFormat")];
  v15 = MEMORY[0x1E695FF58];
  if (v12)
  {
    CVBufferSetAttachments(v12, self->_colorSpaceProperties, kCVAttachmentMode_ShouldPropagate);
    *&v156 = v14;
    *&v158 = v13;
    if (*v15 == 1)
    {
      kdebug_trace();
    }

    v141 = v14;
    v143 = v13;
    v151 = [(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat];
    v16 = [-[NSArray firstObject](self->_outputRequirements "firstObject")];
    Width = CVPixelBufferGetWidth(v10);
    v153 = v10;
    Height = CVPixelBufferGetHeight(v10);
    applyUprightExifOrientation = self->_applyUprightExifOrientation;
    offsetRotationDegrees = self->_offsetRotationDegrees;
    LODWORD(v160) = self->_applyValidBufferRect;
    HIDWORD(v160) = self->_computeAndApplyAspectRatioCrop;
    HIDWORD(v145) = self->_shouldApplyHorizontalFlip;
    v22 = *MEMORY[0x1E695F050];
    v21 = *(MEMORY[0x1E695F050] + 8);
    v23 = *(MEMORY[0x1E695F050] + 16);
    v24 = *(MEMORY[0x1E695F050] + 24);
    v147 = *&v24;
    v25 = *&v21;
    v26 = *MEMORY[0x1E695F050];
    r1 = offsetRotationDegrees;
    if (self->_applyCustomCrop)
    {
      if (![v16 cropDescriptor])
      {
        v92 = 4294935556;
        goto LABEL_89;
      }

      *&v210[0] = 0;
      *&v208[0].decodeTimeStamp.timescale = 0u;
      *&v208[0].presentationTimeStamp.epoch = 0u;
      *&v208[0].presentationTimeStamp.value = 0u;
      *&v208[0].duration.value = *MEMORY[0x1E6960C70];
      pixelBuffer_8 = *&v208[0].duration.timescale;
      v208[0].duration.epoch = *(MEMORY[0x1E6960C70] + 16);
      CMSampleBufferGetPresentationTimeStamp(&v208[0].presentationTimeStamp, a3);
      v208[0].decodeTimeStamp = v208[0].duration;
      CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, v208, 0, 0, v210);
      CMSetAttachments(*&v210[0], [a4 inputSampleBufferAttachments], 1u);
      v27 = [v16 cropDescriptor];
      [v27 rectForSampleBuffer:*&v210[0]];
      OUTLINED_FUNCTION_3_11();
      if (*&v210[0])
      {
        CFRelease(*&v210[0]);
      }
    }

    v137 = v21;
    v28 = Width;
    r1_8 = Height;
    v212.origin.x = OUTLINED_FUNCTION_2_19();
    if (!CGRectIsNull(v212))
    {
      derivedFromRequirement = self->_derivedFromRequirement;
      if (derivedFromRequirement)
      {
        v30 = applyUprightExifOrientation;
        v31 = [(BWInferenceVideoRequirement *)derivedFromRequirement videoFormat];
        v32 = [a4 pixelBufferForRequirement:self->_derivedFromRequirement];
        if (v32)
        {
          v33 = v32;
          OUTLINED_FUNCTION_4_19([v16 width]);
          if (v34)
          {
            v35 = OUTLINED_FUNCTION_4_19([v16 height]);
            if (v34)
            {
              pixelBuffer = v33;
              v36 = [(BWInferenceVideoFormat *)v31 rotationDegrees];
              if (v36 - [v16 rotationDegrees] == offsetRotationDegrees)
              {
                v37 = pixelBuffer;
                v38 = CVPixelBufferGetWidth(pixelBuffer);
                v39 = CVPixelBufferGetHeight(pixelBuffer);
                if ([v16 deviceOriented])
                {
                  v40 = ![(BWInferenceVideoFormat *)v31 deviceOriented];
                }

                else
                {
                  v40 = 0;
                }

                HIDWORD(v160) = [v16 videoContentMode] == 1 && -[BWInferenceVideoFormat videoContentMode](v31, "videoContentMode") != 1;
                v28 = v38;
                r1_8 = v39;
                if (([v16 includesInvalidContent] & 1) == 0)
                {
                  LODWORD(v160) = [(BWInferenceVideoFormat *)v31 includesInvalidContent];
                  if ((v40 & 1) == 0)
                  {
                    goto LABEL_121;
                  }

                  goto LABEL_21;
                }

                LODWORD(v160) = 0;
                v153 = pixelBuffer;
                if (!v40)
                {
                  goto LABEL_35;
                }

LABEL_20:
                v37 = v153;
LABEL_21:
                v41 = [objc_msgSend(a4 "inputSampleBufferAttachments")];
                pixelBuffer = v37;
                if (v41 || (v41 = [v168 objectForKeyedSubscript:*off_1E798A5B0]) != 0)
                {
                  v42 = [v41 intValue];
                  v211 = 0;
                  v43 = FigCaptureRotationDegreesAndMirroringFromExifOrientation(v42, &v211);
                  v44 = v43;
                  HIDWORD(v149) = 0;
                  LODWORD(v151) = 0;
                  if (v211)
                  {
                    HIDWORD(v149) = 0;
                    LODWORD(v151) = 1;
                    if (v43 != 90 && v43 != 270)
                    {
                      HIDWORD(v149) = 1;
                      LODWORD(v151) = 0;
                    }
                  }

                  v213.origin.x = OUTLINED_FUNCTION_2_19();
                  if (!CGRectIsNull(v213))
                  {
                    memset(v208, 0, 48);
                    FigCaptureExifOrientationGetAffineTransform(v42, 0x100000001uLL, v208);
                    v210[0] = *&v208[0].duration.value;
                    v210[1] = *&v208[0].duration.epoch;
                    v210[2] = *&v208[0].presentationTimeStamp.timescale;
                    v214.origin.x = OUTLINED_FUNCTION_2_19();
                    CGRectApplyAffineTransform(v214, v45);
                    OUTLINED_FUNCTION_3_11();
                  }

LABEL_36:
                  if (self->_disableRotationInLandscapeAspectRatio && ((v46 = -[BWInferenceVideoFormat cropDescriptor](v31, "cropDescriptor"), v47 = [v16 cropDescriptor], objc_msgSend(v47, "identifier") == 4) || objc_msgSend(v47, "identifier") == 2))
                  {
                    v48 = v26;
                    v49 = [(BWInferenceCropDescriptor *)v46 identifier];
                    if (v49 != [v47 identifier])
                    {
                      v50 = [objc_msgSend(a4 "inputSampleBufferAttachments")];
                      if (v50)
                      {
                        if ([v50 BOOLValue])
                        {
                          v51 = 0;
                        }

                        else
                        {
                          v51 = r1;
                        }

                        r1 = v51;
                      }
                    }
                  }

                  else
                  {
                    v48 = v26;
                  }

                  v52 = v25;
                  v53 = a6;
                  v54 = [(BWInferenceVideoFormat *)v31 width];
                  v55 = [(BWInferenceVideoFormat *)v31 height];
                  v56 = v23;
                  if ([v16 landscapeOriented])
                  {
                    v57 = [(BWInferenceVideoFormat *)v31 landscapeOriented];
                    v58 = r1;
                    v59 = r1 - 90;
                    if (v54 > v55)
                    {
                      v59 = r1;
                    }

                    if (!v57)
                    {
                      v58 = v59;
                    }
                  }

                  else
                  {
                    v58 = r1;
                  }

                  v60 = v24;
                  v135 = *&v23;
                  v139 = v22;
                  v154 = v16;
                  if (([v16 landscapeOriented] & (v54 > v55)) != 0)
                  {
                    v61 = 0;
                  }

                  else
                  {
                    v61 = v58;
                  }

                  v62 = fmodf((v61 + v44), 360.0);
                  if (v62 >= 0)
                  {
                    v63 = v62;
                  }

                  else
                  {
                    v63 = v62 + 360;
                  }

                  v64 = [(BWInferenceVideoFormat *)v31 width];
                  if (v64 == CVPixelBufferGetWidth(pixelBuffer))
                  {
                    [(BWInferenceVideoFormat *)v31 height];
                    CVPixelBufferGetHeight(pixelBuffer);
                  }

                  v65 = *(MEMORY[0x1E695F058] + 16);
                  v209.origin = *MEMORY[0x1E695F058];
                  v209.size = v65;
                  CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
                  v67 = v160;
                  if (!CGRectIfPresent)
                  {
                    v67 = 0;
                  }

                  v68 = 0;
                  r1a = 0.0;
                  y = 0.0;
                  v70 = v28;
                  v71 = r1_8;
                  a6 = v53;
                  if (v67 == 1)
                  {
                    r1a = 0.0;
                    v72 = 0;
                    v73 = v28;
                    v71 = r1_8;
                    v74 = r1_8;
                    if (CGRectContainsRect(*&v68, v209))
                    {
                      y = v209.origin.y;
                      r1a = v209.origin.x;
                      v71 = v209.size.height;
                      v28 = v209.size.width;
                    }
                  }

                  v215.origin.x = v48;
                  v215.origin.y = v52;
                  v215.size.width = v56;
                  v215.size.height = v60;
                  if (CGRectIsNull(v215))
                  {
                    v76 = *&v156;
                    v75 = *&v158;
                    if (!HIDWORD(v160))
                    {
                      goto LABEL_74;
                    }
                  }

                  else
                  {
                    v222.origin.x = round(v70 * v48);
                    v222.origin.y = round(r1_8 * v52);
                    v222.size.width = round(v70 * (v56 + v48)) - v222.origin.x;
                    v222.size.height = round(r1_8 * (v60 + v52)) - v222.origin.y;
                    v216.origin.x = r1a;
                    v216.origin.y = y;
                    v216.size.width = v28;
                    v216.size.height = v71;
                    CGRectIntersection(v216, v222);
                    OUTLINED_FUNCTION_5_18();
                    v76 = *&v156;
                    v75 = *&v158;
                    if (!HIDWORD(v160))
                    {
                      goto LABEL_74;
                    }
                  }

                  outputAspectRatio = self->_outputAspectRatio;
                  if (v63 == 270 || v63 == 90)
                  {
                    outputAspectRatio = 1.0 / outputAspectRatio;
                  }

                  v77 = v28 / v71;
                  if (outputAspectRatio != v77)
                  {
                    v79 = OUTLINED_FUNCTION_1();
                    FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(v79, v80, v81, v82, v83);
                    v217.origin.x = OUTLINED_FUNCTION_1();
                    CGRectIntersection(v217, v223);
                    OUTLINED_FUNCTION_5_18();
                  }

LABEL_74:
                  [(FigM2MController *)self->_scalerController maxUpscale];
                  v85 = ceil(v75 / v84);
                  if (v28 >= v85)
                  {
                    v85 = v28;
                  }

                  else
                  {
                    v218.origin.x = OUTLINED_FUNCTION_1();
                    round(CGRectGetMidX(v218) + v85 * -0.5);
                    v219.origin.x = OUTLINED_FUNCTION_0_20();
                    v219.size.height = v71;
                    CGRectGetMaxX(v219);
                    v86 = CVPixelBufferGetWidth(pixelBuffer);
                    OUTLINED_FUNCTION_4_19(v86);
                    if (!(v34 ^ v88 | v87))
                    {
                      CVPixelBufferGetWidth(pixelBuffer);
                    }
                  }

                  [(FigM2MController *)self->_scalerController maxUpscale];
                  v90 = ceil(v76 / v89);
                  if (v71 >= v90)
                  {
                    v90 = v71;
                  }

                  else
                  {
                    v220.origin.x = OUTLINED_FUNCTION_0_20();
                    v220.size.height = v71;
                    round(CGRectGetMidY(v220) + v90 * -0.5);
                    v221.origin.x = OUTLINED_FUNCTION_0_20();
                    v221.size.height = v90;
                    CGRectGetMaxY(v221);
                    v91 = CVPixelBufferGetHeight(pixelBuffer);
                    OUTLINED_FUNCTION_4_19(v91);
                    if (!(v34 ^ v88 | v87))
                    {
                      CVPixelBufferGetHeight(pixelBuffer);
                    }
                  }

                  if (v63)
                  {
                    switch(v63)
                    {
                      case 270:
                        v94 = 8;
                        break;
                      case 180:
                        v94 = 3;
                        break;
                      case 90:
                        v94 = 6;
                        break;
                      default:
                        v92 = 4294935550;
LABEL_89:
                        v15 = MEMORY[0x1E695FF58];
LABEL_90:
                        CFRelease(v12);
                        goto LABEL_91;
                    }
                  }

                  else
                  {
                    v94 = 1;
                  }

                  if (!-[BWInferenceVideoFormat landscapeOriented](v31, "landscapeOriented") && [v154 landscapeOriented])
                  {
                    v95 = [(BWInferenceVideoFormat *)v31 rotationDegrees];
                    [objc_msgSend(a4 "mutableInferenceMetadata")];
                  }

                  [(BWInferenceVideoScalingProvider *)self _configureCustomFiltersForScalingFromSourceWidth:v85 sourceHeight:v90 destinationWidth:v143 destinationHeight:v141 pixelFormat:[(BWInferenceVideoFormat *)v31 pixelFormat]];
                  v96 = [v154 histogramRequest];
                  if (v96)
                  {
                    v97 = (*(v96 + 16))(v96, v154);
                    v15 = MEMORY[0x1E695FF58];
                    if (v97)
                    {
                      v98 = 1;
                      -[FigM2MController setHistogramMode:dstRect:](self->_scalerController, "setHistogramMode:dstRect:", 1, 0.0, 0.0, [v154 width], objc_msgSend(v154, "height"));
                    }

                    else
                    {
                      v98 = 0;
                    }
                  }

                  else
                  {
                    v98 = 0;
                    v15 = MEMORY[0x1E695FF58];
                  }

                  v99 = OUTLINED_FUNCTION_0_20();
                  v101 = [v100 transform:pixelBuffer srcRect:v12 dst:v94 dstRect:v99 rotate:? flipX:? flipY:? sync_m2m:?];
                  if (v101)
                  {
                    v92 = 4294935556;
                  }

                  else
                  {
                    if (v98)
                    {
                      bzero(v208, 0x620uLL);
                      [(FigM2MController *)self->_scalerController copyHistogram:v208];
                      v109 = objc_alloc(MEMORY[0x1E695DEF0]);
                      v110 = [v109 initWithBytes:&v208[0].duration.value + 4 length:4 * (3 * LODWORD(v208[0].duration.value))];
                      CMSetAttachment(v12, @"InferenceHistogramData", v110, 1u);

                      v101 = [(FigM2MController *)self->_scalerController clearHistorgramMode];
                    }

                    outputRequirements = self->_outputRequirements;
                    v112 = OUTLINED_FUNCTION_6_11(v101, v102, v103, v104, v105, v106, v107, v108, sampleTimingArray, v127, sampleSizeArray, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v154, v156, v158, v160, pixelBuffer, pixelBuffer_8, v166, v168, *&r1a, *&r1_8, r1_16, r1_24, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, 0);
                    if (v112)
                    {
                      v113 = v112;
                      v114 = a6;
                      v115 = MEMORY[0];
                      do
                      {
                        for (i = 0; i != v113; ++i)
                        {
                          if (MEMORY[0] != v115)
                          {
                            objc_enumerationMutation(outputRequirements);
                          }

                          v117 = [a4 setPixelBuffer:v12 forRequirement:*(8 * i)];
                        }

                        v113 = OUTLINED_FUNCTION_6_11(v117, v118, v119, v120, v121, v122, v123, v124, sampleTimingArraya, v128, sampleSizeArraya, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v155, v157, v159, v161, pixelBuffera, pixelBuffer_8a, v167, v169, r1b, r1_8a, r1_16a, r1_24a, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v207);
                      }

                      while (v113);
                      v92 = 0;
                      a6 = v114;
                    }

                    else
                    {
                      v92 = 0;
                    }
                  }

                  goto LABEL_90;
                }

LABEL_121:
                HIDWORD(v149) = 0;
                LODWORD(v151) = 0;
                v44 = 0;
                goto LABEL_36;
              }
            }
          }
        }

        applyUprightExifOrientation = v30;
      }
    }

    v31 = v151;
    if (!applyUprightExifOrientation)
    {
LABEL_35:
      HIDWORD(v149) = 0;
      LODWORD(v151) = 0;
      v44 = 0;
      pixelBuffer = v153;
      goto LABEL_36;
    }

    goto LABEL_20;
  }

  v92 = 4294935553;
LABEL_91:
  if (*v15 == 1)
  {
    kdebug_trace();
  }

  if (a6)
  {
    (*(a6 + 2))(a6, v92, self);
  }

  return v92;
}

- (uint64_t)prepareForExecution
{
  if ([a1 deviceOriented])
  {
    v6 = [a2 deviceOriented] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  *(a3 + 48) = v6;
  v7 = [a1 videoContentMode] == 1 && objc_msgSend(a2, "videoContentMode") != 1;
  *(a3 + 58) = v7;
  if ([a1 includesInvalidContent])
  {
    v8 = 0;
  }

  else
  {
    v8 = [a2 includesInvalidContent];
  }

  *(a3 + 56) = v8;
  v9 = [objc_msgSend(a1 "cropDescriptor")];
  *(a3 + 57) = v9 != [objc_msgSend(a2 "cropDescriptor")];
  if ([a1 applyHorizontalFlip])
  {
    v10 = [a2 applyHorizontalFlip] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  *(a3 + 59) = v10;
  v11 = [a1 width];
  *(a3 + 88) = v11 / [a1 height];
  *(a3 + 40) = +[BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:](BWVideoFormat, "pixelBufferAttachmentsForColorSpaceProperties:", [a1 colorSpaceProperties]);
  *(a3 + 64) = objc_alloc_init(MEMORY[0x1E6991748]);
  result = -[BWInferenceVideoScalingProvider _configureCustomFiltersForScalingFromSourceWidth:sourceHeight:destinationWidth:destinationHeight:pixelFormat:](a3, [a2 width], objc_msgSend(a2, "height"), objc_msgSend(a1, "width"), objc_msgSend(a1, "height"), objc_msgSend(a2, "pixelFormat"));
  if (*MEMORY[0x1E695FF58] == 1)
  {

    return kdebug_trace();
  }

  return result;
}

@end