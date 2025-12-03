@interface _CNDataDetectorsHandleStringClassificationStrategy
+ (id)assistedDataDetectorsStrategy;
+ (id)dataDetectorsStrategy;
- (unint64_t)classificationOfHandleString:(id)string;
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

- (unint64_t)classificationOfHandleString:(id)string
{
  v3 = [CNObservable scannerResultsInString:string];
  value = [v3 value];

  if ([value count] == 1)
  {
    firstObject = [value firstObject];
    type = [firstObject type];
    v7 = [type isEqual:*MEMORY[0x1E69999C0]];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      type2 = [firstObject type];
      v10 = [type2 isEqual:*MEMORY[0x1E6999A08]];

      if (v10 & 1) != 0 || ([firstObject type], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", *MEMORY[0x1E6999A18]), v11, (v12))
      {
        v8 = 2;
      }

      else
      {
        type3 = [firstObject type];
        v14 = [type3 isEqual:*MEMORY[0x1E6999A58]];

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