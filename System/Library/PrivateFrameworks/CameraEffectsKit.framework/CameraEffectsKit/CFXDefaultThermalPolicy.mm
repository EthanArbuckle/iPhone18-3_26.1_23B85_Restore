@interface CFXDefaultThermalPolicy
- (void)cameraFPSForThermalLevel:(int)level deviceType:(id)type minRate:(int *)rate maxRate:(int *)maxRate;
@end

@implementation CFXDefaultThermalPolicy

- (void)cameraFPSForThermalLevel:(int)level deviceType:(id)type minRate:(int *)rate maxRate:(int *)maxRate
{
  if (level > 0x32)
  {
    goto LABEL_5;
  }

  if (((1 << level) & 0x4010040100000) != 0)
  {
    v8 = 15;
LABEL_4:
    *maxRate = v8;
    goto LABEL_5;
  }

  if (!level)
  {
    v8 = 30;
    goto LABEL_4;
  }

  if (level == 10)
  {
    v8 = 24;
    goto LABEL_4;
  }

LABEL_5:
  v9 = +[JFXVideoCameraController sharedInstance];
  cameraMode = [v9 cameraMode];

  if (JFXIsVideoCameraMode(cameraMode))
  {
    v11 = *maxRate;
  }

  else
  {
    v11 = 15;
  }

  *rate = v11;
}

@end