@interface IDSOpportunisticOptions
- (IDSOpportunisticOptions)initWithBlocklistedDestinations:(id)a3 expiryDate:(id)a4 destinationsMustBeInContacts:(BOOL)a5;
- (IDSOpportunisticOptions)initWithCoder:(id)a3;
- (IDSOpportunisticOptions)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSOpportunisticOptions

- (IDSOpportunisticOptions)initWithBlocklistedDestinations:(id)a3 expiryDate:(id)a4 destinationsMustBeInContacts:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = IDSOpportunisticOptions;
  v11 = [(IDSOpportunisticOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_blocklistedDestinations, a3);
    objc_storeStrong(&v12->_expiryDate, a4);
    v12->_destinationsMustBeInContacts = a5;
  }

  return v12;
}

- (IDSOpportunisticOptions)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"IDSOpportunisticOptionsBlocklistedDestinationsKey"];
  v6 = [v4 objectForKeyedSubscript:@"IDSOpportunisticOptionsExpiryDateKey"];
  v7 = [v4 objectForKeyedSubscript:@"IDSOpportunisticOptionsDestinationsMustBeInContactsKey"];

  v8 = [v7 BOOLValue];
  v9 = [(IDSOpportunisticOptions *)self initWithBlocklistedDestinations:v5 expiryDate:v6 destinationsMustBeInContacts:v8];

  return v9;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSOpportunisticOptions *)self blocklistedDestinations];
  [v3 setObject:v4 forKeyedSubscript:@"IDSOpportunisticOptionsBlocklistedDestinationsKey"];

  v5 = [(IDSOpportunisticOptions *)self expiryDate];
  [v3 setObject:v5 forKeyedSubscript:@"IDSOpportunisticOptionsExpiryDateKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSOpportunisticOptions destinationsMustBeInContacts](self, "destinationsMustBeInContacts")}];
  [v3 setObject:v6 forKeyedSubscript:@"IDSOpportunisticOptionsDestinationsMustBeInContactsKey"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSOpportunisticOptions *)self blocklistedDestinations];
  v6 = [(IDSOpportunisticOptions *)self expiryDate];
  v7 = [(IDSOpportunisticOptions *)self destinationsMustBeInContacts];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@:%p blocklist: %@, expiry: %@, mustBeContact: %@>", v4, self, v5, v6, v8];

  return v9;
}

- (IDSOpportunisticOptions)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"IDSOpportunisticOptionsBlocklistedDestinationsKey"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"IDSOpportunisticOptionsExpiryDateKey"];
  v10 = [v5 decodeBoolForKey:@"IDSOpportunisticOptionsDestinationsMustBeInContactsKey"];

  v11 = [(IDSOpportunisticOptions *)self initWithBlocklistedDestinations:v8 expiryDate:v9 destinationsMustBeInContacts:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(IDSOpportunisticOptions *)self blocklistedDestinations];
  [v6 encodeObject:v4 forKey:@"IDSOpportunisticOptionsBlocklistedDestinationsKey"];

  v5 = [(IDSOpportunisticOptions *)self expiryDate];
  [v6 encodeObject:v5 forKey:@"IDSOpportunisticOptionsExpiryDateKey"];

  [v6 encodeBool:-[IDSOpportunisticOptions destinationsMustBeInContacts](self forKey:{"destinationsMustBeInContacts"), @"IDSOpportunisticOptionsDestinationsMustBeInContactsKey"}];
}

@end