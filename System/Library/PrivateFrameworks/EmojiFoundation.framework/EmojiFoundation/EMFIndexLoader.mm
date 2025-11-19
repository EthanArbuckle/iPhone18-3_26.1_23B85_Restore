@interface EMFIndexLoader
+ (id)_invertedIndexWithTermIndexURL:(id)a3 andDocumentIndexURL:(id)a4 fromBundle:(id)a5;
+ (id)_loadDictionaryResource:(id)a3;
+ (id)defaultIndexForBundle:(id)a3;
+ (id)stemmedIndexForBundle:(id)a3;
+ (void)_inferAndApplyStrategyToIndex:(id)a3;
@end

@implementation EMFIndexLoader

+ (id)defaultIndexForBundle:(id)a3
{
  v4 = a3;
  v5 = [v4 URLForResource:@"term_index" withExtension:@"plist"];
  v6 = [v4 URLForResource:@"document_index" withExtension:@"plist"];
  v7 = [a1 _invertedIndexWithTermIndexURL:v5 andDocumentIndexURL:v6 fromBundle:v4];

  return v7;
}

+ (id)stemmedIndexForBundle:(id)a3
{
  v4 = a3;
  v5 = [v4 URLForResource:@"term_index_stemmed" withExtension:@"plist"];
  v6 = [v4 URLForResource:@"document_index_stemmed" withExtension:@"plist"];
  v7 = [a1 _invertedIndexWithTermIndexURL:v5 andDocumentIndexURL:v6 fromBundle:v4];

  return v7;
}

+ (id)_invertedIndexWithTermIndexURL:(id)a3 andDocumentIndexURL:(id)a4 fromBundle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [EMFIndexLoader _invertedIndexWithTermIndexURL:v10 andDocumentIndexURL:? fromBundle:?];
    }

    goto LABEL_10;
  }

  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [EMFIndexLoader _invertedIndexWithTermIndexURL:v10 andDocumentIndexURL:? fromBundle:?];
    }

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v11 = [a1 _loadDictionaryResource:v8];
  v12 = [a1 _loadDictionaryResource:v9];
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
  [(EMFInvertedIndex *)v14 setTermIndexURL:v8];
  [(EMFInvertedIndex *)v14 setDocumentIndexURL:v9];
  [(EMFInvertedIndex *)v14 setAssetBundle:v10];
  [a1 _inferAndApplyStrategyToIndex:v14];

LABEL_11:

  return v14;
}

+ (id)_loadDictionaryResource:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v15 = 0;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v3 error:&v15];
    v5 = v15;
    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [(EMFIndexLoader *)v3 _loadDictionaryResource:v6, v7, v8, v9, v10, v11, v12];
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

+ (void)_inferAndApplyStrategyToIndex:(id)a3
{
  v3 = a3;
  v4 = [EMFIndexStrategyFactory inferStrategyForIndex:v3];
  [v3 setStrategy:v4];
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