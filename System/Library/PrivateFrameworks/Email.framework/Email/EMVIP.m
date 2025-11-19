@interface EMVIP
- (BOOL)_isEqualToVIP:(id)a3;
- (BOOL)isEqual:(id)a3;
- (EMVIP)initWithCoder:(id)a3;
- (EMVIP)initWithIdentifier:(id)a3 name:(id)a4 emailAddresses:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)_commonInitWithIdentifier:(id)a3 name:(id)a4 emailAddresses:(id)a5 displayName:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMVIP

- (EMVIP)initWithIdentifier:(id)a3 name:(id)a4 emailAddresses:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = EMVIP;
  v11 = [(EMVIP *)&v16 init];
  if (v11)
  {
    if (![v10 count])
    {
      v13 = v11;
      v11 = 0;
LABEL_10:

      goto LABEL_11;
    }

    if (v8)
    {
      if (v9)
      {
LABEL_5:
        v12 = v9;
LABEL_9:
        v13 = v12;
        [(EMVIP *)v11 _commonInitWithIdentifier:v8 name:v9 emailAddresses:v10 displayName:v12];
        goto LABEL_10;
      }
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      v8 = [v14 UUIDString];

      if (v9)
      {
        goto LABEL_5;
      }
    }

    v12 = [v10 anyObject];
    goto LABEL_9;
  }

LABEL_11:

  return v11;
}

- (void)_commonInitWithIdentifier:(id)a3 name:(id)a4 emailAddresses:(id)a5 displayName:(id)a6
{
  v21 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v21 copy];
  identifier = self->_identifier;
  self->_identifier = v13;

  v15 = [v10 copy];
  name = self->_name;
  self->_name = v15;

  v17 = [v11 copy];
  emailAddresses = self->_emailAddresses;
  self->_emailAddresses = v17;

  v19 = [v12 copy];
  displayName = self->_displayName;
  self->_displayName = v19;
}

- (id)description
{
  v3 = MEMORY[0x1E699B858];
  v4 = [(EMVIP *)self name];
  v5 = [v3 partiallyRedactedStringForString:v4];

  v6 = MEMORY[0x1E699B858];
  v7 = [(EMVIP *)self emailAddresses];
  v8 = [v7 allObjects];
  v9 = [v6 partiallyRedactedStringFromArray:v8];

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = &stru_1F45FD218;
  if (v5)
  {
    v12 = v5;
  }

  v13 = [v10 stringWithFormat:@"<%@: %p> '%@' {%@}", v11, self, v12, v9];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(EMVIP *)self _isEqualToVIP:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(EMVIP *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (EMVIP)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = EMVIP;
  v5 = [(EMVIP *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EMVIPEmailAddresses"];
    v7 = [objc_alloc(MEMORY[0x1E699AFD8]) initWithSerializedRepresentation:v6];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_identifier"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_name"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayName"];
    [(EMVIP *)v5 _commonInitWithIdentifier:v8 name:v9 emailAddresses:v7 displayName:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(EMVIP *)self identifier];
  [v9 encodeObject:v4 forKey:@"EFPropertyKey_identifier"];

  v5 = [(EMVIP *)self name];
  [v9 encodeObject:v5 forKey:@"EFPropertyKey_name"];

  v6 = [(EMVIP *)self displayName];
  [v9 encodeObject:v6 forKey:@"EFPropertyKey_displayName"];

  v7 = [(EMVIP *)self emailAddresses];
  v8 = [v7 serializedRepresentation];
  [v9 encodeObject:v8 forKey:@"EMVIPEmailAddresses"];
}

- (BOOL)_isEqualToVIP:(id)a3
{
  v4 = a3;
  v5 = [(EMVIP *)self identifier];
  v6 = [v4 identifier];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

@end