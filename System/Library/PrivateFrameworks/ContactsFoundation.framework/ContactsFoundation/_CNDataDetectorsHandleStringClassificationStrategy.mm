@interface _CNDataDetectorsHandleStringClassificationStrategy
+ (id)assistedDataDetectorsStrategy;
+ (id)dataDetectorsStrategy;
- (unint64_t)classificationOfHandleString:(id)a3;
@end

@implementation _CNDataDetectorsHandleStringClassificationStrategy

+ (id)dataDetectorsStrategy
{
  v2 = objc_alloc_init(_CNDataDetectorsHandleStringClassificationStrategy);

  return v2;
}

+ (id)assistedDataDetectorsStrategy
{
  v2 = objc_alloc_init(_CNAssistedDataDetectorsHandleStringClassificationStrategy);

  return v2;
}

- (unint64_t)classificationOfHandleString:(id)a3
{
  v3 = [CNObservable scannerResultsInString:a3];
  v4 = [v3 value];

  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [v5 type];
    v7 = [v6 isEqual:*MEMORY[0x1E69999C0]];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [v5 type];
      v10 = [v9 isEqual:*MEMORY[0x1E6999A08]];

      if (v10 & 1) != 0 || ([v5 type], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", *MEMORY[0x1E6999A18]), v11, (v12))
      {
        v8 = 2;
      }

      else
      {
        v13 = [v5 type];
        v14 = [v13 isEqual:*MEMORY[0x1E6999A58]];

        if (v14)
        {
          v8 = 2;
        }

        else
        {
          v8 = 0;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end