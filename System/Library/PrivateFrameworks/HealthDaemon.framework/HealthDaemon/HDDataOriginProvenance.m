@interface HDDataOriginProvenance
+ (id)dataProvenanceWithSyncProvenance:(int64_t)a3 syncIdentity:(int64_t)a4 productType:(id)a5 systemBuild:(id)a6 operatingSystemVersion:(id *)a7 sourceVersion:(id)a8 timeZoneName:(id)a9 sourceID:(id)a10 deviceID:(id)a11 contributorReference:(id)a12;
- (BOOL)isEqual:(id)a3;
- (HDDataOriginProvenance)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setOperatingSystemVersion:(id *)a3;
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

+ (id)dataProvenanceWithSyncProvenance:(int64_t)a3 syncIdentity:(int64_t)a4 productType:(id)a5 systemBuild:(id)a6 operatingSystemVersion:(id *)a7 sourceVersion:(id)a8 timeZoneName:(id)a9 sourceID:(id)a10 deviceID:(id)a11 contributorReference:(id)a12
{
  v18 = a10;
  v40 = a11;
  v41 = a12;
  v19 = a9;
  v20 = a8;
  v21 = a6;
  v22 = a5;
  v23 = objc_alloc_init(HDDataOriginProvenance);
  v23->_syncProvenance = a3;
  v23->_syncIdentity = a4;
  v24 = [v22 copy];

  productType = v23->_productType;
  v23->_productType = v24;

  v26 = [v21 copy];
  systemBuild = v23->_systemBuild;
  v23->_systemBuild = v26;

  v28 = *&a7->var0;
  v23->_operatingSystemVersion.patchVersion = a7->var2;
  *&v23->_operatingSystemVersion.majorVersion = v28;
  v29 = [v20 copy];

  sourceVersion = v23->_sourceVersion;
  v23->_sourceVersion = v29;

  v31 = [v19 copy];
  timeZoneName = v23->_timeZoneName;
  v23->_timeZoneName = v31;

  sourceID = v23->_sourceID;
  v23->_sourceID = v18;
  v34 = v18;

  deviceID = v23->_deviceID;
  v23->_deviceID = v40;
  v36 = v40;

  v37 = [v41 copy];
  contributorReference = v23->_contributorReference;
  v23->_contributorReference = v37;

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (self->_syncProvenance != v4[1])
  {
    goto LABEL_28;
  }

  if (self->_syncIdentity != v4[2])
  {
    goto LABEL_28;
  }

  sourceID = self->_sourceID;
  v6 = v4[7];
  if (sourceID != v6 && (!v6 || ![(NSNumber *)sourceID isEqual:?]))
  {
    goto LABEL_28;
  }

  deviceID = self->_deviceID;
  v8 = v4[8];
  if (deviceID != v8 && (!v8 || ![(NSNumber *)deviceID isEqual:?]))
  {
    goto LABEL_28;
  }

  contributorReference = self->_contributorReference;
  v10 = v4[9];
  if (contributorReference != v10 && (!v10 || ![(HDContributorReference *)contributorReference isEqual:?]))
  {
    goto LABEL_28;
  }

  productType = self->_productType;
  v12 = v4[3];
  if (productType != v12 && (!v12 || ![(NSString *)productType isEqualToString:?]))
  {
    goto LABEL_28;
  }

  if (((systemBuild = self->_systemBuild, v14 = v4[4], systemBuild == v14) || v14 && [(NSString *)systemBuild isEqualToString:?]) && ((sourceVersion = self->_sourceVersion, v16 = v4[5], sourceVersion == v16) || v16 && [(NSString *)sourceVersion isEqualToString:?]) && ((timeZoneName = self->_timeZoneName, v18 = v4[6], timeZoneName == v18) || v18 && [(NSString *)timeZoneName isEqualToString:?]) && self->_operatingSystemVersion.majorVersion == v4[10] && self->_operatingSystemVersion.minorVersion == v4[11])
  {
    v19 = self->_operatingSystemVersion.patchVersion == v4[12];
  }

  else
  {
LABEL_28:
    v19 = 0;
  }

  return v19;
}

- (HDDataOriginProvenance)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = HDDataOriginProvenance;
  v5 = [(HDDataOriginProvenance *)&v29 init];
  if (v5)
  {
    v5->_syncProvenance = [v4 decodeInt64ForKey:@"sync"];
    v5->_syncIdentity = [v4 decodeInt64ForKey:@"sync_identity"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"product_type"];
    productType = v5->_productType;
    v5->_productType = v6;

    if (!v5->_productType)
    {
      v8 = [MEMORY[0x277CCDD30] sharedBehavior];
      v9 = [v8 currentDeviceProductType];
      v10 = v5->_productType;
      v5->_productType = v9;
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    systemBuild = v5->_systemBuild;
    v5->_systemBuild = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source_version"];
    sourceVersion = v5->_sourceVersion;
    v5->_sourceVersion = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tz_name"];
    timeZoneName = v5->_timeZoneName;
    v5->_timeZoneName = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source_id"];
    sourceID = v5->_sourceID;
    v5->_sourceID = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device_id"];
    deviceID = v5->_deviceID;
    v5->_deviceID = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contributor_reference"];
    contributorReference = v5->_contributorReference;
    v5->_contributorReference = v21;

    if ([v4 containsValueForKey:@"os_major_version"])
    {
      v23 = [v4 decodeIntegerForKey:@"os_major_version"];
      v24 = [v4 decodeIntegerForKey:@"os_minor_version"];
      v25 = [v4 decodeIntegerForKey:@"os_patch_version"];
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

- (void)encodeWithCoder:(id)a3
{
  syncProvenance = self->_syncProvenance;
  v5 = a3;
  [v5 encodeInt64:syncProvenance forKey:@"sync"];
  [v5 encodeInt64:self->_syncIdentity forKey:@"sync_identity"];
  [v5 encodeObject:self->_productType forKey:@"product_type"];
  [v5 encodeObject:self->_productType forKey:@"model"];
  [v5 encodeObject:self->_systemBuild forKey:@"build"];
  [v5 encodeObject:self->_sourceVersion forKey:@"source_version"];
  [v5 encodeObject:self->_timeZoneName forKey:@"tz_name"];
  [v5 encodeObject:self->_sourceID forKey:@"source_id"];
  [v5 encodeObject:self->_deviceID forKey:@"device_id"];
  [v5 encodeObject:self->_contributorReference forKey:@"contributor_reference"];
  [v5 encodeInteger:self->_operatingSystemVersion.majorVersion forKey:@"os_major_version"];
  [v5 encodeInteger:self->_operatingSystemVersion.minorVersion forKey:@"os_minor_version"];
  [v5 encodeInteger:self->_operatingSystemVersion.patchVersion forKey:@"os_patch_version"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[HDDataOriginProvenance allocWithZone:](HDDataOriginProvenance init];
  v5->_syncProvenance = self->_syncProvenance;
  v5->_syncIdentity = self->_syncIdentity;
  v6 = [(NSString *)self->_productType copyWithZone:a3];
  productType = v5->_productType;
  v5->_productType = v6;

  v8 = [(NSString *)self->_systemBuild copyWithZone:a3];
  systemBuild = v5->_systemBuild;
  v5->_systemBuild = v8;

  v10 = [(NSString *)self->_sourceVersion copyWithZone:a3];
  sourceVersion = v5->_sourceVersion;
  v5->_sourceVersion = v10;

  v12 = [(NSString *)self->_timeZoneName copyWithZone:a3];
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

- (void)setOperatingSystemVersion:(id *)a3
{
  v3 = *&a3->var0;
  self->_operatingSystemVersion.patchVersion = a3->var2;
  *&self->_operatingSystemVersion.majorVersion = v3;
}

@end