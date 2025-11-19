@interface NSMutableString(EmailFoundationDKIMAdditions)
- (void)_trimTrailingCharactersInSet:()EmailFoundationDKIMAdditions ignoringCharactersInSet:;
- (void)ef_appendQuotedSQLEscapedString:()EmailFoundationDKIMAdditions;
- (void)ef_appendSQLEscapedString:()EmailFoundationDKIMAdditions;
- (void)ef_removeCharactersInSet:()EmailFoundationDKIMAdditions beforeOccurrencesOfString:;
- (void)ef_replaceContiguousSequencesOfCharactersInSet:()EmailFoundationDKIMAdditions withString:;
- (void)ef_rfc5322Unfold;
- (void)ef_trimLeadingCharactersInSet:()EmailFoundationDKIMAdditions;
- (void)ef_trimTrailingCharactersInSetIgnoringNewline:()EmailFoundationDKIMAdditions;
@end

@implementation NSMutableString(EmailFoundationDKIMAdditions)

- (void)ef_rfc5322Unfold
{
  v4 = [MEMORY[0x1E696AB08] ef_rfc6376WhitespaceCharacterSet];
  if ([a1 length] >= 3)
  {
    v2 = [a1 length];
    if (v2 != 2)
    {
      v3 = v2 - 1;
      do
      {
        if ([a1 length] < 3)
        {
          break;
        }

        if ([a1 characterAtIndex:v3 - 2] == 13 && objc_msgSend(a1, "characterAtIndex:", v3 - 1) == 10 && objc_msgSend(v4, "characterIsMember:", objc_msgSend(a1, "characterAtIndex:", v3)))
        {
          [a1 deleteCharactersInRange:{v3 - 2, 2}];
        }

        --v3;
      }

      while (v3 != 1);
    }
  }
}

- (void)ef_removeCharactersInSet:()EmailFoundationDKIMAdditions beforeOccurrencesOfString:
{
  v13 = a3;
  v6 = a4;
  v7 = [a1 length];
  if (v7)
  {
    v8 = 0;
    v9 = v7 - 1;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_7;
      }

      if (![v13 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", v9)}])
      {
        break;
      }

      ++v8;
LABEL_13:
      if (--v9 == -1)
      {
        goto LABEL_14;
      }
    }

    [a1 deleteCharactersInRange:{v9 + 1, v8}];
    v8 = 0;
LABEL_7:
    v11 = [v6 length];
    if (v9 + v11 <= [a1 length])
    {
      v12 = [a1 substringWithRange:{v9, objc_msgSend(v6, "length")}];
      if ([v12 isEqualToString:v6])
      {
        v10 = v9;
      }

      else
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)ef_replaceContiguousSequencesOfCharactersInSet:()EmailFoundationDKIMAdditions withString:
{
  v10 = a3;
  v6 = a4;
  v7 = [a1 length];
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = v7 - 1;
      if ([v10 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", v7 - 1)}])
      {
        ++v8;
        if (v7 == 1)
        {
          [a1 replaceCharactersInRange:0 withString:{v8, v6}];
          break;
        }
      }

      else if (v8)
      {
        [a1 replaceCharactersInRange:v7 withString:{v8, v6}];
        v8 = 0;
      }

      --v7;
    }

    while (v9);
  }
}

- (void)ef_trimLeadingCharactersInSet:()EmailFoundationDKIMAdditions
{
  v5 = a3;
    ;
  }

  if (i)
  {
    [a1 deleteCharactersInRange:{0, i}];
  }
}

- (void)ef_trimTrailingCharactersInSetIgnoringNewline:()EmailFoundationDKIMAdditions
{
  v5 = a3;
  v4 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  [a1 _trimTrailingCharactersInSet:v5 ignoringCharactersInSet:v4];
}

- (void)_trimTrailingCharactersInSet:()EmailFoundationDKIMAdditions ignoringCharactersInSet:
{
  v15 = a3;
  v6 = a4;
  if (v6 && (v7 = [a1 length], (v8 = v7) != 0))
  {
    v9 = 0;
    v10 = v7 - 1;
    while ([v6 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", v10)}])
    {
      ++v9;
      if (--v10 == -1)
      {
        v9 = v8;
        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [a1 length];
  v12 = v11 + ~v9;
  if (v12 != -1)
  {
    v13 = 0;
    v14 = v11 - v9;
    while ([v15 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", v12)}])
    {
      ++v13;
      if (--v12 == -1)
      {
        v13 = v14;
        break;
      }
    }

    if (v13)
    {
      [a1 deleteCharactersInRange:{objc_msgSend(a1, "length") - (v13 + v9), v13}];
    }
  }
}

- (void)ef_appendSQLEscapedString:()EmailFoundationDKIMAdditions
{
  v4 = [a3 ef_SQLEscapedString];
  [a1 appendString:?];
}

- (void)ef_appendQuotedSQLEscapedString:()EmailFoundationDKIMAdditions
{
  v4 = [a3 ef_quotedSQLEscapedString];
  [a1 appendString:?];
}

@end