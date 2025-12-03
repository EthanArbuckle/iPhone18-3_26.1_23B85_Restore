@interface IMBlockListItem
- (BOOL)isEqualToBlockListItem:(id)item;
- (IMBlockListItem)initWithCNContact:(id)contact address:(id)address cmfItemRef:(void *)ref;
- (IMBlockListItem)initWithPerson:(id)person address:(id)address cmfItemRef:(void *)ref;
- (id)formattedAddress;
- (id)formattedHandle;
- (id)fullName;
- (void)dealloc;
- (void)lookupPerson;
@end

@implementation IMBlockListItem

- (IMBlockListItem)initWithPerson:(id)person address:(id)address cmfItemRef:(void *)ref
{
  personCopy = person;
  addressCopy = address;
  v14.receiver = self;
  v14.super_class = IMBlockListItem;
  v11 = [(IMBlockListItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_person, person);
    objc_storeStrong(&v12->_address, address);
    v12->_cmfItem = CFRetain(ref);
    [(IMBlockListItem *)v12 lookupPerson];
  }

  return v12;
}

- (IMBlockListItem)initWithCNContact:(id)contact address:(id)address cmfItemRef:(void *)ref
{
  addressCopy = address;
  if (contact)
  {
    contact = [IMBlockListPerson personWithCNContact:contact];
  }

  v9 = [(IMBlockListItem *)self initWithPerson:contact address:addressCopy cmfItemRef:ref];

  return v9;
}

- (void)dealloc
{
  cmfItem = self->_cmfItem;
  if (cmfItem)
  {
    CFRelease(cmfItem);
  }

  v4.receiver = self;
  v4.super_class = IMBlockListItem;
  [(IMBlockListItem *)&v4 dealloc];
}

- (void)lookupPerson
{
  p_person = &self->_person;
  if (!self->_person && [(NSString *)self->_address length])
  {
    associatedPerson = [(NSString *)self->_address associatedPerson];
    if (associatedPerson)
    {
      objc_storeStrong(p_person, associatedPerson);
    }

    MEMORY[0x1EEE66BB8](associatedPerson);
  }
}

- (id)fullName
{
  person = [(IMBlockListItem *)self person];

  if (person)
  {
    person2 = [(IMBlockListItem *)self person];
    fullName = [person2 fullName];
  }

  else
  {
    fullName = 0;
  }

  return fullName;
}

- (id)formattedHandle
{
  cachedFormattedHandle = [(IMBlockListItem *)self cachedFormattedHandle];

  if (!cachedFormattedHandle)
  {
    person = [(IMBlockListItem *)self person];
    if (person && (v5 = person, [(IMBlockListItem *)self address], v6 = objc_claimAutoreleasedReturnValue(), v7 = MEMORY[0x1AC570A50](), v6, v5, v7))
    {
      address = [(IMBlockListItem *)self address];
      person2 = [(IMBlockListItem *)self person];
      formattedAddress2 = [address cnLabelForPerson:person2];

      formattedAddress = [(IMBlockListItem *)self formattedAddress];
      if (formattedAddress2 && [formattedAddress2 length])
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) %@", formattedAddress2, formattedAddress];
      }

      else
      {
        v12 = formattedAddress;
      }

      v13 = v12;
      [(IMBlockListItem *)self setCachedFormattedHandle:v12];
    }

    else
    {
      formattedAddress2 = [(IMBlockListItem *)self formattedAddress];
      [(IMBlockListItem *)self setCachedFormattedHandle:formattedAddress2];
    }
  }

  return [(IMBlockListItem *)self cachedFormattedHandle];
}

- (id)formattedAddress
{
  if ([(NSString *)self->_address length]&& [(NSString *)self->_address _appearsToBePhoneNumber])
  {
    formattedPhoneNumber = [(NSString *)self->_address formattedPhoneNumber];
  }

  else
  {
    formattedPhoneNumber = self->_address;
  }

  return formattedPhoneNumber;
}

- (BOOL)isEqualToBlockListItem:(id)item
{
  itemCopy = item;
  v6 = itemCopy;
  if (self != itemCopy)
  {
    person = self->_person;
    v8 = person;
    if (!person)
    {
      person = [(IMBlockListItem *)itemCopy person];
      if (!person)
      {
        v10 = 1;
        goto LABEL_9;
      }

      v8 = self->_person;
    }

    person2 = [(IMBlockListItem *)v6 person];
    v10 = [(IMBlockListPerson *)v8 isEqualToPerson:person2];

    if (person)
    {
LABEL_10:
      address = [(IMBlockListItem *)self address];
      address2 = [(IMBlockListItem *)v6 address];
      v14 = [address isEqualToBlockListAddress:address2];

      v11 = v10 & v14;
      goto LABEL_11;
    }

LABEL_9:

    goto LABEL_10;
  }

  v11 = 1;
LABEL_11:

  return v11;
}

@end