@interface Embedder
- (Embedder)initWithSnlpEmbedder:(id)a3 andEmbeddingConfigItem:(id)a4;
@end

@implementation Embedder

- (Embedder)initWithSnlpEmbedder:(id)a3 andEmbeddingConfigItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = Embedder;
  v9 = [(Embedder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snlpEmbedder, a3);
    objc_storeStrong(&v10->_embeddingConfigItem, a4);
  }

  return v10;
}

@end