@interface NSString(FormatFlowedSupport)
- (__CFString)mf_convertFromFlowedText:()FormatFlowedSupport visuallyEmpty:;
@end

@implementation NSString(FormatFlowedSupport)

- (__CFString)mf_convertFromFlowedText:()FormatFlowedSupport visuallyEmpty:
{
  v28 = [a1 length];
  v31 = 0;
  if (a4)
  {
    v7 = [a1 rangeOfCharacterFromSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];
    v9 = v8;
    if ([a1 length])
    {
      if (v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9 == [a1 length];
      }
    }

    else
    {
      v10 = 1;
    }

    *a4 = v10;
  }

  v11 = MFGetMappedAllocator();
  Mutable = CFStringCreateMutable(v11, 0);
  v13 = Mutable;
  if ((a3 & 8) != 0)
  {
    [(__CFString *)Mutable appendString:@"<HTML><BODY>"];
  }

  if (!v28)
  {
    v19 = 0;
    v15 = 0;
    v14 = 0;
    goto LABEL_66;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = v15;
    v29 = 0;
    v30 = 0;
    v17 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    [a1 getLineStart:&v31 end:&v29 contentsEnd:&v30 forRange:{v31, 0}];
    v18 = v30;
    if (v30 >= v29)
    {
      v19 = 0;
    }

    else
    {
      v19 = @"\n";
    }

    v20 = v31;
    if (v31 >= v30)
    {
      v15 = 0;
      goto LABEL_25;
    }

    v15 = 0;
    while (1)
    {
      v21 = [a1 characterAtIndex:{v20, v28}];
      if (v21 != 62)
      {
        break;
      }

      ++v15;
LABEL_21:
      ++v20;
      v18 = v30;
      if (v20 >= v30)
      {
        goto LABEL_25;
      }
    }

    if ((a3 & 1) == 0 && v21 == 32)
    {
      goto LABEL_21;
    }

    v18 = v30;
LABEL_25:
    if (v20 >= v18)
    {
      goto LABEL_37;
    }

    if (a3)
    {
      if ([a1 characterAtIndex:v20] == 32)
      {
        ++v20;
      }

LABEL_37:
      if (!v14)
      {
        goto LABEL_41;
      }

LABEL_38:
      if (v16 != v15 && [v14 length])
      {
        _appendParagraphToOutput(v13, v14, v16, v19, (a3 >> 3) & 1);
        [v14 setString:&stru_2869ED3E0];
      }

      goto LABEL_41;
    }

    if (v20 <= v31)
    {
      goto LABEL_37;
    }

    if (!v15)
    {
      v20 = v31;
      if (!v14)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v22 = [a1 rangeOfString:@">" options:4 range:{v31, v20 - v31}];
    v23 = v22 + 2;
    if (v20 < v22 + 2)
    {
      v23 = v20;
    }

    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = v23;
    }

    if (v14)
    {
      goto LABEL_38;
    }

LABEL_41:
    v24 = [a1 substringWithRange:{v20, v30 - v20, v28}];
    if ((a3 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (v31 >= v30 || [a1 characterAtIndex:v30 - 1] != 32)
    {
      goto LABEL_73;
    }

    if (v30 - v20 == 3 && [a1 characterAtIndex:v20] == 45)
    {
      v25 = [a1 characterAtIndex:v20 + 1] != 45;
      if ((a3 & 2) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v25 = 1;
      if ((a3 & 2) == 0)
      {
        goto LABEL_52;
      }
    }

    if (v25 && [v24 length])
    {
      v24 = [v24 substringToIndex:{objc_msgSend(v24, "length") - 1}];
      goto LABEL_53;
    }

LABEL_52:
    if (!v25)
    {
LABEL_73:
      if ([v14 length])
      {
        v26 = 0;
        if (!v14)
        {
          goto LABEL_57;
        }

        goto LABEL_58;
      }

LABEL_60:
      _appendParagraphToOutput(v13, v24, v15, v19, (a3 >> 3) & 1);
      goto LABEL_61;
    }

LABEL_53:
    v26 = 1;
    if (!v14)
    {
LABEL_57:
      v14 = objc_alloc_init(MEMORY[0x277CCAB68]);
    }

LABEL_58:
    [v14 appendString:v24];
    if ((v26 & 1) == 0)
    {
      _appendParagraphToOutput(v13, v14, v15, v19, (a3 >> 3) & 1);
      [v14 setString:&stru_2869ED3E0];
    }

LABEL_61:
    v31 = v29;
    [v17 drain];
  }

  while (v31 < v28);
LABEL_66:
  if ([v14 length])
  {
    _appendParagraphToOutput(v13, v14, v15, v19, (a3 >> 3) & 1);
  }

  if ((a3 & 8) != 0)
  {
    [(__CFString *)v13 appendString:@"</BODY></HTML>"];
  }

  return v13;
}

@end