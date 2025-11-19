@interface VCPVideoMetaSegmentAnalyzer
- (VCPVideoMetaSegmentAnalyzer)init;
- (id)privateResults;
- (int)processMetadataGroup:(id)a3 flags:(unint64_t *)a4;
@end

@implementation VCPVideoMetaSegmentAnalyzer

- (VCPVideoMetaSegmentAnalyzer)init
{
  v8.receiver = self;
  v8.super_class = VCPVideoMetaSegmentAnalyzer;
  v2 = [(VCPVideoMetaSegmentAnalyzer *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    results = v2->_results;
    v2->_results = v3;

    if (v2->_results)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)processMetadataGroup:(id)a3 flags:(unint64_t *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17 = v5;
  if (v5)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [v5 items];
    obj = v6;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (v7)
    {
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          results = self->_results;
          v25[0] = @"start";
          if (v10)
          {
            [v10 time];
          }

          else
          {
            memset(&v19, 0, sizeof(v19));
          }

          time = v19;
          v12 = CMTimeCopyAsDictionary(&time, 0);
          v25[1] = @"duration";
          v26[0] = v12;
          if (v10)
          {
            [v10 duration];
          }

          else
          {
            memset(&v19, 0, sizeof(v19));
          }

          time = v19;
          v13 = CMTimeCopyAsDictionary(&time, 0);
          v26[1] = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
          [(NSMutableArray *)results addObject:v14];
        }

        v6 = obj;
        v7 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
      }

      while (v7);
    }

    v15 = 0;
  }

  else
  {
    v15 = -50;
  }

  return v15;
}

- (id)privateResults
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_results count];
  if (v3)
  {
    results = self->_results;
    v6 = @"MetaSegmentResults";
    v7[0] = results;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  return v3;
}

@end