@interface MRDPlaybackQueueArtworkCacheSize
+ (MRDPlaybackQueueArtworkCacheSize)defaultSize;
- (MRDPlaybackQueueArtworkCacheSize)initWithW:(double)w h:(double)h;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation MRDPlaybackQueueArtworkCacheSize

- (MRDPlaybackQueueArtworkCacheSize)initWithW:(double)w h:(double)h
{
  v7.receiver = self;
  v7.super_class = MRDPlaybackQueueArtworkCacheSize;
  result = [(MRDPlaybackQueueArtworkCacheSize *)&v7 init];
  if (result)
  {
    result->_w = w;
    result->_h = h;
  }

  return result;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"%lf x %lf", *&self->_w, *&self->_h];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MRDPlaybackQueueArtworkCacheSize alloc];
  [(MRDPlaybackQueueArtworkCacheSize *)self w];
  v6 = v5;
  [(MRDPlaybackQueueArtworkCacheSize *)self h];

  return [(MRDPlaybackQueueArtworkCacheSize *)v4 initWithW:v6 h:v7];
}

+ (MRDPlaybackQueueArtworkCacheSize)defaultSize
{
  if (qword_1005295C0 != -1)
  {
    sub_1003AC11C();
  }

  v3 = qword_1005295B8;

  return v3;
}

- (int64_t)compare:(id)compare
{
  if (self->_w * self->_h <= *(compare + 1) * *(compare + 2))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

@end