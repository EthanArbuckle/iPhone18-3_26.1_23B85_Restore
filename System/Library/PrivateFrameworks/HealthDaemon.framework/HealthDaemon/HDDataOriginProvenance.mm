@interface HDDataOriginProvenance
+ (id)dataProvenanceWithSyncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity productType:(id)type systemBuild:(id)build operatingSystemVersion:(id *)version sourceVersion:(id)sourceVersion timeZoneName:(id)name sourceID:(id)self0 deviceID:(id)self1 contributorReference:(id)self2;
- (BOOL)isEqual:(id)equal;
- (HDDataOriginProvenance)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setOperatingSystemVersion:(id *)version;
@end

@implementation HDDataOriginProvenance

- (unint64_t)hash
{
  v3 = self->_syncIdentity ^ self->_syncProvenance;
  v4 = v3 ^ [(NSString *)self->_productType hash];
  v5 = [(NSString *)self->_systemBuild hash];
  v6 = v4 ^ v5 ^ [(NSNumber *)self->_sourceID hash];
  v7 = [(NSNumber *)self->_deviceID hash];
  v8 = v7 ^ [(HDContributorReference *)self->_contributorReference hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_sourceVersion hash];
  return v9 ^ [(NSString *)self->_timeZoneName hash]^ (2654435761 * self->_operatingSystemVersion.majorVersion) ^ (2654435761 * self->_operatingSystemVersion.minorVersion) ^ (2654435761 * self->_operatingSystemVersion.patchVersion);
}

+ (id)dataProvenanceWithSyncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity productType:(id)type systemBuild:(id)build operatingSystemVersion:(id *)version sourceVersion:(id)sourceVersion timeZoneName:(id)name sourceID:(id)self0 deviceID:(id)self1 contributorReference:(id)self2
{
  dCopy = d;
  iDCopy = iD;
  referenceCopy = reference;
  nameCopy = name;
  sourceVersionCopy = sourceVersion;
  buildCopy = build;
  typeCopy = type;
  v23 = objc_alloc_init(HDDataOriginProvenance);
  v23->_syncProvenance = provenance;
  v23->_syncIdentity = identity;
  v24 = [typeCopy copy];

  productType = v23->_productType;
  v23->_productType = v24;

  v26 = [buildCopy copy];
  systemBuild = v23->_systemBuild;
  v23->_systemBuild = v26;

  v28 = *&version->var0;
  v23->_operatingSystemVersion.patchVersion = version->var2;
  *&v23->_operatingSystemVersion.majorVersion = v28;
  v29 = [sourceVersionCopy copy];

  sourceVersion = v23->_sourceVersion;
  v23->_sourceVersion = v29;

  v31 = [nameCopy copy];
  timeZoneName = v23->_timeZoneName;
  v23->_timeZoneName = v31;

  sourceID = v23->_sourceID;
  v23->_sourceID = dCopy;
  v34 = dCopy;

  deviceID = v23->_deviceID;
  v23->_deviceID = iDCopy;
  v36 = iDCopy;

  v37 = [referenceCopy copy];
  contributorReference = v23->_contributorReference;
  v23->_contributorReference = v37;

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (self->_syncProvenance != equalCopy[1])
  {
    goto LABEL_28;
  }

  if (self->_syncIdentity != equalCopy[2])
  {
    goto LABEL_28;
  }

  sourceID = self->_sourceID;
  v6 = equalCopy[7];
  if (sourceID != v6 && (!v6 || ![(NSNumber *)sourceID isEqual:?]))
  {
    goto LABEL_28;
  }

  deviceID = self->_deviceID;
  v8 = equalCopy[8];
  if (deviceID != v8 && (!v8 || ![(NSNumber *)deviceID isEqual:?]))
  {
    goto LABEL_28;
  }

  contributorReference = self->_contributorReference;
  v10 = equalCopy[9];
  if (contributorReference != v10 && (!v10 || ![(HDContributorReference *)contributorReference isEqual:?]))
  {
    goto LABEL_28;
  }

  productType = self->_productType;
  v12 = equalCopy[3];
  if (productType != v12 && (!v12 || ![(NSString *)productType isEqualToString:?]))
  {
    goto LABEL_28;
  }

  if (((systemBuild = self->_systemBuild, v14 = equalCopy[4], systemBuild == v14) || v14 && [(NSString *)systemBuild isEqualToString:?]) && ((sourceVersion = self->_sourceVersion, v16 = equalCopy[5], sourceVersion == v16) || v16 && [(NSString *)sourceVersion isEqualToString:?]) && ((timeZoneName = self->_timeZoneName, v18 = equalCopy[6], timeZoneName == v18) || v18 && [(NSString *)timeZoneName isEqualToString:?]) && self->_operatingSystemVersion.majorVersion == equalCopy[10] && self->_operatingSystemVersion.minorVersion == equalCopy[11])
  {
    v19 = self->_operatingSystemVersion.patchVersion == equalCopy[12];
  }

  else
  {
LABEL_28:
    v19 = 0;
  }

  return v19;
}

- (HDDataOriginProvenance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = HDDataOriginProvenance;
  v5 = [(HDDataOriginProvenance *)&v29 init];
  if (v5)
  {
    v5->_syncProvenance = [coderCopy decodeInt64ForKey:@"sync"];
    v5->_syncIdentity = [coderCopy decodeInt64ForKey:@"sync_identity"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"product_type"];
    productType = v5->_productType;
    v5->_productType = v6;

    if (!v5->_productType)
    {
      mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
      currentDeviceProductType = [mEMORY[0x277CCDD30] currentDeviceProductType];
      v10 = v5->_productType;
      v5->_productType = currentDeviceProductType;
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    systemBuild = v5->_systemBuild;
    v5->_systemBuild = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source_version"];
    sourceVersion = v5->_sourceVersion;
    v5->_sourceVersion = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tz_name"];
    timeZoneName = v5->_timeZoneName;
    v5->_timeZoneName = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source_id"];
    sourceID = v5->_sourceID;
    v5->_sourceID = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device_id"];
    deviceID = v5->_deviceID;
    v5->_deviceID = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contributor_reference"];
    contributorReference = v5->_contributorReference;
    v5->_contributorReference = v21;

    if ([coderCopy containsValueForKey:@"os_major_version"])
    {
      v23 = [coderCopy decodeIntegerForKey:@"os_major_version"];
      v24 = [coderCopy decodeIntegerForKey:@"os_minor_version"];
      v25 = [coderCopy decodeIntegerForKey:@"os_patch_version"];
      v5->_operatingSystemVersion.majorVersion = v23;
      v5->_operatingSystemVersion.minorVersion = v24;
      v5->_operatingSystemVersion.patchVersion = v25;
    }

    else
    {
      HDVersionFromBuildStringForProductType(v5->_systemBuild, v5->_productType, &v27);
      *&v5->_operatingSystemVersion.majorVersion = v27;
      v5->_operatingSystemVersion.patchVersion = v28;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  syncProvenance = self->_syncProvenance;
  coderCopy = coder;
  [coderCopy encodeInt64:syncProvenance forKey:@"sync"];
  [coderCopy encodeInt64:self->_syncIdentity forKey:@"sync_identity"];
  [coderCopy encodeObject:self->_productType forKey:@"product_type"];
  [coderCopy encodeObject:self->_productType forKey:@"model"];
  [coderCopy encodeObject:self->_systemBuild forKey:@"build"];
  [coderCopy encodeObject:self->_sourceVersion forKey:@"source_version"];
  [coderCopy encodeObject:self->_timeZoneName forKey:@"tz_name"];
  [coderCopy encodeObject:self->_sourceID forKey:@"source_id"];
  [coderCopy encodeObject:self->_deviceID forKey:@"device_id"];
  [coderCopy encodeObject:self->_contributorReference forKey:@"contributor_reference"];
  [coderCopy encodeInteger:self->_operatingSystemVersion.majorVersion forKey:@"os_major_version"];
  [coderCopy encodeInteger:self->_operatingSystemVersion.minorVersion forKey:@"os_minor_version"];
  [coderCopy encodeInteger:self->_operatingSystemVersion.patchVersion forKey:@"os_patch_version"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v11 = *&self->_productType;
  v12 = *&self->_syncProvenance;
  v9 = *&self->_deviceID;
  v10 = *&self->_timeZoneName;
  sourceVersion = self->_sourceVersion;
  operatingSystemVersion = self->_operatingSystemVersion;
  v6 = HKNSOperatingSystemVersionString();
  v7 = [v3 stringWithFormat:@"<%@:%p syncProvenance=%ld, syncIdentity=%ld, productType=%@, systemBuild=%@, timeZone=%@, sourceID=%@, deviceID=%@, contributorReference=%@, sourceVersion=%@ operatingSystemVersion=%@>", v4, self, v12, v11, v10, v9, sourceVersion, v6, 0];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[HDDataOriginProvenance allocWithZone:](HDDataOriginProvenance init];
  v5->_syncProvenance = self->_syncProvenance;
  v5->_syncIdentity = self->_syncIdentity;
  v6 = [(NSString *)self->_productType copyWithZone:zone];
  productType = v5->_productType;
  v5->_productType = v6;

  v8 = [(NSString *)self->_systemBuild copyWithZone:zone];
  systemBuild = v5->_systemBuild;
  v5->_systemBuild = v8;

  v10 = [(NSString *)self->_sourceVersion copyWithZone:zone];
  sourceVersion = v5->_sourceVersion;
  v5->_sourceVersion = v10;

  v12 = [(NSString *)self->_timeZoneName copyWithZone:zone];
  timeZoneName = v5->_timeZoneName;
  v5->_timeZoneName = v12;

  objc_storeStrong(&v5->_sourceID, self->_sourceID);
  objc_storeStrong(&v5->_deviceID, self->_deviceID);
  objc_storeStrong(&v5->_contributorReference, self->_contributorReference);
  v14 = *&self->_operatingSystemVersion.majorVersion;
  v5->_operatingSystemVersion.patchVersion = self->_operatingSystemVersion.patchVersion;
  *&v5->_operatingSystemVersion.majorVersion = v14;
  return v5;
}

- (void)setOperatingSystemVersion:(id *)version
{
  v3 = *&version->var0;
  self->_operatingSystemVersion.patchVersion = version->var2;
  *&self->_operatingSystemVersion.majorVersion = v3;
}

@end