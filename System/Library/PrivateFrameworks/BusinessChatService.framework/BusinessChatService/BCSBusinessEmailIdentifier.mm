@interface BCSBusinessEmailIdentifier
- (BCSBusinessEmailIdentifier)initWithCoder:(id)coder;
- (BCSBusinessEmailIdentifier)initWithDefaultsDictionary:(id)dictionary;
- (BCSBusinessEmailIdentifier)initWithEmail:(id)email fullDomain:(id)domain topLevelDomain:(id)levelDomain;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSBusinessEmailIdentifier

- (BCSBusinessEmailIdentifier)initWithEmail:(id)email fullDomain:(id)domain topLevelDomain:(id)levelDomain
{
  emailCopy = email;
  domainCopy = domain;
  levelDomainCopy = levelDomain;
  v19.receiver = self;
  v19.super_class = BCSBusinessEmailIdentifier;
  v11 = [(BCSBusinessEmailIdentifier *)&v19 init];
  if (v11)
  {
    lowercaseString = [emailCopy lowercaseString];
    email = v11->_email;
    v11->_email = lowercaseString;

    lowercaseString2 = [domainCopy lowercaseString];
    fullDomain = v11->_fullDomain;
    v11->_fullDomain = lowercaseString2;

    lowercaseString3 = [levelDomainCopy lowercaseString];
    topLevelDomain = v11->_topLevelDomain;
    v11->_topLevelDomain = lowercaseString3;
  }

  return v11;
}

- (BCSBusinessEmailIdentifier)initWithDefaultsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"email"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"fullDomain"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"topLevelDomain"];

  v8 = [(BCSBusinessEmailIdentifier *)self initWithEmail:v5 fullDomain:v6 topLevelDomain:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    email = [v5 email];
    email2 = [(BCSBusinessEmailIdentifier *)self email];
    v8 = [email isEqualToString:email2];

    if (v8 && ([v5 fullDomain], v9 = objc_claimAutoreleasedReturnValue(), -[BCSBusinessEmailIdentifier fullDomain](self, "fullDomain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, v11))
    {
      topLevelDomain = [v5 topLevelDomain];
      topLevelDomain2 = [(BCSBusinessEmailIdentifier *)self topLevelDomain];
      v14 = [topLevelDomain isEqualToString:topLevelDomain2];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_email hash];
  v4 = [(NSString *)self->_fullDomain hash]^ v3;
  return v4 ^ [(NSString *)self->_topLevelDomain hash];
}

- (BOOL)matchesIdentifier:(id)identifier
{
  identifierCopy = identifier;
  email = [(BCSBusinessEmailIdentifier *)self email];
  email2 = [identifierCopy email];
  if ([email isEqualToString:email2])
  {
    v7 = 1;
  }

  else
  {
    fullDomain = [(BCSBusinessEmailIdentifier *)self fullDomain];
    fullDomain2 = [identifierCopy fullDomain];
    if ([fullDomain isEqualToString:fullDomain2])
    {
      v7 = 1;
    }

    else
    {
      topLevelDomain = [(BCSBusinessEmailIdentifier *)self topLevelDomain];
      topLevelDomain2 = [identifierCopy topLevelDomain];
      v7 = [topLevelDomain isEqualToString:topLevelDomain2];
    }
  }

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  email = [(BCSBusinessEmailIdentifier *)self email];
  fullDomain = [(BCSBusinessEmailIdentifier *)self fullDomain];
  topLevelDomain = [(BCSBusinessEmailIdentifier *)self topLevelDomain];
  v7 = [v3 stringWithFormat:@"<%@ { email: %@, fullDomain: %@, topLevelDomain: %@ }>", self, email, fullDomain, topLevelDomain];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    email = [(BCSBusinessEmailIdentifier *)self email];
    v6 = [email copy];
    v7 = v4[1];
    v4[1] = v6;

    fullDomain = [(BCSBusinessEmailIdentifier *)self fullDomain];
    v9 = [fullDomain copy];
    v10 = v4[2];
    v4[2] = v9;

    topLevelDomain = [(BCSBusinessEmailIdentifier *)self topLevelDomain];
    v12 = [topLevelDomain copy];
    v13 = v4[3];
    v4[3] = v12;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  email = self->_email;
  coderCopy = coder;
  [coderCopy encodeObject:email forKey:@"Email"];
  [coderCopy encodeObject:self->_fullDomain forKey:@"FullDomain"];
  [coderCopy encodeObject:self->_topLevelDomain forKey:@"TopLevelDomain"];
}

- (BCSBusinessEmailIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BCSBusinessEmailIdentifier;
  v5 = [(BCSBusinessEmailIdentifier *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Email"];
    email = v5->_email;
    v5->_email = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FullDomain"];
    fullDomain = v5->_fullDomain;
    v5->_fullDomain = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TopLevelDomain"];
    topLevelDomain = v5->_topLevelDomain;
    v5->_topLevelDomain = v10;
  }

  return v5;
}

@end