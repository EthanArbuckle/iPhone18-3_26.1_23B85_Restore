@interface CNAutocompleteFetchContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid:(id *)a3;
- (CNAutocompleteFetchContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNAutocompleteFetchContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CNAutocompleteFetchContext *)self sendingAddress];
  [v4 setSendingAddress:v5];

  v6 = [(CNAutocompleteFetchContext *)self sendingAddressAccountIdentifier];
  [v4 setSendingAddressAccountIdentifier:v6];

  v7 = [(CNAutocompleteFetchContext *)self domainIdentifier];
  [v4 setDomainIdentifier:v7];

  v8 = [(CNAutocompleteFetchContext *)self otherAddressesAlreadyChosen];
  [v4 setOtherAddressesAlreadyChosen:v8];

  v9 = [(CNAutocompleteFetchContext *)self title];
  [v4 setTitle:v9];

  v10 = [(CNAutocompleteFetchContext *)self date];
  [v4 setDate:v10];

  v11 = [(CNAutocompleteFetchContext *)self locationUUID];
  [v4 setLocationUUID:v11];

  v12 = [(CNAutocompleteFetchContext *)self bundleIdentifiers];
  [v4 setBundleIdentifiers:v12];

  [v4 setPredictsBasedOnOutgoingInteraction:{-[CNAutocompleteFetchContext predictsBasedOnOutgoingInteraction](self, "predictsBasedOnOutgoingInteraction")}];
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [(CNAutocompleteFetchContext *)self sendingAddress];
  v5 = [v3 appendName:@"sending address" object:v4];

  v6 = [(CNAutocompleteFetchContext *)self sendingAddressAccountIdentifier];
  v7 = [v3 appendName:@"sending account" object:v6];

  v8 = [(CNAutocompleteFetchContext *)self domainIdentifier];
  v9 = [v3 appendName:@"domain" object:v8];

  v10 = [(CNAutocompleteFetchContext *)self otherAddressesAlreadyChosen];
  v11 = [v3 appendName:@"related contacts" object:v10];

  v12 = [(CNAutocompleteFetchContext *)self title];
  v13 = [v3 appendName:@"title" object:v12];

  v14 = [(CNAutocompleteFetchContext *)self date];
  v15 = [v3 appendName:@"date" object:v14];

  v16 = [(CNAutocompleteFetchContext *)self locationUUID];
  v17 = [v3 appendName:@"location" object:v16];

  v18 = [(CNAutocompleteFetchContext *)self bundleIdentifiers];
  v19 = [v18 componentsJoinedByString:@"+"];
  v20 = [v3 appendName:@"bundleIdentifiers" object:v19];

  v21 = [v3 appendName:@"predictsBasedOnOutgoingInteraction" BOOLValue:{-[CNAutocompleteFetchContext predictsBasedOnOutgoingInteraction](self, "predictsBasedOnOutgoingInteraction")}];
  v22 = [v3 build];

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_predictsBasedOnOutgoingInteraction == *(a3 + 8))
    {
      sendingAddress = self->_sendingAddress;
      if (!(sendingAddress | *(a3 + 2)) || (v6 = [(NSString *)sendingAddress isEqual:?]) != 0)
      {
        sendingAddressAccountIdentifier = self->_sendingAddressAccountIdentifier;
        if (!(sendingAddressAccountIdentifier | *(a3 + 3)) || (v6 = [(NSString *)sendingAddressAccountIdentifier isEqual:?]) != 0)
        {
          domainIdentifier = self->_domainIdentifier;
          if (!(domainIdentifier | *(a3 + 4)) || (v6 = [(NSString *)domainIdentifier isEqual:?]) != 0)
          {
            otherAddressesAlreadyChosen = self->_otherAddressesAlreadyChosen;
            if (!(otherAddressesAlreadyChosen | *(a3 + 6)) || (v6 = [(NSArray *)otherAddressesAlreadyChosen isEqual:?]) != 0)
            {
              title = self->_title;
              if (!(title | *(a3 + 9)) || (v6 = [(NSString *)title isEqual:?]) != 0)
              {
                date = self->_date;
                if (!(date | *(a3 + 7)) || (v6 = [(NSDate *)date isEqual:?]) != 0)
                {
                  locationUUID = self->_locationUUID;
                  if (!(locationUUID | *(a3 + 8)) || (v6 = [(NSString *)locationUUID isEqual:?]) != 0)
                  {
                    bundleIdentifiers = self->_bundleIdentifiers;
                    if (!(bundleIdentifiers | *(a3 + 10)) || (v6 = [(NSArray *)bundleIdentifiers isEqual:?]) != 0)
                    {
                      LOBYTE(v6) = 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CFBE38] objectHash:self->_sendingAddress];
  v4 = [MEMORY[0x277CFBE38] objectHash:self->_sendingAddressAccountIdentifier] - v3 + 32 * v3;
  v5 = [MEMORY[0x277CFBE38] objectHash:self->_domainIdentifier] - v4 + 32 * v4;
  v6 = [MEMORY[0x277CFBE38] objectHash:self->_otherAddressesAlreadyChosen] - v5 + 32 * v5;
  v7 = [MEMORY[0x277CFBE38] objectHash:self->_title] - v6 + 32 * v6;
  v8 = [MEMORY[0x277CFBE38] objectHash:self->_date] - v7 + 32 * v7;
  v9 = [MEMORY[0x277CFBE38] objectHash:self->_locationUUID] - v8 + 32 * v8;
  v10 = [MEMORY[0x277CFBE38] objectHash:self->_bundleIdentifiers];
  return self->_predictsBasedOnOutgoingInteraction - (v10 - v9 + 32 * v9) + 32 * (v10 - v9 + 32 * v9) + 0x198CB38E0830FLL;
}

- (CNAutocompleteFetchContext)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = CNAutocompleteFetchContext;
  v5 = [(CNAutocompleteFetchContext *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sendingAddress"];
    sendingAddress = v5->_sendingAddress;
    v5->_sendingAddress = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sendingAddressAccountIdentifier"];
    sendingAddressAccountIdentifier = v5->_sendingAddressAccountIdentifier;
    v5->_sendingAddressAccountIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domainIdentifier"];
    domainIdentifier = v5->_domainIdentifier;
    v5->_domainIdentifier = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"otherAddressesAlreadyChosen"];
    otherAddressesAlreadyChosen = v5->_otherAddressesAlreadyChosen;
    v5->_otherAddressesAlreadyChosen = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationUUID"];
    locationUUID = v5->_locationUUID;
    v5->_locationUUID = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"bundleIdentifiers"];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v26;

    v5->_predictsBasedOnOutgoingInteraction = [v4 decodeBoolForKey:@"predictsBasedOnOutgoingInteraction"];
    v28 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sendingAddress = self->_sendingAddress;
  v5 = a3;
  [v5 encodeObject:sendingAddress forKey:@"sendingAddress"];
  [v5 encodeObject:self->_sendingAddressAccountIdentifier forKey:@"sendingAddressAccountIdentifier"];
  [v5 encodeObject:self->_domainIdentifier forKey:@"domainIdentifier"];
  [v5 encodeObject:self->_otherAddressesAlreadyChosen forKey:@"otherAddressesAlreadyChosen"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_locationUUID forKey:@"locationUUID"];
  [v5 encodeObject:self->_date forKey:@"date"];
  [v5 encodeObject:self->_bundleIdentifiers forKey:@"bundleIdentifiers"];
  [v5 encodeBool:self->_predictsBasedOnOutgoingInteraction forKey:@"predictsBasedOnOutgoingInteraction"];
}

- (BOOL)isValid:(id *)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(CNAutocompleteFetchContext *)self otherAddressesAlreadyChosen];
  v5 = [v4 _cn_any:*MEMORY[0x277CFBD20]];

  if (v5)
  {
    v6 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA470];
    v12[0] = @"otherAddressesAlreadyChosen contains NSNull";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 errorWithDomain:@"CNContactAutocompleteErrorDomain" code:2 userInfo:v7];
    if (a3)
    {
      v8 = v8;
      *a3 = v8;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5 ^ 1;
}

@end