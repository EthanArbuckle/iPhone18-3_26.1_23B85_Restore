@interface LNEntity
- (BOOL)isEqual:(id)equal;
- (LNEntity)initWithBSXPCCoder:(id)coder;
- (LNEntity)initWithCoder:(id)coder;
- (LNEntity)initWithTransient:(BOOL)transient identifier:(id)identifier persistentFileIdentifiable:(BOOL)identifiable properties:(id)properties managedAccountIdentifier:(id)accountIdentifier;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNEntity

- (unint64_t)hash
{
  if ([(LNEntity *)self isTransient])
  {
    properties = [(LNEntity *)self properties];
    v4 = [properties hash];
  }

  else
  {
    properties = [(LNEntity *)self identifier];
    v5 = [properties hash];
    properties2 = [(LNEntity *)self properties];
    v4 = [properties2 hash] ^ v5;
  }

  v7 = v4 ^ [(LNEntity *)self isTransient];
  managedAccountIdentifier = [(LNEntity *)self managedAccountIdentifier];
  v9 = [managedAccountIdentifier hash];
  prototypeMangledTypeName = [(LNEntity *)self prototypeMangledTypeName];
  v11 = v9 ^ [prototypeMangledTypeName hash];

  return v7 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isTransient = [(LNEntity *)self isTransient];
        if (isTransient != [(LNEntity *)v6 isTransient])
        {
LABEL_5:
          LOBYTE(properties9) = 0;
LABEL_43:

          goto LABEL_44;
        }

        if ([(LNEntity *)self isTransient])
        {
          properties = [(LNEntity *)self properties];
          properties2 = [(LNEntity *)v6 properties];

          if (properties != properties2)
          {
            properties3 = [(LNEntity *)self properties];
            if (!properties3)
            {
              goto LABEL_5;
            }

            v13 = properties3;
            properties4 = [(LNEntity *)v6 properties];

            if (!properties4)
            {
              goto LABEL_5;
            }

            v15 = MEMORY[0x1E695DFD8];
            properties5 = [(LNEntity *)self properties];
            v17 = [v15 setWithArray:properties5];
            v18 = MEMORY[0x1E695DFD8];
            properties6 = [(LNEntity *)v6 properties];
            v20 = [v18 setWithArray:properties6];
            v21 = [v17 isEqualToSet:v20];

            if (!v21)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          identifier = [(LNEntity *)self identifier];
          identifier2 = [(LNEntity *)v6 identifier];
          v9 = identifier;
          v24 = identifier2;
          v25 = v24;
          if (v9 == v24)
          {
          }

          else
          {
            LOBYTE(properties9) = 0;
            if (!v9 || !v24)
            {
              goto LABEL_32;
            }

            LODWORD(properties9) = [(LNEntity *)v9 isEqual:v24];

            if (!properties9)
            {
              goto LABEL_41;
            }
          }

          properties7 = [(LNEntity *)self properties];
          properties8 = [(LNEntity *)v6 properties];

          if (properties7 == properties8)
          {
          }

          else
          {
            properties9 = [(LNEntity *)self properties];
            if (!properties9)
            {
LABEL_41:

              goto LABEL_42;
            }

            properties10 = [(LNEntity *)v6 properties];

            if (!properties10)
            {
              LOBYTE(properties9) = 0;
              goto LABEL_41;
            }

            v29 = MEMORY[0x1E695DFD8];
            properties11 = [(LNEntity *)self properties];
            v31 = [v29 setWithArray:properties11];
            v32 = MEMORY[0x1E695DFD8];
            properties12 = [(LNEntity *)v6 properties];
            v34 = [v32 setWithArray:properties12];
            v35 = [v31 isEqualToSet:v34];

            if ((v35 & 1) == 0)
            {
              goto LABEL_5;
            }
          }
        }

        managedAccountIdentifier = [(LNEntity *)self managedAccountIdentifier];
        managedAccountIdentifier2 = [(LNEntity *)v6 managedAccountIdentifier];
        v9 = managedAccountIdentifier;
        v38 = managedAccountIdentifier2;
        v25 = v38;
        if (v9 == v38)
        {

LABEL_34:
          prototypeMangledTypeName = [(LNEntity *)self prototypeMangledTypeName];
          prototypeMangledTypeName2 = [(LNEntity *)v6 prototypeMangledTypeName];
          v40 = prototypeMangledTypeName;
          v43 = prototypeMangledTypeName2;
          v39 = v43;
          if (v40 == v43)
          {
            LOBYTE(properties9) = 1;
          }

          else
          {
            LOBYTE(properties9) = 0;
            if (v40 && v43)
            {
              LOBYTE(properties9) = [(LNEntity *)v40 isEqualToString:v43];
            }
          }

          goto LABEL_40;
        }

        LOBYTE(properties9) = 0;
        if (v9 && v38)
        {
          LODWORD(properties9) = [(LNEntity *)v9 isEqualToString:v38];

          if (!properties9)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        }

LABEL_32:
        v39 = v25;
        v40 = v9;
LABEL_40:

        goto LABEL_41;
      }

      LOBYTE(properties9) = 0;
      v9 = v6;
      v6 = 0;
    }

    else
    {
      v9 = 0;
      LOBYTE(properties9) = 0;
    }

LABEL_42:

    goto LABEL_43;
  }

  LOBYTE(properties9) = 1;
LABEL_44:

  return properties9;
}

- (NSString)description
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v18 = NSStringFromClass(v3);
  v4 = &stru_1F02ED148;
  if ([(LNEntity *)self isTransient])
  {
    v5 = @"(transient) ";
  }

  else
  {
    v5 = &stru_1F02ED148;
  }

  identifier = [(LNEntity *)self identifier];
  prototypeMangledTypeName = [(LNEntity *)self prototypeMangledTypeName];
  if ([(LNEntity *)self isPersistentFileIdentifiable])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  managedAccountIdentifier = [(LNEntity *)self managedAccountIdentifier];
  if (managedAccountIdentifier)
  {
    v10 = MEMORY[0x1E696AEC0];
    managedAccountIdentifier2 = [(LNEntity *)self managedAccountIdentifier];
    v4 = [v10 stringWithFormat:@"MAI: %@, ", managedAccountIdentifier2];
  }

  properties = [(LNEntity *)self properties];
  v12 = [properties valueForKeyPath:@"description"];
  v13 = [v12 componentsJoinedByString:{@", "}];
  v14 = [v17 stringWithFormat:@"<%@: %p, identifier: %@%@, prototypeMangledTypeName: %@, isFile: %@, %@ properties: [%@]>", v18, self, v5, identifier, prototypeMangledTypeName, v8, v4, v13];

  if (managedAccountIdentifier)
  {
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[LNEntity isTransient](self forKey:{"isTransient"), @"transient"}];
  [coderCopy encodeBool:-[LNEntity isPersistentFileIdentifiable](self forKey:{"isPersistentFileIdentifiable"), @"persistentFileIdentifiable"}];
  identifier = [(LNEntity *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  properties = [(LNEntity *)self properties];
  [coderCopy encodeObject:properties forKey:@"properties"];

  managedAccountIdentifier = [(LNEntity *)self managedAccountIdentifier];
  [coderCopy encodeObject:managedAccountIdentifier forKey:@"managedAccountIdentifier"];

  prototypeMangledTypeName = [(LNEntity *)self prototypeMangledTypeName];
  [coderCopy encodeObject:prototypeMangledTypeName forKey:@"prototypeMangledTypeName"];
}

- (LNEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"properties"];

  if (v5)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    selfCopy = 0;
  }

  else
  {
    v11 = [coderCopy decodeBoolForKey:@"transient"];
    v12 = [coderCopy decodeBoolForKey:@"persistentFileIdentifiable"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managedAccountIdentifier"];
    v14 = [(LNEntity *)self initWithTransient:v11 identifier:v5 persistentFileIdentifiable:v12 properties:v9 managedAccountIdentifier:v13];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prototypeMangledTypeName"];
    prototypeMangledTypeName = v14->_prototypeMangledTypeName;
    v14->_prototypeMangledTypeName = v15;

    self = v14;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[LNEntity isTransient](self forKey:{"isTransient"), @"transient"}];
  [coderCopy encodeBool:-[LNEntity isPersistentFileIdentifiable](self forKey:{"isPersistentFileIdentifiable"), @"persistentFileIdentifiable"}];
  identifier = [(LNEntity *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  properties = [(LNEntity *)self properties];
  [coderCopy encodeObject:properties forKey:@"properties"];

  managedAccountIdentifier = [(LNEntity *)self managedAccountIdentifier];
  [coderCopy encodeObject:managedAccountIdentifier forKey:@"managedAccountIdentifier"];

  prototypeMangledTypeName = [(LNEntity *)self prototypeMangledTypeName];
  [coderCopy encodeObject:prototypeMangledTypeName forKey:@"prototypeMangledTypeName"];
}

- (LNEntity)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = objc_opt_class();
  v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"properties"];
  v8 = v7;
  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    selfCopy = 0;
  }

  else
  {
    v10 = [coderCopy decodeBoolForKey:@"transient"];
    v11 = [coderCopy decodeBoolForKey:@"persistentFileIdentifiable"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managedAccountIdentifier"];
    v13 = [(LNEntity *)self initWithTransient:v10 identifier:v5 persistentFileIdentifiable:v11 properties:v8 managedAccountIdentifier:v12];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prototypeMangledTypeName"];
    prototypeMangledTypeName = v13->_prototypeMangledTypeName;
    v13->_prototypeMangledTypeName = v14;

    self = v13;
    selfCopy = self;
  }

  return selfCopy;
}

- (LNEntity)initWithTransient:(BOOL)transient identifier:(id)identifier persistentFileIdentifiable:(BOOL)identifiable properties:(id)properties managedAccountIdentifier:(id)accountIdentifier
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  accountIdentifierCopy = accountIdentifier;
  v23.receiver = self;
  v23.super_class = LNEntity;
  v15 = [(LNEntity *)&v23 init];
  v16 = v15;
  if (v15)
  {
    v15->_transient = transient;
    v15->_persistentFileIdentifiable = identifiable;
    v17 = [identifierCopy copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [propertiesCopy copy];
    properties = v16->_properties;
    v16->_properties = v19;

    objc_storeStrong(&v16->_managedAccountIdentifier, accountIdentifier);
    v21 = v16;
  }

  return v16;
}

@end