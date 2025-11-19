@interface IMBlockListPerson
+ (IMBlockListPerson)personWithCNContact:(id)a3;
- (BOOL)isEqualToPerson:(id)a3;
- (BOOL)isInAddressBook;
- (IMBlockListPerson)init;
- (IMBlockListPerson)initWithCNContact:(id)a3;
- (NSString)fullName;
- (id)companyName;
- (id)sanitizeString:(id)a3;
@end

@implementation IMBlockListPerson

+ (IMBlockListPerson)personWithCNContact:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCNContact:v4];

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

    v5 = [(CNContact *)v2->_cnPerson identifier];
    identifier = v2->_identifier;
    v2->_identifier = v5;
  }

  return v2;
}

- (IMBlockListPerson)initWithCNContact:(id)a3
{
  v5 = a3;
  if (!v5)
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
    v8 = v7;
    goto LABEL_11;
  }

  objc_storeStrong(&v6->_cnPerson, a3);
  v8 = [(CNContact *)v7->_cnPerson identifier];

  if (v8)
  {
    v9 = [MEMORY[0x1E69A6198] sharedInstance];
    v10 = [(CNContact *)v7->_cnPerson identifier];
    v8 = [v9 copyOrSetObject:v7 forKey:v10];

    LODWORD(v9) = [(IMBlockListPerson *)v8 isInAddressBook];
    v11 = [(CNContact *)v7->_cnPerson identifier];
    identifier = v7->_identifier;
    v7->_identifier = v11;

    if (!v9 || v8 != v7)
    {
      v14 = [MEMORY[0x1E69A6198] sharedInstance];
      v15 = [(CNContact *)v7->_cnPerson identifier];
      [v14 removeObject:v7 key:v15];

      v16 = [MEMORY[0x1E69A6198] sharedInstance];
      v17 = [(CNContact *)v7->_cnPerson identifier];

      goto LABEL_10;
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)isEqualToPerson:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(IMBlockListPerson *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (NSString)fullName
{
  v3 = [(IMBlockListPerson *)self cnPerson];
  v4 = [IMContactStore fullNameForCNContact:v3];
  v5 = [(IMBlockListPerson *)self sanitizeString:v4];
  v6 = [v5 copy];

  if (v6)
  {
    [(IMBlockListPerson *)self setCachedFullName:v6];
    v7 = v6;
  }

  else
  {
    v8 = [(IMBlockListPerson *)self cnPerson];
    v9 = [IMContactStore companyNameForCNContact:v8];

    if (v9 && [v9 length])
    {
      v10 = v9;
    }

    else
    {
      v10 = [(IMBlockListPerson *)self cachedFullName];
    }

    v7 = v10;
  }

  return v7;
}

- (id)companyName
{
  v3 = [(IMBlockListPerson *)self cnPerson];
  v4 = [IMContactStore companyNameForCNContact:v3];
  v5 = [(IMBlockListPerson *)self sanitizeString:v4];

  if (v5)
  {
    [(IMBlockListPerson *)self setCachedCompanyName:v5];
    v6 = v5;
  }

  else
  {
    v6 = [(IMBlockListPerson *)self cachedCompanyName];
  }

  v7 = v6;

  return v7;
}

- (id)sanitizeString:(id)a3
{
  v3 = a3;
  if (([v3 isNull] & 1) != 0 || !objc_msgSend(v3, "length"))
  {
    v5 = 0;
  }

  else
  {
    v4 = [v3 stringByRemovingWhitespace];

    if ([v4 length])
    {
      v5 = v4;
      v3 = v5;
    }

    else
    {
      v5 = 0;
      v3 = v4;
    }
  }

  return v5;
}

- (BOOL)isInAddressBook
{
  v2 = [(IMBlockListPerson *)self cnPerson];
  v3 = [IMContactStore isCNContactAKnownContact:v2];

  return v3;
}

@end