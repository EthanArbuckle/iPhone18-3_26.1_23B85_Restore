@interface CAMSemanticStylesPreviewStyleCommand
- (CAMSemanticStylesPreviewStyleCommand)initWithStyle:(id)style;
- (void)executeWithContext:(id)context;
@end

@implementation CAMSemanticStylesPreviewStyleCommand

- (CAMSemanticStylesPreviewStyleCommand)initWithStyle:(id)style
{
  styleCopy = style;
  v10.receiver = self;
  v10.super_class = CAMSemanticStylesPreviewStyleCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__style, style);
    v8 = v7;
  }

  return v7;
}

- (void)executeWithContext:(id)context
{
  currentVideoPreviewLayer = [context currentVideoPreviewLayer];
  _style = [(CAMSemanticStylesPreviewStyleCommand *)self _style];
  if ([currentVideoPreviewLayer isSemanticStyleRenderingEnabled])
  {
    if (!_style || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      avSemanticStyle = [_style avSemanticStyle];
      [currentVideoPreviewLayer setSemanticStyle:avSemanticStyle animated:0];
    }
  }
}

@end