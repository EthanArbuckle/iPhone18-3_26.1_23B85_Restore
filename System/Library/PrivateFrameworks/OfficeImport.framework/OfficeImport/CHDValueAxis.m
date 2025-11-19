@interface CHDValueAxis
- (CHDValueAxis)initWithResources:(id)a3;
- (id)contentFormatWithBuiltInUnit;
@end

@implementation CHDValueAxis

- (CHDValueAxis)initWithResources:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHDValueAxis;
  result = [(CHDAxis *)&v4 initWithResources:a3];
  if (result)
  {
    result->mMajorUnitValue = 0.0;
    result->mMinorUnitValue = 0.0;
    result->mScalingLogBase = 0.0;
    result->super.mAxisPosition = 1;
    result->mPercentageFormattingFlag = 0;
    result->mAutoMajorUnitValue = 1;
    result->mAutoMinorUnitValue = 1;
    result->mShowBuiltInUnit = 0;
    result->mBuiltInUnit = -1;
  }

  return result;
}

- (id)contentFormatWithBuiltInUnit
{
  mBuiltInUnit = self->mBuiltInUnit;
  v3 = mBuiltInUnit > 8;
  v4 = (1 << mBuiltInUnit) & 0x192;
  if (v3 || v4 == 0)
  {
    v15 = 0;
  }

  else
  {
    v7 = [(CHDAxis *)self contentFormat];
    v8 = [v7 formatString];

    if (v8)
    {
      v9 = [v7 formatString];
      v10 = [v9 string];

      if (v10 && [v10 length] && (v11 = objc_msgSend(v10, "length"), v11 - 1 >= 0))
      {
        v12 = 0;
        while (1)
        {
          v13 = v11 - 1;
          v14 = [v10 substringWithRange:{v11 - 1, 1}];
          v12 ^= [v14 isEqualToString:@"'"];
          if ((v12 & 1) == 0 && (([v14 isEqualToString:@"#"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"0") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"?") & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @".")))
          {
            break;
          }

          --v11;
          if (v13 <= 0)
          {
            goto LABEL_16;
          }
        }

        v17 = MEMORY[0x277CCAB68];
        v18 = [v10 substringToIndex:v11];
        v19 = [v17 stringWithString:v18];

        v20 = self->mBuiltInUnit - 1;
        if (v20 < 8 && ((0xC9u >> v20) & 1) != 0)
        {
          [v19 appendString:off_2799CD218[v20]];
          v21 = 1;
        }

        else
        {
          v21 = 0;
        }

        v22 = [v10 substringFromIndex:v11];
        [v19 appendString:v22];

        v23 = [MEMORY[0x277CCACA8] stringWithString:v19];

        if (v21)
        {
          v24 = [EDString edStringWithString:v23];
          v25 = [EDContentFormat contentFormatWithFormatString:v24];

          WeakRetained = objc_loadWeakRetained(&self->super.mResources);
          v27 = [WeakRetained contentFormats];

          v15 = [v27 objectAtIndex:{objc_msgSend(v27, "addOrEquivalentObject:", v25)}];
        }

        else
        {
          v15 = 0;
        }

        v10 = v23;
      }

      else
      {
LABEL_16:
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

@end