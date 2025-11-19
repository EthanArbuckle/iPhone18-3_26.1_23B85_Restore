@interface NUMemoryProviderCacheNode
- (id)_evaluateImage:(id *)a3;
- (id)colorSpace;
- (id)pixelFormat;
@end

@implementation NUMemoryProviderCacheNode

- (id)_evaluateImage:(id *)a3
{
  v5 = [(NUCacheNode *)self inputNode];
  v6 = [v5 outputImage:a3];

  if (v6)
  {
    v7 = [[NUProcessorCache alloc] initWithImage:v6];
    [(NUProcessorCache *)v7 setLabel:@"NUMemoryProviderCacheNode"];
    v8 = [(NUMemoryProviderCacheNode *)self colorSpace];
    [(NUProcessorCache *)v7 setColorSpace:v8];

    v9 = [(NUMemoryProviderCacheNode *)self pixelFormat];
    [(NUProcessorCache *)v7 setPixelFormat:v9];

    v10 = [(NUProcessorCache *)v7 outputImage];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pixelFormat
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"pixelFormat"];
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
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"colorSpace"];
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