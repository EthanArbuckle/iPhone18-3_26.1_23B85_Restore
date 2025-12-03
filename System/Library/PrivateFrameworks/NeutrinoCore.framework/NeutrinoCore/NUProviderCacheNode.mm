@interface NUProviderCacheNode
- (BOOL)shouldCacheNodeForPipelineState:(id)state;
- (BOOL)useTiledProviderCache;
- (id)_evaluateImage:(id *)image;
- (id)colorSpace;
- (id)pixelFormat;
@end

@implementation NUProviderCacheNode

- (id)_evaluateImage:(id *)image
{
  inputNode = [(NUCacheNode *)self inputNode];
  v6 = [inputNode outputImage:image];

  if (v6)
  {
    useTiledProviderCache = [(NUProviderCacheNode *)self useTiledProviderCache];
    v8 = off_1E8108020;
    if (!useTiledProviderCache)
    {
      v8 = off_1E8107DB0;
    }

    v9 = [objc_alloc(*v8) initWithImage:v6];
    colorSpace = [(NUProviderCacheNode *)self colorSpace];
    if (colorSpace)
    {
      [v9 setColorSpace:colorSpace];
    }

    pixelFormat = [(NUProviderCacheNode *)self pixelFormat];
    if (pixelFormat)
    {
      [v9 setPixelFormat:pixelFormat];
    }

    outputImage = [v9 outputImage];
  }

  else
  {
    outputImage = 0;
  }

  return outputImage;
}

- (BOOL)useTiledProviderCache
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"useTiledProviderCache"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)pixelFormat
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"pixelFormat"];

  return v3;
}

- (id)colorSpace
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"colorSpace"];

  return v3;
}

- (BOOL)shouldCacheNodeForPipelineState:(id)state
{
  stateCopy = state;
  if (![stateCopy evaluationMode])
  {
    goto LABEL_5;
  }

  auxiliaryImageType = [(NUCacheNode *)self auxiliaryImageType];
  if (auxiliaryImageType && [stateCopy auxiliaryImageType] != auxiliaryImageType)
  {
    LOBYTE(v6) = 0;
    goto LABEL_8;
  }

  if (([stateCopy lowMemoryMode] & 1) == 0)
  {
    v6 = [stateCopy disableIntermediateCaching] ^ 1;
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