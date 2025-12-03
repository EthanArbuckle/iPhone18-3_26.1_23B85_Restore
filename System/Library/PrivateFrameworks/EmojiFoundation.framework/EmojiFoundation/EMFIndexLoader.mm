@interface EMFIndexLoader
+ (id)_invertedIndexWithTermIndexURL:(id)l andDocumentIndexURL:(id)rL fromBundle:(id)bundle;
+ (id)_loadDictionaryResource:(id)resource;
+ (id)defaultIndexForBundle:(id)bundle;
+ (id)stemmedIndexForBundle:(id)bundle;
+ (void)_inferAndApplyStrategyToIndex:(id)index;
@end

@implementation EMFIndexLoader

+ (id)defaultIndexForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = [bundleCopy URLForResource:@"term_index" withExtension:@"plist"];
  v6 = [bundleCopy URLForResource:@"document_index" withExtension:@"plist"];
  v7 = [self _invertedIndexWithTermIndexURL:v5 andDocumentIndexURL:v6 fromBundle:bundleCopy];

  return v7;
}

+ (id)stemmedIndexForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = [bundleCopy URLForResource:@"term_index_stemmed" withExtension:@"plist"];
  v6 = [bundleCopy URLForResource:@"document_index_stemmed" withExtension:@"plist"];
  v7 = [self _invertedIndexWithTermIndexURL:v5 andDocumentIndexURL:v6 fromBundle:bundleCopy];

  return v7;
}

+ (id)_invertedIndexWithTermIndexURL:(id)l andDocumentIndexURL:(id)rL fromBundle:(id)bundle
{
  lCopy = l;
  rLCopy = rL;
  bundleCopy = bundle;
  if (!lCopy)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [EMFIndexLoader _invertedIndexWithTermIndexURL:bundleCopy andDocumentIndexURL:? fromBundle:?];
    }

    goto LABEL_10;
  }

  if (!rLCopy)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [EMFIndexLoader _invertedIndexWithTermIndexURL:bundleCopy andDocumentIndexURL:? fromBundle:?];
    }

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v11 = [self _loadDictionaryResource:lCopy];
  v12 = [self _loadDictionaryResource:rLCopy];
  if (!v11)
  {
    +[EMFIndexLoader _invertedIndexWithTermIndexURL:andDocumentIndexURL:fromBundle:];
  }

  v13 = v12;
  if (!v12)
  {
    +[EMFIndexLoader _invertedIndexWithTermIndexURL:andDocumentIndexURL:fromBundle:];
  }

  v14 = [[EMFInvertedIndex alloc] initWithTermIndex:v11 andDocumentIndex:v12];
  [(EMFInvertedIndex *)v14 setTermIndexURL:lCopy];
  [(EMFInvertedIndex *)v14 setDocumentIndexURL:rLCopy];
  [(EMFInvertedIndex *)v14 setAssetBundle:bundleCopy];
  [self _inferAndApplyStrategyToIndex:v14];

LABEL_11:

  return v14;
}

+ (id)_loadDictionaryResource:(id)resource
{
  resourceCopy = resource;
  if (resourceCopy)
  {
    v15 = 0;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:resourceCopy error:&v15];
    v5 = v15;
    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [(EMFIndexLoader *)resourceCopy _loadDictionaryResource:v6, v7, v8, v9, v10, v11, v12];
      }

      v13 = 0;
    }

    else
    {
      if (!v4)
      {
        +[EMFIndexLoader _loadDictionaryResource:];
      }

      v13 = v4;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)_inferAndApplyStrategyToIndex:(id)index
{
  indexCopy = index;
  v4 = [EMFIndexStrategyFactory inferStrategyForIndex:indexCopy];
  [indexCopy setStrategy:v4];
}

+ (void)_invertedIndexWithTermIndexURL:(void *)a1 andDocumentIndexURL:fromBundle:.cold.3(void *a1)
{
  v1 = [a1 bundlePath];
  OUTLINED_FUNCTION_0_1(&dword_1AF04E000, MEMORY[0x1E69E9C10], v2, "Document index plist could not be found in bundle: '%@'", v3, v4, v5, v6, 2u);
}

+ (void)_invertedIndexWithTermIndexURL:(void *)a1 andDocumentIndexURL:fromBundle:.cold.4(void *a1)
{
  v1 = [a1 bundlePath];
  OUTLINED_FUNCTION_0_1(&dword_1AF04E000, MEMORY[0x1E69E9C10], v2, "Term index plist could not be found in bundle: '%@'.", v3, v4, v5, v6, 2u);
}

@end