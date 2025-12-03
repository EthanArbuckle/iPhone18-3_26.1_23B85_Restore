@interface DDSAssertDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDescriptor:(id)descriptor;
- (DDSAssertDescriptor)initWithCoder:(id)coder;
- (DDSAssertDescriptor)initWithPolicy:(id)policy assertionID:(id)d clientID:(id)iD;
- (id)description;
- (id)dumpDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DDSAssertDescriptor

- (DDSAssertDescriptor)initWithPolicy:(id)policy assertionID:(id)d clientID:(id)iD
{
  policyCopy = policy;
  dCopy = d;
  iDCopy = iD;
  v15.receiver = self;
  v15.super_class = DDSAssertDescriptor;
  v12 = [(DDSAssertDescriptor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_policy, policy);
    objc_storeStrong(&v13->_assertionIdentifier, d);
    objc_storeStrong(&v13->_clientIdentifier, iD);
  }

  return v13;
}

- (DDSAssertDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = DDSAssertDescriptor;
  v5 = [(DDSAssertDescriptor *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_policy);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    policy = v5->_policy;
    v5->_policy = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_assertionIdentifier);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    assertionIdentifier = v5->_assertionIdentifier;
    v5->_assertionIdentifier = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_clientIdentifier);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assertionIdentifier = [(DDSAssertDescriptor *)self assertionIdentifier];
  v6 = NSStringFromSelector(sel_assertionIdentifier);
  [coderCopy encodeObject:assertionIdentifier forKey:v6];

  clientIdentifier = [(DDSAssertDescriptor *)self clientIdentifier];
  v8 = NSStringFromSelector(sel_clientIdentifier);
  [coderCopy encodeObject:clientIdentifier forKey:v8];

  policy = [(DDSAssertDescriptor *)self policy];
  v9 = NSStringFromSelector(sel_policy);
  [coderCopy encodeObject:policy forKey:v9];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DDSAssertDescriptor *)self isEqualToDescriptor:equalCopy];

  return v5;
}

- (BOOL)isEqualToDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  policy = [(DDSAssertDescriptor *)self policy];
  policy2 = [descriptorCopy policy];
  if (DDSObjectsAreEqualOrNil(policy, policy2))
  {
    assertionIdentifier = [(DDSAssertDescriptor *)self assertionIdentifier];
    assertionIdentifier2 = [descriptorCopy assertionIdentifier];
    if ([assertionIdentifier isEqualToString:assertionIdentifier2])
    {
      clientIdentifier = [(DDSAssertDescriptor *)self clientIdentifier];
      clientIdentifier2 = [descriptorCopy clientIdentifier];
      v11 = [clientIdentifier isEqual:clientIdentifier2];
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
  policy = [(DDSAssertDescriptor *)self policy];
  v4 = [policy hash];
  assertionIdentifier = [(DDSAssertDescriptor *)self assertionIdentifier];
  v6 = [assertionIdentifier hash] ^ v4;
  clientIdentifier = [(DDSAssertDescriptor *)self clientIdentifier];
  v8 = [clientIdentifier hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  assertionIdentifier = [(DDSAssertDescriptor *)self assertionIdentifier];
  clientIdentifier = [(DDSAssertDescriptor *)self clientIdentifier];
  v8 = [v3 stringWithFormat:@"<%@ %p: aID: %@ cID: %@>", v5, self, assertionIdentifier, clientIdentifier];

  return v8;
}

- (id)dumpDescription
{
  if (DDS_IS_INTERNAL_INSTALL())
  {
    v3 = MEMORY[0x1E696AEC0];
    assertionIdentifier = [(DDSAssertDescriptor *)self assertionIdentifier];
    clientIdentifier = [(DDSAssertDescriptor *)self clientIdentifier];
    policy = [(DDSAssertDescriptor *)self policy];
    dumpDescription = [policy dumpDescription];
    v8 = [v3 stringWithFormat:@"%@, %@ (%@)", assertionIdentifier, clientIdentifier, dumpDescription];
  }

  else
  {
    v8 = &stru_1F5ABCB80;
  }

  return v8;
}

@end