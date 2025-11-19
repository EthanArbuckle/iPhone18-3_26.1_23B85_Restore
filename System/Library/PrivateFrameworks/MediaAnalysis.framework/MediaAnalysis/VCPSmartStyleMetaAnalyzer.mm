@interface VCPSmartStyleMetaAnalyzer
- (VCPSmartStyleMetaAnalyzer)initWithRequestAnalyses:(unint64_t)a3 formatDescription:(opaqueCMFormatDescription *)a4;
- (id)privateResults;
- (int)processMetadataGroup:(id)a3 flags:(unint64_t *)a4;
@end

@implementation VCPSmartStyleMetaAnalyzer

- (VCPSmartStyleMetaAnalyzer)initWithRequestAnalyses:(unint64_t)a3 formatDescription:(opaqueCMFormatDescription *)a4
{
  v10.receiver = self;
  v10.super_class = VCPSmartStyleMetaAnalyzer;
  v4 = [(VCPSmartStyleMetaAnalyzer *)&v10 init:a3];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    results = v4->_results;
    v4->_results = v5;

    if (v4->_results)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)processMetadataGroup:(id)a3 flags:(unint64_t *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = v4;
  if (v4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [v4 items];
    v5 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v5)
    {
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          v9 = [v8 dataType];
          v10 = [v9 isEqualToString:@"com.apple.metadata.datatype.raw-data"];

          if (v10)
          {
            results = self->_results;
            v29 = @"attributes";
            v27[0] = @"MetaSSInfoResults";
            v12 = [v8 value];
            v27[1] = @"MetaPresentationTimeResults";
            v28[0] = v12;
            if (v8)
            {
              [v8 time];
            }

            else
            {
              memset(&v21, 0, sizeof(v21));
            }

            time = v21;
            v13 = CMTimeCopyAsDictionary(&time, 0);
            v28[1] = v13;
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
            v30 = v14;
            v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
            [(NSMutableArray *)results addObject:v15];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v5);
    }

    v16 = 0;
  }

  else
  {
    v16 = -50;
  }

  return v16;
}

- (id)privateResults
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_results count];
  if (v3)
  {
    results = self->_results;
    v6 = @"MetaSSResults";
    v7[0] = results;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  return v3;
}

@end