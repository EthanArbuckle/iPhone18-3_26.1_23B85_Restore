@interface CAMSemanticStylesEnabledCommand
- (CAMSemanticStylesEnabledCommand)initWithCoder:(id)a3;
- (CAMSemanticStylesEnabledCommand)initWithEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMSemanticStylesEnabledCommand

- (CAMSemanticStylesEnabledCommand)initWithEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMSemanticStylesEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMSemanticStylesEnabledCommand)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"CAMSemanticStylesEnabledKey"];

  return [(CAMSemanticStylesEnabledCommand *)self initWithEnabled:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMSemanticStylesEnabledCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMSemanticStylesEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMSemanticStylesEnabledKey"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMSemanticStylesEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMSemanticStylesEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentStillImageOutput];
  if ([v4 isSemanticStyleRenderingSupported])
  {
    [v4 setSemanticStyleRenderingEnabled:{-[CAMSemanticStylesEnabledCommand _isEnabled](self, "_isEnabled")}];
  }
}

@end