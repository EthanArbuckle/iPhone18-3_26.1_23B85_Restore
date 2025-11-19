@interface CAMSemanticStylesPreviewStyleCommand
- (CAMSemanticStylesPreviewStyleCommand)initWithStyle:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMSemanticStylesPreviewStyleCommand

- (CAMSemanticStylesPreviewStyleCommand)initWithStyle:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CAMSemanticStylesPreviewStyleCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__style, a3);
    v8 = v7;
  }

  return v7;
}

- (void)executeWithContext:(id)a3
{
  v6 = [a3 currentVideoPreviewLayer];
  v4 = [(CAMSemanticStylesPreviewStyleCommand *)self _style];
  if ([v6 isSemanticStyleRenderingEnabled])
  {
    if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [v4 avSemanticStyle];
      [v6 setSemanticStyle:v5 animated:0];
    }
  }
}

@end