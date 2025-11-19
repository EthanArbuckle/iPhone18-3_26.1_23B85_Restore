@interface MUISearchResult
- (id)initWithSuggestions:(void *)a3 categories:(void *)a4 requestID:(char)a5 phraseKind:;
@end

@implementation MUISearchResult

- (id)initWithSuggestions:(void *)a3 categories:(void *)a4 requestID:(char)a5 phraseKind:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = MUISearchResult;
    a1 = objc_msgSendSuper2(&v20, sel_init);
    if (a1)
    {
      v12 = [v9 copy];
      v13 = v12;
      v14 = MEMORY[0x277CBEBF8];
      if (v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = MEMORY[0x277CBEBF8];
      }

      objc_storeStrong(a1 + 3, v15);

      v16 = [v10 copy];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }

      objc_storeStrong(a1 + 4, v18);

      objc_storeStrong(a1 + 5, a4);
      *(a1 + 8) = a5;
    }
  }

  return a1;
}

@end