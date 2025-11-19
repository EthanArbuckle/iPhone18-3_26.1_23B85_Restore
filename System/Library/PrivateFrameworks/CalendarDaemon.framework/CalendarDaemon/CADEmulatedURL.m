@interface CADEmulatedURL
- (CADEmulatedURL)initWithOriginalURL:(id)a3;
@end

@implementation CADEmulatedURL

- (CADEmulatedURL)initWithOriginalURL:(id)a3
{
  v4 = [a3 absoluteString];
  v7.receiver = self;
  v7.super_class = CADEmulatedURL;
  v5 = [(CADEmulatedURL *)&v7 initWithString:v4 relativeToURL:0];

  return v5;
}

@end