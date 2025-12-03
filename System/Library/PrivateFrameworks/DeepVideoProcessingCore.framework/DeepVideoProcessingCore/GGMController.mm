@interface GGMController
+ (void)downloadMobileAssetWithCompletionHandler:(id)handler;
- ($DC080E558804126FE14A0ED6851A46A4)setDefaultControllerConfig;
- (BOOL)msrFrameSource:(__CVBuffer *)source destination:(__CVBuffer *)destination waitForCompletion:(BOOL)completion;
- (BOOL)processSourceFrame:(__CVBuffer *)frame nextFrame:(__CVBuffer *)nextFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow ourceFrameOpticalCenter:(CGPoint)center nextFrameOpticalCenter:(CGPoint)opticalCenter opticalCenterShift:(double)shift previousOutputFrame:(__CVBuffer *)self0 previousPreviousOutputFrame:(__CVBuffer *)self1 randomAccessMode:(BOOL)self2 destinationFrame:(__CVBuffer *)buffer;
- (GGMController)initWithFrameWidth:(int64_t)width FrameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow;
- (void)dealloc;
- (void)resetIntermediateVariables;
- (void)resetState;
- (void)setIspTimeStamp:(id *)stamp;
@end

@implementation GGMController

- (void)dealloc
{
  scaler = self->_scaler;
  if (scaler)
  {
    CFRelease(scaler);
    self->_scaler = 0;
  }

  v4.receiver = self;
  v4.super_class = GGMController;
  [(GGMController *)&v4 dealloc];
}

- (BOOL)msrFrameSource:(__CVBuffer *)source destination:(__CVBuffer *)destination waitForCompletion:(BOOL)completion
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = Mutable;
  if (!completion)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1AE90], *MEMORY[0x277CBED28]);
  }

  CVPixelBufferGetWidth(source);
  CVPixelBufferGetHeight(source);
  CVPixelBufferGetIOSurface(source);
  CVPixelBufferGetIOSurface(destination);
  v10 = IOSurfaceAcceleratorTransformSurface();
  if (v10)
  {
    Width = CVPixelBufferGetWidth(source);
    Height = CVPixelBufferGetHeight(source);
    PixelFormatType = CVPixelBufferGetPixelFormatType(source);
    v14 = CVPixelBufferGetWidth(destination);
    v15 = CVPixelBufferGetHeight(destination);
    v16 = CVPixelBufferGetPixelFormatType(destination);
    NSLog(&cfstr_ScalerErrorFai.isa, Width, Height, PixelFormatType, v14, v15, v16);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v10 == 0;
}

- (BOOL)processSourceFrame:(__CVBuffer *)frame nextFrame:(__CVBuffer *)nextFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow ourceFrameOpticalCenter:(CGPoint)center nextFrameOpticalCenter:(CGPoint)opticalCenter opticalCenterShift:(double)shift previousOutputFrame:(__CVBuffer *)self0 previousPreviousOutputFrame:(__CVBuffer *)self1 randomAccessMode:(BOOL)self2 destinationFrame:(__CVBuffer *)buffer
{
  y = opticalCenter.y;
  x = opticalCenter.x;
  v30 = *&center.y;
  v32 = center.x;
  if (mode)
  {
    [(VideoDeghostingDetectionV2 *)self->_GGDetector reset:frame];
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  if (nextFrame)
  {
    nextFrameCopy = nextFrame;
    __copy_assignment_8_8_t0w8_s8_s16_s24_s32_s40_t48w8(self->_lookaheadFrames.frameDataArray, &nextFrameCopy);
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  self->_lookaheadFrames.validCount = v19;
  v20 = CVBufferCopyAttachments(frame, kCVAttachmentMode_ShouldPropagate);
  if (v20)
  {
    CVBufferSetAttachments(buffer, v20, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v20);
  }

  v28 = 0;
  if ([(GGMController *)self msrFrameSource:frame destination:buffer waitForCompletion:1, v30])
  {
    v21.f64[0] = v32;
    v21.f64[1] = v31;
    v22.f64[0] = x;
    v22.f64[1] = y;
    v23 = COERCE_DOUBLE(vcvt_f32_f64(v21));
    v24 = COERCE_DOUBLE(vcvt_f32_f64(v22));
    v25 = objc_autoreleasePoolPush();
    *&v26 = shift;
    v27 = [(VideoDeghostingDetectionV2 *)self->_GGDetector process:buffer futureFrames:&self->_lookaheadFrames opticalCenter:outputFrame futureOpticalCenter:previousOutputFrame opticalCenterMvShift:v23 outputImgBufTMinus1:v24 outputImgBufTMinus2:v26];
    objc_autoreleasePoolPop(v25);
    if (v27)
    {
      v28 = 1;
    }
  }

  __destructor_8_s8_s16_s24_s32_s40(&nextFrameCopy);
  return v28;
}

- (void)resetState
{
  self->_processedPixelBuffer = 0;
  self->_processedFrameInDetection = 0;
  self->_lookaheadFrameProcessedInFinish = 0;
  [(VideoDeghostingDetectionV2 *)self->_GGDetector reset];

  [(GGMController *)self resetIntermediateVariables];
}

- (void)resetIntermediateVariables
{
  self->_metaInfoQueue = [MEMORY[0x277CBEB18] array];

  MEMORY[0x2821F96F8]();
}

- ($DC080E558804126FE14A0ED6851A46A4)setDefaultControllerConfig
{
  *&retstr->var1.var0 = 0u;
  *&retstr->var1.var4 = 0u;
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var7 = 0u;
  setDefaultConfig(retstr);
  return result;
}

+ (void)downloadMobileAssetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__GGMController_downloadMobileAssetWithCompletionHandler___block_invoke;
  v5[3] = &unk_278F53658;
  v6 = handlerCopy;
  v4 = handlerCopy;
  [VEMobileAsset downloadMobileAssetType:@"com.apple.MobileAsset.VideoEffect" assetSpecifier:@"com.apple.videoeffect.GGM" forClientName:@"ImageSR" completionHandler:v5];
}

- (void)setIspTimeStamp:(id *)stamp
{
  v3 = *&stamp->var0;
  self->_ispTimeStamp.epoch = stamp->var3;
  *&self->_ispTimeStamp.value = v3;
}

- (GGMController)initWithFrameWidth:(int64_t)width FrameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow
{
  heightCopy = height;
  widthCopy = width;
  v20.receiver = self;
  v20.super_class = GGMController;
  v7 = [(GGMController *)&v20 init:width];
  if (v7 && (IOSurfaceAcceleratorCreate(), v7->_scaler) && (([(GGMController *)v7 setDefaultControllerConfig:0], v7->_device) || (v8 = MTLCreateSystemDefaultDevice(), device = v7->_device, v7->_device = v8, device, (v10 = v7->_device) != 0) && (v11 = [(MTLDevice *)v10 newCommandQueue], commandQueue = v7->_commandQueue, v7->_commandQueue = v11, commandQueue, v7->_commandQueue)) && (v13 = [[GGMMetalToolBox alloc] initWithMetalContext:v7->_device commandQueue:v7->_commandQueue tuningParamDict:0], metalToolbox = v7->_metalToolbox, v7->_metalToolbox = v13, metalToolbox, v7->_metalToolbox) && (v15 = [[VideoDeghostingDetectionV2 alloc] initWithMetalToolBox:v7->_metalToolbox config:&v19 imageDimensions:widthCopy | (heightCopy << 32)], GGDetector = v7->_GGDetector, v7->_GGDetector = v15, GGDetector, v7->_GGDetector))
  {
    v17 = v7;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end