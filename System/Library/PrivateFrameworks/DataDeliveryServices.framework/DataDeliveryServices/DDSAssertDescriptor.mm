@interface DDSAssertDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDescriptor:(id)a3;
- (DDSAssertDescriptor)initWithCoder:(id)a3;
- (DDSAssertDescriptor)initWithPolicy:(id)a3 assertionID:(id)a4 clientID:(id)a5;
- (id)description;
- (id)dumpDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DDSAssertDescriptor

- (DDSAssertDescriptor)initWithPolicy:(id)a3 assertionID:(id)a4 clientID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = DDSAssertDescriptor;
  v12 = [(DDSAssertDescriptor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_policy, a3);
    objc_storeStrong(&v13->_assertionIdentifier, a4);
    objc_storeStrong(&v13->_clientIdentifier, a5);
  }

  return v13;
}

- (DDSAssertDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DDSAssertDescriptor;
  v5 = [(DDSAssertDescriptor *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_policy);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    policy = v5->_policy;
    v5->_policy = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_assertionIdentifier);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    assertionIdentifier = v5->_assertionIdentifier;
    v5->_assertionIdentifier = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_clientIdentifier);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DDSAssertDescriptor *)self assertionIdentifier];
  v6 = NSStringFromSelector(sel_assertionIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(DDSAssertDescriptor *)self clientIdentifier];
  v8 = NSStringFromSelector(sel_clientIdentifier);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(DDSAssertDescriptor *)self policy];
  v9 = NSStringFromSelector(sel_policy);
  [v4 encodeObject:v10 forKey:v9];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DDSAssertDescriptor *)self isEqualToDescriptor:v4];

  return v5;
}

- (BOOL)isEqualToDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(DDSAssertDescriptor *)self policy];
  v6 = [v4 policy];
  if (DDSObjectsAreEqualOrNil(v5, v6))
  {
    v7 = [(DDSAssertDescriptor *)self assertionIdentifier];
    v8 = [v4 assertionIdentifier];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(DDSAssertDescriptor *)self clientIdentifier];
      v10 = [v4 clientIdentifier];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(DDSAssertDescriptor *)self policy];
  v4 = [v3 hash];
  v5 = [(DDSAssertDescriptor *)self assertionIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(DDSAssertDescriptor *)self clientIdentifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DDSAssertDescriptor *)self assertionIdentifier];
  v7 = [(DDSAssertDescriptor *)self clientIdentifier];
  v8 = [v3 stringWithFormat:@"<%@ %p: aID: %@ cID: %@>", v5, self, v6, v7];

  return v8;
}

- (id)dumpDescription
{
  if (DDS_IS_INTERNAL_INSTALL())
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(DDSAssertDescriptor *)self assertionIdentifier];
    v5 = [(DDSAssertDescriptor *)self clientIdentifier];
    v6 = [(DDSAssertDescriptor *)self policy];
    v7 = [v6 dumpDescription];
    v8 = [v3 stringWithFormat:@"%@, %@ (%@)", v4, v5, v7];
  }

  else
  {
    v8 = &stru_1F5ABCB80;
  }

  return v8;
}

@end