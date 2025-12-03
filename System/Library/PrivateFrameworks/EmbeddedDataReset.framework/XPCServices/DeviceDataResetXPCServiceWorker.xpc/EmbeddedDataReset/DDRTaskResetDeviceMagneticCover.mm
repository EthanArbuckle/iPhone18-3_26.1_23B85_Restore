@interface DDRTaskResetDeviceMagneticCover
- (void)configure;
- (void)run;
@end

@implementation DDRTaskResetDeviceMagneticCover

- (void)configure
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
  [(DDRTaskResetDeviceMagneticCover *)self setDefaults:v3];

  defaults = [(DDRTaskResetDeviceMagneticCover *)self defaults];
  -[DDRTaskResetDeviceMagneticCover setHasSeenCaseLatchCover:](self, "setHasSeenCaseLatchCover:", [defaults BOOLForKey:@"SBHasSeenACaseLatchCoverOnce"]);
}

- (void)run
{
  if ([(DDRTaskResetDeviceMagneticCover *)self hasSeenCaseLatchCover])
  {
    defaults = [(DDRTaskResetDeviceMagneticCover *)self defaults];
    [defaults setBool:1 forKey:@"SBHasSeenACaseLatchCoverOnce"];
  }
}

@end