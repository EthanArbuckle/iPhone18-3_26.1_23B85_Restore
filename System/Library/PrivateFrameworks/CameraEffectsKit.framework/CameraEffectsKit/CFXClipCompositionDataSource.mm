@interface CFXClipCompositionDataSource
- (CFXClipCompositionDataSource)initWithClip:(id)clip;
- (CGSize)frameSize;
- (CGSize)renderSize;
- (id)colorSpace;
- (int)duration;
- (int)frameRate;
- (int)timeScale;
@end

@implementation CFXClipCompositionDataSource

- (CFXClipCompositionDataSource)initWithClip:(id)clip
{
  clipCopy = clip;
  v9.receiver = self;
  v9.super_class = CFXClipCompositionDataSource;
  v6 = [(CFXClipCompositionDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clip, clip);
  }

  return v7;
}

- (CGSize)renderSize
{
  v2 = +[CFXMediaSettings sharedInstance];
  [v2 renderSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)frameSize
{
  v2 = +[CFXMediaSettings sharedInstance];
  [v2 frameSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (int)duration
{
  clip = [(CFXClipCompositionDataSource *)self clip];
  duration = [clip duration];

  return duration;
}

- (int)frameRate
{
  v2 = +[CFXMediaSettings sharedInstance];
  frameRate = [v2 frameRate];

  return frameRate;
}

- (int)timeScale
{
  v2 = +[CFXMediaSettings sharedInstance];
  timeScale = [v2 timeScale];

  return timeScale;
}

- (id)colorSpace
{
  mediaItem = [(CFXClip *)self->_clip mediaItem];
  colorSpace = [mediaItem colorSpace];

  return colorSpace;
}

@end