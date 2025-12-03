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
  oldLimit = [(DDRTaskResetAVVolumeLimits *)self oldLimit];

  if (oldLimit)
  {
    v5 = +[AVSystemController sharedAVSystemController];
    oldLimit2 = [(DDRTaskResetAVVolumeLimits *)self oldLimit];
    [v5 setAttribute:oldLimit2 forKey:AVSystemController_HeadphoneVolumeLimitAttribute error:0];
  }
}

@end