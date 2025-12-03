@interface MSPSharedTripSharingIdentity
- (MSPSharedTripSharingIdentity)initWithCoder:(id)coder;
- (MSPSharedTripSharingIdentity)initWithValidAccount:(BOOL)account name:(id)name handle:(id)handle aliases:(id)aliases;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSPSharedTripSharingIdentity

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MSPSharedTripSharingIdentity;
  v4 = [(MSPSharedTripSharingIdentity *)&v9 description];
  v5 = v4;
  if (self->_validAccount)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = [v3 stringWithFormat:@"%@ (valid:%s, name:%@, handle:%@, aliases:%@)", v4, v6, self->_name, self->_handle, self->_aliases];

  return v7;
}

- (MSPSharedTripSharingIdentity)initWithValidAccount:(BOOL)account name:(id)name handle:(id)handle aliases:(id)aliases
{
  nameCopy = name;
  handleCopy = handle;
  aliasesCopy = aliases;
  v17.receiver = self;
  v17.super_class = MSPSharedTripSharingIdentity;
  v14 = [(MSPSharedTripSharingIdentity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_validAccount = account;
    objc_storeStrong(&v14->_name, name);
    objc_storeStrong(&v15->_handle, handle);
    objc_storeStrong(&v15->_aliases, aliases);
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  validAccount = self->_validAccount;
  coderCopy = coder;
  [coderCopy encodeBool:validAccount forKey:@"_validAccount"];
  [coderCopy encodeObject:self->_name forKey:@"_name"];
  [coderCopy encodeObject:self->_handle forKey:@"_handle"];
  [coderCopy encodeObject:self->_aliases forKey:@"_aliases"];
}

- (MSPSharedTripSharingIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MSPSharedTripSharingIdentity;
  v5 = [(MSPSharedTripSharingIdentity *)&v16 init];
  if (v5)
  {
    v5->_validAccount = [coderCopy decodeBoolForKey:@"_validAccount"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_aliases"];
    aliases = v5->_aliases;
    v5->_aliases = v13;
  }

  return v5;
}

@end