@interface CAMPanoramaDirectionCommand
- (CAMPanoramaDirectionCommand)initWithCoder:(id)a3;
- (CAMPanoramaDirectionCommand)initWithDirection:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMPanoramaDirectionCommand

- (CAMPanoramaDirectionCommand)initWithDirection:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMPanoramaDirectionCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__direction = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMPanoramaDirectionCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMPanoramaDirectionCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->__direction = [v4 decodeIntegerForKey:@"CAMPanoramaDirectionCommandDirection"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMPanoramaDirectionCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[CAMPanoramaDirectionCommand _direction](self forKey:{"_direction", v5.receiver, v5.super_class), @"CAMPanoramaDirectionCommandDirection"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMPanoramaDirectionCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[3] = [(CAMPanoramaDirectionCommand *)self _direction];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v5 = [(CAMPanoramaDirectionCommand *)self _direction];
  v6 = [v4 currentPanoramaOutput];

  [v6 changeToDirection:v5];
}

@end