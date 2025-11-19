@interface DMFProfilePayload
- (BOOL)isEqual:(id)a3;
- (DMFProfilePayload)initWithCoder:(id)a3;
- (DMFProfilePayload)initWithType:(id)a3 identifier:(id)a4 payloadVersion:(int64_t)a5 displayName:(id)a6 organization:(id)a7 payloadDescription:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFProfilePayload

- (DMFProfilePayload)initWithType:(id)a3 identifier:(id)a4 payloadVersion:(int64_t)a5 displayName:(id)a6 organization:(id)a7 payloadDescription:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v31.receiver = self;
  v31.super_class = DMFProfilePayload;
  v19 = [(DMFProfilePayload *)&v31 init];
  if (v19)
  {
    v20 = [v14 copy];
    type = v19->_type;
    v19->_type = v20;

    v22 = [v15 copy];
    identifier = v19->_identifier;
    v19->_identifier = v22;

    v19->_payloadVersion = a5;
    v24 = [v16 copy];
    displayName = v19->_displayName;
    v19->_displayName = v24;

    v26 = [v17 copy];
    organization = v19->_organization;
    v19->_organization = v26;

    v28 = [v18 copy];
    payloadDescription = v19->_payloadDescription;
    v19->_payloadDescription = v28;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(DMFProfilePayload *)self type];
  v6 = [(DMFProfilePayload *)self identifier];
  v7 = [(DMFProfilePayload *)self payloadVersion];
  v8 = [(DMFProfilePayload *)self displayName];
  v9 = [(DMFProfilePayload *)self organization];
  v10 = [(DMFProfilePayload *)self payloadDescription];
  v11 = [v4 initWithType:v5 identifier:v6 payloadVersion:v7 displayName:v8 organization:v9 payloadDescription:v10];

  return v11;
}

- (DMFProfilePayload)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = DMFProfilePayload;
  v5 = [(DMFProfilePayload *)&v23 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"type"];
    type = v5->_type;
    v5->_type = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payloadVersion"];
    v5->_payloadVersion = [v12 integerValue];

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v14;

    v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"organization"];
    organization = v5->_organization;
    v5->_organization = v17;

    v19 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"payloadDescription"];
    payloadDescription = v5->_payloadDescription;
    v5->_payloadDescription = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMFProfilePayload *)self type];
  [v4 encodeObject:v5 forKey:@"type"];

  v6 = [(DMFProfilePayload *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[DMFProfilePayload payloadVersion](self, "payloadVersion")}];
  [v4 encodeObject:v7 forKey:@"payloadVersion"];

  v8 = [(DMFProfilePayload *)self displayName];
  [v4 encodeObject:v8 forKey:@"displayName"];

  v9 = [(DMFProfilePayload *)self organization];
  [v4 encodeObject:v9 forKey:@"organization"];

  v10 = [(DMFProfilePayload *)self payloadDescription];
  [v4 encodeObject:v10 forKey:@"payloadDescription"];
}

- (unint64_t)hash
{
  v3 = [(DMFProfilePayload *)self type];
  v4 = [v3 hash];
  v5 = [(DMFProfilePayload *)self identifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(DMFProfilePayload *)self payloadVersion];
  v8 = [(DMFProfilePayload *)self displayName];
  v9 = v6 ^ v7 ^ [v8 hash];
  v10 = [(DMFProfilePayload *)self organization];
  v11 = [v10 hash];
  v12 = [(DMFProfilePayload *)self payloadDescription];
  v13 = v11 ^ [v12 hash];

  return v9 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v27 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DMFProfilePayload *)self type];
      v7 = [(DMFProfilePayload *)v5 type];
      v8 = v6;
      v9 = v7;
      if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
      {
        v27 = 0;
      }

      else
      {
        v11 = [(DMFProfilePayload *)self identifier];
        v12 = [(DMFProfilePayload *)v5 identifier];
        v13 = v11;
        v14 = v12;
        if ((!(v13 | v14) || (v15 = [v13 isEqual:v14], v14, v13, v15)) && (v16 = -[DMFProfilePayload payloadVersion](self, "payloadVersion"), v16 == -[DMFProfilePayload payloadVersion](v5, "payloadVersion")))
        {
          v17 = [(DMFProfilePayload *)self displayName];
          v18 = [(DMFProfilePayload *)v5 displayName];
          v19 = v17;
          v20 = v18;
          if (v19 | v20 && (v21 = [v19 isEqual:v20], v20, v19, !v21))
          {
            v27 = 0;
          }

          else
          {
            v31 = v20;
            v22 = [(DMFProfilePayload *)self organization];
            v23 = [(DMFProfilePayload *)v5 organization];
            v24 = v22;
            v32 = v23;
            if (v24 | v32 && (v29 = [v24 isEqual:v32], v32, v24, !v29))
            {
              v27 = 0;
            }

            else
            {
              v25 = [(DMFProfilePayload *)self payloadDescription];
              v26 = [(DMFProfilePayload *)v5 payloadDescription];
              if (v25 | v26)
              {
                v27 = [v25 isEqual:v26];
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
  v5 = [(DMFProfilePayload *)self identifier];
  v6 = [(DMFProfilePayload *)self type];
  v7 = [(DMFProfilePayload *)self displayName];
  v8 = [v3 stringWithFormat:@"<%@: %p { identifier = %@, type = %@, displayName = %@ }>", v4, self, v5, v6, v7];

  return v8;
}

@end