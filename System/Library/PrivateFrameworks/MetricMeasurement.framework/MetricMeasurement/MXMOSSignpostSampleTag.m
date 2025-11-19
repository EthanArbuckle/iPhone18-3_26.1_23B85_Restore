@interface MXMOSSignpostSampleTag
+ (MXMOSSignpostSampleTag)animationFrameCount;
+ (MXMOSSignpostSampleTag)animationFrameRate;
+ (MXMOSSignpostSampleTag)animationGPUTimeP90;
+ (MXMOSSignpostSampleTag)animationGlitchTimeRatio;
+ (MXMOSSignpostSampleTag)animationGlitchesTotalDuration;
+ (MXMOSSignpostSampleTag)animationNonFirstFrameGlitchTimeRatioAdjusted;
+ (MXMOSSignpostSampleTag)animationNonFirstFrameGlitchesTotalDuration;
+ (MXMOSSignpostSampleTag)animationNonFirstFrameNumberOfGlitches;
+ (MXMOSSignpostSampleTag)animationNumberOfGlitches;
+ (MXMOSSignpostSampleTag)animationNumberOfOffscreenPassesP90;
+ (MXMOSSignpostSampleTag)animationPerAppNonFirstFrameGlitchTimeRatioAdjusted;
+ (MXMOSSignpostSampleTag)animationPerAppNonFirstFrameGlitchesTotalDuration;
+ (MXMOSSignpostSampleTag)animationPerAppNonFirstFrameNumberOfGlitches;
+ (MXMOSSignpostSampleTag)animationRenderGPUTimeP90;
+ (MXMOSSignpostSampleTag)animationRenderTimeP90;
+ (MXMOSSignpostSampleTag)animationUpdateTimeP90;
+ (MXMOSSignpostSampleTag)duration;
+ (MXMOSSignpostSampleTag)telemetryNumber1;
+ (MXMOSSignpostSampleTag)telemetryNumber2;
+ (MXMOSSignpostSampleTag)timestamp;
@end

@implementation MXMOSSignpostSampleTag

+ (MXMOSSignpostSampleTag)timestamp
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.timestamp"];

  return v2;
}

+ (MXMOSSignpostSampleTag)duration
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.duration"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationFrameCount
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.frame.count"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationFrameRate
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.frame.rate"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationUpdateTimeP90
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.update.time.p90"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationRenderTimeP90
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.render.time.p90"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationGPUTimeP90
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.gpu.time.p90"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationRenderGPUTimeP90
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.render_gpu.time.p90"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationNumberOfOffscreenPassesP90
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.offscreen_pass.number.p90"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationGlitchTimeRatio
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.hitch.time.ratio"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationNumberOfGlitches
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.hitch.number"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationGlitchesTotalDuration
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.hitches.total.duration"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationNonFirstFrameGlitchTimeRatioAdjusted
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.hitch.non_first_frame.time.ratio.adjusted"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationNonFirstFrameNumberOfGlitches
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.hitch.non_first_frame.number"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationNonFirstFrameGlitchesTotalDuration
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.hitches.non_first_frame.total.duration"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationPerAppNonFirstFrameGlitchTimeRatioAdjusted
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.hitch.per_app.non_first_frame.time.ratio.adjusted"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationPerAppNonFirstFrameNumberOfGlitches
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.hitch.per_app.non_first_frame.number"];

  return v2;
}

+ (MXMOSSignpostSampleTag)animationPerAppNonFirstFrameGlitchesTotalDuration
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.animation.hitch.per_app.non_first_frame.total.duration"];

  return v2;
}

+ (MXMOSSignpostSampleTag)telemetryNumber1
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.telemetry.number.1"];

  return v2;
}

+ (MXMOSSignpostSampleTag)telemetryNumber2
{
  v2 = [(MXMSampleTag *)[MXMOSSignpostSampleTag alloc] initWithDNString:@"os_signpost.telemetry.number.2"];

  return v2;
}

@end