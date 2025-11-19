@interface LTMIBPParams
- (LTMIBPParams)init;
- (void)releaseTextures;
- (void)reset;
@end

@implementation LTMIBPParams

- (LTMIBPParams)init
{
  v5.receiver = self;
  v5.super_class = LTMIBPParams;
  v2 = [(LTMIBPParams *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(LTMIBPParams *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  inMetaData = self->_inMetaData;
  self->_inMetaData = 0;

  outMetaData = self->_outMetaData;
  self->_outMetaData = 0;

  [(LTMIBPParams *)self releaseTextures];
  self->_optimizationLevel = 1;
  validBufferRect = self->_validBufferRect;
  self->_validBufferRect = 0;

  inputBufferRect = self->_inputBufferRect;
  self->_inputBufferRect = 0;

  self->_digitalFlash = 0;
  self->_evmExpRatio = 1.0;
  self->_doHazeEstimation = 0;
  *&self->_doAdaptiveFaceBiasScaler = 0x1000100000100;
  hazeEstimation = self->_hazeEstimation;
  self->_hazeEstimation = 0;

  self->_isSIFR = 0;
  *&self->_doGlobalCCM = 0;
  *&self->_ispDGainThreshold = 0x41E0000042000000;
  self->_minimumAdaptiveHC_SIFR = 1.8;
}

- (void)releaseTextures
{
  inRGBImageUInt16Tex = self->_inRGBImageUInt16Tex;
  self->_inRGBImageUInt16Tex = 0;

  inLumaTex = self->_inLumaTex;
  self->_inLumaTex = 0;

  inChromaTex = self->_inChromaTex;
  self->_inChromaTex = 0;

  inRGBAFloatTex = self->_inRGBAFloatTex;
  self->_inRGBAFloatTex = 0;
}

@end