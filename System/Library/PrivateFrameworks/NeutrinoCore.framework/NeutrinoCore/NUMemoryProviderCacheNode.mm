@interface NUMemoryProviderCacheNode
- (id)_evaluateImage:(id *)image;
- (id)colorSpace;
- (id)pixelFormat;
@end

@implementation NUMemoryProviderCacheNode

- (id)_evaluateImage:(id *)image
{
  inputNode = [(NUCacheNode *)self inputNode];
  v6 = [inputNode outputImage:image];

  if (v6)
  {
    v7 = [[NUProcessorCache alloc] initWithImage:v6];
    [(NUProcessorCache *)v7 setLabel:@"NUMemoryProviderCacheNode"];
    colorSpace = [(NUMemoryProviderCacheNode *)self colorSpace];
    [(NUProcessorCache *)v7 setColorSpace:colorSpace];

    pixelFormat = [(NUMemoryProviderCacheNode *)self pixelFormat];
    [(NUProcessorCache *)v7 setPixelFormat:pixelFormat];

    outputImage = [(NUProcessorCache *)v7 outputImage];
  }

  else
  {
    outputImage = 0;
  }

  return outputImage;
}

- (id)pixelFormat
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"pixelFormat"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NUPixelFormat RGBAh];
  }

  v6 = v5;

  return v6;
}

- (id)colorSpace
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"colorSpace"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NUColorSpace workingColorSpace];
  }

  v6 = v5;

  return v6;
}

@end