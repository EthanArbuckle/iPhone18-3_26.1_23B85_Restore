@interface _MFEmailAddress
- (NSString)fullAddress;
- (_MFEmailAddress)initWithAddress:(id)address;
- (_MFEmailAddress)initWithAddress:(id)address displayName:(id)name;
@end

@implementation _MFEmailAddress

- (NSString)fullAddress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_fullAddress)
  {
    v3 = objc_alloc(MEMORY[0x1E699B248]);
    address = [(_MFEmailAddress *)selfCopy address];
    v5 = [v3 initWithString:address];

    displayName = [(_MFEmailAddress *)selfCopy displayName];
    [v5 setDisplayName:displayName];

    stringValue = [v5 stringValue];
    v8 = stringValue;
    if (stringValue)
    {
      address2 = stringValue;
    }

    else
    {
      address2 = [(_MFEmailAddress *)selfCopy address];
    }

    fullAddress = selfCopy->_fullAddress;
    selfCopy->_fullAddress = address2;
  }

  objc_sync_exit(selfCopy);

  v11 = selfCopy->_fullAddress;

  return v11;
}

- (_MFEmailAddress)initWithAddress:(id)address displayName:(id)name
{
  addressCopy = address;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = _MFEmailAddress;
  v8 = [(_MFEmailAddress *)&v15 init];
  if (v8)
  {
    v9 = [addressCopy copy];
    address = v8->_address;
    v8->_address = v9;

    v11 = [nameCopy copy];
    displayName = v8->_displayName;
    v8->_displayName = v11;

    fullAddress = v8->_fullAddress;
    v8->_fullAddress = 0;
  }

  return v8;
}

- (_MFEmailAddress)initWithAddress:(id)address
{
  addressCopy = address;
  emailAddressValue = [addressCopy emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v7 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [addressCopy stringValue];
  }

  v9 = stringValue;

  displayName = [emailAddressValue displayName];
  if (displayName)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v12 = [displayName stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    ef_stringByTrimmingOuterQuotes = [v12 ef_stringByTrimmingOuterQuotes];

    whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    displayName = [ef_stringByTrimmingOuterQuotes stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];
  }

  if (emailAddressValue)
  {
    emailAddressValue2 = [displayName emailAddressValue];
    if (emailAddressValue2)
    {

      displayName = 0;
    }
  }

  v16 = [(_MFEmailAddress *)self initWithAddress:v9 displayName:displayName];

  return v16;
}

@end