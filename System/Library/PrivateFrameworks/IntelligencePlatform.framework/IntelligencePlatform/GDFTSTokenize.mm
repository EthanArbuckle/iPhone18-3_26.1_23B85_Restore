@interface GDFTSTokenize
+ (id)ftsTokenize:(id)tokenize;
@end

@implementation GDFTSTokenize

+ (id)ftsTokenize:(id)tokenize
{
  tokenizeCopy = tokenize;
  v4 = ITSTokenListCreate();
  v5 = v4;
  if (tokenizeCopy && v4)
  {
    if (qword_1EB4DD460 != -1)
    {
      dispatch_once(&qword_1EB4DD460, &unk_1F20A18F8);
    }

    v6 = qword_1EB4DD468;
    result = [v6 result];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1ABEE4A54;
    v20[3] = &unk_1E7961F50;
    v21 = tokenizeCopy;
    v22 = tokenizeCopy;
    v23 = v5;
    v8 = tokenizeCopy;
    [result runWithLockAcquired:v20];
  }

  else
  {

    if (!v5)
    {
      v11 = 0;
      goto LABEL_15;
    }
  }

  v9 = CFCharacterSetCreateWithCharactersInString(0, @"()");
  Count = ITSTokenListGetCount();
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = ITSTokenListCopyEscapedTokenAtIndex();
      if (v14)
      {
        v15 = v14;
        v16 = _PASRemoveCharacterSet();

        if (([@"##&" isEqualToString:v16] & 1) == 0)
        {
          [v11 addObject:v16];
        }
      }

      else
      {
        v16 = 0;
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  CFRelease(v5);
  CFRelease(v9);
LABEL_15:
  if (v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  v18 = v17;

  return v17;
}

@end