@interface LNUserIdentity
- (BOOL)isEqual:(id)a3;
- (LNUserIdentity)initWithCoder:(id)a3;
- (LNUserIdentity)initWithPersonaUniqueIdentifier:(id)a3 accessLevel:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNUserIdentity

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNUserIdentity *)self personaUniqueIdentifier];
      v8 = [(LNUserIdentity *)v6 personaUniqueIdentifier];
      v9 = v7;
      v10 = v8;
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
  v2 = [(LNUserIdentity *)self personaUniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (LNUserIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueIdentifier"];
  v6 = [v4 decodeIntForKey:@"accessLevel"];

  v7 = [(LNUserIdentity *)self initWithPersonaUniqueIdentifier:v5 accessLevel:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(LNUserIdentity *)self personaUniqueIdentifier];
  [v5 encodeObject:v4 forKey:@"personaUniqueIdentifier"];

  [v5 encodeInteger:-[LNUserIdentity accessLevel](self forKey:{"accessLevel"), @"accessLevel"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNUserIdentity *)self personaUniqueIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, userPersonaUniqueIdentifier: %@, accessLevel: %ld>", v5, self, v6, -[LNUserIdentity accessLevel](self, "accessLevel")];

  return v7;
}

- (LNUserIdentity)initWithPersonaUniqueIdentifier:(id)a3 accessLevel:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"LNUserIdentity.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"personaUniqueIdentifier"}];
  }

  v14.receiver = self;
  v14.super_class = LNUserIdentity;
  v8 = [(LNUserIdentity *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    personaUniqueIdentifier = v8->_personaUniqueIdentifier;
    v8->_personaUniqueIdentifier = v9;

    v8->_accessLevel = a4;
    v11 = v8;
  }

  return v8;
}

@end