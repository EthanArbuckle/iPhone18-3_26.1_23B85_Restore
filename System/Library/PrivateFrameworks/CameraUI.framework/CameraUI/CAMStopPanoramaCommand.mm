@interface CAMStopPanoramaCommand
- (CAMStopPanoramaCommand)initWithCoder:(id)coder;
- (CAMStopPanoramaCommand)initWithInterrupted:(BOOL)interrupted;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMStopPanoramaCommand

- (CAMStopPanoramaCommand)initWithInterrupted:(BOOL)interrupted
{
  v8.receiver = self;
  v8.super_class = CAMStopPanoramaCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__interrupted = interrupted;
    v6 = v4;
  }

  return v5;
}

- (CAMStopPanoramaCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMStopPanoramaCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->__interrupted = [coderCopy decodeBoolForKey:@"CAMStopPanoramaCommandInterrupted"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CAMStopPanoramaCommand _interrupted](self forKey:{"_interrupted"), @"CAMStopPanoramaCommandInterrupted"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMStopPanoramaCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMStopPanoramaCommand *)self _interrupted];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  [contextCopy stopPanoramaCaptureInterrupted:{-[CAMStopPanoramaCommand _interrupted](self, "_interrupted")}];
}

@end