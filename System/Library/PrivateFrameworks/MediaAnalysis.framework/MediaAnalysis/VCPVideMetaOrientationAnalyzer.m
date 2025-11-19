@interface VCPVideMetaOrientationAnalyzer
- (VCPVideMetaOrientationAnalyzer)init;
- (id)privateResults;
- (int)processMetadataGroup:(id)a3 flags:(unint64_t *)a4;
@end

@implementation VCPVideMetaOrientationAnalyzer

- (VCPVideMetaOrientationAnalyzer)init
{
  v8.receiver = self;
  v8.super_class = VCPVideMetaOrientationAnalyzer;
  v2 = [(VCPVideMetaOrientationAnalyzer *)&v8 init];
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
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = v4;
  if (!v4)
  {
    v17 = -50;
    goto LABEL_22;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v4 items];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (!v5)
  {
    goto LABEL_20;
  }

  v21 = *v25;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v25 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v24 + 1) + 8 * i);
      v8 = [v7 numberValue];
      v9 = [v7 numberValue];
      if ([v9 integerValue] <= 0)
      {

LABEL_11:
        v8 = &unk_1F49BD810;
        goto LABEL_12;
      }

      v10 = [v7 numberValue];
      v11 = [v10 integerValue] > 8;

      if (v11)
      {
        goto LABEL_11;
      }

LABEL_12:
      results = self->_results;
      v31[0] = @"start";
      if (v7)
      {
        [v7 time];
      }

      else
      {
        memset(&v23, 0, sizeof(v23));
      }

      time = v23;
      v13 = CMTimeCopyAsDictionary(&time, 0);
      v32[0] = v13;
      v31[1] = @"duration";
      if (v7)
      {
        [v7 duration];
      }

      else
      {
        memset(&v23, 0, sizeof(v23));
      }

      time = v23;
      v14 = CMTimeCopyAsDictionary(&time, 0);
      v32[1] = v14;
      v31[2] = @"attributes";
      v29 = @"orientation";
      v30 = v8;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v32[2] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
      [(NSMutableArray *)results addObject:v16];
    }

    v5 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
  }

  while (v5);
LABEL_20:

  v17 = 0;
LABEL_22:

  return v17;
}

- (id)privateResults
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_results count];
  if (v3)
  {
    results = self->_results;
    v6 = @"OrientationResults";
    v7[0] = results;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  return v3;
}

@end