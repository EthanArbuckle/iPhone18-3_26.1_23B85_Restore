@interface CADEmulatedURL
- (CADEmulatedURL)initWithOriginalURL:(id)l;
@end

@implementation CADEmulatedURL

- (CADEmulatedURL)initWithOriginalURL:(id)l
{
  absoluteString = [l absoluteString];
  v7.receiver = self;
  v7.super_class = CADEmulatedURL;
  v5 = [(CADEmulatedURL *)&v7 initWithString:absoluteString relativeToURL:0];

  return v5;
}

@end