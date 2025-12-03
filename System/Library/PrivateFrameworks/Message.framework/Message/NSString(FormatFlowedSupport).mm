@interface NSString(FormatFlowedSupport)
- (__CFString)mf_convertFromFlowedText:()FormatFlowedSupport visuallyEmpty:;
@end

@implementation NSString(FormatFlowedSupport)

- (__CFString)mf_convertFromFlowedText:()FormatFlowedSupport visuallyEmpty:
{
  v33 = [self length];
  v37 = 0;
  if (a4)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v8 = [self rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet];
    v10 = v9;

    if ([self length])
    {
      if (v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10 == [self length];
      }
    }

    else
    {
      v11 = 1;
    }

    *a4 = v11;
  }

  v12 = MFGetMappedAllocator();
  Mutable = CFStringCreateMutable(v12, 0);
  if ((a3 & 8) != 0)
  {
    [(__CFString *)Mutable appendString:@"<HTML><BODY>"];
  }

  if (v37 >= v33)
  {
    v18 = 0;
    v21 = 0;
    v13 = 0;
    goto LABEL_68;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  do
  {
    v35 = 0xAAAAAAAAAAAAAAAALL;
    v36 = 0xAAAAAAAAAAAAAAAALL;
    v16 = objc_autoreleasePoolPush();
    [self getLineStart:&v37 end:&v35 contentsEnd:&v36 forRange:{v37, 0}];
    v17 = @"\n";
    if (v36 >= v35)
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = v36;
    v20 = v37;
    if (v37 >= v36)
    {
      v21 = 0;
      goto LABEL_24;
    }

    v21 = 0;
    while (1)
    {
      v22 = [self characterAtIndex:v20];
      if (v22 != 62)
      {
        break;
      }

      ++v21;
LABEL_20:
      ++v20;
      v19 = v36;
      if (v20 >= v36)
      {
        goto LABEL_24;
      }
    }

    if ((a3 & 1) == 0 && v22 == 32)
    {
      goto LABEL_20;
    }

    v19 = v36;
LABEL_24:
    if (v20 >= v19)
    {
      goto LABEL_36;
    }

    if (a3)
    {
      if ([self characterAtIndex:v20] == 32)
      {
        ++v20;
      }

LABEL_36:
      if (!v13)
      {
        goto LABEL_40;
      }

LABEL_37:
      if (v14 != v21 && [v13 length])
      {
        _appendParagraphToOutput(Mutable, v13, v14, v18, (a3 >> 3) & 1);
        [v13 setString:&stru_1F273A5E0];
      }

      goto LABEL_40;
    }

    if (v20 <= v37)
    {
      goto LABEL_36;
    }

    if (!v21)
    {
      v20 = v37;
      if (!v13)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v23 = [self rangeOfString:@">" options:4 range:{v37, v20 - v37}];
    v24 = v23 + 2;
    if (v20 < v23 + 2)
    {
      v24 = v20;
    }

    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = v24;
    }

    if (v13)
    {
      goto LABEL_37;
    }

LABEL_40:
    v25 = [self substringWithRange:{v20, v36 - v20}];
    v26 = v25;
    if ((a3 & 1) == 0)
    {
      v27 = v25;
      _appendParagraphToOutput(Mutable, v25, v21, v18, (a3 >> 3) & 1);
      goto LABEL_63;
    }

    if (v37 >= v36 || [self characterAtIndex:v36 - 1] != 32)
    {
      goto LABEL_77;
    }

    if (v36 - v20 == 3 && [self characterAtIndex:v20] == 45)
    {
      v28 = [self characterAtIndex:v20 + 1] != 45;
      if ((a3 & 2) == 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v28 = 1;
      if ((a3 & 2) == 0)
      {
        goto LABEL_53;
      }
    }

    if (v28 && [v26 length])
    {
      v29 = [v26 substringToIndex:{objc_msgSend(v26, "length") - 1}];

      v30 = 1;
      v26 = v29;
      if (!v13)
      {
        goto LABEL_58;
      }

      goto LABEL_59;
    }

LABEL_53:
    if (v28)
    {
      v30 = 1;
      if (!v13)
      {
LABEL_58:
        v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
      }

LABEL_59:
      [v13 appendString:v26];
      if ((v30 & 1) == 0)
      {
        _appendParagraphToOutput(Mutable, v13, v21, v18, (a3 >> 3) & 1);
        [v13 setString:&stru_1F273A5E0];
      }

      v27 = v26;
    }

    else
    {
LABEL_77:
      if ([v13 length])
      {
        v30 = 0;
        if (!v13)
        {
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      _appendParagraphToOutput(Mutable, v26, v21, v18, (a3 >> 3) & 1);
      v27 = v26;
    }

LABEL_63:
    v37 = v35;
    objc_autoreleasePoolPop(v16);

    v14 = v21;
    v15 = v18;
  }

  while (v37 < v33);
LABEL_68:
  if ([v13 length])
  {
    _appendParagraphToOutput(Mutable, v13, v21, v18, (a3 >> 3) & 1);
  }

  if ((a3 & 8) != 0)
  {
    [(__CFString *)Mutable appendString:@"</BODY></HTML>"];
  }

  v31 = Mutable;

  return v31;
}

@end