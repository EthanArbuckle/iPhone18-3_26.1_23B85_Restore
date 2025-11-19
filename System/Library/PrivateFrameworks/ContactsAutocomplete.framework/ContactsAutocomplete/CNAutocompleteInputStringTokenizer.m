@interface CNAutocompleteInputStringTokenizer
+ (id)lazyNameStringTokenizerWithLocale:(id)a3;
+ (id)tokensFromString:(id)a3;
- (CNAutocompleteInputStringTokenizer)init;
- (CNAutocompleteInputStringTokenizer)initWithLocale:(id)a3;
- (id)expandCJKNames;
- (id)tokensFromString:(id)a3;
@end

@implementation CNAutocompleteInputStringTokenizer

+ (id)tokensFromString:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v5 tokensFromString:v4];

  return v6;
}

- (CNAutocompleteInputStringTokenizer)init
{
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [(CNAutocompleteInputStringTokenizer *)self initWithLocale:v3];

  return v4;
}

- (CNAutocompleteInputStringTokenizer)initWithLocale:(id)a3
{
  v7.receiver = self;
  v7.super_class = CNAutocompleteInputStringTokenizer;
  v3 = a3;
  v4 = [(CNAutocompleteInputStringTokenizer *)&v7 init];
  v5 = [objc_opt_class() lazyNameStringTokenizerWithLocale:{v3, v7.receiver, v7.super_class}];

  [(CNAutocompleteInputStringTokenizer *)v4 setNameStringTokenizer:v5];
  return v4;
}

+ (id)lazyNameStringTokenizerWithLocale:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CFBE28];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__CNAutocompleteInputStringTokenizer_lazyNameStringTokenizerWithLocale___block_invoke;
  v8[3] = &unk_2781C4500;
  v9 = v3;
  v5 = v3;
  v6 = [v4 lazyFutureWithBlock:v8];
  [v6 addFailureBlock:&__block_literal_global_11];

  return v6;
}

id __72__CNAutocompleteInputStringTokenizer_lazyNameStringTokenizerWithLocale___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277CFBE58]) initWithLocale:*(a1 + 32)];

  return v1;
}

- (id)tokensFromString:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@" "];
  v5 = [v4 _cn_filter:&__block_literal_global_10];

  v6 = [(CNAutocompleteInputStringTokenizer *)self expandCJKNames];
  v7 = [v5 _cn_flatMap:v6];

  return v7;
}

- (id)expandCJKNames
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__CNAutocompleteInputStringTokenizer_expandCJKNames__block_invoke;
  aBlock[3] = &unk_2781C4308;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

id __52__CNAutocompleteInputStringTokenizer_expandCJKNames__block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (CNStringContainsChineseJapaneseKoreanCharacters())
  {
    v4 = [*(a1 + 32) nameStringTokenizer];
    v5 = [v4 result:0];

    v6 = [v5 tokenizeNameString:v3 inferredNameOrder:0];
  }

  else
  {
    v9[0] = v3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end