@interface MUISearchResult
- (id)initWithSuggestions:(void *)suggestions categories:(void *)categories requestID:(char)d phraseKind:;
@end

@implementation MUISearchResult

- (id)initWithSuggestions:(void *)suggestions categories:(void *)categories requestID:(char)d phraseKind:
{
  v9 = a2;
  suggestionsCopy = suggestions;
  categoriesCopy = categories;
  if (self)
  {
    v20.receiver = self;
    v20.super_class = MUISearchResult;
    self = objc_msgSendSuper2(&v20, sel_init);
    if (self)
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

      objc_storeStrong(self + 3, v15);

      v16 = [suggestionsCopy copy];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }

      objc_storeStrong(self + 4, v18);

      objc_storeStrong(self + 5, categories);
      *(self + 8) = d;
    }
  }

  return self;
}

@end