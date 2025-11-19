@interface DMFPolicyRegistration
- (BOOL)isEqual:(id)a3;
- (DMFPolicyRegistration)initWithCoder:(id)a3;
- (DMFPolicyRegistration)initWithIdentifier:(id)a3 policyTypes:(id)a4 callback:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFPolicyRegistration

- (DMFPolicyRegistration)initWithIdentifier:(id)a3 policyTypes:(id)a4 callback:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![v10 count])
  {
    [DMFPolicyRegistration initWithIdentifier:a2 policyTypes:self callback:?];
  }

  v20.receiver = self;
  v20.super_class = DMFPolicyRegistration;
  v12 = [(DMFPolicyRegistration *)&v20 init];
  if (v12)
  {
    v13 = [v9 copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [v10 copy];
    policyTypes = v12->_policyTypes;
    v12->_policyTypes = v15;

    v17 = MEMORY[0x1E128DE70](v11);
    callback = v12->_callback;
    v12->_callback = v17;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  identifier = self->_identifier;
  policyTypes = self->_policyTypes;
  callback = self->_callback;

  return [v4 initWithIdentifier:identifier policyTypes:policyTypes callback:callback];
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_policyTypes forKey:@"policyTypes"];
}

- (DMFPolicyRegistration)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DMFPolicyRegistration;
  v5 = [(DMFPolicyRegistration *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"policyTypes"];

    v11 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v13 = [v10 copy];
    policyTypes = v5->_policyTypes;
    v5->_policyTypes = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DMFPolicyRegistration *)self identifier];
      v7 = [(DMFPolicyRegistration *)v5 identifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(DMFPolicyRegistration *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)initWithIdentifier:(uint64_t)a1 policyTypes:(uint64_t)a2 callback:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMFPolicyRegistration.m" lineNumber:21 description:@"Missing policy types"];
}

@end