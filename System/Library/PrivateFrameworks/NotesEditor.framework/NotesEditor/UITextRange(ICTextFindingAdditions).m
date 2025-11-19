@interface UITextRange(ICTextFindingAdditions)
- (uint64_t)ic_compare:()ICTextFindingAdditions inTextView:;
@end

@implementation UITextRange(ICTextFindingAdditions)

- (uint64_t)ic_compare:()ICTextFindingAdditions inTextView:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _ic_textFindingResult];
  if (v8 && (v9 = v8, [v6 _ic_textFindingResult], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = [a1 _ic_textFindingResult];
    v12 = [v6 _ic_textFindingResult];
    v13 = [v11 compare:v12];
  }

  else
  {
    v14 = [a1 _ic_textFindingResult];
    if (v14)
    {
      v15 = [a1 _ic_textFindingResult];
      v16 = [v15 range];
      v18 = v17;
    }

    else
    {
      v16 = [v7 ic_characterRangeFromTextRange:a1];
      v18 = v19;
    }

    v20 = [v6 _ic_textFindingResult];
    if (v20)
    {
      v21 = [v6 _ic_textFindingResult];
      v22 = [v21 range];
      v24 = v23;
    }

    else
    {
      v22 = [v7 ic_characterRangeFromTextRange:v6];
      v24 = v25;
    }

    if (v16 >= v22)
    {
      if (v16 != v22)
      {
        v13 = 1;
        goto LABEL_16;
      }

      if (v18 >= v24)
      {
        v13 = v18 != v24;
        goto LABEL_16;
      }
    }

    v13 = -1;
  }

LABEL_16:

  return v13;
}

@end