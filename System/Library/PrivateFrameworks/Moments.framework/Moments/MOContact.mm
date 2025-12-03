@interface MOContact
- (BOOL)isEqual:(id)equal;
- (MOContact)initWithCoder:(id)coder;
- (MOContact)initWithIdentifier:(id)identifier personId:(id)id displayName:(id)name isOrganization:(BOOL)organization;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOContact

- (MOContact)initWithIdentifier:(id)identifier personId:(id)id displayName:(id)name isOrganization:(BOOL)organization
{
  identifierCopy = identifier;
  idCopy = id;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = MOContact;
  v14 = [(MOContact *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    objc_storeStrong(&v15->_personId, id);
    objc_storeStrong(&v15->_displayName, name);
    v15->_isOrganization = organization;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(MOContact *)self identifier];
  mask = [identifier mask];
  personId = [(MOContact *)self personId];
  displayName = [(MOContact *)self displayName];
  mask2 = [displayName mask];
  v9 = [v3 stringWithFormat:@"identifier, %@, personId, %@, name, %@, is organization, %d", mask, personId, mask2, -[MOContact isOrganization](self, "isOrganization")];

  return v9;
}

- (MOContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personId"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v8 = [coderCopy decodeBoolForKey:@"isOrganization"];

  v9 = [(MOContact *)self initWithIdentifier:v5 personId:v6 displayName:v7 isOrganization:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_personId forKey:@"personId"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeBool:self->_isOrganization forKey:@"isOrganization"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(MOContact *)self identifier];
      identifier2 = [(MOContact *)v5 identifier];
      if ([identifier isEqualToString:identifier2])
      {
        personId = [(MOContact *)self personId];
        personId2 = [(MOContact *)v5 personId];
        if ([personId isEqualToString:personId2])
        {
          displayName = [(MOContact *)self displayName];
          displayName2 = [(MOContact *)v5 displayName];
          v12 = [displayName isEqualToString:displayName2];
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