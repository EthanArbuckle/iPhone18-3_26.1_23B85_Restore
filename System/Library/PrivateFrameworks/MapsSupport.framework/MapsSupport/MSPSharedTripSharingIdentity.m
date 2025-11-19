@interface MSPSharedTripSharingIdentity
- (MSPSharedTripSharingIdentity)initWithCoder:(id)a3;
- (MSPSharedTripSharingIdentity)initWithValidAccount:(BOOL)a3 name:(id)a4 handle:(id)a5 aliases:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (MSPSharedTripSharingIdentity)initWithValidAccount:(BOOL)a3 name:(id)a4 handle:(id)a5 aliases:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = MSPSharedTripSharingIdentity;
  v14 = [(MSPSharedTripSharingIdentity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_validAccount = a3;
    objc_storeStrong(&v14->_name, a4);
    objc_storeStrong(&v15->_handle, a5);
    objc_storeStrong(&v15->_aliases, a6);
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  validAccount = self->_validAccount;
  v5 = a3;
  [v5 encodeBool:validAccount forKey:@"_validAccount"];
  [v5 encodeObject:self->_name forKey:@"_name"];
  [v5 encodeObject:self->_handle forKey:@"_handle"];
  [v5 encodeObject:self->_aliases forKey:@"_aliases"];
}

- (MSPSharedTripSharingIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MSPSharedTripSharingIdentity;
  v5 = [(MSPSharedTripSharingIdentity *)&v16 init];
  if (v5)
  {
    v5->_validAccount = [v4 decodeBoolForKey:@"_validAccount"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_aliases"];
    aliases = v5->_aliases;
    v5->_aliases = v13;
  }

  return v5;
}

@end