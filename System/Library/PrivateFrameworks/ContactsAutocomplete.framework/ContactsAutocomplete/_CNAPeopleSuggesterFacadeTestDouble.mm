@interface _CNAPeopleSuggesterFacadeTestDouble
+ (id)makeContactWithDisplayName:(id)name;
+ (id)makeContactWithDisplayName:(id)name handle:(id)handle;
+ (id)makeRecipientWithDisplayName:(id)name handle:(id)handle hasContact:(BOOL)contact;
- (NSString)description;
- (_CNAPeopleSuggesterFacadeTestDouble)initWithDelegate:(id)delegate;
- (_CNAPeopleSuggesterFacadeTestDoubleDelegate)delegate;
- (id)addGroupWithDisplayName:(id)name conversationIdentifier:(id)identifier recipients:(id)recipients;
- (id)addPerson:(id)person;
- (id)autocompleteSearchResultsWithPredictionContext:(id)context;
@end

@implementation _CNAPeopleSuggesterFacadeTestDouble

- (_CNAPeopleSuggesterFacadeTestDouble)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = _CNAPeopleSuggesterFacadeTestDouble;
  v5 = [(_CNAPeopleSuggesterFacadeTestDouble *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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
  build = [v3 build];

  return build;
}

- (id)addPerson:(id)person
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = get_PSSuggestionClass;
  personCopy = person;
  v6 = objc_alloc_init(v4());
  [v6 setSuggestionType:1];
  v10[0] = personCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  [v6 setRecipients:v7];
  [(_CNAPeopleSuggesterFacadeTestDouble *)self addSuggestion:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)addGroupWithDisplayName:(id)name conversationIdentifier:(id)identifier recipients:(id)recipients
{
  v8 = get_PSSuggestionClass;
  recipientsCopy = recipients;
  identifierCopy = identifier;
  nameCopy = name;
  v12 = [objc_alloc(v8()) initWithBundleID:0 conversationIdentifier:identifierCopy groupName:nameCopy recipients:recipientsCopy];

  [v12 setSuggestionType:2];
  [(_CNAPeopleSuggesterFacadeTestDouble *)self addSuggestion:v12];

  return v12;
}

+ (id)makeRecipientWithDisplayName:(id)name handle:(id)handle hasContact:(BOOL)contact
{
  contactCopy = contact;
  nameCopy = name;
  handleCopy = handle;
  if (contactCopy)
  {
    v10 = [self makeContactWithDisplayName:nameCopy handle:handleCopy];
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc(get_PSRecipientClass());
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v14 = [v11 initWithIdentifier:uUIDString handle:handleCopy displayName:nameCopy contact:v10];

  return v14;
}

+ (id)makeContactWithDisplayName:(id)name handle:(id)handle
{
  v17[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v7 = [self makeContactWithDisplayName:name];
  if (handleCopy && [handleCopy length])
  {
    v8 = MEMORY[0x277CFBE30];
    v17[0] = handleCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v10 = [v8 classificationOfHandleStrings:v9];

    emailAddresses = [v10 emailAddresses];
    v12 = [emailAddresses _cn_map:&__block_literal_global_22];
    [v7 setEmailAddresses:v12];

    phoneNumbers = [v10 phoneNumbers];
    v14 = [phoneNumbers _cn_map:&__block_literal_global_23_0];
    [v7 setPhoneNumbers:v14];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)makeContactWithDisplayName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(MEMORY[0x277CBDB38]);
  if (nameCopy && [nameCopy length])
  {
    v5 = [MEMORY[0x277CFBE50] componentsFromString:nameCopy];
    givenName = [v5 givenName];
    [v4 setGivenName:givenName];

    familyName = [v5 familyName];
    [v4 setFamilyName:familyName];

    middleName = [v5 middleName];
    [v4 setMiddleName:middleName];

    namePrefix = [v5 namePrefix];
    [v4 setNamePrefix:namePrefix];

    nameSuffix = [v5 nameSuffix];
    [v4 setNameSuffix:nameSuffix];

    nickname = [v5 nickname];
    [v4 setNickname:nickname];
  }

  return v4;
}

- (id)autocompleteSearchResultsWithPredictionContext:(id)context
{
  contextCopy = context;
  delegate = [(_CNAPeopleSuggesterFacadeTestDouble *)self delegate];
  [delegate didQueryPeopleSuggesterWithContext:contextCopy];

  v6 = [(NSMutableArray *)self->_suggestions copy];

  return v6;
}

- (_CNAPeopleSuggesterFacadeTestDoubleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end