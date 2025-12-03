@interface INFGrammarCollection
+ (id)grammarCollection;
+ (id)grammarCollectionNamed:(id)named bundle:(id)bundle language:(id)language;
- (INFGrammarCollection)init;
- (INFGrammarCollection)initWithDictionary:(id)dictionary;
- (INFGrammarCollection)initWithGrammarCollectionNamed:(id)named bundle:(id)bundle language:(id)language;
- (NSArray)sentences;
- (NSArray)tokens;
- (id)createAdjectiveWithIdentifier:(id)identifier language:(id)language;
- (id)createNounWithGender:(unint64_t)gender identifier:(id)identifier language:(id)language;
- (id)createNounWithIdentifier:(id)identifier language:(id)language;
- (id)createSentenceWithIdentifier:(id)identifier;
- (id)dictionaryRepresentation;
- (void)addSentence:(id)sentence;
- (void)addToken:(id)token;
- (void)writeToFileAtPath:(id)path;
@end

@implementation INFGrammarCollection

- (void)writeToFileAtPath:(id)path
{
  v4 = MEMORY[0x277CCAC58];
  pathCopy = path;
  dictionaryRepresentation = [(INFGrammarCollection *)self dictionaryRepresentation];
  v7 = [v4 dataWithPropertyList:dictionaryRepresentation format:100 options:0 error:0];

  [v7 writeToFile:pathCopy atomically:1];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  tokensDictionary = self->_tokensDictionary;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__INFGrammarCollection_dictionaryRepresentation__block_invoke;
  v16[3] = &unk_2797E9888;
  v17 = dictionary2;
  v6 = dictionary2;
  [(NSMutableDictionary *)tokensDictionary enumerateKeysAndObjectsUsingBlock:v16];
  [dictionary setObject:v6 forKeyedSubscript:@"LOCSentenceTokens"];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  sentencesDictionary = self->_sentencesDictionary;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __48__INFGrammarCollection_dictionaryRepresentation__block_invoke_2;
  v14 = &unk_2797E9860;
  v15 = dictionary3;
  v9 = dictionary3;
  [(NSMutableDictionary *)sentencesDictionary enumerateKeysAndObjectsUsingBlock:&v11];
  [dictionary setObject:v9 forKeyedSubscript:{@"LOCSentences", v11, v12, v13, v14}];

  return dictionary;
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
  array = [MEMORY[0x277CBEB18] array];
  tokensDictionary = self->_tokensDictionary;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__INFGrammarCollection_tokens__block_invoke;
  v7[3] = &unk_2797E9888;
  v5 = array;
  v8 = v5;
  [(NSMutableDictionary *)tokensDictionary enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)addToken:(id)token
{
  tokensDictionary = self->_tokensDictionary;
  tokenCopy = token;
  identifier = [tokenCopy identifier];
  [(NSMutableDictionary *)tokensDictionary setObject:tokenCopy forKeyedSubscript:identifier];
}

- (id)createAdjectiveWithIdentifier:(id)identifier language:(id)language
{
  v5 = [INFPartOfSpeech adjectiveWithIdentifier:identifier language:language];
  [(INFGrammarCollection *)self addToken:v5];

  return v5;
}

- (id)createNounWithGender:(unint64_t)gender identifier:(id)identifier language:(id)language
{
  v6 = [INFPartOfSpeech nounWithGender:gender identifier:identifier language:language];
  [(INFGrammarCollection *)self addToken:v6];

  return v6;
}

- (id)createNounWithIdentifier:(id)identifier language:(id)language
{
  v5 = [INFPartOfSpeech nounWithIdentifier:identifier language:language];
  [(INFGrammarCollection *)self addToken:v5];

  return v5;
}

- (NSArray)sentences
{
  array = [MEMORY[0x277CBEB18] array];
  sentencesDictionary = self->_sentencesDictionary;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__INFGrammarCollection_sentences__block_invoke;
  v7[3] = &unk_2797E9860;
  v5 = array;
  v8 = v5;
  [(NSMutableDictionary *)sentencesDictionary enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)addSentence:(id)sentence
{
  sentenceCopy = sentence;
  [sentenceCopy setCollection:self];
  sentencesDictionary = self->_sentencesDictionary;
  identifier = [sentenceCopy identifier];
  [(NSMutableDictionary *)sentencesDictionary setObject:sentenceCopy forKeyedSubscript:identifier];
}

- (id)createSentenceWithIdentifier:(id)identifier
{
  v4 = [INFSentence sentenceWithIdentifier:identifier];
  [(INFGrammarCollection *)self addSentence:v4];

  return v4;
}

- (INFGrammarCollection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(INFGrammarCollection *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"LOCSentenceTokens"];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__INFGrammarCollection_initWithDictionary___block_invoke;
    v12[3] = &unk_2797E9838;
    v7 = v5;
    v13 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v12];
    v8 = [dictionaryCopy objectForKeyedSubscript:@"LOCSentences"];
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

- (INFGrammarCollection)initWithGrammarCollectionNamed:(id)named bundle:(id)bundle language:(id)language
{
  v24[1] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  bundleCopy = bundle;
  languageCopy = language;
  if (bundleCopy)
  {
    mainBundle = bundleCopy;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  }

  v12 = mainBundle;
  v13 = MEMORY[0x277CCA8D8];
  localizations = [mainBundle localizations];
  if (languageCopy)
  {
    v24[0] = languageCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v16 = [v13 preferredLocalizationsFromArray:localizations forPreferences:v15];
  }

  else
  {
    v16 = [v13 preferredLocalizationsFromArray:localizations forPreferences:0];
  }

  firstObject = [v16 firstObject];
  v18 = [v12 pathForResource:namedCopy ofType:@"xcgrammar" inDirectory:0 forLocalization:firstObject];

  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v18];
    v20 = [MEMORY[0x277CCAC58] propertyListWithData:v19 options:0 format:0 error:0];
    self = [(INFGrammarCollection *)self initWithDictionary:v20];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (INFGrammarCollection)init
{
  v8.receiver = self;
  v8.super_class = INFGrammarCollection;
  v2 = [(INFGrammarCollection *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    tokensDictionary = v2->_tokensDictionary;
    v2->_tokensDictionary = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    sentencesDictionary = v2->_sentencesDictionary;
    v2->_sentencesDictionary = dictionary2;
  }

  return v2;
}

+ (id)grammarCollectionNamed:(id)named bundle:(id)bundle language:(id)language
{
  languageCopy = language;
  bundleCopy = bundle;
  namedCopy = named;
  v11 = [[self alloc] initWithGrammarCollectionNamed:namedCopy bundle:bundleCopy language:languageCopy];

  return v11;
}

+ (id)grammarCollection
{
  v2 = objc_alloc_init(self);

  return v2;
}

@end