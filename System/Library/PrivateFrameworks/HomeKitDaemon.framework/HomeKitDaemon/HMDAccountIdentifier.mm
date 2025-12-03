@interface HMDAccountIdentifier
+ (id)accountIdentifierForAccountHandle:(id)handle;
+ (id)accountIdentifierForAppleAccountContext:(id)context;
+ (id)accountIdentifierForMessageContext:(id)context;
+ (id)accountIdentifierForSenderCorrelationIdentifier:(id)identifier;
- (BOOL)isAuthenticated;
- (BOOL)isEqual:(id)equal;
- (HMDAccountIdentifier)init;
- (HMDAccountIdentifier)initWithCoder:(id)coder;
- (HMDAccountIdentifier)initWithInternal:(id)internal;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (NSUUID)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAccountIdentifier

- (NSUUID)identifier
{
  internal = [(HMDAccountIdentifier *)self internal];
  identifier = [internal identifier];

  return identifier;
}

- (unint64_t)hash
{
  internal = [(HMDAccountIdentifier *)self internal];
  v3 = [internal hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  internal = [(HMDAccountIdentifier *)self internal];
  [coderCopy encodeObject:internal forKey:@"HM.internal"];
}

- (HMDAccountIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.internal"];

  v6 = [(HMDAccountIdentifier *)self initWithInternal:v5];
  return v6;
}

- (BOOL)isAuthenticated
{
  internal = [(HMDAccountIdentifier *)self internal];
  isAuthenticated = [internal isAuthenticated];

  return isAuthenticated;
}

- (NSArray)attributeDescriptions
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  internal = [(HMDAccountIdentifier *)self internal];
  kind = [internal kind];
  v6 = [v3 initWithName:@"KN" value:kind];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDAccountIdentifier *)self identifier];
  uUIDString = [identifier UUIDString];
  v10 = [v7 initWithName:@"ID" value:uUIDString];
  v17[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  senderCorrelationIdentifier = [(HMDAccountIdentifier *)self senderCorrelationIdentifier];
  v13 = [v11 initWithName:@"MID" value:senderCorrelationIdentifier];
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  internal = [(HMDAccountIdentifier *)self internal];
  kind = [internal kind];
  identifier = [(HMDAccountIdentifier *)self identifier];
  uUIDString = [identifier UUIDString];
  v8 = [v3 stringWithFormat:@"(%@)%@", kind, uUIDString];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      internal = [(HMDAccountIdentifier *)self internal];
      internal2 = [(HMDAccountIdentifier *)v6 internal];
      v9 = [internal isEqual:internal2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMDAccountIdentifier)initWithInternal:(id)internal
{
  internalCopy = internal;
  if (internalCopy)
  {
    v10.receiver = self;
    v10.super_class = HMDAccountIdentifier;
    v6 = [(HMDAccountIdentifier *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_internal, internal);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMDAccountIdentifier)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)accountIdentifierForSenderCorrelationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v4 = [[_HMDIDSAccountIdentifier alloc] initWithIdentifierString:identifierCopy];
    v5 = [[HMDAccountIdentifier alloc] initWithInternal:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)accountIdentifierForMessageContext:(id)context
{
  senderCorrelationIdentifier = [context senderCorrelationIdentifier];
  v5 = [self accountIdentifierForSenderCorrelationIdentifier:senderCorrelationIdentifier];

  return v5;
}

+ (id)accountIdentifierForAppleAccountContext:(id)context
{
  contextCopy = context;
  v4 = [_HMDAppleAccountIdentifier alloc];
  identifier = [contextCopy identifier];

  v6 = [(_HMDAppleAccountIdentifier *)v4 initWithIdentifierString:identifier];
  v7 = [[HMDAccountIdentifier alloc] initWithInternal:v6];

  return v7;
}

+ (id)accountIdentifierForAccountHandle:(id)handle
{
  handleCopy = handle;
  v5 = [[_HMDAccountHandleIdentifier alloc] initWithAccountHandle:handleCopy];

  v6 = [[self alloc] initWithInternal:v5];

  return v6;
}

@end