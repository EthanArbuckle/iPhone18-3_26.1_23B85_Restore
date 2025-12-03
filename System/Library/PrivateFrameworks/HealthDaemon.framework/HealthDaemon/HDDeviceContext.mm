@interface HDDeviceContext
+ (id)localProductTypeEnumWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HDDeviceContext)initWithCoder:(id)coder;
- (HDDeviceContext)initWithType:(int64_t)type productTypeName:(id)name currentOSName:(id)sName currentOSVersion:(id *)version modificationDate:(id)date syncIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForLocalDeviceWithType:(int64_t)type syncIdentity:(id)identity;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDDeviceContext

+ (id)localProductTypeEnumWithError:(id *)error
{
  v12 = *MEMORY[0x277D85DE8];
  currentDeviceProductType = [MEMORY[0x277CCDD30] currentDeviceProductType];
  if ([currentDeviceProductType hasPrefix:*MEMORY[0x277CCC8D0]])
  {
    v5 = 0;
LABEL_9:

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    goto LABEL_10;
  }

  if ([currentDeviceProductType hasPrefix:*MEMORY[0x277CCC8C8]])
  {
    v5 = 1;
    goto LABEL_9;
  }

  if ([currentDeviceProductType hasPrefix:*MEMORY[0x277CCC8E0]])
  {
    v5 = 2;
    goto LABEL_9;
  }

  if ([currentDeviceProductType hasPrefix:*MEMORY[0x277CCC8D8]])
  {
    v5 = 3;
    goto LABEL_9;
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = currentDeviceProductType;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Device of type %@ is not supported", &v10, 0xCu);
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Device of type is not supported"];
  v6 = 0;
LABEL_10:
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)initForLocalDeviceWithType:(int64_t)type syncIdentity:(id)identity
{
  identityCopy = identity;
  v19.receiver = self;
  v19.super_class = HDDeviceContext;
  v8 = [(HDDeviceContext *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    v10 = [MEMORY[0x277CBEAA8] now];
    modificationDate = v9->_modificationDate;
    v9->_modificationDate = v10;

    currentDeviceProductType = [MEMORY[0x277CCDD30] currentDeviceProductType];
    productTypeName = v9->_productTypeName;
    v9->_productTypeName = currentDeviceProductType;

    currentOSName = [MEMORY[0x277CCDD30] currentOSName];
    currentOSName = v9->_currentOSName;
    v9->_currentOSName = currentOSName;

    [MEMORY[0x277CCDD30] currentOSVersionStruct];
    *&v9->_currentOSVersion.majorVersion = v17;
    v9->_currentOSVersion.patchVersion = v18;
    objc_storeStrong(&v9->_syncIdentity, identity);
  }

  return v9;
}

- (HDDeviceContext)initWithType:(int64_t)type productTypeName:(id)name currentOSName:(id)sName currentOSVersion:(id *)version modificationDate:(id)date syncIdentity:(id)identity
{
  nameCopy = name;
  sNameCopy = sName;
  dateCopy = date;
  identityCopy = identity;
  v23.receiver = self;
  v23.super_class = HDDeviceContext;
  v18 = [(HDDeviceContext *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = type;
    objc_storeStrong(&v18->_modificationDate, date);
    objc_storeStrong(&v19->_productTypeName, name);
    objc_storeStrong(&v19->_currentOSName, sName);
    v20 = *&version->var0;
    v19->_currentOSVersion.patchVersion = version->var2;
    *&v19->_currentOSVersion.majorVersion = v20;
    objc_storeStrong(&v19->_syncIdentity, identity);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HDDeviceContext allocWithZone:zone];
  currentOSName = self->_currentOSName;
  productTypeName = self->_productTypeName;
  type = self->_type;
  modificationDate = self->_modificationDate;
  syncIdentity = self->_syncIdentity;
  currentOSVersion = self->_currentOSVersion;
  return [(HDDeviceContext *)v4 initWithType:type productTypeName:productTypeName currentOSName:currentOSName currentOSVersion:&currentOSVersion modificationDate:modificationDate syncIdentity:syncIdentity];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      type = self->_type;
      if (type != [(HDDeviceContext *)v7 type])
      {
        v13 = 0;
LABEL_31:

        goto LABEL_32;
      }

      productTypeName = self->_productTypeName;
      productTypeName = [(HDDeviceContext *)v7 productTypeName];
      if (productTypeName != productTypeName)
      {
        productTypeName2 = [(HDDeviceContext *)v7 productTypeName];
        if (!productTypeName2)
        {
          v13 = 0;
          goto LABEL_30;
        }

        v3 = productTypeName2;
        v12 = self->_productTypeName;
        productTypeName3 = [(HDDeviceContext *)v7 productTypeName];
        if (![(NSString *)v12 isEqualToString:productTypeName3])
        {

          v13 = 0;
LABEL_29:

          goto LABEL_30;
        }

        v24 = productTypeName3;
      }

      currentOSName = self->_currentOSName;
      currentOSName = [(HDDeviceContext *)v7 currentOSName];
      if (currentOSName != currentOSName)
      {
        currentOSName2 = [(HDDeviceContext *)v7 currentOSName];
        if (!currentOSName2)
        {
          goto LABEL_24;
        }

        productTypeName3 = currentOSName2;
        v17 = self->_currentOSName;
        currentOSName3 = [(HDDeviceContext *)v7 currentOSName];
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
        syncIdentity = [(HDDeviceContext *)v7 syncIdentity];
        v13 = [(HDSyncIdentity *)syncIdentity isEqual:syncIdentity];

        v21 = currentOSName == currentOSName;
        v18 = v24;
        if (v21)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }

      if (currentOSName == currentOSName)
      {
        v13 = 0;
        v18 = v24;
LABEL_27:

        if (productTypeName != productTypeName)
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
      if (productTypeName == productTypeName)
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

- (HDDeviceContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HDDeviceContext;
  v5 = [(HDDeviceContext *)&v18 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt64ForKey:@"ProductType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductTypeName"];
    productTypeName = v5->_productTypeName;
    v5->_productTypeName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CurrentOSName"];
    currentOSName = v5->_currentOSName;
    v5->_currentOSName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CurrentOSVersion"];
    HKNSOperatingSystemVersionFromString();
    *&v5->_currentOSVersion.majorVersion = v16;
    v5->_currentOSVersion.patchVersion = v17;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ModificationDate"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SyncIdentity"];
    syncIdentity = v5->_syncIdentity;
    v5->_syncIdentity = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInt64:type forKey:@"ProductType"];
  [coderCopy encodeObject:self->_productTypeName forKey:@"ProductTypeName"];
  [coderCopy encodeObject:self->_currentOSName forKey:@"CurrentOSName"];
  currentOSVersion = self->_currentOSVersion;
  v6 = HKNSOperatingSystemVersionString();
  [coderCopy encodeObject:v6 forKey:{@"CurrentOSVersion", *&currentOSVersion.majorVersion, currentOSVersion.patchVersion}];

  [coderCopy encodeObject:self->_modificationDate forKey:@"ModificationDate"];
  [coderCopy encodeObject:self->_syncIdentity forKey:@"SyncIdentity"];
}

@end