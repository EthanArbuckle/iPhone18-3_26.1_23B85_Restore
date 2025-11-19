@interface _CNAPeopleSuggesterFacadeTestDouble
+ (id)makeContactWithDisplayName:(id)a3;
+ (id)makeContactWithDisplayName:(id)a3 handle:(id)a4;
+ (id)makeRecipientWithDisplayName:(id)a3 handle:(id)a4 hasContact:(BOOL)a5;
- (NSString)description;
- (_CNAPeopleSuggesterFacadeTestDouble)initWithDelegate:(id)a3;
- (_CNAPeopleSuggesterFacadeTestDoubleDelegate)delegate;
- (id)addGroupWithDisplayName:(id)a3 conversationIdentifier:(id)a4 recipients:(id)a5;
- (id)addPerson:(id)a3;
- (id)autocompleteSearchResultsWithPredictionContext:(id)a3;
@end

@implementation _CNAPeopleSuggesterFacadeTestDouble

- (_CNAPeopleSuggesterFacadeTestDouble)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _CNAPeopleSuggesterFacadeTestDouble;
  v5 = [(_CNAPeopleSuggesterFacadeTestDouble *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = objc_opt_new();
    suggestions = v6->_suggestions;
    v6->_suggestions = v7;

    v9 = v6;
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v3 appendName:@"delegate" object:WeakRetained];

  v6 = [v3 appendName:@"suggestions" object:self->_suggestions];
  v7 = [v3 build];

  return v7;
}

- (id)addPerson:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = get_PSSuggestionClass;
  v5 = a3;
  v6 = objc_alloc_init(v4());
  [v6 setSuggestionType:1];
  v10[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  [v6 setRecipients:v7];
  [(_CNAPeopleSuggesterFacadeTestDouble *)self addSuggestion:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)addGroupWithDisplayName:(id)a3 conversationIdentifier:(id)a4 recipients:(id)a5
{
  v8 = get_PSSuggestionClass;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [objc_alloc(v8()) initWithBundleID:0 conversationIdentifier:v10 groupName:v11 recipients:v9];

  [v12 setSuggestionType:2];
  [(_CNAPeopleSuggesterFacadeTestDouble *)self addSuggestion:v12];

  return v12;
}

+ (id)makeRecipientWithDisplayName:(id)a3 handle:(id)a4 hasContact:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    v10 = [a1 makeContactWithDisplayName:v8 handle:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc(get_PSRecipientClass());
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 UUIDString];
  v14 = [v11 initWithIdentifier:v13 handle:v9 displayName:v8 contact:v10];

  return v14;
}

+ (id)makeContactWithDisplayName:(id)a3 handle:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1 makeContactWithDisplayName:a3];
  if (v6 && [v6 length])
  {
    v8 = MEMORY[0x277CFBE30];
    v17[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v10 = [v8 classificationOfHandleStrings:v9];

    v11 = [v10 emailAddresses];
    v12 = [v11 _cn_map:&__block_literal_global_22];
    [v7 setEmailAddresses:v12];

    v13 = [v10 phoneNumbers];
    v14 = [v13 _cn_map:&__block_literal_global_23_0];
    [v7 setPhoneNumbers:v14];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)makeContactWithDisplayName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBDB38]);
  if (v3 && [v3 length])
  {
    v5 = [MEMORY[0x277CFBE50] componentsFromString:v3];
    v6 = [v5 givenName];
    [v4 setGivenName:v6];

    v7 = [v5 familyName];
    [v4 setFamilyName:v7];

    v8 = [v5 middleName];
    [v4 setMiddleName:v8];

    v9 = [v5 namePrefix];
    [v4 setNamePrefix:v9];

    v10 = [v5 nameSuffix];
    [v4 setNameSuffix:v10];

    v11 = [v5 nickname];
    [v4 setNickname:v11];
  }

  return v4;
}

- (id)autocompleteSearchResultsWithPredictionContext:(id)a3
{
  v4 = a3;
  v5 = [(_CNAPeopleSuggesterFacadeTestDouble *)self delegate];
  [v5 didQueryPeopleSuggesterWithContext:v4];

  v6 = [(NSMutableArray *)self->_suggestions copy];

  return v6;
}

- (_CNAPeopleSuggesterFacadeTestDoubleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end