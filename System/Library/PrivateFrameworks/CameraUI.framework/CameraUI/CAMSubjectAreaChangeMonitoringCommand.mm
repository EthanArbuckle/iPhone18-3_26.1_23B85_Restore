@interface CAMSubjectAreaChangeMonitoringCommand
- (CAMSubjectAreaChangeMonitoringCommand)initWithCoder:(id)coder;
- (CAMSubjectAreaChangeMonitoringCommand)initWithSubjectAreaChangeMonitoringEnabled:(BOOL)enabled configureSecondaryDevice:(BOOL)device;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMSubjectAreaChangeMonitoringCommand

- (CAMSubjectAreaChangeMonitoringCommand)initWithSubjectAreaChangeMonitoringEnabled:(BOOL)enabled configureSecondaryDevice:(BOOL)device
{
  v10.receiver = self;
  v10.super_class = CAMSubjectAreaChangeMonitoringCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->__enabled = enabled;
    v6->__configureSecondaryDevice = device;
    v8 = v6;
  }

  return v7;
}

- (CAMSubjectAreaChangeMonitoringCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMSubjectAreaChangeMonitoringCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMSubjectAreaChangeMonitoringCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMSubjectAreaChangeMonitoringCommand *)self _isEnabled];
  v4[25] = [(CAMSubjectAreaChangeMonitoringCommand *)self _configureSecondaryDevice];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  if ([(CAMSubjectAreaChangeMonitoringCommand *)self _configureSecondaryDevice])
  {
    currentSecondaryVideoDevice = [contextCopy currentSecondaryVideoDevice];

    currentVideoDevice = currentSecondaryVideoDevice;
  }

  [currentVideoDevice setSubjectAreaChangeMonitoringEnabled:{-[CAMSubjectAreaChangeMonitoringCommand _isEnabled](self, "_isEnabled")}];
}

@end