@interface _CNAPeopleSuggesterFacade
- (NSString)description;
- (_CNAPeopleSuggesterFacade)init;
- (_CNAPeopleSuggesterFacade)initWithPeopleSuggester:(id)a3;
- (id)autocompleteSearchResultsWithPredictionContext:(id)a3;
@end

@implementation _CNAPeopleSuggesterFacade

- (_CNAPeopleSuggesterFacade)init
{
  v3 = objc_alloc_init(get_PSSuggesterClass());
  v4 = [(_CNAPeopleSuggesterFacade *)self initWithPeopleSuggester:v3];

  return v4;
}

- (_CNAPeopleSuggesterFacade)initWithPeopleSuggester:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _CNAPeopleSuggesterFacade;
  v6 = [(_CNAPeopleSuggesterFacade *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggester, a3);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"suggester" object:self->_suggester];
  v5 = [v3 build];

  return v5;
}

- (id)autocompleteSearchResultsWithPredictionContext:(id)a3
{
  v4 = a3;
  v5 = self->_suggester;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v6 = [MEMORY[0x277CFBE10] currentEnvironment];
  v7 = [v6 schedulerProvider];
  v8 = [v7 immediateScheduler];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76___CNAPeopleSuggesterFacade_autocompleteSearchResultsWithPredictionContext___block_invoke;
  v14[3] = &unk_2781C3E90;
  v9 = v5;
  v15 = v9;
  v17 = &v18;
  v10 = v4;
  v16 = v10;
  [v8 performBlock:v14 qualityOfService:4];

  v11 = v19[5];
  if (!v11)
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = v11;

  _Block_object_dispose(&v18, 8);

  return v12;
}

@end