@interface NSString(SnippetGeneration)
- (id)ck_trimmedStringWithPreferredLength:()SnippetGeneration anchoredAroundSubstring:options:;
@end

@implementation NSString(SnippetGeneration)

- (id)ck_trimmedStringWithPreferredLength:()SnippetGeneration anchoredAroundSubstring:options:
{
  v8 = a4;
  if (v8)
  {
    v9 = [(__CFString *)self rangeOfString:v8 options:129];
    v11 = v10;
  }

  else
  {
    v11 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (([(__CFString *)self _snippetOptions:a5 hasOption:4]& 1) == 0)
    {
      a3 = [(__CFString *)self length];
    }

    v12 = [(__CFString *)self substringWithRange:0, a3];
    goto LABEL_33;
  }

  if ([(__CFString *)self _snippetOptions:a5 hasOption:2])
  {
    a3 -= [v8 length];
  }

  v13 = CFLocaleCopyCurrent();
  v37.length = [(__CFString *)self length];
  v37.location = 0;
  v14 = CFStringTokenizerCreate(0, self, v37, 0, v13);
  if (v13)
  {
    CFRelease(v13);
  }

  v15 = [(__CFString *)self length];
  if (v14)
  {
    v16 = v15;
    location = 0;
    if (CFStringTokenizerAdvanceToNextToken(v14))
    {
      v18 = v9 + v11;
      v19 = v9 - (a3 >> 1);
      v20 = v18 + (a3 >> 1);
      do
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v14);
        v22 = CurrentTokenRange.location + CurrentTokenRange.length;
        v23 = CurrentTokenRange.location + CurrentTokenRange.length >= v19;
        v24 = CurrentTokenRange.location <= v20;
        if (!location)
        {
          v22 = v16;
        }

        v25 = v23 && v24;
        if (v23 && v24)
        {
          v16 = v22;
        }

        if (v23 && v24 && location == 0)
        {
          location = CurrentTokenRange.location;
        }
      }

      while (CFStringTokenizerAdvanceToNextToken(v14));
    }

    else
    {
      v25 = 1;
    }

    CFRelease(v14);
    v26 = location > 0;
    v27 = location & ~(location >> 63);
    if ((v25 & 1) == 0 && v16 <= [(__CFString *)self length])
    {
      v28 = 1;
      goto LABEL_28;
    }
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v16 = [(__CFString *)self length];
  v28 = 0;
LABEL_28:
  string = [MEMORY[0x1E696AD60] string];
  if (v26)
  {
    v30 = CKFrameworkBundle();
    v31 = [v30 localizedStringForKey:@"ELLIPSES" value:&stru_1F04268F8 table:@"ChatKit"];
    [string appendString:v31];
  }

  v32 = [(__CFString *)self substringWithRange:v27, v16 - v27];
  [string appendString:v32];

  if (v28)
  {
    v33 = CKFrameworkBundle();
    v34 = [v33 localizedStringForKey:@"ELLIPSES" value:&stru_1F04268F8 table:@"ChatKit"];
    [string appendString:v34];
  }

  v12 = [string copy];

LABEL_33:

  return v12;
}

@end