@interface CFXDefaultThermalPolicy
- (void)cameraFPSForThermalLevel:(int)a3 deviceType:(id)a4 minRate:(int *)a5 maxRate:(int *)a6;
@end

@implementation CFXDefaultThermalPolicy

- (void)cameraFPSForThermalLevel:(int)a3 deviceType:(id)a4 minRate:(int *)a5 maxRate:(int *)a6
{
  if (a3 > 0x32)
  {
    goto LABEL_5;
  }

  if (((1 << a3) & 0x4010040100000) != 0)
  {
    v8 = 15;
LABEL_4:
    *a6 = v8;
    goto LABEL_5;
  }

  if (!a3)
  {
    v8 = 30;
    goto LABEL_4;
  }

  if (a3 == 10)
  {
    v8 = 24;
    goto LABEL_4;
  }

LABEL_5:
  v9 = +[JFXVideoCameraController sharedInstance];
  v10 = [v9 cameraMode];

  if (JFXIsVideoCameraMode(v10))
  {
    v11 = *a6;
  }

  else
  {
    v11 = 15;
  }

  *a5 = v11;
}

@end