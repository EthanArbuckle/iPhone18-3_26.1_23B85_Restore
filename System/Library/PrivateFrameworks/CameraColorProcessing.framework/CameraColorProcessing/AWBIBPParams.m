@interface AWBIBPParams
- ($938B03310D06493B2963E5A84CB75A7E)awbComboGains;
- ($938B03310D06493B2963E5A84CB75A7E)awbComboGainsNormalized;
- ($938B03310D06493B2963E5A84CB75A7E)awbGains;
- (void)reset;
@end

@implementation AWBIBPParams

- (void)reset
{
  metadata = self->_metadata;
  self->_metadata = 0;

  moduleConfig = self->_moduleConfig;
  self->_moduleConfig = 0;

  secondaryModuleConfig = self->_secondaryModuleConfig;
  self->_secondaryModuleConfig = 0;

  cameraInfo = self->_cameraInfo;
  self->_cameraInfo = 0;

  secondaryCameraInfo = self->_secondaryCameraInfo;
  self->_secondaryCameraInfo = 0;

  imageTex = self->_imageTex;
  self->_imageTex = 0;

  clippedTex = self->_clippedTex;
  self->_clippedTex = 0;

  lscGainsTex = self->_lscGainsTex;
  self->_lscGainsTex = 0;

  firstPixel = self->_firstPixel;
  self->_firstPixel = 0;

  cfaLayout = self->_cfaLayout;
  self->_cfaLayout = 0;

  downsizeFactor = self->_downsizeFactor;
  self->_downsizeFactor = 0;

  digitalFlash = self->_digitalFlash;
  self->_digitalFlash = 0;

  validRectInSensorReadoutCoords = self->_validRectInSensorReadoutCoords;
  self->_validRectInSensorReadoutCoords = 0;

  validRectInBufferCoords = self->_validRectInBufferCoords;
  self->_validRectInBufferCoords = 0;

  regionOfInterestRectInBufferCoords = self->_regionOfInterestRectInBufferCoords;
  self->_regionOfInterestRectInBufferCoords = 0;

  faceAssistedBehaviorMode = self->_faceAssistedBehaviorMode;
  self->_faceAssistedBehaviorMode = 0;

  skipDemosaic = self->_skipDemosaic;
  self->_skipDemosaic = 0;

  lscMaxGain = self->_lscMaxGain;
  self->_lscMaxGain = &unk_1F48E6630;

  lscModulationWeight = self->_lscModulationWeight;
  self->_lscModulationWeight = &unk_1F48E6630;

  self->_awbGains.bGain = 0;
  *&self->_awbComboGains.rGain = 0u;
  *&self->_awbComboGainsNormalized.gGain = 0u;
  outputMetadata = self->_outputMetadata;
  self->_outputMetadata = 0;
}

- ($938B03310D06493B2963E5A84CB75A7E)awbComboGains
{
  bGain = self->_awbComboGains.bGain;
  v3 = *&self->_awbComboGains.rGain;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = bGain;
  return result;
}

- ($938B03310D06493B2963E5A84CB75A7E)awbComboGainsNormalized
{
  bGain = self->_awbComboGainsNormalized.bGain;
  v3 = *&self->_awbComboGainsNormalized.rGain;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = bGain;
  return result;
}

- ($938B03310D06493B2963E5A84CB75A7E)awbGains
{
  bGain = self->_awbGains.bGain;
  v3 = *&self->_awbGains.rGain;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = bGain;
  return result;
}

@end