@interface IMBlockListItem
- (BOOL)isEqualToBlockListItem:(id)a3;
- (IMBlockListItem)initWithCNContact:(id)a3 address:(id)a4 cmfItemRef:(void *)a5;
- (IMBlockListItem)initWithPerson:(id)a3 address:(id)a4 cmfItemRef:(void *)a5;
- (id)formattedAddress;
- (id)formattedHandle;
- (id)fullName;
- (void)dealloc;
- (void)lookupPerson;
@end

@implementation IMBlockListItem

- (IMBlockListItem)initWithPerson:(id)a3 address:(id)a4 cmfItemRef:(void *)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = IMBlockListItem;
  v11 = [(IMBlockListItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_person, a3);
    objc_storeStrong(&v12->_address, a4);
    v12->_cmfItem = CFRetain(a5);
    [(IMBlockListItem *)v12 lookupPerson];
  }

  return v12;
}

- (IMBlockListItem)initWithCNContact:(id)a3 address:(id)a4 cmfItemRef:(void *)a5
{
  v8 = a4;
  if (a3)
  {
    a3 = [IMBlockListPerson personWithCNContact:a3];
  }

  v9 = [(IMBlockListItem *)self initWithPerson:a3 address:v8 cmfItemRef:a5];

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
    v4 = [(NSString *)self->_address associatedPerson];
    if (v4)
    {
      objc_storeStrong(p_person, v4);
    }

    MEMORY[0x1EEE66BB8](v4);
  }
}

- (id)fullName
{
  v3 = [(IMBlockListItem *)self person];

  if (v3)
  {
    v4 = [(IMBlockListItem *)self person];
    v5 = [v4 fullName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)formattedHandle
{
  v3 = [(IMBlockListItem *)self cachedFormattedHandle];

  if (!v3)
  {
    v4 = [(IMBlockListItem *)self person];
    if (v4 && (v5 = v4, [(IMBlockListItem *)self address], v6 = objc_claimAutoreleasedReturnValue(), v7 = MEMORY[0x1AC570A50](), v6, v5, v7))
    {
      v8 = [(IMBlockListItem *)self address];
      v9 = [(IMBlockListItem *)self person];
      v10 = [v8 cnLabelForPerson:v9];

      v11 = [(IMBlockListItem *)self formattedAddress];
      if (v10 && [v10 length])
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) %@", v10, v11];
      }

      else
      {
        v12 = v11;
      }

      v13 = v12;
      [(IMBlockListItem *)self setCachedFormattedHandle:v12];
    }

    else
    {
      v10 = [(IMBlockListItem *)self formattedAddress];
      [(IMBlockListItem *)self setCachedFormattedHandle:v10];
    }
  }

  return [(IMBlockListItem *)self cachedFormattedHandle];
}

- (id)formattedAddress
{
  if ([(NSString *)self->_address length]&& [(NSString *)self->_address _appearsToBePhoneNumber])
  {
    v3 = [(NSString *)self->_address formattedPhoneNumber];
  }

  else
  {
    v3 = self->_address;
  }

  return v3;
}

- (BOOL)isEqualToBlockListItem:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    person = self->_person;
    v8 = person;
    if (!person)
    {
      v3 = [(IMBlockListItem *)v5 person];
      if (!v3)
      {
        v10 = 1;
        goto LABEL_9;
      }

      v8 = self->_person;
    }

    v9 = [(IMBlockListItem *)v6 person];
    v10 = [(IMBlockListPerson *)v8 isEqualToPerson:v9];

    if (person)
    {
LABEL_10:
      v12 = [(IMBlockListItem *)self address];
      v13 = [(IMBlockListItem *)v6 address];
      v14 = [v12 isEqualToBlockListAddress:v13];

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