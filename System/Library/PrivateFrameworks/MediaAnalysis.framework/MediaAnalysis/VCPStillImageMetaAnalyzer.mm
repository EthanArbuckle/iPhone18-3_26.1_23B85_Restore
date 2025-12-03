@interface VCPStillImageMetaAnalyzer
- (VCPStillImageMetaAnalyzer)initWithRequestAnalyses:(unint64_t)analyses formatDescription:(opaqueCMFormatDescription *)description;
- (id)privateResults;
- (int)processMetadataGroup:(id)group flags:(unint64_t *)flags;
@end

@implementation VCPStillImageMetaAnalyzer

- (VCPStillImageMetaAnalyzer)initWithRequestAnalyses:(unint64_t)analyses formatDescription:(opaqueCMFormatDescription *)description
{
  v10.receiver = self;
  v10.super_class = VCPStillImageMetaAnalyzer;
  v4 = [(VCPStillImageMetaAnalyzer *)&v10 init:analyses];
  if (v4)
  {
    array = [MEMORY[0x1E695DF70] array];
    results = v4->_results;
    v4->_results = array;

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

- (int)processMetadataGroup:(id)group flags:(unint64_t *)flags
{
  v33 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v19 = groupCopy;
  if (groupCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [groupCopy items];
    v5 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v5)
    {
      v6 = *v24;
      v7 = *MEMORY[0x1E6960238];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          dataType = [v9 dataType];
          v11 = [dataType isEqualToString:v7];

          if (v11)
          {
            results = self->_results;
            v30 = @"attributes";
            v28[0] = @"MetaStillImagePerspectiveTransformResults";
            value = [v9 value];
            v28[1] = @"MetaPresentationTimeResults";
            v29[0] = value;
            if (v9)
            {
              [v9 time];
            }

            else
            {
              memset(&v22, 0, sizeof(v22));
            }

            time = v22;
            v14 = CMTimeCopyAsDictionary(&time, 0);
            v29[1] = v14;
            v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
            v31 = v15;
            v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
            [(NSMutableArray *)results addObject:v16];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v5);
    }

    v17 = 0;
  }

  else
  {
    v17 = -50;
  }

  return v17;
}

- (id)privateResults
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_results count];
  if (v3)
  {
    results = self->_results;
    v6 = @"MetaStillImageHomographyResults";
    v7[0] = results;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  return v3;
}

@end