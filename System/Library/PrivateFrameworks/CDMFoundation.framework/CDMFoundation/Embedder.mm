@interface Embedder
- (Embedder)initWithSnlpEmbedder:(id)embedder andEmbeddingConfigItem:(id)item;
@end

@implementation Embedder

- (Embedder)initWithSnlpEmbedder:(id)embedder andEmbeddingConfigItem:(id)item
{
  embedderCopy = embedder;
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = Embedder;
  v9 = [(Embedder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snlpEmbedder, embedder);
    objc_storeStrong(&v10->_embeddingConfigItem, item);
  }

  return v10;
}

@end