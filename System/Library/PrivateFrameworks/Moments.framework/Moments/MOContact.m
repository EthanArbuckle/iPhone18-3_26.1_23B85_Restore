@interface MOContact
- (BOOL)isEqual:(id)a3;
- (MOContact)initWithCoder:(id)a3;
- (MOContact)initWithIdentifier:(id)a3 personId:(id)a4 displayName:(id)a5 isOrganization:(BOOL)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOContact

- (MOContact)initWithIdentifier:(id)a3 personId:(id)a4 displayName:(id)a5 isOrganization:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = MOContact;
  v14 = [(MOContact *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, a3);
    objc_storeStrong(&v15->_personId, a4);
    objc_storeStrong(&v15->_displayName, a5);
    v15->_isOrganization = a6;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MOContact *)self identifier];
  v5 = [v4 mask];
  v6 = [(MOContact *)self personId];
  v7 = [(MOContact *)self displayName];
  v8 = [v7 mask];
  v9 = [v3 stringWithFormat:@"identifier, %@, personId, %@, name, %@, is organization, %d", v5, v6, v8, -[MOContact isOrganization](self, "isOrganization")];

  return v9;
}

- (MOContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personId"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v8 = [v4 decodeBoolForKey:@"isOrganization"];

  v9 = [(MOContact *)self initWithIdentifier:v5 personId:v6 displayName:v7 isOrganization:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_personId forKey:@"personId"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeBool:self->_isOrganization forKey:@"isOrganization"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MOContact *)self identifier];
      v7 = [(MOContact *)v5 identifier];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(MOContact *)self personId];
        v9 = [(MOContact *)v5 personId];
        if ([v8 isEqualToString:v9])
        {
          v10 = [(MOContact *)self displayName];
          v11 = [(MOContact *)v5 displayName];
          v12 = [v10 isEqualToString:v11];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_personId hash]^ v3;
  return v4 ^ [(NSString *)self->_displayName hash];
}

@end