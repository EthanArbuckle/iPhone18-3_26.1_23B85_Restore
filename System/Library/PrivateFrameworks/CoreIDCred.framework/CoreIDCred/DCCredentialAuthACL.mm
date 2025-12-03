@interface DCCredentialAuthACL
- (DCCredentialAuthACL)initWithCoder:(id)coder;
- (DCCredentialAuthACL)initWithData:(id)data type:(unint64_t)type;
- (NSData)aclData;
- (unint64_t)aclType;
- (void)encodeWithCoder:(id)coder;
- (void)setAclData:(id)data;
- (void)setAclType:(unint64_t)type;
@end

@implementation DCCredentialAuthACL

- (DCCredentialAuthACL)initWithData:(id)data type:(unint64_t)type
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = DCCredentialAuthACL;
  v7 = [(DCCredentialAuthACL *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v9 = [dataCopy copy];
    aclData = v8->_aclData;
    v8->_aclData = v9;

    v8->_aclType = type;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeObject:self->_aclData forKey:0x28586D200];
  [coderCopy encodeInteger:self->_aclType forKey:0x28586D220];

  os_unfair_lock_unlock(&self->_lock);
}

- (DCCredentialAuthACL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D200];
  v6 = [coderCopy decodeIntegerForKey:0x28586D220];

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

- (void)setAclData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock(&self->_lock);
  if (self->_aclData != dataCopy)
  {
    v4 = [(NSData *)dataCopy copyWithZone:0];
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

- (void)setAclType:(unint64_t)type
{
  os_unfair_lock_lock(&self->_lock);
  self->_aclType = type;

  os_unfair_lock_unlock(&self->_lock);
}

@end