@interface CAMVideoLivePhotoMetadataWritingEnabledCommand
- (CAMVideoLivePhotoMetadataWritingEnabledCommand)initWithCoder:(id)a3;
- (CAMVideoLivePhotoMetadataWritingEnabledCommand)initWithEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMVideoLivePhotoMetadataWritingEnabledCommand

- (CAMVideoLivePhotoMetadataWritingEnabledCommand)initWithEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMVideoLivePhotoMetadataWritingEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__livePhotoMetadataWritingEnabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoLivePhotoMetadataWritingEnabledCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMVideoLivePhotoMetadataWritingEnabledCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__livePhotoMetadataWritingEnabled = [v4 decodeBoolForKey:@"CAMVideoWriteLivePhotoMetadataCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMVideoLivePhotoMetadataWritingEnabledCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMVideoLivePhotoMetadataWritingEnabledCommand isLivePhotoMetadataWritingEnabled](self forKey:{"isLivePhotoMetadataWritingEnabled", v5.receiver, v5.super_class), @"CAMVideoWriteLivePhotoMetadataCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMVideoLivePhotoMetadataWritingEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMVideoLivePhotoMetadataWritingEnabledCommand *)self isLivePhotoMetadataWritingEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v5 = [(CAMVideoLivePhotoMetadataWritingEnabledCommand *)self isLivePhotoMetadataWritingEnabled];
  v8 = [v4 currentMovieFileOutput];

  v6 = [v8 connectionWithMediaType:*MEMORY[0x1E6987608]];
  v7 = v6;
  if (!v5 || [v6 isLivePhotoMetadataWritingSupported])
  {
    [v7 setLivePhotoMetadataWritingEnabled:v5];
  }
}

@end