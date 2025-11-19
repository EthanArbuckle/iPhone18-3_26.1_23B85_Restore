@interface DCCredentialAuthACL
- (DCCredentialAuthACL)initWithCoder:(id)a3;
- (DCCredentialAuthACL)initWithData:(id)a3 type:(unint64_t)a4;
- (NSData)aclData;
- (unint64_t)aclType;
- (void)encodeWithCoder:(id)a3;
- (void)setAclData:(id)a3;
- (void)setAclType:(unint64_t)a3;
@end

@implementation DCCredentialAuthACL

- (DCCredentialAuthACL)initWithData:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = DCCredentialAuthACL;
  v7 = [(DCCredentialAuthACL *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v9 = [v6 copy];
    aclData = v8->_aclData;
    v8->_aclData = v9;

    v8->_aclType = a4;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeObject:self->_aclData forKey:0x28586D200];
  [v4 encodeInteger:self->_aclType forKey:0x28586D220];

  os_unfair_lock_unlock(&self->_lock);
}

- (DCCredentialAuthACL)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D200];
  v6 = [v4 decodeIntegerForKey:0x28586D220];

  v7 = [(DCCredentialAuthACL *)self initWithData:v5 type:v6];
  return v7;
}

- (NSData)aclData
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_aclData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAclData:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_aclData != v6)
  {
    v4 = [(NSData *)v6 copyWithZone:0];
    aclData = self->_aclData;
    self->_aclData = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)aclType
{
  os_unfair_lock_lock(&self->_lock);
  aclType = self->_aclType;
  os_unfair_lock_unlock(&self->_lock);
  return aclType;
}

- (void)setAclType:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_aclType = a3;

  os_unfair_lock_unlock(&self->_lock);
}

@end