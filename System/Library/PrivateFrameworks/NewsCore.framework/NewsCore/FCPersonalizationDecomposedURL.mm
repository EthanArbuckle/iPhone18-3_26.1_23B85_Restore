@interface FCPersonalizationDecomposedURL
- (FCPersonalizationDecomposedURL)initWithURL:(id)a3;
- (FCPersonalizationDecomposedURL)initWithURLString:(id)a3;
@end

@implementation FCPersonalizationDecomposedURL

- (FCPersonalizationDecomposedURL)initWithURL:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = FCPersonalizationDecomposedURL;
  v5 = [(FCPersonalizationDecomposedURL *)&v39 init];
  if (v5)
  {
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v38 = 0;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __46__FCPersonalizationDecomposedURL_initWithURL___block_invoke;
    v34[3] = &unk_1E7C41BA0;
    v35 = v4;
    v36 = v37;
    v6 = __46__FCPersonalizationDecomposedURL_initWithURL___block_invoke(v34);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __46__FCPersonalizationDecomposedURL_initWithURL___block_invoke_2;
    v32[3] = &unk_1E7C371A8;
    v7 = v6;
    v33 = v7;
    v8 = __46__FCPersonalizationDecomposedURL_initWithURL___block_invoke_2(v32);
    v9 = [v8 componentsSeparatedByString:@"."];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __46__FCPersonalizationDecomposedURL_initWithURL___block_invoke_3;
    v30 = &unk_1E7C41BC8;
    v10 = v8;
    v31 = v10;
    if ([v10 hasSuffix:@".uk"])
    {
      v11 = 3;
    }

    else if ([v31 hasSuffix:@".au"])
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v12 = [v9 count];
    v13 = [v9 fc_safeSubarrayWithCountFromFront:(v12 & ~(v12 >> 63)) - v11];
    v14 = [v9 fc_safeSubarrayWithCountFromBack:v11];
    v15 = [v14 componentsJoinedByString:@"."];
    domain = v5->_domain;
    v5->_domain = v15;

    v17 = MEMORY[0x1E695DEC8];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __46__FCPersonalizationDecomposedURL_initWithURL___block_invoke_4;
    v23[3] = &unk_1E7C41BF0;
    v18 = v7;
    v24 = v18;
    v26 = v37;
    v19 = v13;
    v25 = v19;
    v20 = [v17 fc_array:v23];
    paths = v5->_paths;
    v5->_paths = v20;

    _Block_object_dispose(v37, 8);
  }

  return v5;
}

id __46__FCPersonalizationDecomposedURL_initWithURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) absoluteString];
  v3 = [v2 mutableCopy];

  if ([v3 hasSuffix:@"/"])
  {
    do
    {
      [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 1, 1}];
    }

    while (([v3 hasSuffix:@"/"] & 1) != 0);
  }

  v4 = [v3 rangeOfString:@"www.google.com/amp/s/"];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    [v3 deleteCharactersInRange:{v4, v5}];
  }

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v3];

  return v6;
}

id __46__FCPersonalizationDecomposedURL_initWithURL___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) host];
  if (![v1 rangeOfString:@"www."])
  {
    v3 = [v1 substringFromIndex:v2];

    v1 = v3;
  }

  return v1;
}

uint64_t __46__FCPersonalizationDecomposedURL_initWithURL___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) hasSuffix:@".uk"])
  {
    return 3;
  }

  if ([*(a1 + 32) hasSuffix:@".au"])
  {
    return 3;
  }

  return 2;
}

void __46__FCPersonalizationDecomposedURL_initWithURL___block_invoke_4(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) path];
  v4 = [v3 componentsSeparatedByString:@"/"];

  if (*(*(*(a1 + 48) + 8) + 24) == 1 && [v4 count])
  {
    v5 = [v4 fc_subarrayFromIndex:1 inclusive:1];

    v4 = v5;
  }

  if ([v4 count] >= 2)
  {
    v6 = [v4 fc_subarrayFromIndex:0 inclusive:0];

    if ([v6 count] && objc_msgSend(v6, "count"))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = [v6 fc_subarrayUpToIndex:objc_msgSend(v6 inclusive:{"count") + v7, 0}];
        v10 = [v9 componentsJoinedByString:@"/"];
        v11 = [@"/" stringByAppendingString:v10];
        [v13 addObject:v11];

        ++v8;
        --v7;
      }

      while ([v6 count] > v8);
    }

    v4 = v6;
  }

  v12 = [*(a1 + 40) fc_arrayByTransformingWithBlock:&__block_literal_global_95];
  [v13 addObjectsFromArray:v12];

  [v13 addObject:@"/"];
}

- (FCPersonalizationDecomposedURL)initWithURLString:(id)a3
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:a3];
  v5 = [(FCPersonalizationDecomposedURL *)self initWithURL:v4];

  return v5;
}

@end