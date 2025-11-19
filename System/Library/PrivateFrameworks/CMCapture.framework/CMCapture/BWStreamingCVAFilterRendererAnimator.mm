@interface BWStreamingCVAFilterRendererAnimator
- ($3BA783FF50B239963188BE194EBFFEBA)simulateNextFrameWithEffectStatus:(int)a3 portraitStability:(float)a4 clientSuppliedSimulatedAperture:(float)a5;
- (BWStreamingCVAFilterRendererAnimator)initWithEffectStatus:(int)a3 overCaptureEnabled:(BOOL)a4;
- (uint64_t)_resetSimulatedApertureRampWithEffectStatus:(float)a3 clientSuppliedSimulatedAperture:;
- (void)dealloc;
@end

@implementation BWStreamingCVAFilterRendererAnimator

- (BWStreamingCVAFilterRendererAnimator)initWithEffectStatus:(int)a3 overCaptureEnabled:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = BWStreamingCVAFilterRendererAnimator;
  v6 = [(BWStreamingCVAFilterRendererAnimator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_mostRecentEffectStatus = a3;
    v6->_simulatedApertureRamp = [[BWRamp alloc] initWithName:@"SimulatedApertureRamp"];
    v7->_overCaptureEnabled = a4;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStreamingCVAFilterRendererAnimator;
  [(BWStreamingCVAFilterRendererAnimator *)&v3 dealloc];
}

- ($3BA783FF50B239963188BE194EBFFEBA)simulateNextFrameWithEffectStatus:(int)a3 portraitStability:(float)a4 clientSuppliedSimulatedAperture:(float)a5
{
  if (a3 > 0xE || (v7 = a5, ((1 << a3) & 0x6202) == 0))
  {
    v7 = 1000.0;
  }

  if (self->_mostRecentEffectStatus != a3)
  {
    [(BWStreamingCVAFilterRendererAnimator *)self _resetSimulatedApertureRampWithEffectStatus:a3 clientSuppliedSimulatedAperture:a5];
  }

  if ([(BWRamp *)self->_simulatedApertureRamp isRamping])
  {
    [(BWRamp *)self->_simulatedApertureRamp updateRampForNextIteration];
    v7 = v8;
  }

  self->_currentFrame.simulatedAperture = v7;
  p_currentFrame = &self->_currentFrame;
  LODWORD(p_currentFrame[1].simulatedAperture) = a3;
  return p_currentFrame;
}

- (uint64_t)_resetSimulatedApertureRampWithEffectStatus:(float)a3 clientSuppliedSimulatedAperture:
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  result = [*(result + 16) isRamping];
  v8 = (*(v5 + 12) < 0xFu) & (0x6202u >> *(v5 + 12));
  if (a2 > 0xE || ((1 << a2) & 0x6202) == 0)
  {
    if (((*(v5 + 12) < 0xFu) & (0x6202u >> *(v5 + 12))) == 0)
    {
      return result;
    }

    v10 = *(v5 + 16);
    LODWORD(v7) = 16.0;
    *&v6 = a3;
    v9 = 4;
    v11 = 1;
    goto LABEL_11;
  }

  if (*(v5 + 24) != 1)
  {
    v9 = 3;
    LODWORD(v6) = 1148846080;
    if (((*(v5 + 12) < 0xFu) & (0x6202u >> *(v5 + 12))) != 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  LODWORD(v6) = 25.0;
  if (result)
  {
    result = [*(v5 + 16) updateRampForNextIteration];
  }

  v9 = (40.0 - ((25.0 - *&v6) / 40.0));
  if ((v8 & 1) == 0)
  {
LABEL_10:
    v10 = *(v5 + 16);
    *&v7 = a3;
    v11 = 2;
LABEL_11:

    return [v10 startRampFrom:v9 to:v11 iterations:v6 shape:v7];
  }

  return result;
}

@end