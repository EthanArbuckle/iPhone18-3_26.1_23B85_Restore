@interface DMFPolicyRegistration
- (BOOL)isEqual:(id)equal;
- (DMFPolicyRegistration)initWithCoder:(id)coder;
- (DMFPolicyRegistration)initWithIdentifier:(id)identifier policyTypes:(id)types callback:(id)callback;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFPolicyRegistration

- (DMFPolicyRegistration)initWithIdentifier:(id)identifier policyTypes:(id)types callback:(id)callback
{
  identifierCopy = identifier;
  typesCopy = types;
  callbackCopy = callback;
  if (![typesCopy count])
  {
    [DMFPolicyRegistration initWithIdentifier:a2 policyTypes:self callback:?];
  }

  v20.receiver = self;
  v20.super_class = DMFPolicyRegistration;
  v12 = [(DMFPolicyRegistration *)&v20 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [typesCopy copy];
    policyTypes = v12->_policyTypes;
    v12->_policyTypes = v15;

    v17 = MEMORY[0x1E128DE70](callbackCopy);
    callback = v12->_callback;
    v12->_callback = v17;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;
  policyTypes = self->_policyTypes;
  callback = self->_callback;

  return [v4 initWithIdentifier:identifier policyTypes:policyTypes callback:callback];
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_policyTypes forKey:@"policyTypes"];
}

- (DMFPolicyRegistration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = DMFPolicyRegistration;
  v5 = [(DMFPolicyRegistration *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"policyTypes"];

    v11 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v13 = [v10 copy];
    policyTypes = v5->_policyTypes;
    v5->_policyTypes = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(DMFPolicyRegistration *)self identifier];
      identifier2 = [(DMFPolicyRegistration *)v5 identifier];

      v8 = [identifier isEqual:identifier2];
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
  identifier = [(DMFPolicyRegistration *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)initWithIdentifier:(uint64_t)a1 policyTypes:(uint64_t)a2 callback:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMFPolicyRegistration.m" lineNumber:21 description:@"Missing policy types"];
}

@end