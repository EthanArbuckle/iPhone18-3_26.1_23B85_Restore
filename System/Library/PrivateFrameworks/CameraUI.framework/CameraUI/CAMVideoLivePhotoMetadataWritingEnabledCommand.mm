@interface CAMVideoLivePhotoMetadataWritingEnabledCommand
- (CAMVideoLivePhotoMetadataWritingEnabledCommand)initWithCoder:(id)coder;
- (CAMVideoLivePhotoMetadataWritingEnabledCommand)initWithEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMVideoLivePhotoMetadataWritingEnabledCommand

- (CAMVideoLivePhotoMetadataWritingEnabledCommand)initWithEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMVideoLivePhotoMetadataWritingEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__livePhotoMetadataWritingEnabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoLivePhotoMetadataWritingEnabledCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMVideoLivePhotoMetadataWritingEnabledCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__livePhotoMetadataWritingEnabled = [coderCopy decodeBoolForKey:@"CAMVideoWriteLivePhotoMetadataCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMVideoLivePhotoMetadataWritingEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMVideoLivePhotoMetadataWritingEnabledCommand isLivePhotoMetadataWritingEnabled](self forKey:{"isLivePhotoMetadataWritingEnabled", v5.receiver, v5.super_class), @"CAMVideoWriteLivePhotoMetadataCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMVideoLivePhotoMetadataWritingEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMVideoLivePhotoMetadataWritingEnabledCommand *)self isLivePhotoMetadataWritingEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  isLivePhotoMetadataWritingEnabled = [(CAMVideoLivePhotoMetadataWritingEnabledCommand *)self isLivePhotoMetadataWritingEnabled];
  currentMovieFileOutput = [contextCopy currentMovieFileOutput];

  v6 = [currentMovieFileOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
  v7 = v6;
  if (!isLivePhotoMetadataWritingEnabled || [v6 isLivePhotoMetadataWritingSupported])
  {
    [v7 setLivePhotoMetadataWritingEnabled:isLivePhotoMetadataWritingEnabled];
  }
}

@end