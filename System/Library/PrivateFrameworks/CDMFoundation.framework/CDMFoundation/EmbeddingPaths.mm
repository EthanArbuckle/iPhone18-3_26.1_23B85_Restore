@interface EmbeddingPaths
- (EmbeddingPaths)initWithSrcVocabPath:(id)path modelPath:(id)modelPath configPath:(id)configPath reformulationPath:(id)reformulationPath;
@end

@implementation EmbeddingPaths

- (EmbeddingPaths)initWithSrcVocabPath:(id)path modelPath:(id)modelPath configPath:(id)configPath reformulationPath:(id)reformulationPath
{
  pathCopy = path;
  modelPathCopy = modelPath;
  configPathCopy = configPath;
  reformulationPathCopy = reformulationPath;
  v18.receiver = self;
  v18.super_class = EmbeddingPaths;
  v15 = [(EmbeddingPaths *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_srcVocabPath, path);
    objc_storeStrong(&v16->_modelPath, modelPath);
    objc_storeStrong(&v16->_configPath, configPath);
    objc_storeStrong(&v16->_reformulationPath, reformulationPath);
  }

  return v16;
}

@end