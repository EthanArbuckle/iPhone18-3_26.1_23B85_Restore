@interface LNEntity
- (BOOL)isEqual:(id)a3;
- (LNEntity)initWithBSXPCCoder:(id)a3;
- (LNEntity)initWithCoder:(id)a3;
- (LNEntity)initWithTransient:(BOOL)a3 identifier:(id)a4 persistentFileIdentifiable:(BOOL)a5 properties:(id)a6 managedAccountIdentifier:(id)a7;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNEntity

- (unint64_t)hash
{
  if ([(LNEntity *)self isTransient])
  {
    v3 = [(LNEntity *)self properties];
    v4 = [v3 hash];
  }

  else
  {
    v3 = [(LNEntity *)self identifier];
    v5 = [v3 hash];
    v6 = [(LNEntity *)self properties];
    v4 = [v6 hash] ^ v5;
  }

  v7 = v4 ^ [(LNEntity *)self isTransient];
  v8 = [(LNEntity *)self managedAccountIdentifier];
  v9 = [v8 hash];
  v10 = [(LNEntity *)self prototypeMangledTypeName];
  v11 = v9 ^ [v10 hash];

  return v7 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNEntity *)self isTransient];
        if (v7 != [(LNEntity *)v6 isTransient])
        {
LABEL_5:
          LOBYTE(v8) = 0;
LABEL_43:

          goto LABEL_44;
        }

        if ([(LNEntity *)self isTransient])
        {
          v10 = [(LNEntity *)self properties];
          v11 = [(LNEntity *)v6 properties];

          if (v10 != v11)
          {
            v12 = [(LNEntity *)self properties];
            if (!v12)
            {
              goto LABEL_5;
            }

            v13 = v12;
            v14 = [(LNEntity *)v6 properties];

            if (!v14)
            {
              goto LABEL_5;
            }

            v15 = MEMORY[0x1E695DFD8];
            v16 = [(LNEntity *)self properties];
            v17 = [v15 setWithArray:v16];
            v18 = MEMORY[0x1E695DFD8];
            v19 = [(LNEntity *)v6 properties];
            v20 = [v18 setWithArray:v19];
            v21 = [v17 isEqualToSet:v20];

            if (!v21)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v22 = [(LNEntity *)self identifier];
          v23 = [(LNEntity *)v6 identifier];
          v9 = v22;
          v24 = v23;
          v25 = v24;
          if (v9 == v24)
          {
          }

          else
          {
            LOBYTE(v8) = 0;
            if (!v9 || !v24)
            {
              goto LABEL_32;
            }

            LODWORD(v8) = [(LNEntity *)v9 isEqual:v24];

            if (!v8)
            {
              goto LABEL_41;
            }
          }

          v26 = [(LNEntity *)self properties];
          v27 = [(LNEntity *)v6 properties];

          if (v26 == v27)
          {
          }

          else
          {
            v8 = [(LNEntity *)self properties];
            if (!v8)
            {
LABEL_41:

              goto LABEL_42;
            }

            v28 = [(LNEntity *)v6 properties];

            if (!v28)
            {
              LOBYTE(v8) = 0;
              goto LABEL_41;
            }

            v29 = MEMORY[0x1E695DFD8];
            v30 = [(LNEntity *)self properties];
            v31 = [v29 setWithArray:v30];
            v32 = MEMORY[0x1E695DFD8];
            v33 = [(LNEntity *)v6 properties];
            v34 = [v32 setWithArray:v33];
            v35 = [v31 isEqualToSet:v34];

            if ((v35 & 1) == 0)
            {
              goto LABEL_5;
            }
          }
        }

        v36 = [(LNEntity *)self managedAccountIdentifier];
        v37 = [(LNEntity *)v6 managedAccountIdentifier];
        v9 = v36;
        v38 = v37;
        v25 = v38;
        if (v9 == v38)
        {

LABEL_34:
          v41 = [(LNEntity *)self prototypeMangledTypeName];
          v42 = [(LNEntity *)v6 prototypeMangledTypeName];
          v40 = v41;
          v43 = v42;
          v39 = v43;
          if (v40 == v43)
          {
            LOBYTE(v8) = 1;
          }

          else
          {
            LOBYTE(v8) = 0;
            if (v40 && v43)
            {
              LOBYTE(v8) = [(LNEntity *)v40 isEqualToString:v43];
            }
          }

          goto LABEL_40;
        }

        LOBYTE(v8) = 0;
        if (v9 && v38)
        {
          LODWORD(v8) = [(LNEntity *)v9 isEqualToString:v38];

          if (!v8)
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

      LOBYTE(v8) = 0;
      v9 = v6;
      v6 = 0;
    }

    else
    {
      v9 = 0;
      LOBYTE(v8) = 0;
    }

LABEL_42:

    goto LABEL_43;
  }

  LOBYTE(v8) = 1;
LABEL_44:

  return v8;
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

  v6 = [(LNEntity *)self identifier];
  v7 = [(LNEntity *)self prototypeMangledTypeName];
  if ([(LNEntity *)self isPersistentFileIdentifiable])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(LNEntity *)self managedAccountIdentifier];
  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v16 = [(LNEntity *)self managedAccountIdentifier];
    v4 = [v10 stringWithFormat:@"MAI: %@, ", v16];
  }

  v11 = [(LNEntity *)self properties];
  v12 = [v11 valueForKeyPath:@"description"];
  v13 = [v12 componentsJoinedByString:{@", "}];
  v14 = [v17 stringWithFormat:@"<%@: %p, identifier: %@%@, prototypeMangledTypeName: %@, isFile: %@, %@ properties: [%@]>", v18, self, v5, v6, v7, v8, v4, v13];

  if (v9)
  {
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[LNEntity isTransient](self forKey:{"isTransient"), @"transient"}];
  [v4 encodeBool:-[LNEntity isPersistentFileIdentifiable](self forKey:{"isPersistentFileIdentifiable"), @"persistentFileIdentifiable"}];
  v5 = [(LNEntity *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNEntity *)self properties];
  [v4 encodeObject:v6 forKey:@"properties"];

  v7 = [(LNEntity *)self managedAccountIdentifier];
  [v4 encodeObject:v7 forKey:@"managedAccountIdentifier"];

  v8 = [(LNEntity *)self prototypeMangledTypeName];
  [v4 encodeObject:v8 forKey:@"prototypeMangledTypeName"];
}

- (LNEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"properties"];

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
    v17 = 0;
  }

  else
  {
    v11 = [v4 decodeBoolForKey:@"transient"];
    v12 = [v4 decodeBoolForKey:@"persistentFileIdentifiable"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managedAccountIdentifier"];
    v14 = [(LNEntity *)self initWithTransient:v11 identifier:v5 persistentFileIdentifiable:v12 properties:v9 managedAccountIdentifier:v13];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prototypeMangledTypeName"];
    prototypeMangledTypeName = v14->_prototypeMangledTypeName;
    v14->_prototypeMangledTypeName = v15;

    self = v14;
    v17 = self;
  }

  return v17;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[LNEntity isTransient](self forKey:{"isTransient"), @"transient"}];
  [v4 encodeBool:-[LNEntity isPersistentFileIdentifiable](self forKey:{"isPersistentFileIdentifiable"), @"persistentFileIdentifiable"}];
  v5 = [(LNEntity *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNEntity *)self properties];
  [v4 encodeObject:v6 forKey:@"properties"];

  v7 = [(LNEntity *)self managedAccountIdentifier];
  [v4 encodeObject:v7 forKey:@"managedAccountIdentifier"];

  v8 = [(LNEntity *)self prototypeMangledTypeName];
  [v4 encodeObject:v8 forKey:@"prototypeMangledTypeName"];
}

- (LNEntity)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = objc_opt_class();
  v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"properties"];
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
    v16 = 0;
  }

  else
  {
    v10 = [v4 decodeBoolForKey:@"transient"];
    v11 = [v4 decodeBoolForKey:@"persistentFileIdentifiable"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managedAccountIdentifier"];
    v13 = [(LNEntity *)self initWithTransient:v10 identifier:v5 persistentFileIdentifiable:v11 properties:v8 managedAccountIdentifier:v12];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prototypeMangledTypeName"];
    prototypeMangledTypeName = v13->_prototypeMangledTypeName;
    v13->_prototypeMangledTypeName = v14;

    self = v13;
    v16 = self;
  }

  return v16;
}

- (LNEntity)initWithTransient:(BOOL)a3 identifier:(id)a4 persistentFileIdentifiable:(BOOL)a5 properties:(id)a6 managedAccountIdentifier:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = LNEntity;
  v15 = [(LNEntity *)&v23 init];
  v16 = v15;
  if (v15)
  {
    v15->_transient = a3;
    v15->_persistentFileIdentifiable = a5;
    v17 = [v12 copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [v13 copy];
    properties = v16->_properties;
    v16->_properties = v19;

    objc_storeStrong(&v16->_managedAccountIdentifier, a7);
    v21 = v16;
  }

  return v16;
}

@end