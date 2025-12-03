@interface CAMPanoramaEncodingCommand
- (CAMPanoramaEncodingCommand)initWithCoder:(id)coder;
- (CAMPanoramaEncodingCommand)initWithPhotoEncodingBehavior:(int64_t)behavior;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPanoramaEncodingCommand

- (CAMPanoramaEncodingCommand)initWithPhotoEncodingBehavior:(int64_t)behavior
{
  v8.receiver = self;
  v8.super_class = CAMPanoramaEncodingCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__photoEncodingBehavior = behavior;
    v6 = v4;
  }

  return v5;
}

- (CAMPanoramaEncodingCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMPanoramaEncodingCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->__photoEncodingBehavior = [coderCopy decodeIntegerForKey:@"CAMPanoramaEncodingCommandPhotoEncodingBehavior"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMPanoramaEncodingCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[CAMPanoramaEncodingCommand _photoEncodingBehavior](self forKey:{"_photoEncodingBehavior", v5.receiver, v5.super_class), @"CAMPanoramaEncodingCommandPhotoEncodingBehavior"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMPanoramaEncodingCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[3] = [(CAMPanoramaEncodingCommand *)self _photoEncodingBehavior];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _photoEncodingBehavior = [(CAMPanoramaEncodingCommand *)self _photoEncodingBehavior];
  currentPanoramaOutput = [contextCopy currentPanoramaOutput];

  [currentPanoramaOutput changeToEncodingBehavior:_photoEncodingBehavior];
}

@end