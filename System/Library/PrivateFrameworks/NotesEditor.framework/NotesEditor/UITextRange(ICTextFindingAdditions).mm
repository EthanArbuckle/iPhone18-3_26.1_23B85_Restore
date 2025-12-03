@interface UITextRange(ICTextFindingAdditions)
- (uint64_t)ic_compare:()ICTextFindingAdditions inTextView:;
@end

@implementation UITextRange(ICTextFindingAdditions)

- (uint64_t)ic_compare:()ICTextFindingAdditions inTextView:
{
  v6 = a3;
  v7 = a4;
  _ic_textFindingResult = [self _ic_textFindingResult];
  if (_ic_textFindingResult && (v9 = _ic_textFindingResult, [v6 _ic_textFindingResult], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    _ic_textFindingResult2 = [self _ic_textFindingResult];
    _ic_textFindingResult3 = [v6 _ic_textFindingResult];
    v13 = [_ic_textFindingResult2 compare:_ic_textFindingResult3];
  }

  else
  {
    _ic_textFindingResult4 = [self _ic_textFindingResult];
    if (_ic_textFindingResult4)
    {
      _ic_textFindingResult5 = [self _ic_textFindingResult];
      range = [_ic_textFindingResult5 range];
      v18 = v17;
    }

    else
    {
      range = [v7 ic_characterRangeFromTextRange:self];
      v18 = v19;
    }

    _ic_textFindingResult6 = [v6 _ic_textFindingResult];
    if (_ic_textFindingResult6)
    {
      _ic_textFindingResult7 = [v6 _ic_textFindingResult];
      range2 = [_ic_textFindingResult7 range];
      v24 = v23;
    }

    else
    {
      range2 = [v7 ic_characterRangeFromTextRange:v6];
      v24 = v25;
    }

    if (range >= range2)
    {
      if (range != range2)
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