@interface HDDeviceKeyValueStorageEntry
- (BOOL)isEqual:(id)a3;
- (HDDeviceKeyValueStorageEntry)initWithDomain:(id)a3 key:(id)a4 value:(id)a5 modificationDate:(id)a6 syncIdentity:(id)a7 category:(int64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dateValue:(id *)a3;
- (id)numberValue:(id *)a3;
- (id)stringValue:(id *)a3;
- (unint64_t)hash;
@end

@implementation HDDeviceKeyValueStorageEntry

- (HDDeviceKeyValueStorageEntry)initWithDomain:(id)a3 key:(id)a4 value:(id)a5 modificationDate:(id)a6 syncIdentity:(id)a7 category:(int64_t)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = HDDeviceKeyValueStorageEntry;
  v18 = [(HDDeviceKeyValueStorageEntry *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_domain, a3);
    objc_storeStrong(&v19->_key, a4);
    objc_storeStrong(&v19->_value, a5);
    objc_storeStrong(&v19->_modificationDate, a6);
    objc_storeStrong(&v19->_syncIdentity, a7);
    v19->_protectionCategory = a8;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HDDeviceKeyValueStorageEntry allocWithZone:a3];
  domain = self->_domain;
  key = self->_key;
  value = self->_value;
  modificationDate = self->_modificationDate;
  syncIdentity = self->_syncIdentity;
  protectionCategory = self->_protectionCategory;

  return [(HDDeviceKeyValueStorageEntry *)v4 initWithDomain:domain key:key value:value modificationDate:modificationDate syncIdentity:syncIdentity category:protectionCategory];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      domain = self->_domain;
      v8 = [(HDDeviceKeyValueStorageEntry *)v6 domain];
      if (domain != v8)
      {
        v9 = [(HDDeviceKeyValueStorageEntry *)v6 domain];
        if (!v9)
        {
          v12 = 0;
          goto LABEL_29;
        }

        v3 = v9;
        v10 = self->_domain;
        v11 = [(HDDeviceKeyValueStorageEntry *)v6 domain];
        if (![(NSString *)v10 isEqualToString:v11])
        {
          v12 = 0;
LABEL_28:

          goto LABEL_29;
        }

        v34 = v11;
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
      v22 = [(HDDeviceKeyValueStorageEntry *)v6 value];
      if (![(NSData *)value isEqual:v22])
      {

        if (key == v14)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }

      v33 = v3;
      modificationDate = self->_modificationDate;
      v24 = [(HDDeviceKeyValueStorageEntry *)v6 modificationDate];
      if ([(NSDate *)modificationDate isEqualToDate:v24])
      {
        protectionCategory = self->_protectionCategory;
        if (protectionCategory == [(HDDeviceKeyValueStorageEntry *)v6 protectionCategory])
        {
          syncIdentity = self->_syncIdentity;
          v27 = [(HDDeviceKeyValueStorageEntry *)v6 syncIdentity];
          v12 = [(HDSyncIdentity *)syncIdentity isEqual:v27];

          if (key != v14)
          {
          }

          v28 = domain == v8;
          v3 = v33;
LABEL_27:
          v11 = v34;
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
      v28 = domain == v8;
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

- (id)dateValue:(id *)a3
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_opt_class();
  value = self->_value;

  return [v5 unarchivedObjectOfClass:v6 fromData:value error:a3];
}

- (id)numberValue:(id *)a3
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_opt_class();
  value = self->_value;

  return [v5 unarchivedObjectOfClass:v6 fromData:value error:a3];
}

- (id)stringValue:(id *)a3
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_opt_class();
  value = self->_value;

  return [v5 unarchivedObjectOfClass:v6 fromData:value error:a3];
}

@end