@interface CAMSubjectAreaChangeMonitoringCommand
- (CAMSubjectAreaChangeMonitoringCommand)initWithCoder:(id)a3;
- (CAMSubjectAreaChangeMonitoringCommand)initWithSubjectAreaChangeMonitoringEnabled:(BOOL)a3 configureSecondaryDevice:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMSubjectAreaChangeMonitoringCommand

- (CAMSubjectAreaChangeMonitoringCommand)initWithSubjectAreaChangeMonitoringEnabled:(BOOL)a3 configureSecondaryDevice:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = CAMSubjectAreaChangeMonitoringCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->__enabled = a3;
    v6->__configureSecondaryDevice = a4;
    v8 = v6;
  }

  return v7;
}

- (CAMSubjectAreaChangeMonitoringCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMSubjectAreaChangeMonitoringCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMSubjectAreaChangeMonitoringCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMSubjectAreaChangeMonitoringCommand *)self _isEnabled];
  v4[25] = [(CAMSubjectAreaChangeMonitoringCommand *)self _configureSecondaryDevice];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v6 = a3;
  v4 = [v6 currentVideoDevice];
  if ([(CAMSubjectAreaChangeMonitoringCommand *)self _configureSecondaryDevice])
  {
    v5 = [v6 currentSecondaryVideoDevice];

    v4 = v5;
  }

  [v4 setSubjectAreaChangeMonitoringEnabled:{-[CAMSubjectAreaChangeMonitoringCommand _isEnabled](self, "_isEnabled")}];
}

@end