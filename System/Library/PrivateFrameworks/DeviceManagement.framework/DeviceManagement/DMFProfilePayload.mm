@interface DMFProfilePayload
- (BOOL)isEqual:(id)equal;
- (DMFProfilePayload)initWithCoder:(id)coder;
- (DMFProfilePayload)initWithType:(id)type identifier:(id)identifier payloadVersion:(int64_t)version displayName:(id)name organization:(id)organization payloadDescription:(id)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFProfilePayload

- (DMFProfilePayload)initWithType:(id)type identifier:(id)identifier payloadVersion:(int64_t)version displayName:(id)name organization:(id)organization payloadDescription:(id)description
{
  typeCopy = type;
  identifierCopy = identifier;
  nameCopy = name;
  organizationCopy = organization;
  descriptionCopy = description;
  v31.receiver = self;
  v31.super_class = DMFProfilePayload;
  v19 = [(DMFProfilePayload *)&v31 init];
  if (v19)
  {
    v20 = [typeCopy copy];
    type = v19->_type;
    v19->_type = v20;

    v22 = [identifierCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v22;

    v19->_payloadVersion = version;
    v24 = [nameCopy copy];
    displayName = v19->_displayName;
    v19->_displayName = v24;

    v26 = [organizationCopy copy];
    organization = v19->_organization;
    v19->_organization = v26;

    v28 = [descriptionCopy copy];
    payloadDescription = v19->_payloadDescription;
    v19->_payloadDescription = v28;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  type = [(DMFProfilePayload *)self type];
  identifier = [(DMFProfilePayload *)self identifier];
  payloadVersion = [(DMFProfilePayload *)self payloadVersion];
  displayName = [(DMFProfilePayload *)self displayName];
  organization = [(DMFProfilePayload *)self organization];
  payloadDescription = [(DMFProfilePayload *)self payloadDescription];
  v11 = [v4 initWithType:type identifier:identifier payloadVersion:payloadVersion displayName:displayName organization:organization payloadDescription:payloadDescription];

  return v11;
}

- (DMFProfilePayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = DMFProfilePayload;
  v5 = [(DMFProfilePayload *)&v23 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"type"];
    type = v5->_type;
    v5->_type = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadVersion"];
    v5->_payloadVersion = [v12 integerValue];

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v14;

    v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"organization"];
    organization = v5->_organization;
    v5->_organization = v17;

    v19 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"payloadDescription"];
    payloadDescription = v5->_payloadDescription;
    v5->_payloadDescription = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(DMFProfilePayload *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  identifier = [(DMFProfilePayload *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[DMFProfilePayload payloadVersion](self, "payloadVersion")}];
  [coderCopy encodeObject:v7 forKey:@"payloadVersion"];

  displayName = [(DMFProfilePayload *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  organization = [(DMFProfilePayload *)self organization];
  [coderCopy encodeObject:organization forKey:@"organization"];

  payloadDescription = [(DMFProfilePayload *)self payloadDescription];
  [coderCopy encodeObject:payloadDescription forKey:@"payloadDescription"];
}

- (unint64_t)hash
{
  type = [(DMFProfilePayload *)self type];
  v4 = [type hash];
  identifier = [(DMFProfilePayload *)self identifier];
  v6 = [identifier hash] ^ v4;
  payloadVersion = [(DMFProfilePayload *)self payloadVersion];
  displayName = [(DMFProfilePayload *)self displayName];
  v9 = v6 ^ payloadVersion ^ [displayName hash];
  organization = [(DMFProfilePayload *)self organization];
  v11 = [organization hash];
  payloadDescription = [(DMFProfilePayload *)self payloadDescription];
  v13 = v11 ^ [payloadDescription hash];

  return v9 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v27 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(DMFProfilePayload *)self type];
      type2 = [(DMFProfilePayload *)v5 type];
      v8 = type;
      v9 = type2;
      if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
      {
        v27 = 0;
      }

      else
      {
        identifier = [(DMFProfilePayload *)self identifier];
        identifier2 = [(DMFProfilePayload *)v5 identifier];
        v13 = identifier;
        v14 = identifier2;
        if ((!(v13 | v14) || (v15 = [v13 isEqual:v14], v14, v13, v15)) && (v16 = -[DMFProfilePayload payloadVersion](self, "payloadVersion"), v16 == -[DMFProfilePayload payloadVersion](v5, "payloadVersion")))
        {
          displayName = [(DMFProfilePayload *)self displayName];
          displayName2 = [(DMFProfilePayload *)v5 displayName];
          v19 = displayName;
          v20 = displayName2;
          if (v19 | v20 && (v21 = [v19 isEqual:v20], v20, v19, !v21))
          {
            v27 = 0;
          }

          else
          {
            v31 = v20;
            organization = [(DMFProfilePayload *)self organization];
            organization2 = [(DMFProfilePayload *)v5 organization];
            v24 = organization;
            v32 = organization2;
            if (v24 | v32 && (v29 = [v24 isEqual:v32], v32, v24, !v29))
            {
              v27 = 0;
            }

            else
            {
              payloadDescription = [(DMFProfilePayload *)self payloadDescription];
              payloadDescription2 = [(DMFProfilePayload *)v5 payloadDescription];
              if (payloadDescription | payloadDescription2)
              {
                v27 = [payloadDescription isEqual:payloadDescription2];
              }

              else
              {
                v27 = 1;
              }

              v19 = v30;
            }

            v20 = v31;
          }
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 0;
    }
  }

  return v27;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(DMFProfilePayload *)self identifier];
  type = [(DMFProfilePayload *)self type];
  displayName = [(DMFProfilePayload *)self displayName];
  v8 = [v3 stringWithFormat:@"<%@: %p { identifier = %@, type = %@, displayName = %@ }>", v4, self, identifier, type, displayName];

  return v8;
}

@end