@interface EMVIP
- (BOOL)_isEqualToVIP:(id)p;
- (BOOL)isEqual:(id)equal;
- (EMVIP)initWithCoder:(id)coder;
- (EMVIP)initWithIdentifier:(id)identifier name:(id)name emailAddresses:(id)addresses;
- (id)description;
- (unint64_t)hash;
- (void)_commonInitWithIdentifier:(id)identifier name:(id)name emailAddresses:(id)addresses displayName:(id)displayName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMVIP

- (EMVIP)initWithIdentifier:(id)identifier name:(id)name emailAddresses:(id)addresses
{
  identifierCopy = identifier;
  nameCopy = name;
  addressesCopy = addresses;
  v16.receiver = self;
  v16.super_class = EMVIP;
  v11 = [(EMVIP *)&v16 init];
  if (v11)
  {
    if (![addressesCopy count])
    {
      v13 = v11;
      v11 = 0;
LABEL_10:

      goto LABEL_11;
    }

    if (identifierCopy)
    {
      if (nameCopy)
      {
LABEL_5:
        anyObject = nameCopy;
LABEL_9:
        v13 = anyObject;
        [(EMVIP *)v11 _commonInitWithIdentifier:identifierCopy name:nameCopy emailAddresses:addressesCopy displayName:anyObject];
        goto LABEL_10;
      }
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      identifierCopy = [v14 UUIDString];

      if (nameCopy)
      {
        goto LABEL_5;
      }
    }

    anyObject = [addressesCopy anyObject];
    goto LABEL_9;
  }

LABEL_11:

  return v11;
}

- (void)_commonInitWithIdentifier:(id)identifier name:(id)name emailAddresses:(id)addresses displayName:(id)displayName
{
  identifierCopy = identifier;
  nameCopy = name;
  addressesCopy = addresses;
  displayNameCopy = displayName;
  v13 = [identifierCopy copy];
  identifier = self->_identifier;
  self->_identifier = v13;

  v15 = [nameCopy copy];
  name = self->_name;
  self->_name = v15;

  v17 = [addressesCopy copy];
  emailAddresses = self->_emailAddresses;
  self->_emailAddresses = v17;

  v19 = [displayNameCopy copy];
  displayName = self->_displayName;
  self->_displayName = v19;
}

- (id)description
{
  v3 = MEMORY[0x1E699B858];
  name = [(EMVIP *)self name];
  v5 = [v3 partiallyRedactedStringForString:name];

  v6 = MEMORY[0x1E699B858];
  emailAddresses = [(EMVIP *)self emailAddresses];
  allObjects = [emailAddresses allObjects];
  v9 = [v6 partiallyRedactedStringFromArray:allObjects];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(EMVIP *)self _isEqualToVIP:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  identifier = [(EMVIP *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (EMVIP)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = EMVIP;
  v5 = [(EMVIP *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EMVIPEmailAddresses"];
    v7 = [objc_alloc(MEMORY[0x1E699AFD8]) initWithSerializedRepresentation:v6];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_identifier"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_name"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayName"];
    [(EMVIP *)v5 _commonInitWithIdentifier:v8 name:v9 emailAddresses:v7 displayName:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(EMVIP *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"EFPropertyKey_identifier"];

  name = [(EMVIP *)self name];
  [coderCopy encodeObject:name forKey:@"EFPropertyKey_name"];

  displayName = [(EMVIP *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"EFPropertyKey_displayName"];

  emailAddresses = [(EMVIP *)self emailAddresses];
  serializedRepresentation = [emailAddresses serializedRepresentation];
  [coderCopy encodeObject:serializedRepresentation forKey:@"EMVIPEmailAddresses"];
}

- (BOOL)_isEqualToVIP:(id)p
{
  pCopy = p;
  identifier = [(EMVIP *)self identifier];
  identifier2 = [pCopy identifier];
  v7 = [identifier isEqualToString:identifier2];

  return v7;
}

@end