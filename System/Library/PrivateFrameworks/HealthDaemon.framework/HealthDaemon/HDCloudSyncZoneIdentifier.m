@interface HDCloudSyncZoneIdentifier
+ (id)identifierForZone:(id)a3 container:(id)a4 scope:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentIgnoringOwnerToZone:(id)a3;
- (BOOL)isEquivalentIgnoringOwnerToZone:(id)a3 container:(id)a4;
- (BOOL)isEquivalentToZone:(id)a3 container:(id)a4;
- (HDCloudSyncZoneIdentifier)initWithCoder:(id)a3;
- (id)description;
- (id)initForZone:(id)a3 container:(id)a4 scope:(int64_t)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDCloudSyncZoneIdentifier

+ (id)identifierForZone:(id)a3 container:(id)a4 scope:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[HDCloudSyncZoneIdentifier alloc] initForZone:v8 container:v7 scope:a5];

  return v9;
}

- (id)initForZone:(id)a3 container:(id)a4 scope:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v32.receiver = self;
  v32.super_class = HDCloudSyncZoneIdentifier;
  v10 = [(HDCloudSyncZoneIdentifier *)&v32 init];
  if (v10)
  {
    v11 = [v8 copy];
    zoneIdentifier = v10->_zoneIdentifier;
    v10->_zoneIdentifier = v11;

    v13 = [v9 copy];
    containerIdentifier = v10->_containerIdentifier;
    v10->_containerIdentifier = v13;

    v10->_scope = a5;
    v15 = v8;
    objc_opt_self();
    v41 = 0;
    v16 = [v15 hd_isMasterZoneIDForSyncCircleIdentifier:&v41];
    v17 = v41;
    v18 = v17;
    if (v16)
    {
      v19 = 0;
    }

    else
    {
      v40 = v17;
      v21 = [v15 hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v40];
      v20 = v40;

      if (v21)
      {
        v19 = 2;
        goto LABEL_21;
      }

      v39 = v20;
      v22 = [v15 hd_isPrivateMetadataZoneIDForSyncCircleIdentifier:&v39];
      v18 = v39;

      if ((v22 & 1) == 0)
      {
        v37 = 0;
        v38 = v18;
        v23 = [v15 hd_isStateSyncZoneIDForSyncCircleIdentifier:&v38 domain:&v37];
        v20 = v38;

        v24 = v37;
        if (v23)
        {
          v19 = 6;
        }

        else
        {
          v36 = v20;
          v25 = [v15 hd_isContextSyncZoneIDForSyncCircleIdentifier:&v36];
          v26 = v36;

          if (v25)
          {
            v19 = 7;
            v20 = v26;
          }

          else
          {
            v34 = v26;
            v35 = 0;
            v27 = [v15 hd_isSharedSummaryZoneIDForUserIdentifier:&v35 syncCircleIdentifier:&v34];
            v28 = v35;
            v20 = v34;

            if (v27)
            {
              v19 = 3;
            }

            else
            {
              v33 = v20;
              v29 = [v15 hd_isAttachmentZoneIDForSyncCircleIdentifier:&v33];
              v30 = v33;

              if (v29)
              {
                v19 = 5;
              }

              else
              {
                v19 = 1;
              }

              v20 = v30;
            }
          }
        }

        goto LABEL_21;
      }

      v19 = 4;
    }

    v20 = v18;
LABEL_21:

    v10->_type = v19;
  }

  return v10;
}

- (HDCloudSyncZoneIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zone_id_record_zone_id"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zone_id_container_id"];
  v7 = [v4 decodeIntForKey:@"zone_id_scope"];

  v8 = [(HDCloudSyncZoneIdentifier *)self initForZone:v5 container:v6 scope:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  zoneIdentifier = self->_zoneIdentifier;
  v5 = a3;
  [v5 encodeObject:zoneIdentifier forKey:@"zone_id_record_zone_id"];
  [v5 encodeObject:self->_containerIdentifier forKey:@"zone_id_container_id"];
  [v5 encodeInt:LODWORD(self->_scope) forKey:@"zone_id_scope"];
}

- (unint64_t)hash
{
  v3 = [(CKRecordZoneID *)self->_zoneIdentifier zoneName];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_containerIdentifier hash]^ self->_scope;

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_scope == v4[3])
  {
    v5 = [v4 zoneIdentifier];
    v6 = [v4 containerIdentifier];
    v7 = [(HDCloudSyncZoneIdentifier *)self isEquivalentToZone:v5 container:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEquivalentToZone:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKRecordZoneID *)self->_zoneIdentifier zoneName];
  v9 = [v6 zoneName];
  if ([v8 isEqualToString:v9])
  {
    v10 = [(CKRecordZoneID *)self->_zoneIdentifier ownerName];
    v11 = [v6 ownerName];
    if ([v10 isEqualToString:v11])
    {
      v12 = [(NSString *)self->_containerIdentifier isEqualToString:v7];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEquivalentIgnoringOwnerToZone:(id)a3 container:(id)a4
{
  v6 = a4;
  zoneIdentifier = self->_zoneIdentifier;
  v8 = a3;
  v9 = [(CKRecordZoneID *)zoneIdentifier zoneName];
  v10 = [v8 zoneName];

  if ([v9 isEqualToString:v10])
  {
    v11 = [(NSString *)self->_containerIdentifier isEqualToString:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEquivalentIgnoringOwnerToZone:(id)a3
{
  v4 = a3;
  v5 = [v4 zoneIdentifier];
  v6 = [v4 containerIdentifier];

  LOBYTE(self) = [(HDCloudSyncZoneIdentifier *)self isEquivalentIgnoringOwnerToZone:v5 container:v6];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  containerIdentifier = self->_containerIdentifier;
  v5 = HDCKDatabaseScopeToString(self->_scope);
  v6 = [(CKRecordZoneID *)self->_zoneIdentifier zoneName];
  v7 = [(CKRecordZoneID *)self->_zoneIdentifier ownerName];
  v8 = [v3 stringWithFormat:@"<%@ (%@): %@ [%@]>", containerIdentifier, v5, v6, v7];

  return v8;
}

@end