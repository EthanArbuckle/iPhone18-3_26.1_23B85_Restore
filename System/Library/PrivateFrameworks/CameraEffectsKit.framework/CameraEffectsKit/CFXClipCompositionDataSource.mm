@interface CFXClipCompositionDataSource
- (CFXClipCompositionDataSource)initWithClip:(id)a3;
- (CGSize)frameSize;
- (CGSize)renderSize;
- (id)colorSpace;
- (int)duration;
- (int)frameRate;
- (int)timeScale;
@end

@implementation CFXClipCompositionDataSource

- (CFXClipCompositionDataSource)initWithClip:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CFXClipCompositionDataSource;
  v6 = [(CFXClipCompositionDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clip, a3);
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
  v2 = [(CFXClipCompositionDataSource *)self clip];
  v3 = [v2 duration];

  return v3;
}

- (int)frameRate
{
  v2 = +[CFXMediaSettings sharedInstance];
  v3 = [v2 frameRate];

  return v3;
}

- (int)timeScale
{
  v2 = +[CFXMediaSettings sharedInstance];
  v3 = [v2 timeScale];

  return v3;
}

- (id)colorSpace
{
  v2 = [(CFXClip *)self->_clip mediaItem];
  v3 = [v2 colorSpace];

  return v3;
}

@end