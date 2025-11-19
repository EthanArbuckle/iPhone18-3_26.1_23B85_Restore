@interface NSMutableString(TCStringAdditions)
- (BOOL)tc_replaceSubstr:()TCStringAdditions with:range:;
- (uint64_t)tc_replaceSubstr:()TCStringAdditions with:;
- (void)tc_replaceAllSubstr:()TCStringAdditions with:escStr:;
- (void)tc_replaceAllSubstr:()TCStringAdditions with:escStr:range:;
@end

@implementation NSMutableString(TCStringAdditions)

- (uint64_t)tc_replaceSubstr:()TCStringAdditions with:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 tc_replaceSubstr:v6 with:v7 range:{0, objc_msgSend(a1, "length")}];

  return v8;
}

- (BOOL)tc_replaceSubstr:()TCStringAdditions with:range:
{
  v10 = a3;
  v11 = a4;
  v12 = [a1 rangeOfString:v10 options:0 range:{a5, a6}];
  v14 = v13;
  if (v13)
  {
    v15 = v12;
    if (v11 && [v11 length])
    {
      [a1 replaceCharactersInRange:v15 withString:{v14, v11}];
    }

    else
    {
      [a1 deleteCharactersInRange:{v15, v14}];
    }
  }

  return v14 != 0;
}

- (void)tc_replaceAllSubstr:()TCStringAdditions with:escStr:
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  [a1 tc_replaceAllSubstr:v10 with:v8 escStr:v9 range:{0, objc_msgSend(a1, "length")}];
}

- (void)tc_replaceAllSubstr:()TCStringAdditions with:escStr:range:
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [a1 rangeOfString:v18 options:0 range:{a6, a7}];
  for (i = v15; i; i = v17)
  {
    if (v13 && [v13 length] <= v14 && !objc_msgSend(a1, "compare:options:range:", v13, 0, v14 - objc_msgSend(v13, "length"), objc_msgSend(v13, "length")))
    {
      if (!--i)
      {
        break;
      }

      ++v14;
      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else if (!v12)
    {
      goto LABEL_11;
    }

    if ([v12 length])
    {
      [a1 replaceCharactersInRange:v14 withString:{i, v12}];
      v14 += [v12 length];
      goto LABEL_12;
    }

LABEL_11:
    [a1 deleteCharactersInRange:{v14, i}];
LABEL_12:
    v14 = [a1 rangeOfString:v18 options:0 range:{v14, objc_msgSend(a1, "length") - v14}];
  }
}

@end