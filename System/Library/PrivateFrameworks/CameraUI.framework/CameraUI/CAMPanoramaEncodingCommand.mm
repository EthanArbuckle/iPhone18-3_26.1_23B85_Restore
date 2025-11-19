@interface CAMPanoramaEncodingCommand
- (CAMPanoramaEncodingCommand)initWithCoder:(id)a3;
- (CAMPanoramaEncodingCommand)initWithPhotoEncodingBehavior:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMPanoramaEncodingCommand

- (CAMPanoramaEncodingCommand)initWithPhotoEncodingBehavior:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMPanoramaEncodingCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__photoEncodingBehavior = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMPanoramaEncodingCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMPanoramaEncodingCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->__photoEncodingBehavior = [v4 decodeIntegerForKey:@"CAMPanoramaEncodingCommandPhotoEncodingBehavior"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMPanoramaEncodingCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[CAMPanoramaEncodingCommand _photoEncodingBehavior](self forKey:{"_photoEncodingBehavior", v5.receiver, v5.super_class), @"CAMPanoramaEncodingCommandPhotoEncodingBehavior"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMPanoramaEncodingCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[3] = [(CAMPanoramaEncodingCommand *)self _photoEncodingBehavior];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v5 = [(CAMPanoramaEncodingCommand *)self _photoEncodingBehavior];
  v6 = [v4 currentPanoramaOutput];

  [v6 changeToEncodingBehavior:v5];
}

@end