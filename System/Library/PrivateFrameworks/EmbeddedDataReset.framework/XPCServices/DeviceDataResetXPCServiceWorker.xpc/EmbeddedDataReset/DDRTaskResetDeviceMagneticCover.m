@interface DDRTaskResetDeviceMagneticCover
- (void)configure;
- (void)run;
@end

@implementation DDRTaskResetDeviceMagneticCover

- (void)configure
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
  [(DDRTaskResetDeviceMagneticCover *)self setDefaults:v3];

  v4 = [(DDRTaskResetDeviceMagneticCover *)self defaults];
  -[DDRTaskResetDeviceMagneticCover setHasSeenCaseLatchCover:](self, "setHasSeenCaseLatchCover:", [v4 BOOLForKey:@"SBHasSeenACaseLatchCoverOnce"]);
}

- (void)run
{
  if ([(DDRTaskResetDeviceMagneticCover *)self hasSeenCaseLatchCover])
  {
    v3 = [(DDRTaskResetDeviceMagneticCover *)self defaults];
    [v3 setBool:1 forKey:@"SBHasSeenACaseLatchCoverOnce"];
  }
}

@end