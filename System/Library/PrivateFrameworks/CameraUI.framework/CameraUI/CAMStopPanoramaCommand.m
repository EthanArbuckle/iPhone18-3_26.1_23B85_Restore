@interface CAMStopPanoramaCommand
- (CAMStopPanoramaCommand)initWithCoder:(id)a3;
- (CAMStopPanoramaCommand)initWithInterrupted:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMStopPanoramaCommand

- (CAMStopPanoramaCommand)initWithInterrupted:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMStopPanoramaCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__interrupted = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMStopPanoramaCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMStopPanoramaCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->__interrupted = [v4 decodeBoolForKey:@"CAMStopPanoramaCommandInterrupted"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CAMStopPanoramaCommand _interrupted](self forKey:{"_interrupted"), @"CAMStopPanoramaCommandInterrupted"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMStopPanoramaCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMStopPanoramaCommand *)self _interrupted];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  [v4 stopPanoramaCaptureInterrupted:{-[CAMStopPanoramaCommand _interrupted](self, "_interrupted")}];
}

@end