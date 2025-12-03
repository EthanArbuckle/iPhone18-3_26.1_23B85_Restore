@interface HDCloudSyncZoneIdentifier
+ (id)identifierForZone:(id)zone container:(id)container scope:(int64_t)scope;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentIgnoringOwnerToZone:(id)zone;
- (BOOL)isEquivalentIgnoringOwnerToZone:(id)zone container:(id)container;
- (BOOL)isEquivalentToZone:(id)zone container:(id)container;
- (HDCloudSyncZoneIdentifier)initWithCoder:(id)coder;
- (id)description;
- (id)initForZone:(id)zone container:(id)container scope:(int64_t)scope;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDCloudSyncZoneIdentifier

+ (id)identifierForZone:(id)zone container:(id)container scope:(int64_t)scope
{
  containerCopy = container;
  zoneCopy = zone;
  v9 = [[HDCloudSyncZoneIdentifier alloc] initForZone:zoneCopy container:containerCopy scope:scope];

  return v9;
}

- (id)initForZone:(id)zone container:(id)container scope:(int64_t)scope
{
  zoneCopy = zone;
  containerCopy = container;
  v32.receiver = self;
  v32.super_class = HDCloudSyncZoneIdentifier;
  v10 = [(HDCloudSyncZoneIdentifier *)&v32 init];
  if (v10)
  {
    v11 = [zoneCopy copy];
    zoneIdentifier = v10->_zoneIdentifier;
    v10->_zoneIdentifier = v11;

    v13 = [containerCopy copy];
    containerIdentifier = v10->_containerIdentifier;
    v10->_containerIdentifier = v13;

    v10->_scope = scope;
    v15 = zoneCopy;
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

- (HDCloudSyncZoneIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zone_id_record_zone_id"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zone_id_container_id"];
  v7 = [coderCopy decodeIntForKey:@"zone_id_scope"];

  v8 = [(HDCloudSyncZoneIdentifier *)self initForZone:v5 container:v6 scope:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  zoneIdentifier = self->_zoneIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:zoneIdentifier forKey:@"zone_id_record_zone_id"];
  [coderCopy encodeObject:self->_containerIdentifier forKey:@"zone_id_container_id"];
  [coderCopy encodeInt:LODWORD(self->_scope) forKey:@"zone_id_scope"];
}

- (unint64_t)hash
{
  zoneName = [(CKRecordZoneID *)self->_zoneIdentifier zoneName];
  v4 = [zoneName hash];
  v5 = [(NSString *)self->_containerIdentifier hash]^ self->_scope;

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_scope == equalCopy[3])
  {
    zoneIdentifier = [equalCopy zoneIdentifier];
    containerIdentifier = [equalCopy containerIdentifier];
    v7 = [(HDCloudSyncZoneIdentifier *)self isEquivalentToZone:zoneIdentifier container:containerIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEquivalentToZone:(id)zone container:(id)container
{
  zoneCopy = zone;
  containerCopy = container;
  zoneName = [(CKRecordZoneID *)self->_zoneIdentifier zoneName];
  zoneName2 = [zoneCopy zoneName];
  if ([zoneName isEqualToString:zoneName2])
  {
    ownerName = [(CKRecordZoneID *)self->_zoneIdentifier ownerName];
    ownerName2 = [zoneCopy ownerName];
    if ([ownerName isEqualToString:ownerName2])
    {
      v12 = [(NSString *)self->_containerIdentifier isEqualToString:containerCopy];
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

- (BOOL)isEquivalentIgnoringOwnerToZone:(id)zone container:(id)container
{
  containerCopy = container;
  zoneIdentifier = self->_zoneIdentifier;
  zoneCopy = zone;
  zoneName = [(CKRecordZoneID *)zoneIdentifier zoneName];
  zoneName2 = [zoneCopy zoneName];

  if ([zoneName isEqualToString:zoneName2])
  {
    v11 = [(NSString *)self->_containerIdentifier isEqualToString:containerCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEquivalentIgnoringOwnerToZone:(id)zone
{
  zoneCopy = zone;
  zoneIdentifier = [zoneCopy zoneIdentifier];
  containerIdentifier = [zoneCopy containerIdentifier];

  LOBYTE(self) = [(HDCloudSyncZoneIdentifier *)self isEquivalentIgnoringOwnerToZone:zoneIdentifier container:containerIdentifier];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  containerIdentifier = self->_containerIdentifier;
  v5 = HDCKDatabaseScopeToString(self->_scope);
  zoneName = [(CKRecordZoneID *)self->_zoneIdentifier zoneName];
  ownerName = [(CKRecordZoneID *)self->_zoneIdentifier ownerName];
  v8 = [v3 stringWithFormat:@"<%@ (%@): %@ [%@]>", containerIdentifier, v5, zoneName, ownerName];

  return v8;
}

@end