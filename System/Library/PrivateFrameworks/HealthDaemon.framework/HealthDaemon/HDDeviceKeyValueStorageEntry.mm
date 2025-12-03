@interface HDDeviceKeyValueStorageEntry
- (BOOL)isEqual:(id)equal;
- (HDDeviceKeyValueStorageEntry)initWithDomain:(id)domain key:(id)key value:(id)value modificationDate:(id)date syncIdentity:(id)identity category:(int64_t)category;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateValue:(id *)value;
- (id)numberValue:(id *)value;
- (id)stringValue:(id *)value;
- (unint64_t)hash;
@end

@implementation HDDeviceKeyValueStorageEntry

- (HDDeviceKeyValueStorageEntry)initWithDomain:(id)domain key:(id)key value:(id)value modificationDate:(id)date syncIdentity:(id)identity category:(int64_t)category
{
  domainCopy = domain;
  keyCopy = key;
  valueCopy = value;
  dateCopy = date;
  identityCopy = identity;
  v23.receiver = self;
  v23.super_class = HDDeviceKeyValueStorageEntry;
  v18 = [(HDDeviceKeyValueStorageEntry *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_domain, domain);
    objc_storeStrong(&v19->_key, key);
    objc_storeStrong(&v19->_value, value);
    objc_storeStrong(&v19->_modificationDate, date);
    objc_storeStrong(&v19->_syncIdentity, identity);
    v19->_protectionCategory = category;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HDDeviceKeyValueStorageEntry allocWithZone:zone];
  domain = self->_domain;
  key = self->_key;
  value = self->_value;
  modificationDate = self->_modificationDate;
  syncIdentity = self->_syncIdentity;
  protectionCategory = self->_protectionCategory;

  return [(HDDeviceKeyValueStorageEntry *)v4 initWithDomain:domain key:key value:value modificationDate:modificationDate syncIdentity:syncIdentity category:protectionCategory];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      domain = self->_domain;
      domain = [(HDDeviceKeyValueStorageEntry *)v6 domain];
      if (domain != domain)
      {
        domain2 = [(HDDeviceKeyValueStorageEntry *)v6 domain];
        if (!domain2)
        {
          v12 = 0;
          goto LABEL_29;
        }

        v3 = domain2;
        v10 = self->_domain;
        domain3 = [(HDDeviceKeyValueStorageEntry *)v6 domain];
        if (![(NSString *)v10 isEqualToString:domain3])
        {
          v12 = 0;
LABEL_28:

          goto LABEL_29;
        }

        v34 = domain3;
      }

      key = self->_key;
      v14 = [(HDDeviceKeyValueStorageEntry *)v6 key];
      if (key != v14)
      {
        v15 = [(HDDeviceKeyValueStorageEntry *)v6 key];
        if (!v15)
        {
          goto LABEL_26;
        }

        v16 = v15;
        v17 = self->_key;
        v18 = [(HDDeviceKeyValueStorageEntry *)v6 key];
        v19 = v17;
        v20 = v18;
        if (![(NSString *)v19 isEqualToString:v18])
        {

          goto LABEL_26;
        }

        v30 = v20;
        v32 = v16;
      }

      value = self->_value;
      value = [(HDDeviceKeyValueStorageEntry *)v6 value];
      if (![(NSData *)value isEqual:value])
      {

        if (key == v14)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }

      v33 = v3;
      modificationDate = self->_modificationDate;
      modificationDate = [(HDDeviceKeyValueStorageEntry *)v6 modificationDate];
      if ([(NSDate *)modificationDate isEqualToDate:modificationDate])
      {
        protectionCategory = self->_protectionCategory;
        if (protectionCategory == [(HDDeviceKeyValueStorageEntry *)v6 protectionCategory])
        {
          syncIdentity = self->_syncIdentity;
          syncIdentity = [(HDDeviceKeyValueStorageEntry *)v6 syncIdentity];
          v12 = [(HDSyncIdentity *)syncIdentity isEqual:syncIdentity];

          if (key != v14)
          {
          }

          v28 = domain == domain;
          v3 = v33;
LABEL_27:
          domain3 = v34;
          if (!v28)
          {
            goto LABEL_28;
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      v3 = v33;
      if (key != v14)
      {
LABEL_24:
      }

LABEL_26:

      v12 = 0;
      v28 = domain == domain;
      goto LABEL_27;
    }

    v12 = 0;
  }

LABEL_30:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_domain hash]^ v3;
  v5 = [(NSData *)self->_value hash];
  v6 = v4 ^ v5 ^ [(HDSyncIdentity *)self->_syncIdentity hash];
  v7 = v6 ^ [(NSDate *)self->_modificationDate hash];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_protectionCategory];
  v9 = [v8 hash];

  return v7 ^ v9;
}

- (id)dateValue:(id *)value
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_opt_class();
  value = self->_value;

  return [v5 unarchivedObjectOfClass:v6 fromData:value error:value];
}

- (id)numberValue:(id *)value
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_opt_class();
  value = self->_value;

  return [v5 unarchivedObjectOfClass:v6 fromData:value error:value];
}

- (id)stringValue:(id *)value
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_opt_class();
  value = self->_value;

  return [v5 unarchivedObjectOfClass:v6 fromData:value error:value];
}

@end