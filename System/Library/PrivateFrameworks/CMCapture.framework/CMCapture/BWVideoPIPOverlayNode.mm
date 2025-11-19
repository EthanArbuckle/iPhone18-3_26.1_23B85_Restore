@interface BWVideoPIPOverlayNode
+ (void)prewarmCoreImageShaders;
- (BWVideoPIPOverlayNode)initWithDelegate:(id)a3 metalCommandQueue:(id)a4 secondaryCameraStreamingEnabled:(BOOL)a5 secondaryCameraFrameRate:(float)a6 maxLossyCompressionLevel:(int)a7 isDeviceBravoVariant:(BOOL)a8 baseZoomFactorsByPortType:(id)a9;
- (CGPoint)_overlayOffsetForPixelBuffer:(__CVBuffer *)a3 primaryCaptureRect:(CGRect)a4;
- (id)_reticleCIColorForPixelBuffer:(__CVBuffer *)a3 opacity:(float)a4;
- (id)_strokedRectangleImageWithRect:(CGRect)a3 thickness:(float)a4 c:(id)a5;
- (int)_drawOverlayRects:(id)a3 toPixelBuffer:(__CVBuffer *)a4 withinRect:(CGRect)a5;
- (int)_loadAndConfigureSmartStyleProxyRenderer;
- (int)_renderSmartStyleToIntermediateBufferWithInputSampleBuffer:(opaqueCMSampleBuffer *)a3 pipSourcePixelBuffer:(__CVBuffer *)a4 inputRect:(CGRect)a5 outputRect:(CGRect)a6;
- (uint64_t)_drawPIPUsingCPUAndMSRToOutputPixelBuffer:(double)a3 attachedPixelBuffer:(double)a4 outputRect:(double)a5 inputRect:(double)a6 normalizedReticleRect:(double)a7 primaryCaptureRect:(double)a8 uprightExifOrientation:(double)a9;
- (uint64_t)_loadAndConfigureSmartStyleProxyRenderer;
- (void)_drawPIPUsingGPUToOutputPixelBuffer:(double)a3 attachedPixelBuffer:(double)a4 filters:(double)a5 outputRect:(double)a6 inputRect:(double)a7 normalizedReticleRect:(double)a8 uprightExifOrientation:(double)a9 pipOpacity:(uint64_t)a10;
- (void)_ensureGPUResources;
- (void)_releaseResources;
- (void)_renderAttachedPixelBuffersFromSampleBuffer:(opaqueCMSampleBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4;
- (void)_updateCurrentStyle:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWVideoPIPOverlayNode

- (BWVideoPIPOverlayNode)initWithDelegate:(id)a3 metalCommandQueue:(id)a4 secondaryCameraStreamingEnabled:(BOOL)a5 secondaryCameraFrameRate:(float)a6 maxLossyCompressionLevel:(int)a7 isDeviceBravoVariant:(BOOL)a8 baseZoomFactorsByPortType:(id)a9
{
  v26.receiver = self;
  v26.super_class = BWVideoPIPOverlayNode;
  v15 = [(BWNode *)&v26 init:a3];
  if (v15)
  {
    *(v15 + 16) = a4;
    v16 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v15];
    [(BWNodeInput *)v16 setPassthroughMode:1];
    v17 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v17 setSupportedPixelFormats:&unk_1F2249018];
    [(BWNodeInput *)v16 setFormatRequirements:v17];

    [v15 addInput:v16];
    v18 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v15];
    [(BWNodeOutput *)v18 setPassthroughMode:1];
    v19 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutput *)v18 setFormatRequirements:v19];

    [v15 addOutput:v18];
    v15[152] = 1;
    *(v15 + 39) = 1077936128;
    v15[160] = 0;
    [objc_msgSend(a9 objectForKeyedSubscript:{*off_1E798A0D8), "floatValue"}];
    v21 = v20;
    [objc_msgSend(a9 objectForKeyedSubscript:{*off_1E798A0C0), "floatValue"}];
    if (FigCaptureRoundFloatToMultipleOf(1, v21 / v22) <= 4)
    {
      v23 = 276;
    }

    else
    {
      v23 = 312;
    }

    *(v15 + 41) = v23;
    *(v15 + 42) = 1051931443;
    *(v15 + 43) = 1070511405;
    *(v15 + 52) = 1082130432;
    *(v15 + 23) = [a9 copy];
    v15[196] = a5;
    *(v15 + 48) = a6;
    *(v15 + 34) = a3;
    *(v15 + 40) = [[BWRamp alloc] initWithName:@"FadeRamp"];
    *(v15 + 82) = 1050253722;
    *(v15 + 83) = 1050253722;
    *(v15 + 84) = 1069547520;
    *(v15 + 85) = 1086324736;
    *(v15 + 86) = 1041865114;
    v15[432] = 1;
    v15[348] = 1;
    *(v15 + 53) = 1112014848;
    v15[349] = 1;
    v24 = *(MEMORY[0x1E695F050] + 16);
    *(v15 + 280) = *MEMORY[0x1E695F050];
    *(v15 + 296) = v24;
    v15[433] = a8;
  }

  return v15;
}

- (void)dealloc
{
  [(BWVideoPIPOverlayNode *)self _releaseResources];

  v3.receiver = self;
  v3.super_class = BWVideoPIPOverlayNode;
  [(BWNode *)&v3 dealloc];
}

+ (void)prewarmCoreImageShaders
{
  v2 = MEMORY[0x1E695F620];
  v3 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "bundleURL"}];

  [v2 loadArchiveWithName:@"BWVideoPIPOverlayNodeCoreImageArchive" fromURL:v3];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  v6 = [objc_msgSend(a4 "primaryMediaProperties")];
  if ([v6 pixelFormat] == 875704422 || objc_msgSend(v6, "pixelFormat") == 875704438)
  {
    self->_useGPUForDrawing = 0;
  }

  output = self->super._output;

  [(BWNodeOutput *)output setFormat:a3];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (self->_useGPUForDrawing)
  {
    [(BWVideoPIPOverlayNode *)self _ensureGPUResources];
  }

  else
  {
    self->_scalingSession = objc_alloc_init(BWScalingSession);
  }

  if (self->_smartStyleRenderingEnabled)
  {
    [(BWVideoPIPOverlayNode *)self _loadAndConfigureSmartStyleProxyRenderer];
    if (!self->_scalingSession)
    {
      self->_scalingSession = objc_alloc_init(BWScalingSession);
    }
  }

  v3.receiver = self;
  v3.super_class = BWVideoPIPOverlayNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetPresentationTimeStamp(&v8, a3);
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    time = v8;
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  if (a3)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    if (ImageBuffer)
    {
      [(BWVideoPIPOverlayNode *)self _renderAttachedPixelBuffersFromSampleBuffer:a3 toPixelBuffer:ImageBuffer];
    }
  }

  if (*v6 == 1)
  {
    kdebug_trace();
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
}

- (void)_releaseResources
{
  self->_metalCommandQueue = 0;

  self->_scalingSession = 0;
  self->_drawRectangleFilter = 0;

  self->_drawDropShadowFilter = 0;
  self->_roundedCornersMaskFilter = 0;

  self->_sourceOverBlendKernel = 0;
  self->_ciReticleColor = 0;

  self->_ciContext = 0;
  self->_fadeRamp = 0;
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    CFRelease(bitmapContext);
    self->_bitmapContext = 0;
  }

  previousAttachedSampleBuffer = self->_previousAttachedSampleBuffer;
  if (previousAttachedSampleBuffer)
  {
    CFRelease(previousAttachedSampleBuffer);
    self->_previousAttachedSampleBuffer = 0;
  }

  fadeReferenceSampleBuffer = self->_fadeReferenceSampleBuffer;
  if (fadeReferenceSampleBuffer)
  {
    CFRelease(fadeReferenceSampleBuffer);
    self->_fadeReferenceSampleBuffer = 0;
  }

  self->_smartStyleProxyRenderer = 0;
  smartStyleIntermediateUnstyled = self->_smartStyleIntermediateUnstyled;
  if (smartStyleIntermediateUnstyled)
  {
    CFRelease(smartStyleIntermediateUnstyled);
    self->_smartStyleIntermediateUnstyled = 0;
  }

  smartStyleIntermediateStyled = self->_smartStyleIntermediateStyled;
  if (smartStyleIntermediateStyled)
  {
    CFRelease(smartStyleIntermediateStyled);
    self->_smartStyleIntermediateStyled = 0;
  }

  self->_currentStyle = 0;
}

- (void)didReachEndOfDataForInput:(id)a3
{
  if (self->_releasesResourcesAtEndOfData)
  {
    [(BWVideoPIPOverlayNode *)self _releaseResources];
  }

  v5.receiver = self;
  v5.super_class = BWVideoPIPOverlayNode;
  [(BWNode *)&v5 didReachEndOfDataForInput:a3];
}

- (void)_ensureGPUResources
{
  if (!self->_gpuPathInitialized)
  {
    if (!self->_ciContext)
    {
      v5[2] = [MEMORY[0x1E695DFB0] null];
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:3];
      self->_ciContext = [MEMORY[0x1E695F620] contextWithMTLCommandQueue:self->_metalCommandQueue options:v3];
    }

    if (!self->_drawRectangleFilter)
    {
      self->_drawRectangleFilter = [MEMORY[0x1E695F648] roundedRectangleStrokeGeneratorFilter];
    }

    if (!self->_drawDropShadowFilter)
    {
      self->_drawDropShadowFilter = [MEMORY[0x1E695F648] blurredRoundedRectangleGeneratorFilter];
    }

    if (!self->_roundedCornersMaskFilter)
    {
      self->_roundedCornersMaskFilter = [MEMORY[0x1E695F648] roundedRectangleGeneratorFilter];
    }

    if (!self->_sourceOverBlendKernel)
    {
      self->_sourceOverBlendKernel = [MEMORY[0x1E695F608] sourceOver];
    }

    self->_gpuPathInitialized = 1;
  }
}

- (id)_strokedRectangleImageWithRect:(CGRect)a3 thickness:(float)a4 c:(id)a5
{
  v12 = CGRectInset(a3, a4 * -0.5, a4 * -0.5);
  v13 = CGRectIntegral(v12);
  [(CIRoundedRectangleStrokeGenerator *)self->_drawRectangleFilter setExtent:FigCaptureMetadataUtilitiesRoundRectToEvenCoordinatesPreservingSquareness(1u, v13.origin.x, *&v13.origin.y, v13.size.width, v13.size.height, 0.0)];
  [(CIRoundedRectangleStrokeGenerator *)self->_drawRectangleFilter setRadius:0.0];
  *&v8 = a4;
  [(CIRoundedRectangleStrokeGenerator *)self->_drawRectangleFilter setWidth:v8];
  [(CIRoundedRectangleStrokeGenerator *)self->_drawRectangleFilter setColor:a5];
  drawRectangleFilter = self->_drawRectangleFilter;

  return [(CIRoundedRectangleStrokeGenerator *)drawRectangleFilter outputImage];
}

- (id)_reticleCIColorForPixelBuffer:(__CVBuffer *)a3 opacity:(float)a4
{
  v6 = CVBufferCopyAttachment(a3, *MEMORY[0x1E6965F30], 0);
  if (v6)
  {
    v7 = CFAutorelease(v6);
  }

  else
  {
    v7 = 0;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6965F48]])
  {
    v8 = MEMORY[0x1E695F170];
    v9 = 238.0;
    v10 = 230.0;
    v11 = 120.0;
  }

  else
  {
    v12 = [v7 isEqualToString:*MEMORY[0x1E6965F50]];
    v8 = MEMORY[0x1E695F0B8];
    if (v12)
    {
      v8 = MEMORY[0x1E695F1C0];
      v11 = 20.0;
    }

    else
    {
      v11 = 74.0;
    }

    if (v12)
    {
      v10 = 212.0;
    }

    else
    {
      v10 = 215.0;
    }

    if (v12)
    {
      v9 = 254.0;
    }

    else
    {
      v9 = 248.0;
    }
  }

  v13 = *v8;
  v14 = [(CIColor *)self->_ciReticleColor colorSpace];
  if (v14)
  {
    Name = CGColorSpaceGetName(v14);
  }

  else
  {
    Name = 0;
  }

  [(CIColor *)self->_ciReticleColor alpha];
  v16 = a4;
  v18 = v17 != v16 || Name == 0;
  if (!v18 && CFStringCompare(Name, v13, 0) == kCFCompareEqualTo)
  {
    return self->_ciReticleColor;
  }

  v19 = CGColorSpaceCreateWithName(v13);
  v20 = [objc_alloc(MEMORY[0x1E695F610]) initWithRed:v19 green:(v9 / 255.0) blue:(v10 / 255.0) alpha:(v11 / 255.0) colorSpace:v16];
  CGColorSpaceRelease(v19);
  self->_ciReticleColor = v20;
  return v20;
}

- (CGPoint)_overlayOffsetForPixelBuffer:(__CVBuffer *)a3 primaryCaptureRect:(CGRect)a4
{
  v5 = a4.size.width / a4.size.height;
  if (v5 > 0.75)
  {
    v5 = 0.75;
  }

  v6 = (fmaxf(v5, 0.5625) + -0.5625) / 0.1875;
  v7 = ((v6 * -0.057208) + 0.057208);
  v8 = ((v6 * 0.0) + 0.0099502) * CVPixelBufferGetWidth(a3);
  v9 = v7 * CVPixelBufferGetHeight(a3);
  v10 = v8;
  result.y = v9;
  result.x = v10;
  return result;
}

- (void)_renderAttachedPixelBuffersFromSampleBuffer:(opaqueCMSampleBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4
{
  v7 = MEMORY[0x1E695F058];
  AttachedMedia = BWSampleBufferGetAttachedMedia(a3, 0x1F21AAEB0);
  v9 = *off_1E798A3C8;
  v10 = CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0);
  if (!AttachedMedia || self->_frameRate == 0.0)
  {
    previousAttachedSampleBuffer = self->_previousAttachedSampleBuffer;
    if (previousAttachedSampleBuffer)
    {
      if (self->_frameRate != 0.0)
      {
        memset(&v156, 0, 24);
        CMSampleBufferGetPresentationTimeStamp(&v156, previousAttachedSampleBuffer);
        memset(&v155, 0, 24);
        CMSampleBufferGetPresentationTimeStamp(&v155, a3);
        memset(&v158, 0, 24);
        *&lhs.value = *&v155.a;
        lhs.epoch = *&v155.c;
        *&rhs.value = v156.origin;
        rhs.epoch = *&v156.size.width;
        CMTimeSubtract(&v158, &lhs, &rhs);
        v13 = (1.0 / self->_frameRate);
        *&lhs.value = v158.origin;
        lhs.epoch = *&v158.size.width;
        if (CMTimeGetSeconds(&lhs) <= v13 + v13)
        {
          AttachedMedia = self->_previousAttachedSampleBuffer;
          v10 = CMGetAttachment(AttachedMedia, v9, 0);
        }
      }
    }
  }

  else
  {
    memset(&v156, 0, 24);
    CMSampleBufferGetPresentationTimeStamp(&v156, AttachedMedia);
    memset(&v155, 0, 24);
    v11 = self->_previousAttachedSampleBuffer;
    if (v11)
    {
      CMSampleBufferGetPresentationTimeStamp(&v155, v11);
    }

    else
    {
      *&v155.a = *MEMORY[0x1E6960CC0];
      v155.c = *(MEMORY[0x1E6960CC0] + 16);
    }

    memset(&v158, 0, 24);
    *&lhs.value = v156.origin;
    lhs.epoch = *&v156.size.width;
    *&rhs.value = *&v155.a;
    rhs.epoch = *&v155.c;
    CMTimeSubtract(&v158, &lhs, &rhs);
    *&lhs.value = v158.origin;
    lhs.epoch = *&v158.size.width;
    Seconds = CMTimeGetSeconds(&lhs);
    v15 = self->_previousAttachedSampleBuffer;
    if (Seconds >= (1.0 / self->_frameRate) + -0.00100000005)
    {
      if (v15)
      {
        CFRelease(v15);
      }

      BWCMSampleBufferCreateCopyIncludingMetadata(AttachedMedia, &self->_previousAttachedSampleBuffer);
    }

    else
    {
      AttachedMedia = self->_previousAttachedSampleBuffer;
    }
  }

  v16 = *v7;
  v17 = *(v7 + 8);
  v18 = *(v7 + 16);
  v19 = *(v7 + 24);
  fadeReferenceSampleBuffer = self->_fadeReferenceSampleBuffer;
  if (AttachedMedia)
  {
    if (fadeReferenceSampleBuffer)
    {
      v21 = 1.0;
      if ([(BWRamp *)self->_fadeRamp isRamping])
      {
        [(BWRamp *)self->_fadeRamp updateRampForNextIteration];
        v21 = v22;
      }
    }

    else
    {
      LODWORD(v156.origin.x) = 0;
      FigCFDictionaryGetFloatIfPresent();
      LODWORD(v24) = llroundf(self->_fadeInDurationSeconds * *&v156.origin.x);
      v21 = 0.0;
      LODWORD(v25) = 1.0;
      [(BWRamp *)self->_fadeRamp startRampFrom:v24 to:1 iterations:0.0 shape:v25];
    }

    v26 = self->_fadeReferenceSampleBuffer;
    if (v26)
    {
      CFRelease(v26);
      self->_fadeReferenceSampleBuffer = 0;
    }

    BWCMSampleBufferCreateCopyIncludingMetadata(AttachedMedia, &self->_fadeReferenceSampleBuffer);
    ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
    goto LABEL_26;
  }

  if (!fadeReferenceSampleBuffer)
  {
LABEL_36:
    v28 = 0;
    goto LABEL_111;
  }

  if ([(BWRamp *)self->_fadeRamp isRamping])
  {
    [(BWRamp *)self->_fadeRamp updateRampForNextIteration];
    v21 = v23;
  }

  else
  {
    CMGetAttachment(self->_fadeReferenceSampleBuffer, v9, 0);
    LODWORD(v156.origin.x) = 0;
    FigCFDictionaryGetFloatIfPresent();
    LODWORD(v36) = llroundf(self->_fadeOutDurationSeconds * *&v156.origin.x);
    v21 = 1.0;
    LODWORD(v37) = 1.0;
    [(BWRamp *)self->_fadeRamp startRampFrom:v36 to:2 iterations:v37 shape:0.0];
  }

  v38 = [(BWRamp *)self->_fadeRamp isRamping];
  AttachedMedia = self->_fadeReferenceSampleBuffer;
  if (!v38)
  {
    if (AttachedMedia)
    {
      CFRelease(self->_fadeReferenceSampleBuffer);
      v28 = 0;
      self->_fadeReferenceSampleBuffer = 0;
      goto LABEL_111;
    }

    goto LABEL_36;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(self->_fadeReferenceSampleBuffer);
  v10 = CMGetAttachment(AttachedMedia, v9, 0);
LABEL_26:
  v28 = AttachedMedia != 0;
  if (AttachedMedia && ImageBuffer)
  {
    v29 = CFGetTypeID(ImageBuffer);
    if (v29 == CVPixelBufferGetTypeID())
    {
      v145 = v21;
      memset(&v156, 0, sizeof(v156));
      v30 = *off_1E798A430;
      v31 = CMGetAttachment(a3, *off_1E798A430, 0);
      theDict = v10;
      if (v31)
      {
        CGRectMakeWithDictionaryRepresentation(v31, &v156);
        CVPixelBufferGetWidth(a4);
        CVPixelBufferGetHeight(a4);
        FigCaptureMetadataUtilitiesDenormalizeCropRect(v156.origin.x, v156.origin.y, v156.size.width, v156.size.height);
        v156.origin.x = v32;
        v156.origin.y = v33;
        v156.size.width = v34;
        v156.size.height = v35;
      }

      else
      {
        Width = CVPixelBufferGetWidth(a4);
        Height = CVPixelBufferGetHeight(a4);
        v156.origin.x = 0.0;
        v156.origin.y = 0.0;
        v156.size.width = Width;
        v156.size.height = Height;
      }

      v41 = CVPixelBufferGetWidth(ImageBuffer);
      v42 = CVPixelBufferGetHeight(ImageBuffer);
      v155.a = 0.0;
      v155.b = 0.0;
      __asm { FMOV            V0.2D, #1.0 }

      *&v155.c = _Q0;
      v47 = CMGetAttachment(AttachedMedia, v30, 0);
      if (v47)
      {
        CGRectMakeWithDictionaryRepresentation(v47, &v155);
        v48 = *(v7 + 16);
        v158.origin = *v7;
        v158.size = v48;
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          v155.a = FigCaptureMetadataUtilitiesScaleRect(v155.a, v155.b, v155.c, v155.d, (v158.size.width + v158.size.height) * 0.5);
          v155.b = v49;
          v155.c = v50;
          v155.d = v51;
        }
      }

      else
      {
        FigCFDictionaryGetCGRectIfPresent();
      }

      v52 = v42;
      v150 = v41;
      FigCaptureMetadataUtilitiesDenormalizeCropRect(v155.a, v155.b, v155.c, v155.d);
      v146 = v54;
      v148 = v53;
      v56 = v55;
      v58 = v57;
      CVPixelBufferGetWidth(a4);
      CVPixelBufferGetHeight(a4);
      FigCaptureRotationDegreesAndMirroringFromExifOrientation(6, 0);
      [(BWVideoPIPOverlayNode *)self _overlayOffsetForPixelBuffer:a4 primaryCaptureRect:v156.origin.x, v156.origin.y, v156.size.width, v156.size.height];
      CVPixelBufferGetWidth(a4);
      CVPixelBufferGetWidth(a4);
      FigCaptureMetadataUtilitiesRoundRectToEvenCoordinates();
      v151 = v59;
      v152 = v60;
      v153 = v61;
      v154 = v62;
      v63 = CMGetAttachment(AttachedMedia, @"NarrowerCameraPreviewAlignmentShift", 0);
      v10 = theDict;
      v144 = v52;
      if (v63)
      {
        *&lhs.value = *MEMORY[0x1E695EFF8];
        if (CGPointMakeWithDictionaryRepresentation(v63, &lhs))
        {
          v161.origin.y = v146;
          v161.origin.x = v148;
          v161.size.width = v56;
          v161.size.height = v58;
          v162 = CGRectOffset(v161, -*&lhs.value, -*&lhs.timescale);
          x = v162.origin.x;
          y = v162.origin.y;
          v65 = v162.size.width;
          v66 = v162.size.height;
          v158.origin.x = 0.0;
          v158.origin.y = 0.0;
          v158.size.width = v41;
          v158.size.height = v52;
          FigCFDictionaryGetCGRectIfPresent();
          v67 = v158.origin.x;
          v68 = v158.origin.y;
          v70 = v158.size.width;
          v69 = v158.size.height;
          if (v158.size.width >= v65)
          {
            v71 = v65;
          }

          else
          {
            v71 = v158.size.width;
          }

          v56 = fmax(v71, 0.0);
          if (v158.size.height >= v66)
          {
            v72 = v66;
          }

          else
          {
            v72 = v158.size.height;
          }

          v58 = fmax(v72, 0.0);
          MinX = CGRectGetMinX(v158);
          v163.origin.x = v67;
          v163.origin.y = v68;
          v163.size.width = v70;
          v163.size.height = v69;
          v74 = CGRectGetMaxX(v163) - v56;
          if (v74 >= x)
          {
            v74 = x;
          }

          if (MinX >= v74)
          {
            v74 = MinX;
          }

          v148 = v74;
          v164.origin.x = v67;
          v164.origin.y = v68;
          v164.size.width = v70;
          v164.size.height = v69;
          MinY = CGRectGetMinY(v164);
          v165.origin.x = v67;
          v165.origin.y = v68;
          v52 = v144;
          v165.size.width = v70;
          v165.size.height = v69;
          v76 = CGRectGetMaxY(v165) - v58;
          if (v76 >= y)
          {
            v76 = y;
          }

          if (MinY >= v76)
          {
            v76 = MinY;
          }

          v146 = v76;
        }
      }

      v142 = v56;
      if (v150 / v56 >= v52 / v58)
      {
        v77 = v52 / v58;
      }

      else
      {
        v77 = v150 / v56;
      }

      Value = CFDictionaryGetValue(theDict, *off_1E798B540);
      if (self->_isDeviceBravoVariant)
      {
        v79 = Value;
        v80 = CMGetAttachment(AttachedMedia, @"TotalZoomFactor", 0);
        if (v80)
        {
          [v80 floatValue];
          v82 = v81;
        }

        else
        {
          v82 = 1.0;
        }

        v83 = *off_1E798A0D8;
        if ([v79 isEqualToString:*off_1E798A0D8])
        {
          v84 = v77;
          self->_lastTeleMaxScale = v84;
          self->_lastTeleMaxScaleZoomFactor = v82;
        }

        else if (self->_secondaryCameraStreamingEnabled)
        {
          v77 = v77 * 0.699999988;
        }

        else
        {
          lastTeleMaxScale = self->_lastTeleMaxScale;
          if (lastTeleMaxScale <= 0.0)
          {
            [-[NSDictionary objectForKeyedSubscript:](self->_baseZoomFactorsByPortType objectForKeyedSubscript:{v83), "floatValue"}];
            v90 = v89;
            [-[NSDictionary objectForKeyedSubscript:](self->_baseZoomFactorsByPortType objectForKeyedSubscript:{v79), "floatValue"}];
            v92 = v91;
            [-[__CFDictionary objectForKeyedSubscript:](theDict objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
            if (v93 == 0.0)
            {
              v93 = 1.0;
            }

            v77 = v77 / (v90 / (v92 * v93));
          }

          else
          {
            v77 = lastTeleMaxScale;
            if (v82 > 0.0)
            {
              lastTeleMaxScaleZoomFactor = self->_lastTeleMaxScaleZoomFactor;
              v87 = lastTeleMaxScaleZoomFactor <= 0.0;
              v88 = v77 * (v82 / lastTeleMaxScaleZoomFactor);
              if (!v87)
              {
                v77 = v88;
              }
            }
          }
        }
      }

      v94 = v58;
      overCaptureTargetRatioInterpolationStart = self->_overCaptureTargetRatioInterpolationStart;
      v96 = overCaptureTargetRatioInterpolationStart;
      v97 = v77 / overCaptureTargetRatioInterpolationStart;
      v98 = self->_overCaptureTargetInterpolationScale * log2f(v97);
      overCaptureTargetRatio = self->_overCaptureTargetRatio;
      v100 = log2f(overCaptureTargetRatio / overCaptureTargetRatioInterpolationStart);
      if (fabs(v98) <= v100 * 1.57079633)
      {
        v101 = v142;
        v102 = sin(v98 / v100) * v100;
      }

      else
      {
        v101 = v142;
        v102 = -v100;
        if (v98 >= 0.0)
        {
          v102 = v100;
        }
      }

      v103 = v102;
      v104 = v96 * exp2f(v103);
      v105 = overCaptureTargetRatio;
      if (v104 > overCaptureTargetRatio)
      {
        v104 = overCaptureTargetRatio;
      }

      if (v77 <= v105)
      {
        v105 = v77;
      }

      if (!self->_overCaptureTargetRatioSmoothingEnabled)
      {
        v104 = v105;
      }

      v106 = v94;
      v107 = FigCaptureMetadataUtilitiesScaleRect(v148, v146, v101, v94, fmax(v104, 1.0));
      v109 = v108;
      v143 = v110;
      v112 = v111;
      v113 = v156.size.width / v156.size.height;
      v114 = [CMGetAttachment(a4 @"RotationDegrees"];
      v115 = v114;
      if (v114 == 270 || v114 == 90)
      {
        v117 = 1.0 / v113;
      }

      else
      {
        v117 = v113;
      }

      v118 = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(v148, v146, v101, v106, v117);
      v122 = FigCaptureMetadataUtilitiesRectNormalizedToRect(v118, v119, v120, v121, v107, v109, v143);
      v155.a = v122;
      v155.b = v123;
      v155.c = v124;
      v155.d = v125;
      if (v115 == 270 || v115 == 90)
      {
        v155.a = v123;
        v155.b = v122;
        v155.c = v125;
        v155.d = v124;
      }

      v126 = v150 - v143;
      if (v150 - v143 >= v107)
      {
        v126 = v107;
      }

      v127 = fmax(v126, 0.0);
      v128 = v144 - v112;
      if (v144 - v112 >= v109)
      {
        v128 = v109;
      }

      v129 = fmax(v128, 0.0);
      v16 = FigCaptureMetadataUtilitiesRectNormalizedToRect(v151, v152, v153, v154, v156.origin.x, v156.origin.y, v156.size.width);
      v17 = v130;
      v18 = v131;
      v19 = v132;
      v133 = CMGetAttachment(AttachedMedia, @"FiltersForZoomPIPOverlay", 0);
      if (self->_smartStyleRenderingEnabled)
      {
        [(BWVideoPIPOverlayNode *)self _renderSmartStyleToIntermediateBufferWithInputSampleBuffer:a3 pipSourcePixelBuffer:ImageBuffer inputRect:v127 outputRect:v129, v143, v112, v151, v152, v153, v154];
      }

      if (self->_useGPUForDrawing || v133 || (LODWORD(v134) = 1.0, *&v135 = v145, v145 < 1.0) || (*&v134 = self->_pipCornerRadius, *&v134 > 0.0))
      {
        [(BWVideoPIPOverlayNode *)self _ensureGPUResources:v134];
        *&v141 = v145;
        [(BWVideoPIPOverlayNode *)self _drawPIPUsingGPUToOutputPixelBuffer:a4 attachedPixelBuffer:ImageBuffer filters:v133 outputRect:6 inputRect:v151 normalizedReticleRect:v152 uprightExifOrientation:v153 pipOpacity:v154, v127, v129, v143, v112, *&v155.a, *&v155.b, *&v155.c, *&v155.d, v141];
      }

      else
      {
        [(BWVideoPIPOverlayNode *)self _drawPIPUsingCPUAndMSRToOutputPixelBuffer:a4 attachedPixelBuffer:ImageBuffer outputRect:6 inputRect:v151 normalizedReticleRect:v152 primaryCaptureRect:v153 uprightExifOrientation:v154, v127, v129, v143, v112, *&v155.a, *&v155.b, *&v155.c, *&v155.d, *&v156.origin.x, *&v156.origin.y, *&v156.size.width, *&v156.size.height];
      }
    }

    v28 = 1;
  }

LABEL_111:
  v166.origin.x = v16;
  v166.origin.y = v17;
  v166.size.width = v18;
  v166.size.height = v19;
  if (!CGRectEqualToRect(v166, self->_normalizedOutputRect) && self->_delegate)
  {
    self->_normalizedOutputRect.origin.x = v16;
    self->_normalizedOutputRect.origin.y = v17;
    self->_normalizedOutputRect.size.width = v18;
    self->_normalizedOutputRect.size.height = v19;
    if (v10)
    {
      v167.origin.x = v16;
      v167.origin.y = v17;
      v167.size.width = v18;
      v167.size.height = v19;
      if (!CGRectIsEmpty(v167))
      {
        v136 = [CMGetAttachment(a4 @"RotationDegrees"];
        v137 = [CMGetAttachment(a4 @"MirroredHorizontal"];
        v138 = [CMGetAttachment(a4 @"MirroredVertical"];
        v139 = CMGetAttachment(a3, *off_1E798A438, 0);
        v158.origin.x = 0.0;
        v158.origin.y = 0.0;
        __asm { FMOV            V0.2D, #1.0 }

        v158.size = _Q0;
        CGRectMakeWithDictionaryRepresentation(v139, &v158);
        v157 = 0u;
        memset(&v156, 0, sizeof(v156));
        FigCaptureGetTransformForMirroringRotationAndCrop(v137, v138, v136, &v156, v158.origin.x, v158.origin.y, v158.size.width, v158.size.height);
        *&v155.a = v156.origin;
        *&v155.c = v156.size;
        *&v155.tx = v157;
        v168.origin.x = v16;
        v168.origin.y = v17;
        v168.size.width = v18;
        v168.size.height = v19;
        v169 = CGRectApplyAffineTransform(v168, &v155);
        v16 = v169.origin.x;
        v17 = v169.origin.y;
        v18 = v169.size.width;
        v19 = v169.size.height;
      }
    }

    [(BWVideoPIPOverlayDelegate *)self->_delegate videoPIPOverlayNode:self overlayRectDidChange:v16, v17, v18, v19];
  }

  if (v28)
  {
    BWSampleBufferRemoveAttachedMedia(a3, 0x1F21AAEB0);
    CMRemoveAttachment(a3, @"ZoomPIPSource");
  }
}

- (void)_drawPIPUsingGPUToOutputPixelBuffer:(double)a3 attachedPixelBuffer:(double)a4 filters:(double)a5 outputRect:(double)a6 inputRect:(double)a7 normalizedReticleRect:(double)a8 uprightExifOrientation:(double)a9 pipOpacity:(uint64_t)a10
{
  v34 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:a11];
  v87 = a4;
  if (*(a1 + 350) == 1)
  {
    if (*(a1 + 368) && *(a1 + 352))
    {
      v35 = &OBJC_IVAR___BWVideoPIPOverlayNode__smartStyleIntermediateStyled;
    }

    else
    {
      v35 = &OBJC_IVAR___BWVideoPIPOverlayNode__smartStyleIntermediateUnstyled;
    }

    v43 = [objc_msgSend(MEMORY[0x1E695F658] imageWithCVPixelBuffer:{*(a1 + *v35)), "imageByCroppingToRect:", *(a1 + 400), CVPixelBufferGetHeight(*(a1 + 392)) - *(a1 + 408) - *(a1 + 424), *(a1 + 416), *(a1 + 424)}];
    v44 = *(a1 + 424);
    v45 = *(a1 + 416);
    memset(&v98, 0, sizeof(v98));
    FigCaptureExifOrientationGetAffineTransform(a14, v45 | (v44 << 32), &v97);
    CGAffineTransformInvert(&v98, &v97);
    v97 = v98;
    v46 = [v43 imageByApplyingTransform:&v97];
    [v46 extent];
    v48 = -v47;
    [v46 extent];
    CGAffineTransformMakeTranslation(&v97, v48, -v49);
    v50 = [v46 imageByApplyingTransform:&v97];
    v51 = ss_conformRectForMSR420vfPixelBuffer(a11, 1, a2, a3, a4, a5);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    [v50 extent];
    v59 = v55 / v58;
    [v50 extent];
    v61 = v57 / v60;
    v62 = CVPixelBufferGetHeight(a11) - v53 - v57;
    CGAffineTransformMakeScale(&v97, v59, v61);
    v63 = [v50 imageByApplyingTransform:&v97];
    CGAffineTransformMakeTranslation(&v97, v51, v62);
    v42 = [v63 imageByApplyingTransform:&v97];
  }

  else
  {
    v36 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a12];
    v37 = CVPixelBufferGetHeight(a12) - a7;
    v38 = a4;
    v39 = v37 - a9;
    v40 = [v36 imageByCroppingToRect:{a6, v37 - a9, a8, a9}];
    Height = CVPixelBufferGetHeight(a11);
    CGAffineTransformMakeTranslation(&v98, a2, Height - a3 - a5);
    t1 = v98;
    CGAffineTransformScale(&v97, &t1, v38, a5);
    v98 = v97;
    FigCaptureExifOrientationGetAffineTransform(a14, 0x100000001uLL, &v97);
    CGAffineTransformInvert(&t1, &v97);
    t2 = v98;
    CGAffineTransformConcat(&v97, &t1, &t2);
    v98 = v97;
    t1 = v97;
    CGAffineTransformScale(&v97, &t1, 1.0 / a8, 1.0 / a9);
    v98 = v97;
    t1 = v97;
    CGAffineTransformTranslate(&v97, &t1, -a6, -v39);
    v98 = v97;
    v42 = [v40 imageByApplyingTransform:&v97 highQualityDownsample:*(a1 + 432)];
  }

  v64 = v42;
  v98.a = 0.0;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v65 = [a13 countByEnumeratingWithState:&v91 objects:v90 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v92;
    v68 = *MEMORY[0x1E695FAB0];
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v92 != v67)
        {
          objc_enumerationMutation(a13);
        }

        v70 = *(*(&v91 + 1) + 8 * i);
        [v70 setValue:v64 forKey:v68];
        v64 = [v70 outputImage];
      }

      v66 = [a13 countByEnumeratingWithState:&v91 objects:v90 count:16];
    }

    while (v66);
  }

  if (*(a1 + 212) != 0.0)
  {
    [v64 extent];
    [*(a1 + 232) setExtent:?];
    LODWORD(v71) = *(a1 + 212);
    [*(a1 + 232) setRadius:v71];
    [*(a1 + 232) setColor:{objc_msgSend(MEMORY[0x1E695F610], "whiteColor")}];
    LODWORD(v72) = 1.0;
    [*(a1 + 232) setSmoothness:v72];
    v64 = [objc_msgSend(MEMORY[0x1E695F608] "sourceIn")];
  }

  if (*(a1 + 348) == 1)
  {
    [v64 extent];
    CGRectInset(v99, -*(a1 + 336), -*(a1 + 336));
    FigCaptureMetadataUtilitiesRoundRectToEvenCoordinates();
    [*(a1 + 224) setExtent:?];
    LODWORD(v73) = *(a1 + 340);
    [*(a1 + 224) setSigma:v73];
    *&v74 = *(a1 + 212) + *(a1 + 336);
    [*(a1 + 224) setRadius:v74];
    [*(a1 + 224) setColor:{objc_msgSend(MEMORY[0x1E695F610], "colorWithRed:green:blue:alpha:", 0.0, 0.0, 0.0, *(a1 + 344))}];
    LODWORD(v75) = 1.0;
    [*(a1 + 224) setSmoothness:v75];
    v64 = [v64 imageByCompositingOverImage:{objc_msgSend(*(a1 + 224), "outputImage")}];
  }

  if (a19 < 1.0)
  {
    v88 = @"inputAVector";
    v89 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:a19];
    v64 = [v64 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v89, &v88, 1)}];
  }

  v76 = FigCaptureMetadataUtilitiesRectDenormalizedToRect(a15, a16, a17, a18, a2, a3, v87);
  v78 = v77;
  v80 = v79;
  v82 = CVPixelBufferGetHeight(a11) - v81;
  v83 = v82 - v80;
  *&v82 = a19;
  v84 = [a1 _reticleCIColorForPixelBuffer:a11 opacity:v82];
  LODWORD(v85) = *(a1 + 208);
  v86 = [objc_msgSend(a1 _strokedRectangleImageWithRect:v84 thickness:v76 c:{v83, v78, v80, v85), "imageByCompositingOverImage:", v64}];
  [v34 setBlendKernel:*(a1 + 240)];
  [objc_msgSend(*(a1 + 248) startTaskToRender:v86 toDestination:v34 error:{&v98), "waitUntilCompletedAndReturnError:", &v98}];
}

- (uint64_t)_drawPIPUsingCPUAndMSRToOutputPixelBuffer:(double)a3 attachedPixelBuffer:(double)a4 outputRect:(double)a5 inputRect:(double)a6 normalizedReticleRect:(double)a7 primaryCaptureRect:(double)a8 uprightExifOrientation:(double)a9
{
  v36 = [MEMORY[0x1E695DF70] array];
  if (*(a1 + 350) == 1)
  {
    if (*(a1 + 368) && *(a1 + 352))
    {
      v37 = &OBJC_IVAR___BWVideoPIPOverlayNode__smartStyleIntermediateStyled;
    }

    else
    {
      v37 = &OBJC_IVAR___BWVideoPIPOverlayNode__smartStyleIntermediateUnstyled;
    }

    a12 = *(a1 + *v37);
    a6 = *(a1 + 400);
    a7 = *(a1 + 408);
    a8 = *(a1 + 416);
    a9 = *(a1 + 424);
  }

  v38 = *(a1 + 144);
  if (a13 < 6)
  {
    [v38 scalePixelBuffer:a12 rect:a11 intoPixelBuffer:a6 rect:{a7, a8, a9, a2, a3, a4, a5}];
  }

  else
  {
    [v38 scalePixelBuffer:a12 rect:a13 exifOrientation:a11 intoPixelBuffer:a6 rect:{a7, a8, a9, a2, a3, a4, a5}];
  }

  v39 = [[BWOverlaidRectangle alloc] initWithDisplayStyle:3];
  [(BWOverlaidRectangle *)v39 setBounds:a2, a3, a4, a5];
  [(BWOverlaidRectangle *)v39 setAnimationState:1];
  v40 = [[BWRamp alloc] initWithName:@"OverlaidRectangleDisplayStyleVideo"];
  LODWORD(v41) = 1.0;
  [(BWRamp *)v40 startRampFrom:1 to:2 iterations:0.0 shape:v41];
  [(BWRamp *)v40 updateRampForNextIteration];
  [(BWOverlaidRectangle *)v39 setRampAnimation:v40];
  [v36 addObject:v39];
  v42 = FigCaptureMetadataUtilitiesRectDenormalizedToRect(a14, a15, a16, a17, a2, a3, a4);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = [[BWOverlaidRectangle alloc] initWithDisplayStyle:4];
  [(BWOverlaidRectangle *)v49 setBounds:v42, v44, v46, v48];
  [(BWOverlaidRectangle *)v49 setAnimationState:1];
  v50 = [[BWRamp alloc] initWithName:@"PiP Reticle"];
  LODWORD(v51) = 1.0;
  [(BWRamp *)v50 startRampFrom:1 to:2 iterations:0.0 shape:v51];
  [(BWRamp *)v50 updateRampForNextIteration];
  [(BWOverlaidRectangle *)v49 setRampAnimation:v50];
  [v36 addObject:v49];
  if ([v36 count])
  {
    [objc_msgSend(v36 "firstObject")];
    a19 = CGRectGetMaxY(v56) + 10.0;
  }

  return [a1 _drawOverlayRects:v36 toPixelBuffer:a11 withinRect:{a18, a19, a20, a21}];
}

- (int)_drawOverlayRects:(id)a3 toPixelBuffer:(__CVBuffer *)a4 withinRect:(CGRect)a5
{
  result = 0;
  if (a3 && a4)
  {
    CVPixelBufferLockBaseAddress(a4, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a4, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a4, 0);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
    if (FigCapturePixelFormatIsTenBit(PixelFormatType))
    {
      v12 = 16;
    }

    else
    {
      v12 = 8;
    }

    if (self->_bitmapContext)
    {
      CVPixelBufferGetBaseAddressOfPlane(a4, 0);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
      CGBitmapContextSetData();
    }

    else
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
      v15 = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
      self->_bitmapContext = CGBitmapContextCreate(BaseAddressOfPlane, WidthOfPlane, HeightOfPlane, v12, v15, DeviceGray, 0);
      *components = xmmword_1AD046820;
      v16 = CGColorCreate(DeviceGray, components);
      v19.width = 1.0;
      v19.height = -1.0;
      CGContextSetShadowWithColor(self->_bitmapContext, v19, 0.0, v16);
      if (v16)
      {
        CFRelease(v16);
      }

      if (DeviceGray)
      {
        CFRelease(DeviceGray);
      }
    }

    if ([a3 count])
    {
      CGContextSaveGState(self->_bitmapContext);
      BWOverlaidRectangleDrawRectanglesInBitmapContext(a3, self->_bitmapContext, a4);
      CGContextRestoreGState(self->_bitmapContext);
    }

    return CVPixelBufferUnlockBaseAddress(a4, 0);
  }

  return result;
}

- (int)_loadAndConfigureSmartStyleProxyRenderer
{
  v3 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleV%d", 1]);
  self->_smartStyleClass = v3;
  if (!v3 || (v4 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleProxyRendererV%d", 1])) == 0 || (v5 = objc_msgSend([v4 alloc], "initWithOptionalMetalCommandQueue:", self->_metalCommandQueue), (self->_smartStyleProxyRenderer = v5) == 0))
  {
    v14 = -12786;
LABEL_23:

    self->_smartStyleProxyRenderer = 0;
    return v14;
  }

  [(CMISmartStyleProxyRenderer *)v5 setMaxInputStylesCount:1];
  LODWORD(v6) = 0.5;
  [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setForegroundRatio:v6];
  smartStyleProxyRenderer = self->_smartStyleProxyRenderer;
  v8 = [(CMISmartStyleProxyRenderer *)smartStyleProxyRenderer externalMemoryDescriptorForConfiguration:0];
  if (!v8)
  {
    v9 = 0;
    goto LABEL_17;
  }

  v9 = [objc_alloc(MEMORY[0x1E6991758]) initWithDevice:objc_msgSend(-[CMISmartStyleProxyRenderer metalCommandQueue](smartStyleProxyRenderer allocatorType:{"metalCommandQueue"), "device"), objc_msgSend(v8, "allocatorType")}];
  if (!v9)
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  v10 = objc_opt_new();
  if (!v10)
  {
LABEL_18:
    v13 = 0;
LABEL_19:
    v14 = -12786;
    goto LABEL_10;
  }

  [v10 setMemSize:{objc_msgSend(v8, "memSize")}];
  [v10 setWireMemory:1];
  [v10 setLabel:@"BWOverCaptureSmartStyleApplyNode-SmartStyleProxyRenderer-FigMetalAllocatorBackend"];
  [v10 setMemoryPoolId:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
  v11 = [v9 setupWithDescriptor:v10];
  if (!v11)
  {
    v12 = objc_opt_new();
    v13 = v12;
    if (v12)
    {
      [v12 setAllocatorBackend:v9];
      [(CMISmartStyleProxyRenderer *)smartStyleProxyRenderer setExternalMemoryResource:v13];
      v14 = 0;
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  v14 = v11;
  v13 = 0;
LABEL_10:

  if (v14)
  {
    [BWVideoPIPOverlayNode _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_23;
  }

  v15 = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setup];
  if (v15)
  {
    v14 = v15;
    [BWVideoPIPOverlayNode _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_23;
  }

  v14 = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer prewarm];
  if (v14)
  {
    [BWVideoPIPOverlayNode _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_23;
  }

  self->_smartStyleRenderingMethod = 2;
  return v14;
}

- (void)_updateCurrentStyle:(opaqueCMSampleBuffer *)a3
{
  v4 = [CMGetAttachment(a3 *off_1E798A3C8];
  if (v4)
  {
    v5 = [FigCaptureSmartStyle createFromDictionary:v4];
    if (v5)
    {
      v6 = v5;
      currentStyle = self->_currentStyle;
      if (!currentStyle)
      {
        currentStyle = objc_alloc_init(self->_smartStyleClass);
      }

      self->_currentStyle = currentStyle;
      -[CMISmartStyle setCastType:](self->_currentStyle, "setCastType:", [v6 cast]);
      [v6 intensity];
      [(CMISmartStyle *)self->_currentStyle setCastIntensity:?];
      [v6 toneBias];
      [(CMISmartStyle *)self->_currentStyle setToneBias:?];
      [v6 colorBias];
      v8 = self->_currentStyle;

      [(CMISmartStyle *)v8 setColorBias:?];
    }
  }

  else
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v11, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWVideoPIPOverlayNode.m", 1541, @"LastShownDate:BWVideoPIPOverlayNode.m:1541", @"LastShownBuild:BWVideoPIPOverlayNode.m:1541", 0);
    free(v11);
  }
}

- (int)_renderSmartStyleToIntermediateBufferWithInputSampleBuffer:(opaqueCMSampleBuffer *)a3 pipSourcePixelBuffer:(__CVBuffer *)a4 inputRect:(CGRect)a5 outputRect:(CGRect)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  if (a6.size.width >= a6.size.height)
  {
    v12 = a6.size.width;
  }

  else
  {
    v12 = a6.size.height;
  }

  if (a5.size.width >= a5.size.height)
  {
    v13 = a5.size.width;
  }

  else
  {
    v13 = a5.size.height;
  }

  v14 = v12 / v13;
  v15 = vcvtpd_u64_f64(a5.size.width * v14);
  v16 = vcvtpd_u64_f64(a5.size.height * v14);
  smartStyleIntermediateUnstyled = self->_smartStyleIntermediateUnstyled;
  if (!smartStyleIntermediateUnstyled || !self->_smartStyleIntermediateStyled)
  {
    goto LABEL_20;
  }

  v18 = CVPixelBufferGetWidth(smartStyleIntermediateUnstyled);
  v19 = CVPixelBufferGetHeight(self->_smartStyleIntermediateUnstyled);
  v20 = self->_smartStyleIntermediateUnstyled;
  if (v18 > ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) || v19 > ((v16 + 15) & 0xFFFFFFFFFFFFFFF0))
  {
    if (v20)
    {
      CFRelease(v20);
      self->_smartStyleIntermediateUnstyled = 0;
    }

    smartStyleIntermediateStyled = self->_smartStyleIntermediateStyled;
    if (!smartStyleIntermediateStyled)
    {
      goto LABEL_20;
    }

    CFRelease(smartStyleIntermediateStyled);
    self->_smartStyleIntermediateStyled = 0;
    v20 = self->_smartStyleIntermediateUnstyled;
  }

  if (!v20 || !self->_smartStyleIntermediateStyled)
  {
LABEL_20:
    CVPixelBufferGetPixelFormatType(a4);
    self->_smartStyleIntermediateUnstyled = CreatePixelBuffer();
    self->_smartStyleIntermediateStyled = CreatePixelBuffer();
    CVBufferPropagateAttachments(a4, self->_smartStyleIntermediateUnstyled);
    CVBufferPropagateAttachments(a4, self->_smartStyleIntermediateStyled);
    v20 = self->_smartStyleIntermediateUnstyled;
  }

  self->_smartStyleIntermediateROI.origin.x = 0.0;
  self->_smartStyleIntermediateROI.origin.y = 0.0;
  self->_smartStyleIntermediateROI.size.width = v15;
  self->_smartStyleIntermediateROI.size.height = v16;
  self->_smartStyleIntermediateROI.origin.x = ss_conformRectForMSR420vfPixelBuffer(v20, 1, 0.0, 0.0, v15, v16);
  self->_smartStyleIntermediateROI.origin.y = v23;
  self->_smartStyleIntermediateROI.size.width = v24;
  self->_smartStyleIntermediateROI.size.height = v25;
  v26 = ss_conformRectForMSR420vfPixelBuffer(self->_smartStyleIntermediateUnstyled, 1, 0.0, 0.0, (v15 + 2), (v16 + 2));
  [(BWScalingSession *)self->_scalingSession scalePixelBuffer:a4 rect:self->_smartStyleIntermediateUnstyled intoPixelBuffer:x rect:y, width, height, v26, v27, v28, v29];
  [(BWVideoPIPOverlayNode *)self _updateCurrentStyle:a3];
  if (!self->_currentStyle)
  {
    return 0;
  }

  smartStyleRenderingMethod = self->_smartStyleRenderingMethod;
  if (smartStyleRenderingMethod == 2)
  {
    v31 = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer prepareToProcess:1];
    if (!v31)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (smartStyleRenderingMethod == 3)
  {
    v31 = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer prepareToProcess:2];
    if (!v31)
    {
LABEL_30:
      currentStyle = self->_currentStyle;
      -[CMISmartStyleProxyRenderer setInputStyles:](self->_smartStyleProxyRenderer, "setInputStyles:", [MEMORY[0x1E695DEC8] arrayWithObjects:&currentStyle count:1]);
      [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setInputPixelBuffer:self->_smartStyleIntermediateUnstyled];
      [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setOutputPixelBuffer:self->_smartStyleIntermediateStyled];
      [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setInputMetadata:CMGetAttachment(a3, *off_1E798A3C8, 0)];
      v32 = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer process];
      if (v32)
      {
        smartStyleRenderingMethod = v32;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_7_6();
      }

      else
      {
        smartStyleRenderingMethod = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer finishProcessing];
        if (!smartStyleRenderingMethod)
        {
          return smartStyleRenderingMethod;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_7_6();
      }

      goto LABEL_26;
    }

LABEL_28:
    smartStyleRenderingMethod = v31;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_6();
    goto LABEL_26;
  }

  if (smartStyleRenderingMethod)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_6();
    smartStyleRenderingMethod = -12782;
LABEL_26:
    FigDebugAssert3();
  }

  return smartStyleRenderingMethod;
}

- (uint64_t)_loadAndConfigureSmartStyleProxyRenderer
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end