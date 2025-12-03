@interface CAMPanoramaDirectionCommand
- (CAMPanoramaDirectionCommand)initWithCoder:(id)coder;
- (CAMPanoramaDirectionCommand)initWithDirection:(int64_t)direction;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPanoramaDirectionCommand

- (CAMPanoramaDirectionCommand)initWithDirection:(int64_t)direction
{
  v8.receiver = self;
  v8.super_class = CAMPanoramaDirectionCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__direction = direction;
    v6 = v4;
  }

  return v5;
}

- (CAMPanoramaDirectionCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMPanoramaDirectionCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->__direction = [coderCopy decodeIntegerForKey:@"CAMPanoramaDirectionCommandDirection"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMPanoramaDirectionCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[CAMPanoramaDirectionCommand _direction](self forKey:{"_direction", v5.receiver, v5.super_class), @"CAMPanoramaDirectionCommandDirection"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMPanoramaDirectionCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[3] = [(CAMPanoramaDirectionCommand *)self _direction];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _direction = [(CAMPanoramaDirectionCommand *)self _direction];
  currentPanoramaOutput = [contextCopy currentPanoramaOutput];

  [currentPanoramaOutput changeToDirection:_direction];
}

@end