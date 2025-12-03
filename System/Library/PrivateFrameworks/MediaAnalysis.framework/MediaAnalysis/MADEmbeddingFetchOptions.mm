@interface MADEmbeddingFetchOptions
- (MADEmbeddingFetchOptions)initWithCoder:(id)coder;
@end

@implementation MADEmbeddingFetchOptions

- (MADEmbeddingFetchOptions)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MADEmbeddingFetchOptions;
  return [(MADEmbeddingFetchOptions *)&v4 init];
}

@end