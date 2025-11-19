@interface ICRandomTextGenerator
+ (id)loadWordsForLanguage:(unint64_t)a3;
+ (id)sentencePunctuationForLanguage:(unint64_t)a3 endOfParagraph:(BOOL)a4;
+ (id)wordsForLanguage:(unint64_t)a3;
- (ICRandomTextGenerator)initWithRandomNumberGenerator:(id)a3;
- (id)generateMinSentences:(unint64_t)a3 maxSentences:(unint64_t)a4 minWords:(unint64_t)a5 maxWords:(unint64_t)a6;
- (id)generateMinWords:(unint64_t)a3 maxWords:(unint64_t)a4;
- (id)generateWords:(unint64_t)a3 minLength:(unint64_t)a4;
- (id)paragraph;
@end

@implementation ICRandomTextGenerator

- (ICRandomTextGenerator)initWithRandomNumberGenerator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICRandomTextGenerator;
  v5 = [(ICRandomTextGenerator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICRandomTextGenerator *)v5 setRandomNumberGenerator:v4];
  }

  return v6;
}

- (id)paragraph
{
  v2 = [(ICRandomTextGenerator *)self generateMinSentences:1 maxSentences:20 minWords:3 maxWords:20];
  v3 = [v2 stringByAppendingString:@"\n"];

  return v3;
}

+ (id)loadWordsForLanguage:(unint64_t)a3
{
  if (loadWordsForLanguage__onceToken != -1)
  {
    +[ICRandomTextGenerator loadWordsForLanguage:];
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [loadWordsForLanguage__wordFileNames objectAtIndexedSubscript:a3];
  v6 = [v4 URLForResource:v5 withExtension:@"words" subdirectory:@"Internal"];

  v19 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v6 encoding:4 error:&v19];
  v8 = v19;
  if (v7)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "length")}];
      v10 = [v7 length];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __46__ICRandomTextGenerator_loadWordsForLanguage___block_invoke_36;
      v17 = &unk_278195110;
      v18 = v9;
      v11 = v9;
      [v7 enumerateSubstringsInRange:0 options:v10 usingBlock:{2, &v14}];
      v12 = [v11 copy:v14];
    }

    else
    {
      v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v12 = [v7 componentsSeparatedByCharactersInSet:v11];
    }
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "Internal");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ICRandomTextGenerator *)v6 loadWordsForLanguage:v8, v11];
    }

    v12 = 0;
  }

  return v12;
}

void __46__ICRandomTextGenerator_loadWordsForLanguage___block_invoke()
{
  v0 = loadWordsForLanguage__wordFileNames;
  loadWordsForLanguage__wordFileNames = &unk_282747F10;
}

+ (id)wordsForLanguage:(unint64_t)a3
{
  if (wordsForLanguage__onceToken != -1)
  {
    +[ICRandomTextGenerator wordsForLanguage:];
  }

  v5 = wordsForLanguage__wordsByLanguage;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v7 = [a1 loadWordsForLanguage:a3];
    if (v7)
    {
      v8 = wordsForLanguage__wordsByLanguage;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v8 setObject:v7 forKeyedSubscript:v9];
    }
  }

  return v7;
}

void __42__ICRandomTextGenerator_wordsForLanguage___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = wordsForLanguage__wordsByLanguage;
  wordsForLanguage__wordsByLanguage = v0;
}

+ (id)sentencePunctuationForLanguage:(unint64_t)a3 endOfParagraph:(BOOL)a4
{
  v4 = a4;
  v6 = @". ";
  if (a4)
  {
    v6 = @".";
  }

  v7 = v6;
  if (a3 - 2 < 2)
  {
    v9 = @"。";
  }

  else if (a3 == 4)
  {
    v9 = @" ";
  }

  else
  {
    if (a3 != 5)
    {
      goto LABEL_12;
    }

    v8 = @"۔";
    if (v4)
    {
      v8 = @"۔ ";
    }

    v9 = v8;
  }

  v7 = v9;
LABEL_12:

  return v7;
}

- (id)generateWords:(unint64_t)a3 minLength:(unint64_t)a4
{
  v7 = [objc_opt_class() wordsForLanguage:{-[ICRandomTextGenerator language](self, "language")}];
  v8 = [v7 count] - 1;
  v9 = [(ICRandomTextGenerator *)self randomNumberGenerator];
  v10 = [v9 randomIndexMin:0 max:v8];

  if (v10 >= [v7 count])
  {
    v22 = os_log_create("com.apple.notes", "Internal");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ICRandomTextGenerator generateWords:v22 minLength:?];
    }

    v14 = objc_alloc_init(MEMORY[0x277CCAB68]);
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCAB68]);
    v12 = [v7 objectAtIndexedSubscript:v10];
    v13 = [v12 localizedCapitalizedString];
    v14 = [v11 initWithString:v13];

    v15 = [objc_opt_class() hasSpacesBetweenWordsForLanguage:{-[ICRandomTextGenerator language](self, "language")}];
    v16 = a3 - 1;
    if (a3 != 1)
    {
      v17 = v15;
      v18 = 1;
      do
      {
        if (a4 && [v14 length] >= a4)
        {
          break;
        }

        v19 = [(ICRandomTextGenerator *)self randomNumberGenerator];
        v20 = [v19 randomIndexMin:0 max:v8];

        if (v17)
        {
          [v14 appendString:@" "];
        }

        v21 = [v7 objectAtIndexedSubscript:v20];
        [v14 appendString:v21];

        ++v18;
      }

      while (v16 >= v18);
    }
  }

  return v14;
}

- (id)generateMinWords:(unint64_t)a3 maxWords:(unint64_t)a4
{
  v7 = [(ICRandomTextGenerator *)self randomNumberGenerator];
  v8 = -[ICRandomTextGenerator generateWords:minLength:](self, "generateWords:minLength:", [v7 randomIndexMin:a3 max:a4], 0);

  return v8;
}

- (id)generateMinSentences:(unint64_t)a3 maxSentences:(unint64_t)a4 minWords:(unint64_t)a5 maxWords:(unint64_t)a6
{
  v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v12 = [(ICRandomTextGenerator *)self randomNumberGenerator];
  v13 = [v12 randomIndexMin:a3 max:a4];

  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = [(ICRandomTextGenerator *)self generateMinWords:a5 maxWords:a6];
      [v11 appendString:v15];
      v16 = [objc_opt_class() sentencePunctuationForLanguage:-[ICRandomTextGenerator language](self endOfParagraph:{"language"), i >= v13 - 1}];
      [v11 appendString:v16];
    }
  }

  return v11;
}

+ (void)loadWordsForLanguage:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Can't load words file %@ because %@", &v3, 0x16u);
}

@end