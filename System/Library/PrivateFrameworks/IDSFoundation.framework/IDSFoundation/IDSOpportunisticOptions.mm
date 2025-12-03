@interface IDSOpportunisticOptions
- (IDSOpportunisticOptions)initWithBlocklistedDestinations:(id)destinations expiryDate:(id)date destinationsMustBeInContacts:(BOOL)contacts;
- (IDSOpportunisticOptions)initWithCoder:(id)coder;
- (IDSOpportunisticOptions)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSOpportunisticOptions

- (IDSOpportunisticOptions)initWithBlocklistedDestinations:(id)destinations expiryDate:(id)date destinationsMustBeInContacts:(BOOL)contacts
{
  destinationsCopy = destinations;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = IDSOpportunisticOptions;
  v11 = [(IDSOpportunisticOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_blocklistedDestinations, destinations);
    objc_storeStrong(&v12->_expiryDate, date);
    v12->_destinationsMustBeInContacts = contacts;
  }

  return v12;
}

- (IDSOpportunisticOptions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"IDSOpportunisticOptionsBlocklistedDestinationsKey"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"IDSOpportunisticOptionsExpiryDateKey"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"IDSOpportunisticOptionsDestinationsMustBeInContactsKey"];

  bOOLValue = [v7 BOOLValue];
  v9 = [(IDSOpportunisticOptions *)self initWithBlocklistedDestinations:v5 expiryDate:v6 destinationsMustBeInContacts:bOOLValue];

  return v9;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  blocklistedDestinations = [(IDSOpportunisticOptions *)self blocklistedDestinations];
  [v3 setObject:blocklistedDestinations forKeyedSubscript:@"IDSOpportunisticOptionsBlocklistedDestinationsKey"];

  expiryDate = [(IDSOpportunisticOptions *)self expiryDate];
  [v3 setObject:expiryDate forKeyedSubscript:@"IDSOpportunisticOptionsExpiryDateKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSOpportunisticOptions destinationsMustBeInContacts](self, "destinationsMustBeInContacts")}];
  [v3 setObject:v6 forKeyedSubscript:@"IDSOpportunisticOptionsDestinationsMustBeInContactsKey"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  blocklistedDestinations = [(IDSOpportunisticOptions *)self blocklistedDestinations];
  expiryDate = [(IDSOpportunisticOptions *)self expiryDate];
  destinationsMustBeInContacts = [(IDSOpportunisticOptions *)self destinationsMustBeInContacts];
  v8 = @"NO";
  if (destinationsMustBeInContacts)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@:%p blocklist: %@, expiry: %@, mustBeContact: %@>", v4, self, blocklistedDestinations, expiryDate, v8];

  return v9;
}

- (IDSOpportunisticOptions)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"IDSOpportunisticOptionsBlocklistedDestinationsKey"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSOpportunisticOptionsExpiryDateKey"];
  v10 = [coderCopy decodeBoolForKey:@"IDSOpportunisticOptionsDestinationsMustBeInContactsKey"];

  v11 = [(IDSOpportunisticOptions *)self initWithBlocklistedDestinations:v8 expiryDate:v9 destinationsMustBeInContacts:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  blocklistedDestinations = [(IDSOpportunisticOptions *)self blocklistedDestinations];
  [coderCopy encodeObject:blocklistedDestinations forKey:@"IDSOpportunisticOptionsBlocklistedDestinationsKey"];

  expiryDate = [(IDSOpportunisticOptions *)self expiryDate];
  [coderCopy encodeObject:expiryDate forKey:@"IDSOpportunisticOptionsExpiryDateKey"];

  [coderCopy encodeBool:-[IDSOpportunisticOptions destinationsMustBeInContacts](self forKey:{"destinationsMustBeInContacts"), @"IDSOpportunisticOptionsDestinationsMustBeInContactsKey"}];
}

@end