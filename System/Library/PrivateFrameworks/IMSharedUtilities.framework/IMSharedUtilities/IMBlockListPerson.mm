@interface IMBlockListPerson
+ (IMBlockListPerson)personWithCNContact:(id)contact;
- (BOOL)isEqualToPerson:(id)person;
- (BOOL)isInAddressBook;
- (IMBlockListPerson)init;
- (IMBlockListPerson)initWithCNContact:(id)contact;
- (NSString)fullName;
- (id)companyName;
- (id)sanitizeString:(id)string;
@end

@implementation IMBlockListPerson

+ (IMBlockListPerson)personWithCNContact:(id)contact
{
  contactCopy = contact;
  v5 = [[self alloc] initWithCNContact:contactCopy];

  return v5;
}

- (IMBlockListPerson)init
{
  v8.receiver = self;
  v8.super_class = IMBlockListPerson;
  v2 = [(IMBlockListPerson *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695CD58]);
    cnPerson = v2->_cnPerson;
    v2->_cnPerson = v3;

    identifier = [(CNContact *)v2->_cnPerson identifier];
    identifier = v2->_identifier;
    v2->_identifier = identifier;
  }

  return v2;
}

- (IMBlockListPerson)initWithCNContact:(id)contact
{
  contactCopy = contact;
  if (!contactCopy)
  {
    v7 = [(IMBlockListPerson *)self init];
    goto LABEL_10;
  }

  v19.receiver = self;
  v19.super_class = IMBlockListPerson;
  v6 = [(IMBlockListPerson *)&v19 init];
  v7 = v6;
  if (!v6)
  {
LABEL_10:
    v7 = v7;
    identifier = v7;
    goto LABEL_11;
  }

  objc_storeStrong(&v6->_cnPerson, contact);
  identifier = [(CNContact *)v7->_cnPerson identifier];

  if (identifier)
  {
    mEMORY[0x1E69A6198] = [MEMORY[0x1E69A6198] sharedInstance];
    identifier2 = [(CNContact *)v7->_cnPerson identifier];
    identifier = [mEMORY[0x1E69A6198] copyOrSetObject:v7 forKey:identifier2];

    LODWORD(mEMORY[0x1E69A6198]) = [(IMBlockListPerson *)identifier isInAddressBook];
    identifier3 = [(CNContact *)v7->_cnPerson identifier];
    identifier = v7->_identifier;
    v7->_identifier = identifier3;

    if (!mEMORY[0x1E69A6198] || identifier != v7)
    {
      mEMORY[0x1E69A6198]2 = [MEMORY[0x1E69A6198] sharedInstance];
      identifier4 = [(CNContact *)v7->_cnPerson identifier];
      [mEMORY[0x1E69A6198]2 removeObject:v7 key:identifier4];

      mEMORY[0x1E69A6198]3 = [MEMORY[0x1E69A6198] sharedInstance];
      identifier5 = [(CNContact *)v7->_cnPerson identifier];

      goto LABEL_10;
    }
  }

LABEL_11:

  return identifier;
}

- (BOOL)isEqualToPerson:(id)person
{
  if (!person)
  {
    return 0;
  }

  personCopy = person;
  identifier = [(IMBlockListPerson *)self identifier];
  identifier2 = [personCopy identifier];

  LOBYTE(personCopy) = [identifier isEqual:identifier2];
  return personCopy;
}

- (NSString)fullName
{
  cnPerson = [(IMBlockListPerson *)self cnPerson];
  v4 = [IMContactStore fullNameForCNContact:cnPerson];
  v5 = [(IMBlockListPerson *)self sanitizeString:v4];
  v6 = [v5 copy];

  if (v6)
  {
    [(IMBlockListPerson *)self setCachedFullName:v6];
    v7 = v6;
  }

  else
  {
    cnPerson2 = [(IMBlockListPerson *)self cnPerson];
    v9 = [IMContactStore companyNameForCNContact:cnPerson2];

    if (v9 && [v9 length])
    {
      cachedFullName = v9;
    }

    else
    {
      cachedFullName = [(IMBlockListPerson *)self cachedFullName];
    }

    v7 = cachedFullName;
  }

  return v7;
}

- (id)companyName
{
  cnPerson = [(IMBlockListPerson *)self cnPerson];
  v4 = [IMContactStore companyNameForCNContact:cnPerson];
  v5 = [(IMBlockListPerson *)self sanitizeString:v4];

  if (v5)
  {
    [(IMBlockListPerson *)self setCachedCompanyName:v5];
    cachedCompanyName = v5;
  }

  else
  {
    cachedCompanyName = [(IMBlockListPerson *)self cachedCompanyName];
  }

  v7 = cachedCompanyName;

  return v7;
}

- (id)sanitizeString:(id)string
{
  stringCopy = string;
  if (([stringCopy isNull] & 1) != 0 || !objc_msgSend(stringCopy, "length"))
  {
    v5 = 0;
  }

  else
  {
    stringByRemovingWhitespace = [stringCopy stringByRemovingWhitespace];

    if ([stringByRemovingWhitespace length])
    {
      v5 = stringByRemovingWhitespace;
      stringCopy = v5;
    }

    else
    {
      v5 = 0;
      stringCopy = stringByRemovingWhitespace;
    }
  }

  return v5;
}

- (BOOL)isInAddressBook
{
  cnPerson = [(IMBlockListPerson *)self cnPerson];
  v3 = [IMContactStore isCNContactAKnownContact:cnPerson];

  return v3;
}

@end