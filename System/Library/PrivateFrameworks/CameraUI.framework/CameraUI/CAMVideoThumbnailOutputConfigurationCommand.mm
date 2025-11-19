@interface CAMVideoThumbnailOutputConfigurationCommand
- (CAMVideoThumbnailOutputConfigurationCommand)initWithCoder:(id)a3;
- (CAMVideoThumbnailOutputConfigurationCommand)initWithConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMVideoThumbnailOutputConfigurationCommand

- (CAMVideoThumbnailOutputConfigurationCommand)initWithConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CAMVideoThumbnailOutputConfigurationCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = v7;
  }

  return v7;
}

- (CAMVideoThumbnailOutputConfigurationCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMVideoThumbnailOutputConfigurationCommand;
  v5 = [(CAMCaptureCommand *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"CAMVideoThumbnailOutputConfigurationKey"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CAMVideoThumbnailOutputConfigurationCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v6 encodeWithCoder:v4];
  v5 = [(CAMVideoThumbnailOutputConfigurationCommand *)self configuration:v6.receiver];
  [v4 encodeObject:v5 forKey:@"CAMVideoThumbnailOutputConfigurationKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CAMVideoThumbnailOutputConfigurationCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:a3];
  v5 = [(CAMVideoThumbnailOutputConfigurationCommand *)self configuration];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentVideoThumbnailOutput];
  if (v4)
  {
    v7 = v4;
    v5 = [(CAMVideoThumbnailOutputConfigurationCommand *)self configuration];
    [v5 thumbnailSize];
    [v7 setThumbnailSize:?];
    v6 = [v5 filters];
    [v7 setFilters:v6];

    v4 = v7;
  }
}

@end