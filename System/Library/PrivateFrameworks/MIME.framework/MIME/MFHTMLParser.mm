@interface MFHTMLParser
+ (id)plainTextFromHTML:(id)a3 limit:(unint64_t)a4 preserveNewlines:(BOOL)a5;
+ (id)plainTextFromHTMLSnippet:(id)a3;
@end

@implementation MFHTMLParser

+ (id)plainTextFromHTML:(id)a3 limit:(unint64_t)a4 preserveNewlines:(BOOL)a5
{
  v5 = a5;
  v46 = *MEMORY[0x1E69E9840];
  v8 = [a3 length];
  theString = a3;
  v40 = 0;
  v41 = v8;
  CharactersPtr = CFStringGetCharactersPtr(a3);
  CStringPtr = 0;
  v38 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a3, 0x600u);
  }

  v42 = 0;
  v43 = 0;
  v39 = CStringPtr;
  if (!v8)
  {
    goto LABEL_52;
  }

  v11 = 0;
  v12 = 0;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[6] = v13;
  v36[7] = v13;
  v36[4] = v13;
  v36[5] = v13;
  v36[2] = v13;
  v36[3] = v13;
  v14 = 64;
  v15 = 65;
  v36[0] = v13;
  v36[1] = v13;
  do
  {
    if (v12 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v12;
    }

    if ((v12 & 0x8000000000000000) != 0 || (v17 = v41, v41 <= v12))
    {
LABEL_37:
      v30 = 0;
      goto LABEL_38;
    }

    if (v38)
    {
      v18 = &v38[v40];
LABEL_12:
      v19 = v18[v12];
      goto LABEL_15;
    }

    if (!v39)
    {
      if (v43 <= v12 || (v25 = v42, v42 > v12))
      {
        v26 = v16 + v11;
        v27 = v14 - v16;
        v28 = v12 - v16;
        v29 = v28 + 64;
        if (v28 + 64 >= v41)
        {
          v29 = v41;
        }

        v42 = v28;
        v43 = v29;
        if (v41 >= v27)
        {
          v17 = v27;
        }

        v47.location = v28 + v40;
        v47.length = v17 + v26;
        CFStringGetCharacters(theString, v47, v36);
        v25 = v42;
      }

      v18 = v36 - v25;
      goto LABEL_12;
    }

    v19 = v39[v40 + v12];
LABEL_15:
    if (v19 != 60 || v12 >= v8 - 5)
    {
      goto LABEL_37;
    }

    v21 = v12 + 5;
    if ((v12 + 5) < 0)
    {
      goto LABEL_37;
    }

    v22 = v41;
    if (v41 <= v21)
    {
      goto LABEL_37;
    }

    if (v38)
    {
      v23 = &v38[v40];
    }

    else
    {
      if (v39)
      {
        v24 = v39[v40 + 5 + v12];
        goto LABEL_34;
      }

      if (v43 <= v21 || (v31 = v42, v42 > v21))
      {
        v32 = v12 + 65;
        if (v12 + 65 >= v41)
        {
          v32 = v41;
        }

        v42 = v12 + 1;
        v43 = v32;
        if (v41 >= v15)
        {
          v22 = v15;
        }

        v49.length = v22 + v11 - 1;
        v49.location = v12 + 1 + v40;
        CFStringGetCharacters(theString, v49, v36);
        v31 = v42;
      }

      v23 = v36 - v31;
    }

    v24 = v23[v12 + 5];
LABEL_34:
    if (v24 != 62 && v24 != 32)
    {
      goto LABEL_37;
    }

    *buffer = 0xAAAAAAAAAAAAAAAALL;
    v45 = -21846;
    v48.location = v12 + 1;
    v48.length = 4;
    CFStringGetCharacters(a3, v48, buffer);
    v30 = ustrncasecmp(buffer, "body", 4) == 0;
LABEL_38:
    ++v12;
    if (v30)
    {
      break;
    }

    --v11;
    ++v14;
    ++v15;
  }

  while (v12 < v8);
  if (!v30 || v12 == 0x8000000000000000)
  {
LABEL_52:
    v33 = 0;
    goto LABEL_53;
  }

  v33 = v12 - 1;
LABEL_53:
  result = copyMutablePlainTextFromPoint(a3, v33, a4, v5);
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)plainTextFromHTMLSnippet:(id)a3
{
  v3 = copyMutablePlainTextFromPoint(a3, 0, 0xFFFFFFFFuLL, 0);

  return v3;
}

@end