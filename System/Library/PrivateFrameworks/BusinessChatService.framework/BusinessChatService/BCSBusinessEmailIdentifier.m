@interface BCSBusinessEmailIdentifier
- (BCSBusinessEmailIdentifier)initWithCoder:(id)a3;
- (BCSBusinessEmailIdentifier)initWithDefaultsDictionary:(id)a3;
- (BCSBusinessEmailIdentifier)initWithEmail:(id)a3 fullDomain:(id)a4 topLevelDomain:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSBusinessEmailIdentifier

- (BCSBusinessEmailIdentifier)initWithEmail:(id)a3 fullDomain:(id)a4 topLevelDomain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = BCSBusinessEmailIdentifier;
  v11 = [(BCSBusinessEmailIdentifier *)&v19 init];
  if (v11)
  {
    v12 = [v8 lowercaseString];
    email = v11->_email;
    v11->_email = v12;

    v14 = [v9 lowercaseString];
    fullDomain = v11->_fullDomain;
    v11->_fullDomain = v14;

    v16 = [v10 lowercaseString];
    topLevelDomain = v11->_topLevelDomain;
    v11->_topLevelDomain = v16;
  }

  return v11;
}

- (BCSBusinessEmailIdentifier)initWithDefaultsDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"email"];
  v6 = [v4 objectForKeyedSubscript:@"fullDomain"];
  v7 = [v4 objectForKeyedSubscript:@"topLevelDomain"];

  v8 = [(BCSBusinessEmailIdentifier *)self initWithEmail:v5 fullDomain:v6 topLevelDomain:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 email];
    v7 = [(BCSBusinessEmailIdentifier *)self email];
    v8 = [v6 isEqualToString:v7];

    if (v8 && ([v5 fullDomain], v9 = objc_claimAutoreleasedReturnValue(), -[BCSBusinessEmailIdentifier fullDomain](self, "fullDomain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, v11))
    {
      v12 = [v5 topLevelDomain];
      v13 = [(BCSBusinessEmailIdentifier *)self topLevelDomain];
      v14 = [v12 isEqualToString:v13];
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

- (BOOL)matchesIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BCSBusinessEmailIdentifier *)self email];
  v6 = [v4 email];
  if ([v5 isEqualToString:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(BCSBusinessEmailIdentifier *)self fullDomain];
    v9 = [v4 fullDomain];
    if ([v8 isEqualToString:v9])
    {
      v7 = 1;
    }

    else
    {
      v10 = [(BCSBusinessEmailIdentifier *)self topLevelDomain];
      v11 = [v4 topLevelDomain];
      v7 = [v10 isEqualToString:v11];
    }
  }

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BCSBusinessEmailIdentifier *)self email];
  v5 = [(BCSBusinessEmailIdentifier *)self fullDomain];
  v6 = [(BCSBusinessEmailIdentifier *)self topLevelDomain];
  v7 = [v3 stringWithFormat:@"<%@ { email: %@, fullDomain: %@, topLevelDomain: %@ }>", self, v4, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(BCSBusinessEmailIdentifier *)self email];
    v6 = [v5 copy];
    v7 = v4[1];
    v4[1] = v6;

    v8 = [(BCSBusinessEmailIdentifier *)self fullDomain];
    v9 = [v8 copy];
    v10 = v4[2];
    v4[2] = v9;

    v11 = [(BCSBusinessEmailIdentifier *)self topLevelDomain];
    v12 = [v11 copy];
    v13 = v4[3];
    v4[3] = v12;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  email = self->_email;
  v5 = a3;
  [v5 encodeObject:email forKey:@"Email"];
  [v5 encodeObject:self->_fullDomain forKey:@"FullDomain"];
  [v5 encodeObject:self->_topLevelDomain forKey:@"TopLevelDomain"];
}

- (BCSBusinessEmailIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BCSBusinessEmailIdentifier;
  v5 = [(BCSBusinessEmailIdentifier *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Email"];
    email = v5->_email;
    v5->_email = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FullDomain"];
    fullDomain = v5->_fullDomain;
    v5->_fullDomain = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TopLevelDomain"];
    topLevelDomain = v5->_topLevelDomain;
    v5->_topLevelDomain = v10;
  }

  return v5;
}

@end