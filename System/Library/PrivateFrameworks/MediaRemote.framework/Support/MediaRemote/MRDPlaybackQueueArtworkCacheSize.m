@interface MRDPlaybackQueueArtworkCacheSize
+ (MRDPlaybackQueueArtworkCacheSize)defaultSize;
- (MRDPlaybackQueueArtworkCacheSize)initWithW:(double)a3 h:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation MRDPlaybackQueueArtworkCacheSize

- (MRDPlaybackQueueArtworkCacheSize)initWithW:(double)a3 h:(double)a4
{
  v7.receiver = self;
  v7.super_class = MRDPlaybackQueueArtworkCacheSize;
  result = [(MRDPlaybackQueueArtworkCacheSize *)&v7 init];
  if (result)
  {
    result->_w = a3;
    result->_h = a4;
  }

  return result;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"%lf x %lf", *&self->_w, *&self->_h];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (int64_t)compare:(id)a3
{
  if (self->_w * self->_h <= *(a3 + 1) * *(a3 + 2))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

@end