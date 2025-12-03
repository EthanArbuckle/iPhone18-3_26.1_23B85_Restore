@interface _CNACDPeopleSuggesterFacadeTestDouble
- (NSString)description;
- (_CNACDPeopleSuggesterFacadeTestDouble)initWithDelegate:(id)delegate;
- (id)addPersonWithDisplayName:(id)name handle:(id)handle contactIdentifier:(id)identifier;
- (id)suggestPeopleWithContext:(id)context settings:(id)settings error:(id *)error;
- (unint64_t)typeOfHandle:(id)handle;
@end

@implementation _CNACDPeopleSuggesterFacadeTestDouble

- (_CNACDPeopleSuggesterFacadeTestDouble)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = _CNACDPeopleSuggesterFacadeTestDouble;
  v6 = [(_CNACDPeopleSuggesterFacadeTestDouble *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v8 = objc_opt_new();
    suggestions = v7->_suggestions;
    v7->_suggestions = v8;

    v10 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"delegate" object:self->_delegate];
  v5 = [v3 appendName:@"suggestions" object:self->_suggestions];
  build = [v3 build];

  return build;
}

- (id)addPersonWithDisplayName:(id)name handle:(id)handle contactIdentifier:(id)identifier
{
  v8 = MEMORY[0x277CFE078];
  identifierCopy = identifier;
  handleCopy = handle;
  nameCopy = name;
  v12 = objc_alloc_init(v8);
  [v12 setDisplayName:nameCopy];

  [v12 setIdentifier:handleCopy];
  [v12 setPersonId:identifierCopy];

  [v12 setPersonIdType:3];
  v13 = [(_CNACDPeopleSuggesterFacadeTestDouble *)self typeOfHandle:handleCopy];

  [v12 setType:v13];
  v14 = objc_alloc_init(MEMORY[0x277CFE120]);
  [v14 setContact:v12];
  [(NSMutableArray *)self->_suggestions addObject:v14];

  return v14;
}

- (unint64_t)typeOfHandle:(id)handle
{
  v14[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x277CFBE30];
    v14[0] = handleCopy;
    v4 = 1;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v7 = [v5 classificationOfHandleStrings:v6];

    phoneNumbers = [v7 phoneNumbers];
    v9 = [phoneNumbers count];

    if (!v9)
    {
      emailAddresses = [v7 emailAddresses];
      v11 = [emailAddresses count] != 0;

      v4 = 2 * v11;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)suggestPeopleWithContext:(id)context settings:(id)settings error:(id *)error
{
  [(_CNACDPeopleSuggesterFacadeTestDoubleDelegate *)self->_delegate didQueryCDPeopleSuggesterWithContext:context settings:settings, error];
  v6 = [(NSMutableArray *)self->_suggestions copy];

  return v6;
}

@end