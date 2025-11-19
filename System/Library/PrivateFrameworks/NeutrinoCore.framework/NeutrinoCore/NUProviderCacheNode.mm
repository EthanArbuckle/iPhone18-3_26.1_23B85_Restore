@interface NUProviderCacheNode
- (BOOL)shouldCacheNodeForPipelineState:(id)a3;
- (BOOL)useTiledProviderCache;
- (id)_evaluateImage:(id *)a3;
- (id)colorSpace;
- (id)pixelFormat;
@end

@implementation NUProviderCacheNode

- (id)_evaluateImage:(id *)a3
{
  v5 = [(NUCacheNode *)self inputNode];
  v6 = [v5 outputImage:a3];

  if (v6)
  {
    v7 = [(NUProviderCacheNode *)self useTiledProviderCache];
    v8 = off_1E8108020;
    if (!v7)
    {
      v8 = off_1E8107DB0;
    }

    v9 = [objc_alloc(*v8) initWithImage:v6];
    v10 = [(NUProviderCacheNode *)self colorSpace];
    if (v10)
    {
      [v9 setColorSpace:v10];
    }

    v11 = [(NUProviderCacheNode *)self pixelFormat];
    if (v11)
    {
      [v9 setPixelFormat:v11];
    }

    v12 = [v9 outputImage];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)useTiledProviderCache
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"useTiledProviderCache"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)pixelFormat
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"pixelFormat"];

  return v3;
}

- (id)colorSpace
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"colorSpace"];

  return v3;
}

- (BOOL)shouldCacheNodeForPipelineState:(id)a3
{
  v4 = a3;
  if (![v4 evaluationMode])
  {
    goto LABEL_5;
  }

  v5 = [(NUCacheNode *)self auxiliaryImageType];
  if (v5 && [v4 auxiliaryImageType] != v5)
  {
    LOBYTE(v6) = 0;
    goto LABEL_8;
  }

  if (([v4 lowMemoryMode] & 1) == 0)
  {
    v6 = [v4 disableIntermediateCaching] ^ 1;
  }

  else
  {
LABEL_5:
    LOBYTE(v6) = 1;
  }

LABEL_8:

  return v6;
}

@end