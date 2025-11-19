@interface _CNACDPeopleSuggesterFacadeTestDouble
- (NSString)description;
- (_CNACDPeopleSuggesterFacadeTestDouble)initWithDelegate:(id)a3;
- (id)addPersonWithDisplayName:(id)a3 handle:(id)a4 contactIdentifier:(id)a5;
- (id)suggestPeopleWithContext:(id)a3 settings:(id)a4 error:(id *)a5;
- (unint64_t)typeOfHandle:(id)a3;
@end

@implementation _CNACDPeopleSuggesterFacadeTestDouble

- (_CNACDPeopleSuggesterFacadeTestDouble)initWithDelegate:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _CNACDPeopleSuggesterFacadeTestDouble;
  v6 = [(_CNACDPeopleSuggesterFacadeTestDouble *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
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
  v6 = [v3 build];

  return v6;
}

- (id)addPersonWithDisplayName:(id)a3 handle:(id)a4 contactIdentifier:(id)a5
{
  v8 = MEMORY[0x277CFE078];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v8);
  [v12 setDisplayName:v11];

  [v12 setIdentifier:v10];
  [v12 setPersonId:v9];

  [v12 setPersonIdType:3];
  v13 = [(_CNACDPeopleSuggesterFacadeTestDouble *)self typeOfHandle:v10];

  [v12 setType:v13];
  v14 = objc_alloc_init(MEMORY[0x277CFE120]);
  [v14 setContact:v12];
  [(NSMutableArray *)self->_suggestions addObject:v14];

  return v14;
}

- (unint64_t)typeOfHandle:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x277CFBE30];
    v14[0] = v3;
    v4 = 1;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v7 = [v5 classificationOfHandleStrings:v6];

    v8 = [v7 phoneNumbers];
    v9 = [v8 count];

    if (!v9)
    {
      v10 = [v7 emailAddresses];
      v11 = [v10 count] != 0;

      v4 = 2 * v11;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)suggestPeopleWithContext:(id)a3 settings:(id)a4 error:(id *)a5
{
  [(_CNACDPeopleSuggesterFacadeTestDoubleDelegate *)self->_delegate didQueryCDPeopleSuggesterWithContext:a3 settings:a4, a5];
  v6 = [(NSMutableArray *)self->_suggestions copy];

  return v6;
}

@end