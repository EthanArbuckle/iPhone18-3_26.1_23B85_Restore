@interface BWStereoDisparityProcessorController
- (BWStereoDisparityProcessorController)initWithConfiguration:(id)a3;
- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5;
- (int)prepare;
- (int)process;
- (int)processDisparityInferenceWithReferenceBuffer:(__CVBuffer *)a3 auxBuffer:(__CVBuffer *)a4 outputDisparityBuffer:(__CVBuffer *)a5;
- (uint64_t)_loadFSDNetForReferencePortType:(uint64_t)a3 auxiliaryPortType:;
- (uint64_t)_loadSetupAndPrepareDisparityProcessorWithConfiguration:(uint64_t)result;
- (void)dealloc;
- (void)inputReceivedNewInputData:(id)a3;
- (void)reset;
@end

@implementation BWStereoDisparityProcessorController

- (BWStereoDisparityProcessorController)initWithConfiguration:(id)a3
{
  v17.receiver = self;
  v17.super_class = BWStereoDisparityProcessorController;
  v4 = [(BWStillImageProcessorController *)&v17 initWithName:@"StereoDisparity" type:8 configuration:a3];
  if (v4)
  {
    if (![objc_msgSend(a3 "sensorConfigurationsByPortType")] || objc_msgSend(a3, "stillImageDepthDataType") != 2 && objc_msgSend(a3, "stillImageDepthDataType") != 8)
    {
      goto LABEL_12;
    }

    if ([+[FigCaptureCameraParameters disparityVersion]>= 5 sharedInstance]
    {
      v5 = [a3 sensorConfigurationsByPortType];
      v6 = *off_1E798A0D0;
      v7 = [v5 objectForKeyedSubscript:*off_1E798A0D0];
      v8 = *off_1E798A0C0;
      if (v7 && [v5 objectForKeyedSubscript:*off_1E798A0C0])
      {
        p_isa = &v4->super.super.isa;
        v14 = v8;
        v15 = v6;
      }

      else
      {
        if (![v5 objectForKeyedSubscript:v8] || (v9 = *off_1E798A0D8, !objc_msgSend(v5, "objectForKeyedSubscript:", *off_1E798A0D8)))
        {
          FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          [v5 allKeys];
          v12 = _os_log_send_and_compose_impl();
          FigCapturePleaseFileRadar(FrameworkRadarComponent, v12, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStereoDisparityProcessorController.m", 257, @"LastShownDate:BWStereoDisparityProcessorController.m:257", @"LastShownBuild:BWStereoDisparityProcessorController.m:257", 0);
          free(v12);
LABEL_11:
          [BWStereoDisparityProcessorController initWithConfiguration:];
LABEL_12:

          return 0;
        }

        p_isa = &v4->super.super.isa;
        v14 = v9;
        v15 = v8;
      }

      if ([(BWStereoDisparityProcessorController *)p_isa _loadFSDNetForReferencePortType:v14 auxiliaryPortType:v15])
      {
        goto LABEL_11;
      }
    }

    if (![(BWStereoDisparityProcessorController *)v4 _loadSetupAndPrepareDisparityProcessorWithConfiguration:a3])
    {
      return v4;
    }

    goto LABEL_12;
  }

  return v4;
}

- (void)dealloc
{
  [-[FigDisparityGenerator metalContext](self->_disparityProcessor "metalContext")];
  [(BWStereoDisparityProcessorController *)self reset];

  refFormatDescription = self->_refFormatDescription;
  if (refFormatDescription)
  {
    CFRelease(refFormatDescription);
  }

  auxFormatDescription = self->_auxFormatDescription;
  if (auxFormatDescription)
  {
    CFRelease(auxFormatDescription);
  }

  disparityFormatDescription = self->_disparityFormatDescription;
  if (disparityFormatDescription)
  {
    CFRelease(disparityFormatDescription);
  }

  v6.receiver = self;
  v6.super_class = BWStereoDisparityProcessorController;
  [(BWStillImageProcessorController *)&v6 dealloc];
}

- (void)inputReceivedNewInputData:(id)a3
{
  [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input];

  [(BWStillImageProcessorController *)self currentRequestChanged];
}

- (void)reset
{
  [(FigDisparityGenerator *)self->_disparityProcessor setShouldComputeDisparityWhenCalibrationFails:0];
  [(FigDisparityGenerator *)self->_disparityProcessor setEqualizeTeleGainToMatchReference:0];
  [(FigDisparityGenerator *)self->_disparityProcessor setReferenceSampleBuffer:0];
  [(FigDisparityGenerator *)self->_disparityProcessor setAuxiliarySampleBuffer:0];
  [(FigDisparityGenerator *)self->_disparityProcessor setOutputShiftmap:0];
  [(FigDisparityGenerator *)self->_disparityProcessor setDisparityInferenceProcessorDelegate:0];
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  disparityProcessor = self->_disparityProcessor;
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);

  [(FigDisparityGenerator *)disparityProcessor setNormalizedReferenceCropRect:v3, v4, v6, v7];
}

- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWStereoDisparityRequest alloc] initWithInput:a3 delegate:a4];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (a5)
  {
    *a5 = v7;
  }

  return v6;
}

- (int)prepare
{
  v3 = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input];
  if (-[FigCaptureCameraParameters disparityVersion](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "disparityVersion") < 5 || ([-[BWStillImageProcessorControllerInput expectedPortTypes](v3 "expectedPortTypes")] & 1) != 0)
  {
    return 0;
  }

  v6 = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)v3 captureSettings] masterPortType];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)v3 captureSettings] portTypes];
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v15;
LABEL_10:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v14 + 1) + 8 * v12);
      if (![v9 isEqualToString:v6])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (v10)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  v4 = [(BWStereoDisparityProcessorController *)&self->super.super.isa _loadFSDNetForReferencePortType:v6 auxiliaryPortType:v9];
  if (v4)
  {
    [BWStereoDisparityProcessorController prepare];
  }

  return v4;
}

- (int)process
{
  v111 = 0;
  sampleBufferOut = 0;
  v110 = 0;
  v3 = [(BWStillImageProcessorController *)self configuration];
  v4 = [(BWStillImageProcessorController *)self currentRequest];
  v5 = [(BWStillImageProcessorControllerRequest *)v4 input];
  v6 = [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)v4 delegate] processorController:self newOutputPixelBufferForProcessorInput:v5 type:2001];
  if (!v6)
  {
    [BWStereoDisparityProcessorController process];
    v23 = 4294954510;
    goto LABEL_18;
  }

  v105 = v4;
  if ([(BWStillImageProcessorControllerConfiguration *)v3 stillImageDepthDataType]== 2)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)v5 referenceSbuf], 0x1F21AAB10);
    v8 = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)v5 auxiliarySbuf], 0x1F21AAB10);
  }

  else
  {
    if ([(BWStillImageProcessorControllerConfiguration *)v3 stillImageDepthDataType]!= 8)
    {
      v23 = 4294954516;
      goto LABEL_18;
    }

    key = v3;
    v103 = v6;
    v9 = [(BWStillImageProcessorControllerInput *)v5 referenceSbuf];
    v96 = v5;
    v10 = [(BWStillImageProcessorControllerInput *)v5 auxiliarySbuf];
    v11 = *off_1E798A3C8;
    *v100 = v9;
    v12 = CMGetAttachment(v9, *off_1E798A3C8, 0);
    v13 = *off_1E798B540;
    v14 = [v12 objectForKeyedSubscript:*off_1E798B540];
    v15 = *off_1E798B7A0;
    v16 = [v12 objectForKeyedSubscript:*off_1E798B7A0];
    v17 = *off_1E798B7A8;
    [v12 setObject:v16 forKeyedSubscript:*off_1E798B7A8];
    v18 = *off_1E798B790;
    v19 = [v12 objectForKeyedSubscript:*off_1E798B790];
    v20 = *off_1E798B798;
    [v12 setObject:v19 forKeyedSubscript:*off_1E798B798];
    v98 = v10;
    v21 = CMGetAttachment(v10, v11, 0);
    v22 = [v21 objectForKeyedSubscript:v13];
    [v21 setObject:objc_msgSend(v21 forKeyedSubscript:{"objectForKeyedSubscript:", v15), v17}];
    [v21 setObject:objc_msgSend(v21 forKeyedSubscript:{"objectForKeyedSubscript:", v18), v20}];
    v23 = 4294954516;
    if (!v14)
    {
      v6 = v103;
      v5 = v96;
      goto LABEL_86;
    }

    v6 = v103;
    v4 = v105;
    v3 = key;
    v5 = v96;
    AttachedMedia = *v100;
    if (!v22)
    {
      goto LABEL_18;
    }

    v109[0] = v14;
    v109[1] = v22;
    if (![objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v109, 2)), "isEqualToSet:", -[BWStillImageProcessorControllerInput expectedPortTypes](v96, "expectedPortTypes")}])
    {
      goto LABEL_18;
    }

    v8 = v98;
  }

  v23 = 4294954516;
  if (!AttachedMedia || !v8)
  {
    goto LABEL_18;
  }

  [(FigDisparityGenerator *)self->_disparityProcessor setShouldComputeDisparityWhenCalibrationFails:[(BWStillImageProcessorControllerConfiguration *)v3 shouldComputeDisparityWhenCalibrationFails]];
  [(FigDisparityGenerator *)self->_disparityProcessor setEqualizeTeleGainToMatchReference:[(BWStillImageProcessorControllerInput *)v5 equalizeTeleGainToMatchReference]];
  [(FigDisparityGenerator *)self->_disparityProcessor setReferenceSampleBuffer:AttachedMedia];
  [(FigDisparityGenerator *)self->_disparityProcessor setAuxiliarySampleBuffer:v8];
  [(FigDisparityGenerator *)self->_disparityProcessor setOutputShiftmap:v6];
  [(FigDisparityGenerator *)self->_disparityProcessor setDisparityInferenceProcessorDelegate:self];
  keya = *off_1E798A3C8;
  CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0);
  v24 = *(MEMORY[0x1E695F050] + 16);
  v108.origin = *MEMORY[0x1E695F050];
  v108.size = v24;
  CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
  if (!CGRectIfPresent)
  {
    v38 = 1.0;
    [(FigDisparityGenerator *)self->_disparityProcessor setNormalizedReferenceCropRect:0.0, 0.0, 1.0, 1.0];
    v93 = 0;
    goto LABEL_28;
  }

  v25 = [(FigCaptureStillImageSettings *)[(BWStillImageSettings *)[(BWStillImageProcessorControllerInput *)v5 stillImageSettings] requestedSettings] outputWidth];
  v26 = v25 / [(FigCaptureStillImageSettings *)[(BWStillImageSettings *)[(BWStillImageProcessorControllerInput *)v5 stillImageSettings] requestedSettings] outputHeight];
  ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  v29 = CVPixelBufferGetHeight(ImageBuffer) << 32;
  if (([(BWStillImageProcessorControllerConfiguration *)v3 zoomingDisparityAllowed]& 1) != 0)
  {
    v113.origin.x = FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(Width, v29 >> 32, v108.origin.x, v108.origin.y, v108.size.width, v108.size.height, v26, 1.0);
    x = v113.origin.x;
    y = v113.origin.y;
    v32 = v113.size.width;
    height = v113.size.height;
    if (CGRectIsNull(v113))
    {
      [BWStereoDisparityProcessorController process];
      v23 = 4294954516;
      goto LABEL_86;
    }

    FigCaptureMetadataUtilitiesNormalizeCropRect(x, y, v32, height);
    v108.origin.x = v34;
    v108.origin.y = v35;
    v108.size.width = v36;
    v108.size.height = v37;
    v38 = 1.0 / v37;
    v39 = 2.5;
    if (1.0 / v37 <= 2.5)
    {
      v93 = 0;
      goto LABEL_27;
    }

    v40 = v38 / 2.5;
    v41 = FigCaptureMetadataUtilitiesScaleRect(v34, v35, v36, v37, v40);
  }

  else
  {
    v48 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v29 | Width, v26);
    MidX = CGRectGetMidX(v108);
    CGRectGetMidY(v108);
    v50 = FigCaptureMetadataUtilitiesDenormalizedRectWithinBoundingDimensionsCenteredOnPoint(v29 | Width, v48, MidX);
    FigCaptureMetadataUtilitiesNormalizeCropRect(v50, v51, v52, v53);
    v39 = 1.0;
  }

  v108.origin.x = v41;
  v108.origin.y = v42;
  v93 = 1;
  v38 = v39;
  v108.size.width = v43;
  v108.size.height = v44;
LABEL_27:
  [(FigDisparityGenerator *)self->_disparityProcessor setNormalizedReferenceCropRect:?];
LABEL_28:
  v54 = [(FigDisparityGenerator *)self->_disparityProcessor process];
  if (dword_1EB58E320)
  {
    v107 = 0;
    v106 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v55 = v54 & 0xFFFFFFFE;
  if (v54 && (v55 != 2 || ![(BWStillImageProcessorControllerConfiguration *)v3 shouldComputeDisparityWhenCalibrationFails]))
  {
    v76 = [(BWStillImageProcessorControllerInput *)v5 referenceSbuf:v91];
    if (v76)
    {
      v76 = CFRetain(v76);
    }

    v4 = v105;
    sampleBufferOut = v76;
    v77 = [(BWStillImageProcessorControllerInput *)v5 auxiliarySbuf];
    if (v77)
    {
      v77 = CFRetain(v77);
    }

    v111 = v77;
    goto LABEL_58;
  }

  v104 = v54;
  [-[FigDisparityGenerator metalContext](self->_disparityProcessor metalContext];
  v56 = [(FigDisparityGenerator *)self->_disparityProcessor shiftMapMetadata];
  v102 = v56;
  v57 = v5;
  if (v56)
  {
    v58 = sdpc_depthMetadataAttachmentDictionaryFromStereoDisparityMetadata(v56, [(BWStillImageProcessorControllerInput *)v5 referenceSbuf], 1, v55 == 2);
  }

  else
  {
    v58 = 0;
  }

  v59 = BWCMSampleBufferCreateCopyIncludingMetadata([(BWStillImageProcessorControllerInput *)v57 referenceSbuf], &sampleBufferOut);
  if (v59 || (v59 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(sampleBufferOut, v6, &self->_disparityFormatDescription, &v110), v59))
  {
    v23 = v59;
    v5 = v57;
LABEL_86:
    v4 = v105;
    goto LABEL_18;
  }

  v60 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v110);
  if (CGRectIfPresent)
  {
    v61 = v60;
    if (v58)
    {
      FigCaptureMetadataUtilitiesUpdateDepthDataMetadataForStillImageCropAndScale(v58, v108.origin.x, v108.origin.y, v108.size.width, v108.size.height, v38);
    }

    v62 = [(BWStillImageProcessorControllerConfiguration *)v3 inputDimensions];
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v108.origin.x, v108.origin.y, v108.size.width, v108.size.height);
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v71 = [(BWStillImageProcessorControllerConfiguration *)v3 disparityOutputDimensions];
    FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v61, v62, v71, v64, v66, v68, v70, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    if ((v93 & 1) == 0)
    {
      FigCaptureMetadataUtilitiesPreventFurtherCropping(v61, v72);
    }
  }

  BWSampleBufferSetAttachedMedia(sampleBufferOut, @"Depth", v110);
  if ([(FigDisparityGenerator *)self->_disparityProcessor disparityDiagnosticMetadata])
  {
    [CMGetAttachment(sampleBufferOut keya];
  }

  v4 = v105;
  if (v58)
  {
    if (([(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)v57 captureSettings] captureFlags]& 0x4000000000) != 0 && v55 != 2)
    {
      v83 = [MEMORY[0x1E695DF90] dictionary];
      v99 = sdpc_depthMetadataAttachmentDictionaryFromStereoDisparityMetadata(v102, [(BWStillImageProcessorControllerInput *)v57 referenceSbuf], 1, 0);
      v84 = sdpc_depthMetadataAttachmentDictionaryFromStereoDisparityMetadata(v102, [(BWStillImageProcessorControllerInput *)v57 auxiliarySbuf], 0, 0);
      v85 = CMGetAttachment([(BWStillImageProcessorControllerInput *)v57 referenceSbuf], keya, 0);
      v86 = CMGetAttachment([(BWStillImageProcessorControllerInput *)v57 auxiliarySbuf], keya, 0);
      v87 = v6;
      v88 = *off_1E798A420;
      [v99 setObject:objc_msgSend(v85 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A420), *off_1E798A420}];
      v89 = [v86 objectForKeyedSubscript:v88];
      v90 = v88;
      v6 = v87;
      v4 = v105;
      [v84 setObject:v89 forKeyedSubscript:v90];
      [v83 setObject:v99 forKeyedSubscript:@"Primary"];
      [v83 setObject:v84 forKeyedSubscript:@"Secondary"];
      CMSetAttachment(sampleBufferOut, *off_1E798D2E8, v83, 1u);
    }

    CMSetAttachment(sampleBufferOut, *off_1E798D2B8, v58, 1u);
  }

  v5 = v57;
  v73 = [(BWStillImageProcessorControllerInput *)v57 emitAuxiliaryInput];
  v54 = v104;
  if (!v73)
  {
    goto LABEL_58;
  }

  v74 = BWCMSampleBufferCreateCopyIncludingMetadata([(BWStillImageProcessorControllerInput *)v5 auxiliarySbuf], &v111);
  if (!v74)
  {
    v75 = sdpc_depthMetadataAttachmentDictionaryFromStereoDisparityMetadata(v102, [(BWStillImageProcessorControllerInput *)v5 auxiliarySbuf], 0, v55 == 2);
    if (v75)
    {
      CMSetAttachment(v111, *off_1E798D2B8, v75, 1u);
    }

LABEL_58:
    v78 = +[BWAggdDataReporter sharedInstance];
    if (v54 > 3)
    {
      v79 = 4294949886;
    }

    else
    {
      v79 = dword_1AD056160[v54];
    }

    [(BWAggdDataReporter *)v78 reportSDOFSampleBufferProcessorProcessingStatus:v79];
LABEL_62:
    v23 = 0;
    goto LABEL_63;
  }

  v23 = v74;
LABEL_18:
  v45 = sampleBufferOut;
  if (!sampleBufferOut)
  {
    v45 = [(BWStillImageProcessorControllerInput *)v5 referenceSbuf];
    if (v45)
    {
      v45 = CFRetain(v45);
    }
  }

  sampleBufferOut = v45;
  v46 = v111;
  if (!v111)
  {
    v47 = [(BWStillImageProcessorControllerInput *)v5 auxiliarySbuf];
    if (v47)
    {
      v46 = CFRetain(v47);
    }

    else
    {
      v46 = 0;
    }

    v45 = sampleBufferOut;
  }

  v111 = v46;
  if (v45 && (v46 || ([(BWStillImageProcessorControllerInput *)v5 emitAuxiliaryInput]& 1) == 0))
  {
    goto LABEL_62;
  }

LABEL_63:
  CMSetAttachment(sampleBufferOut, @"NonProcessedReferenceFrame", MEMORY[0x1E695E118], 1u);
  v80 = [(BWStillImageProcessorControllerRequest *)v4 delegate];
  [(BWStillImageProcessorControllerDelegate *)v80 processorController:self didFinishProcessingSampleBuffer:sampleBufferOut type:20 processorInput:v5 err:v23];
  if ([(BWStillImageProcessorControllerInput *)v5 emitAuxiliaryInput])
  {
    CMSetAttachment(v111, @"NonProcessedReferenceFrame", MEMORY[0x1E695E118], 1u);
    v81 = [(BWStillImageProcessorControllerRequest *)v4 delegate];
    [(BWStillImageProcessorControllerDelegate *)v81 processorController:self didFinishProcessingSampleBuffer:v111 type:20 processorInput:v5 err:v23];
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v111)
  {
    CFRelease(v111);
  }

  if (v110)
  {
    CFRelease(v110);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v23;
}

- (uint64_t)_loadFSDNetForReferencePortType:(uint64_t)a3 auxiliaryPortType:
{
  if (!a1)
  {
    return 0;
  }

  v6 = [a1 configuration];
  if (![v6 inferenceScheduler] || !a2 || !a3)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 4294954516;
  }

  a1[10] = 0;
  v7 = -[BWInferenceEngine initWithScheduler:priority:shareIntermediateBuffer:]([BWInferenceEngine alloc], "initWithScheduler:priority:shareIntermediateBuffer:", [v6 inferenceScheduler], objc_msgSend(v6, "figThreadPriority"), 1);
  a1[9] = v7;
  if (!v7)
  {
    return 0;
  }

  v8 = [objc_msgSend(v6 "sensorConfigurationsByPortType")];
  v9 = -[FigCaptureCameraParameters fsdNetStereoImagesAlignmentForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "fsdNetStereoImagesAlignmentForPortType:sensorIDString:", [v8 portType], objc_msgSend(v8, "sensorIDString"));
  if (v9 == -1)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v44 = 0;
    v43 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v42 = 0;
    v28 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v28, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStereoDisparityProcessorController.m", 866, @"LastShownDate:BWStereoDisparityProcessorController.m:866", @"LastShownBuild:BWStereoDisparityProcessorController.m:866", 0);
    free(v28);
    return 4294954516;
  }

  v10 = [a1[9] addInferenceOfType:108 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:{-[BWFastStereoDisparityConfiguration initWithInferenceType:fsdNetStereoImagesAlignment:disparityType:]([BWFastStereoDisparityConfiguration alloc], "initWithInferenceType:fsdNetStereoImagesAlignment:disparityType:", 108, v9, 2)}];
  if (v10)
  {
    v24 = v10;
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
    return v24;
  }

  v29 = a2;
  v30 = a3;
  v11 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v11 setWidth:768];
  [(BWVideoFormatRequirements *)v11 setHeight:576];
  [(BWVideoFormatRequirements *)v11 setSupportedPixelFormats:&unk_1F22490A8];
  [(BWVideoFormatRequirements *)v11 setBytesPerRowAlignment:64];
  v41 = v11;
  v12 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1]);
  v13 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v13 setWidth:896];
  [(BWVideoFormatRequirements *)v13 setHeight:704];
  [(BWVideoFormatRequirements *)v13 setSupportedPixelFormats:&unk_1F22490C0];
  [(BWVideoFormatRequirements *)v13 setBytesPerRowAlignment:64];
  v40 = v13;
  v14 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1]);
  v15 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v15 setWidth:768];
  [(BWVideoFormatRequirements *)v15 setHeight:576];
  [(BWVideoFormatRequirements *)v15 setSupportedPixelFormats:&unk_1F22490D8];
  [(BWVideoFormatRequirements *)v15 setBytesPerRowAlignment:64];
  v39 = v15;
  v37[0] = 0x1F219E9F0;
  v37[1] = 0x1F219EA10;
  v38[0] = v12;
  v38[1] = v14;
  v37[2] = 0x1F219EA30;
  v38[2] = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1]);
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
  a1[14] = v16;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
LABEL_10:
    v20 = 0;
    while (1)
    {
      if (*v34 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = [a1[9] prepareForInputVideoFormat:objc_msgSend(a1[14] attachedMediaKey:"objectForKeyedSubscript:", *(*(&v33 + 1) + 8 * v20)), *(*(&v33 + 1) + 8 * v20)];
      if (v21)
      {
        return 0;
      }

      if (v18 == ++v20)
      {
        v18 = OUTLINED_FUNCTION_52(v21, v22, &v33, v32);
        if (v18)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  if ([a1[9] prepareForInferenceWithFormatProvider:a1])
  {
    return 0;
  }

  v23 = objc_alloc(MEMORY[0x1E695DFD8]);
  v31[0] = v29;
  v31[1] = v30;
  v24 = 0;
  a1[10] = [v23 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v31, 2)}];
  return v24;
}

- (uint64_t)_loadSetupAndPrepareDisparityProcessorWithConfiguration:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (*(result + 64))
    {
      return 0;
    }

    v4 = +[FigCaptureCameraParameters sharedInstance];
    result = [(FigCaptureCameraParameters *)v4 stereoDisparityParameters];
    if (result)
    {
      v5 = result;
      v6 = [MEMORY[0x1E695DF90] dictionary];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v7 = [a2 sensorConfigurationsByPortType];
      v8 = [v7 countByEnumeratingWithState:&v35 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v36;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v36 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [v6 setObject:objc_msgSend(objc_msgSend(objc_msgSend(a2 forKeyedSubscript:{"sensorConfigurationsByPortType"), "objectForKeyedSubscript:", *(*(&v35 + 1) + 8 * i)), "cameraInfo"), *(*(&v35 + 1) + 8 * i)}];
          }

          v9 = [v7 countByEnumeratingWithState:&v35 objects:v34 count:16];
        }

        while (v9);
      }

      result = [v6 count];
      if (result)
      {
        v12 = *off_1E798A970;
        v32[0] = *off_1E798A9D0;
        v32[1] = v12;
        v33[0] = v5;
        v33[1] = v6;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
        if (!v13)
        {
          return 4294954510;
        }

        v14 = v13;
        v15 = [(FigCaptureCameraParameters *)v4 disparityVersion];
        if (!v15)
        {
          return 4294954516;
        }

        v16 = BWLoadProcessorBundle(@"Disparity", v15);
        if (!v16)
        {
          return 4294954510;
        }

        v17 = [objc_alloc(objc_msgSend(v16 "principalClass"))];
        *(v2 + 64) = v17;
        if (!v17)
        {
          return 4294954510;
        }

        [v17 setOptions:v14];
        v18 = [a2 inputDimensions];
        v19 = [a2 inputDimensions] >> 32;
        v20 = [a2 disparityOutputDimensions];
        v21 = [a2 disparityOutputDimensions] >> 32;
        v22 = [a2 stillImageDepthDataType] == 8;
        v23 = *(v2 + 64);
        v24[0] = v18;
        v24[1] = v19;
        v25 = v22;
        memset(v26, 0, sizeof(v26));
        v27 = v20;
        v28 = v21;
        v29 = 1067030938;
        v30 = 0x1800000020;
        v31 = 0;
        [v23 setDisparityConfig:v24];
        result = [*(v2 + 64) prepareToProcess:0];
        if (result)
        {
          return 4294954510;
        }
      }
    }
  }

  return result;
}

- (int)processDisparityInferenceWithReferenceBuffer:(__CVBuffer *)a3 auxBuffer:(__CVBuffer *)a4 outputDisparityBuffer:(__CVBuffer *)a5
{
  v16 = 0;
  cf = 0;
  v8 = [(BWStillImageProcessorController *)self currentRequest];
  v9 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v8 input] referenceSbuf];
  CMSampleBufferGetPresentationTimeStamp(&v15, v9);
  v10 = BWSampleBufferCreateFromPixelBuffer(a3, &v15, &self->_refFormatDescription, &cf);
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    CMSampleBufferGetPresentationTimeStamp(&v15, v9);
    v11 = BWSampleBufferCreateFromPixelBuffer(a4, &v15, &self->_auxFormatDescription, &v16);
    if (v11 || (BWSampleBufferSetAttachedMedia(v9, 0x1F219E9F0, cf), BWSampleBufferSetAttachedMedia(v9, 0x1F219EA10, v16), [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)v8 delegate] processorControllerWillProcessInferences:self], (v11 = [(BWInferenceEngine *)self->_inferenceEngine performInferencesOnSampleBuffer:v9 attachingResultsToSampleBuffer:v9]) != 0))
    {
      v13 = v11;
    }

    else
    {
      BWSampleBufferRemoveAttachedMedia(v9, 0x1F219E9F0);
      BWSampleBufferRemoveAttachedMedia(v9, 0x1F219EA10);
      AttachedMedia = BWSampleBufferGetAttachedMedia(v9, 0x1F219EA30);
      if (AttachedMedia)
      {
        CMSampleBufferGetImageBuffer(AttachedMedia);
        v13 = CopyPixelBuffer();
        if (v13)
        {
          OUTLINED_FUNCTION_1_8();
          FigDebugAssert3();
        }
      }

      else
      {
        v13 = 0;
      }
    }
  }

  BWSampleBufferRemoveAttachedMedia(v9, 0x1F219EA30);
  BWSampleBufferRemoveAttachedMedia(v9, 0x1F219E9F0);
  BWSampleBufferRemoveAttachedMedia(v9, 0x1F219EA10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v13;
}

@end