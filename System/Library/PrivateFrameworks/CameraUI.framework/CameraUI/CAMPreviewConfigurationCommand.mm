@interface CAMPreviewConfigurationCommand
- (CAMPreviewConfigurationCommand)initWithPreviewConfiguration:(unint64_t)configuration;
@end

@implementation CAMPreviewConfigurationCommand

- (CAMPreviewConfigurationCommand)initWithPreviewConfiguration:(unint64_t)configuration
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = (configuration >> 1) & 1;
  v5 = (configuration >> 2) & 1;
  v6 = [[CAMPreviewLayerEnabledCommand alloc] initWithPreviewLayerEnabled:configuration & 1];
  v7 = [[CAMEffectsPreviewVideoDataOutputEnabledCommand alloc] initWithVideoDataOutputEnabled:v4];
  v8 = [[CAMVideoThumbnailOutputEnabledCommand alloc] initWithVideoThumbnailOutputEnabled:v5];
  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v12.receiver = self;
  v12.super_class = CAMPreviewConfigurationCommand;
  v10 = [(CAMCaptureCommand *)&v12 initWithSubcommands:v9];

  return v10;
}

@end