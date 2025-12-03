@interface CAMVideoThumbnailOutputConfigurationCommand
- (CAMVideoThumbnailOutputConfigurationCommand)initWithCoder:(id)coder;
- (CAMVideoThumbnailOutputConfigurationCommand)initWithConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMVideoThumbnailOutputConfigurationCommand

- (CAMVideoThumbnailOutputConfigurationCommand)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CAMVideoThumbnailOutputConfigurationCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = v7;
  }

  return v7;
}

- (CAMVideoThumbnailOutputConfigurationCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CAMVideoThumbnailOutputConfigurationCommand;
  v5 = [(CAMCaptureCommand *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"CAMVideoThumbnailOutputConfigurationKey"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CAMVideoThumbnailOutputConfigurationCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CAMVideoThumbnailOutputConfigurationCommand *)self configuration:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"CAMVideoThumbnailOutputConfigurationKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMVideoThumbnailOutputConfigurationCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  configuration = [(CAMVideoThumbnailOutputConfigurationCommand *)self configuration];
  v6 = v4[3];
  v4[3] = configuration;

  return v4;
}

- (void)executeWithContext:(id)context
{
  currentVideoThumbnailOutput = [context currentVideoThumbnailOutput];
  if (currentVideoThumbnailOutput)
  {
    v7 = currentVideoThumbnailOutput;
    configuration = [(CAMVideoThumbnailOutputConfigurationCommand *)self configuration];
    [configuration thumbnailSize];
    [v7 setThumbnailSize:?];
    filters = [configuration filters];
    [v7 setFilters:filters];

    currentVideoThumbnailOutput = v7;
  }
}

@end