@interface EmbeddingPaths
- (EmbeddingPaths)initWithSrcVocabPath:(id)a3 modelPath:(id)a4 configPath:(id)a5 reformulationPath:(id)a6;
@end

@implementation EmbeddingPaths

- (EmbeddingPaths)initWithSrcVocabPath:(id)a3 modelPath:(id)a4 configPath:(id)a5 reformulationPath:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = EmbeddingPaths;
  v15 = [(EmbeddingPaths *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_srcVocabPath, a3);
    objc_storeStrong(&v16->_modelPath, a4);
    objc_storeStrong(&v16->_configPath, a5);
    objc_storeStrong(&v16->_reformulationPath, a6);
  }

  return v16;
}

@end