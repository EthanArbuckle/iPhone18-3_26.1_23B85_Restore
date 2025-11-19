@interface JTCaptureMediaItem
- (BOOL)isEqual:(id)a3;
- (JTCaptureMediaItem)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation JTCaptureMediaItem

- (JTCaptureMediaItem)init
{
  v5.receiver = self;
  v5.super_class = JTCaptureMediaItem;
  v2 = [(JFXMediaItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(JFXMediaItem *)v2 setMediaType:4];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = JTCaptureMediaItem;
  return [(JFXMediaItem *)&v4 copyWithZone:a3];
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = JTCaptureMediaItem;
  return [(JFXMediaItem *)&v4 isEqual:a3];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = JTCaptureMediaItem;
  return [(JFXMediaItem *)&v3 hash];
}

@end