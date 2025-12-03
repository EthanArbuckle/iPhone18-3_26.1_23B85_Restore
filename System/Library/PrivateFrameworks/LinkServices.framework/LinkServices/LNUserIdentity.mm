@interface LNUserIdentity
- (BOOL)isEqual:(id)equal;
- (LNUserIdentity)initWithCoder:(id)coder;
- (LNUserIdentity)initWithPersonaUniqueIdentifier:(id)identifier accessLevel:(int64_t)level;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNUserIdentity

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      personaUniqueIdentifier = [(LNUserIdentity *)self personaUniqueIdentifier];
      personaUniqueIdentifier2 = [(LNUserIdentity *)v6 personaUniqueIdentifier];
      v9 = personaUniqueIdentifier;
      v10 = personaUniqueIdentifier2;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqualToString:v10];
        }
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
  personaUniqueIdentifier = [(LNUserIdentity *)self personaUniqueIdentifier];
  v3 = [personaUniqueIdentifier hash];

  return v3;
}

- (LNUserIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueIdentifier"];
  v6 = [coderCopy decodeIntForKey:@"accessLevel"];

  v7 = [(LNUserIdentity *)self initWithPersonaUniqueIdentifier:v5 accessLevel:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  personaUniqueIdentifier = [(LNUserIdentity *)self personaUniqueIdentifier];
  [coderCopy encodeObject:personaUniqueIdentifier forKey:@"personaUniqueIdentifier"];

  [coderCopy encodeInteger:-[LNUserIdentity accessLevel](self forKey:{"accessLevel"), @"accessLevel"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  personaUniqueIdentifier = [(LNUserIdentity *)self personaUniqueIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, userPersonaUniqueIdentifier: %@, accessLevel: %ld>", v5, self, personaUniqueIdentifier, -[LNUserIdentity accessLevel](self, "accessLevel")];

  return v7;
}

- (LNUserIdentity)initWithPersonaUniqueIdentifier:(id)identifier accessLevel:(int64_t)level
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNUserIdentity.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"personaUniqueIdentifier"}];
  }

  v14.receiver = self;
  v14.super_class = LNUserIdentity;
  v8 = [(LNUserIdentity *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    personaUniqueIdentifier = v8->_personaUniqueIdentifier;
    v8->_personaUniqueIdentifier = v9;

    v8->_accessLevel = level;
    v11 = v8;
  }

  return v8;
}

@end