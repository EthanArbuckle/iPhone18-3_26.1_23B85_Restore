@interface DDRTaskResetAVVolumeLimits
- (void)configure;
- (void)run;
@end

@implementation DDRTaskResetAVVolumeLimits

- (void)configure
{
  v4 = +[AVSystemController sharedAVSystemController];
  v3 = [v4 attributeForKey:AVSystemController_HeadphoneVolumeLimitAttribute];
  [(DDRTaskResetAVVolumeLimits *)self setOldLimit:v3];
}

- (void)run
{
  v3 = [(DDRTaskResetAVVolumeLimits *)self oldLimit];

  if (v3)
  {
    v5 = +[AVSystemController sharedAVSystemController];
    v4 = [(DDRTaskResetAVVolumeLimits *)self oldLimit];
    [v5 setAttribute:v4 forKey:AVSystemController_HeadphoneVolumeLimitAttribute error:0];
  }
}

@end