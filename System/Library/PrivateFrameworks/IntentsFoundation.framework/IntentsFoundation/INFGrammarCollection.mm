@interface INFGrammarCollection
+ (id)grammarCollection;
+ (id)grammarCollectionNamed:(id)a3 bundle:(id)a4 language:(id)a5;
- (INFGrammarCollection)init;
- (INFGrammarCollection)initWithDictionary:(id)a3;
- (INFGrammarCollection)initWithGrammarCollectionNamed:(id)a3 bundle:(id)a4 language:(id)a5;
- (NSArray)sentences;
- (NSArray)tokens;
- (id)createAdjectiveWithIdentifier:(id)a3 language:(id)a4;
- (id)createNounWithGender:(unint64_t)a3 identifier:(id)a4 language:(id)a5;
- (id)createNounWithIdentifier:(id)a3 language:(id)a4;
- (id)createSentenceWithIdentifier:(id)a3;
- (id)dictionaryRepresentation;
- (void)addSentence:(id)a3;
- (void)addToken:(id)a3;
- (void)writeToFileAtPath:(id)a3;
@end

@implementation INFGrammarCollection

- (void)writeToFileAtPath:(id)a3
{
  v4 = MEMORY[0x277CCAC58];
  v5 = a3;
  v6 = [(INFGrammarCollection *)self dictionaryRepresentation];
  v7 = [v4 dataWithPropertyList:v6 format:100 options:0 error:0];

  [v7 writeToFile:v5 atomically:1];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  tokensDictionary = self->_tokensDictionary;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__INFGrammarCollection_dictionaryRepresentation__block_invoke;
  v16[3] = &unk_2797E9888;
  v17 = v4;
  v6 = v4;
  [(NSMutableDictionary *)tokensDictionary enumerateKeysAndObjectsUsingBlock:v16];
  [v3 setObject:v6 forKeyedSubscript:@"LOCSentenceTokens"];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  sentencesDictionary = self->_sentencesDictionary;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __48__INFGrammarCollection_dictionaryRepresentation__block_invoke_2;
  v14 = &unk_2797E9860;
  v15 = v7;
  v9 = v7;
  [(NSMutableDictionary *)sentencesDictionary enumerateKeysAndObjectsUsingBlock:&v11];
  [v3 setObject:v9 forKeyedSubscript:{@"LOCSentences", v11, v12, v13, v14}];

  return v3;
}

void __48__INFGrammarCollection_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __48__INFGrammarCollection_dictionaryRepresentation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (NSArray)tokens
{
  v3 = [MEMORY[0x277CBEB18] array];
  tokensDictionary = self->_tokensDictionary;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__INFGrammarCollection_tokens__block_invoke;
  v7[3] = &unk_2797E9888;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)tokensDictionary enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)addToken:(id)a3
{
  tokensDictionary = self->_tokensDictionary;
  v4 = a3;
  v5 = [v4 identifier];
  [(NSMutableDictionary *)tokensDictionary setObject:v4 forKeyedSubscript:v5];
}

- (id)createAdjectiveWithIdentifier:(id)a3 language:(id)a4
{
  v5 = [INFPartOfSpeech adjectiveWithIdentifier:a3 language:a4];
  [(INFGrammarCollection *)self addToken:v5];

  return v5;
}

- (id)createNounWithGender:(unint64_t)a3 identifier:(id)a4 language:(id)a5
{
  v6 = [INFPartOfSpeech nounWithGender:a3 identifier:a4 language:a5];
  [(INFGrammarCollection *)self addToken:v6];

  return v6;
}

- (id)createNounWithIdentifier:(id)a3 language:(id)a4
{
  v5 = [INFPartOfSpeech nounWithIdentifier:a3 language:a4];
  [(INFGrammarCollection *)self addToken:v5];

  return v5;
}

- (NSArray)sentences
{
  v3 = [MEMORY[0x277CBEB18] array];
  sentencesDictionary = self->_sentencesDictionary;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__INFGrammarCollection_sentences__block_invoke;
  v7[3] = &unk_2797E9860;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)sentencesDictionary enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)addSentence:(id)a3
{
  v4 = a3;
  [v4 setCollection:self];
  sentencesDictionary = self->_sentencesDictionary;
  v6 = [v4 identifier];
  [(NSMutableDictionary *)sentencesDictionary setObject:v4 forKeyedSubscript:v6];
}

- (id)createSentenceWithIdentifier:(id)a3
{
  v4 = [INFSentence sentenceWithIdentifier:a3];
  [(INFGrammarCollection *)self addSentence:v4];

  return v4;
}

- (INFGrammarCollection)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(INFGrammarCollection *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"LOCSentenceTokens"];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__INFGrammarCollection_initWithDictionary___block_invoke;
    v12[3] = &unk_2797E9838;
    v7 = v5;
    v13 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v12];
    v8 = [v4 objectForKeyedSubscript:@"LOCSentences"];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__INFGrammarCollection_initWithDictionary___block_invoke_2;
    v10[3] = &unk_2797E9838;
    v11 = v7;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];
  }

  return v5;
}

void __43__INFGrammarCollection_initWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[INFPartOfSpeech alloc] initWithDictionary:v5 identifier:v6];

  [*(a1 + 32) addToken:v7];
}

void __43__INFGrammarCollection_initWithDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[INFSentence alloc] initWithDictionary:v5 identifier:v6];

  [*(a1 + 32) addSentence:v7];
}

- (INFGrammarCollection)initWithGrammarCollectionNamed:(id)a3 bundle:(id)a4 language:(id)a5
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
  }

  v12 = v11;
  v13 = MEMORY[0x277CCA8D8];
  v14 = [v11 localizations];
  if (v10)
  {
    v24[0] = v10;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v16 = [v13 preferredLocalizationsFromArray:v14 forPreferences:v15];
  }

  else
  {
    v16 = [v13 preferredLocalizationsFromArray:v14 forPreferences:0];
  }

  v17 = [v16 firstObject];
  v18 = [v12 pathForResource:v8 ofType:@"xcgrammar" inDirectory:0 forLocalization:v17];

  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v18];
    v20 = [MEMORY[0x277CCAC58] propertyListWithData:v19 options:0 format:0 error:0];
    self = [(INFGrammarCollection *)self initWithDictionary:v20];

    v21 = self;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (INFGrammarCollection)init
{
  v8.receiver = self;
  v8.super_class = INFGrammarCollection;
  v2 = [(INFGrammarCollection *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    tokensDictionary = v2->_tokensDictionary;
    v2->_tokensDictionary = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    sentencesDictionary = v2->_sentencesDictionary;
    v2->_sentencesDictionary = v5;
  }

  return v2;
}

+ (id)grammarCollectionNamed:(id)a3 bundle:(id)a4 language:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithGrammarCollectionNamed:v10 bundle:v9 language:v8];

  return v11;
}

+ (id)grammarCollection
{
  v2 = objc_alloc_init(a1);

  return v2;
}

@end