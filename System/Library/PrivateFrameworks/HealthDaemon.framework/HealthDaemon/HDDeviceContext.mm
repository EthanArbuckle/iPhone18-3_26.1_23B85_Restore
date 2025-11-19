@interface HDDeviceContext
+ (id)localProductTypeEnumWithError:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (HDDeviceContext)initWithCoder:(id)a3;
- (HDDeviceContext)initWithType:(int64_t)a3 productTypeName:(id)a4 currentOSName:(id)a5 currentOSVersion:(id *)a6 modificationDate:(id)a7 syncIdentity:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initForLocalDeviceWithType:(int64_t)a3 syncIdentity:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDDeviceContext

+ (id)localProductTypeEnumWithError:(id *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCDD30] currentDeviceProductType];
  if ([v4 hasPrefix:*MEMORY[0x277CCC8D0]])
  {
    v5 = 0;
LABEL_9:

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    goto LABEL_10;
  }

  if ([v4 hasPrefix:*MEMORY[0x277CCC8C8]])
  {
    v5 = 1;
    goto LABEL_9;
  }

  if ([v4 hasPrefix:*MEMORY[0x277CCC8E0]])
  {
    v5 = 2;
    goto LABEL_9;
  }

  if ([v4 hasPrefix:*MEMORY[0x277CCC8D8]])
  {
    v5 = 3;
    goto LABEL_9;
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Device of type %@ is not supported", &v10, 0xCu);
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Device of type is not supported"];
  v6 = 0;
LABEL_10:
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)initForLocalDeviceWithType:(int64_t)a3 syncIdentity:(id)a4
{
  v7 = a4;
  v19.receiver = self;
  v19.super_class = HDDeviceContext;
  v8 = [(HDDeviceContext *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    v10 = [MEMORY[0x277CBEAA8] now];
    modificationDate = v9->_modificationDate;
    v9->_modificationDate = v10;

    v12 = [MEMORY[0x277CCDD30] currentDeviceProductType];
    productTypeName = v9->_productTypeName;
    v9->_productTypeName = v12;

    v14 = [MEMORY[0x277CCDD30] currentOSName];
    currentOSName = v9->_currentOSName;
    v9->_currentOSName = v14;

    [MEMORY[0x277CCDD30] currentOSVersionStruct];
    *&v9->_currentOSVersion.majorVersion = v17;
    v9->_currentOSVersion.patchVersion = v18;
    objc_storeStrong(&v9->_syncIdentity, a4);
  }

  return v9;
}

- (HDDeviceContext)initWithType:(int64_t)a3 productTypeName:(id)a4 currentOSName:(id)a5 currentOSVersion:(id *)a6 modificationDate:(id)a7 syncIdentity:(id)a8
{
  v22 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = HDDeviceContext;
  v18 = [(HDDeviceContext *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = a3;
    objc_storeStrong(&v18->_modificationDate, a7);
    objc_storeStrong(&v19->_productTypeName, a4);
    objc_storeStrong(&v19->_currentOSName, a5);
    v20 = *&a6->var0;
    v19->_currentOSVersion.patchVersion = a6->var2;
    *&v19->_currentOSVersion.majorVersion = v20;
    objc_storeStrong(&v19->_syncIdentity, a8);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HDDeviceContext allocWithZone:a3];
  currentOSName = self->_currentOSName;
  productTypeName = self->_productTypeName;
  type = self->_type;
  modificationDate = self->_modificationDate;
  syncIdentity = self->_syncIdentity;
  currentOSVersion = self->_currentOSVersion;
  return [(HDDeviceContext *)v4 initWithType:type productTypeName:productTypeName currentOSName:currentOSName currentOSVersion:&currentOSVersion modificationDate:modificationDate syncIdentity:syncIdentity];
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      type = self->_type;
      if (type != [(HDDeviceContext *)v7 type])
      {
        v13 = 0;
LABEL_31:

        goto LABEL_32;
      }

      productTypeName = self->_productTypeName;
      v10 = [(HDDeviceContext *)v7 productTypeName];
      if (productTypeName != v10)
      {
        v11 = [(HDDeviceContext *)v7 productTypeName];
        if (!v11)
        {
          v13 = 0;
          goto LABEL_30;
        }

        v3 = v11;
        v12 = self->_productTypeName;
        v4 = [(HDDeviceContext *)v7 productTypeName];
        if (![(NSString *)v12 isEqualToString:v4])
        {

          v13 = 0;
LABEL_29:

          goto LABEL_30;
        }

        v24 = v4;
      }

      currentOSName = self->_currentOSName;
      v15 = [(HDDeviceContext *)v7 currentOSName];
      if (currentOSName != v15)
      {
        v16 = [(HDDeviceContext *)v7 currentOSName];
        if (!v16)
        {
          goto LABEL_24;
        }

        v4 = v16;
        v17 = self->_currentOSName;
        v23 = [(HDDeviceContext *)v7 currentOSName];
        if (![(NSString *)v17 isEqualToString:?])
        {
          v13 = 0;
          v18 = v24;
LABEL_21:

          goto LABEL_27;
        }
      }

      if (v7)
      {
        [(HDDeviceContext *)v7 currentOSVersion];
      }

      v25 = *&self->_currentOSVersion.majorVersion;
      patchVersion = self->_currentOSVersion.patchVersion;
      if (HKNSOperatingSystemVersionsEqual())
      {
        syncIdentity = self->_syncIdentity;
        v20 = [(HDDeviceContext *)v7 syncIdentity];
        v13 = [(HDSyncIdentity *)syncIdentity isEqual:v20];

        v21 = currentOSName == v15;
        v18 = v24;
        if (v21)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }

      if (currentOSName == v15)
      {
        v13 = 0;
        v18 = v24;
LABEL_27:

        if (productTypeName != v10)
        {
LABEL_28:

          goto LABEL_29;
        }

LABEL_30:

        goto LABEL_31;
      }

LABEL_24:
      v13 = 0;
      v18 = v24;
      if (productTypeName == v10)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    v13 = 0;
  }

LABEL_32:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  type = self->_type;
  currentOSName = self->_currentOSName;
  productTypeName = self->_productTypeName;
  currentOSVersion = self->_currentOSVersion;
  v8 = HKNSOperatingSystemVersionString();
  v9 = [v3 stringWithFormat:@"<%@:%p type:%ld productType:%@ OSName:%@ OSVersion:%@ sync identity:%@ last modified:%@ ", v4, self, type, productTypeName, currentOSName, v8, self->_syncIdentity, self->_modificationDate, *&currentOSVersion.majorVersion, currentOSVersion.patchVersion];

  return v9;
}

- (HDDeviceContext)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HDDeviceContext;
  v5 = [(HDDeviceContext *)&v18 init];
  if (v5)
  {
    v5->_type = [v4 decodeInt64ForKey:@"ProductType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductTypeName"];
    productTypeName = v5->_productTypeName;
    v5->_productTypeName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CurrentOSName"];
    currentOSName = v5->_currentOSName;
    v5->_currentOSName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CurrentOSVersion"];
    HKNSOperatingSystemVersionFromString();
    *&v5->_currentOSVersion.majorVersion = v16;
    v5->_currentOSVersion.patchVersion = v17;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ModificationDate"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SyncIdentity"];
    syncIdentity = v5->_syncIdentity;
    v5->_syncIdentity = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInt64:type forKey:@"ProductType"];
  [v5 encodeObject:self->_productTypeName forKey:@"ProductTypeName"];
  [v5 encodeObject:self->_currentOSName forKey:@"CurrentOSName"];
  currentOSVersion = self->_currentOSVersion;
  v6 = HKNSOperatingSystemVersionString();
  [v5 encodeObject:v6 forKey:{@"CurrentOSVersion", *&currentOSVersion.majorVersion, currentOSVersion.patchVersion}];

  [v5 encodeObject:self->_modificationDate forKey:@"ModificationDate"];
  [v5 encodeObject:self->_syncIdentity forKey:@"SyncIdentity"];
}

@end