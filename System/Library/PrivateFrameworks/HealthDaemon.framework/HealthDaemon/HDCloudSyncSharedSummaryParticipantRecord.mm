@interface HDCloudSyncSharedSummaryParticipantRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isParticipantRecord:(id)record;
+ (id)codableRecordFromRecord:(id)record;
+ (id)fieldsForUnprotectedSerialization;
+ (id)recordIDWithZoneID:(id)d UUID:(id)iD;
+ (id)recordWithCKRecord:(id)record error:(id *)error;
- (BOOL)updateWithLocalEntry:(id)entry error:(id *)error;
- (CKShareParticipant)ownerParticipant;
- (HDCloudSyncSharedSummaryParticipantRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (HDCodableSharingSetupMetadata)shareSetupMetadata;
- (NSArray)allContactIdentifiers;
- (NSDate)entryAcceptanceDate;
- (NSDate)entryInvitationDate;
- (NSDate)entryModificationDate;
- (NSNumber)notificationStatus;
- (NSNumber)relationshipDirection;
- (NSNumber)relationshipStatus;
- (NSNumber)relationshipType;
- (NSNumber)userWheelchairMode;
- (NSUUID)UUID;
- (NSUUID)authorizationRecordIdentifier;
- (NSUUID)invitationUUID;
- (id)description;
- (id)initInZone:(id)zone codableEntry:(id)entry;
- (int64_t)mergeWithLocalEntry:(id)entry error:(id *)error;
- (void)setAllContactIdentifiers:(id)identifiers;
- (void)setAuthorizationRecord:(id)record;
- (void)setCloudKitIdentifier:(id)identifier;
- (void)setEntryAcceptanceDate:(id)date;
- (void)setEntryInvitationDate:(id)date;
- (void)setEntryModificationDate:(id)date;
- (void)setFirstName:(id)name;
- (void)setInvitationUUID:(id)d;
- (void)setLastName:(id)name;
- (void)setNotificationStatus:(id)status;
- (void)setOwnerParticipant:(id)participant;
- (void)setRelationshipDirection:(id)direction;
- (void)setRelationshipStatus:(id)status;
- (void)setRelationshipType:(id)type;
- (void)setShareSetupMetadata:(id)metadata;
- (void)setUserWheelchairMode:(id)mode;
@end

@implementation HDCloudSyncSharedSummaryParticipantRecord

+ (BOOL)hasFutureSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

+ (id)recordIDWithZoneID:(id)d UUID:(id)iD
{
  v5 = MEMORY[0x277CCACA8];
  dCopy = d;
  uUIDString = [iD UUIDString];
  v8 = [v5 stringWithFormat:@"%@/%@", @"SharedSummaryParticipantRecord", uUIDString];

  v9 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v8 zoneID:dCopy];

  return v9;
}

+ (BOOL)isParticipantRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"SharedSummaryParticipantRecordType"];

  return v4;
}

- (id)initInZone:(id)zone codableEntry:(id)entry
{
  entryCopy = entry;
  v7 = MEMORY[0x277CCAD78];
  zoneCopy = zone;
  v9 = [v7 alloc];
  uuid = [entryCopy uuid];
  v11 = [v9 initWithUUIDString:uuid];

  v12 = [objc_opt_class() recordIDWithZoneID:zoneCopy UUID:v11];

  v13 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"SharedSummaryParticipantRecordType" recordID:v12];
  v14 = [(HDCloudSyncSharedSummaryParticipantRecord *)self initWithCKRecord:v13 schemaVersion:1];
  if (v14)
  {
    uUIDString = [v11 UUIDString];
    v16 = [uUIDString copy];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setUuid:v16];

    invitationUUID = [entryCopy invitationUUID];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setInvitationUUID:invitationUUID];

    primaryContactIdentifier = [entryCopy primaryContactIdentifier];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setContactIdentifier:primaryContactIdentifier];

    cloudKitIdentifier = [entryCopy cloudKitIdentifier];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setCloudKitIdentifier:cloudKitIdentifier];

    firstName = [entryCopy firstName];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setFirstName:firstName];

    lastName = [entryCopy lastName];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setLastName:lastName];

    -[HDCloudSyncCodableSharedSummaryParticipantRecord setUserWheelchairMode:](v14->_underlyingSummaryParticipantRecord, "setUserWheelchairMode:", [entryCopy userWheelchairMode]);
    allContactIdentifiers = [entryCopy allContactIdentifiers];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setAllContactIdentifiers:allContactIdentifiers];

    -[HDCloudSyncCodableSharedSummaryParticipantRecord setType:](v14->_underlyingSummaryParticipantRecord, "setType:", [entryCopy type]);
    -[HDCloudSyncCodableSharedSummaryParticipantRecord setDirection:](v14->_underlyingSummaryParticipantRecord, "setDirection:", [entryCopy direction]);
    -[HDCloudSyncCodableSharedSummaryParticipantRecord setStatus:](v14->_underlyingSummaryParticipantRecord, "setStatus:", [entryCopy status]);
    -[HDCloudSyncCodableSharedSummaryParticipantRecord setNotificationStatus:](v14->_underlyingSummaryParticipantRecord, "setNotificationStatus:", [entryCopy notificationStatus]);
    if ([entryCopy hasDateModified])
    {
      [entryCopy dateModified];
      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setEntryModificationDate:?];
    }

    if ([entryCopy hasDateInvited])
    {
      [entryCopy dateInvited];
      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setEntryInvitationDate:?];
    }

    if ([entryCopy hasDateAccepted])
    {
      [entryCopy dateAccepted];
      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setEntryAcceptanceDate:?];
    }

    if ([entryCopy hasSharingSetupMetadata])
    {
      sharingSetupMetadata = [entryCopy sharingSetupMetadata];
      data = [sharingSetupMetadata data];
      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setSetupMetadata:data];
    }

    if ([entryCopy hasOwnerParticipant])
    {
      ownerParticipant = [entryCopy ownerParticipant];
      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setOwnerParticipant:ownerParticipant];
    }

    if ([entryCopy hasCloudKitIdentifier])
    {
      cloudKitIdentifier2 = [entryCopy cloudKitIdentifier];
      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setCloudKitIdentifier:cloudKitIdentifier2];
    }
  }

  return v14;
}

- (HDCloudSyncSharedSummaryParticipantRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HDCloudSyncSharedSummaryParticipantRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:record schemaVersion:version];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  underlyingMessage = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!underlyingMessage)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableSharedSummaryParticipantRecord);
    underlyingSummaryParticipantRecord = v5->_underlyingSummaryParticipantRecord;
    v5->_underlyingSummaryParticipantRecord = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableSharedSummaryParticipantRecord alloc] initWithData:underlyingMessage];
  v8 = v5->_underlyingSummaryParticipantRecord;
  v5->_underlyingSummaryParticipantRecord = v7;

  if (v5->_underlyingSummaryParticipantRecord)
  {
LABEL_8:

LABEL_9:
    v10 = v5;
    goto LABEL_10;
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v17 = v5;
    _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "[summary-sharing] %{public}@: Failed to decode underlying record.", buf, 0xCu);
  }

  v10 = 0;
LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)updateWithLocalEntry:(id)entry error:(id *)error
{
  entryCopy = entry;
  uuid = [entryCopy uuid];
  uuid2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord uuid];
  v10 = [uuid isEqualToString:uuid2];

  if ((v10 & 1) == 0)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = objc_opt_class();
    v18 = @"Cannot update with mismatched UUID.";
    goto LABEL_7;
  }

  if (![entryCopy hasInvitationUUID])
  {
LABEL_9:
    hasStatus = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasStatus];
    status = [entryCopy status];
    if (hasStatus)
    {
      if (status > 2)
      {
        if (status == 3)
        {
          if (![(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status])
          {
            v22 = 3;
            goto LABEL_17;
          }
        }

        else if (status == 4 && (![(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status]|| [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status]== 1))
        {
          v22 = 4;
          goto LABEL_17;
        }
      }

      else if (status == 1)
      {
        if (![(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status])
        {
          v22 = 1;
          goto LABEL_17;
        }
      }

      else if (status == 2 && (![(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status]|| [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status]== 1))
      {
        v22 = 2;
LABEL_17:
        [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setStatus:v22];
      }

      hasNotificationStatus = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasNotificationStatus];
      notificationStatus = [entryCopy notificationStatus];
      if (hasNotificationStatus)
      {
        if (notificationStatus == 2)
        {
          v25 = 2;
        }

        else
        {
          if (notificationStatus != 1 || [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord notificationStatus])
          {
LABEL_31:
            if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasType])
            {
              type = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord type];
              if (type != [entryCopy type])
              {
                v16 = MEMORY[0x277CCA9B8];
                v17 = objc_opt_class();
                v18 = @"Invitation types do not match.";
                goto LABEL_7;
              }
            }

            else
            {
              -[HDCloudSyncCodableSharedSummaryParticipantRecord setType:](self->_underlyingSummaryParticipantRecord, "setType:", [entryCopy type]);
            }

            if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasDirection])
            {
              direction = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord direction];
              if (direction != [entryCopy direction])
              {
                v16 = MEMORY[0x277CCA9B8];
                v17 = objc_opt_class();
                v18 = @"Invitation directions do not match.";
                goto LABEL_7;
              }
            }

            else
            {
              -[HDCloudSyncCodableSharedSummaryParticipantRecord setDirection:](self->_underlyingSummaryParticipantRecord, "setDirection:", [entryCopy direction]);
            }

            v19 = 1;
            goto LABEL_40;
          }

          v25 = 1;
        }
      }

      else
      {
        v25 = notificationStatus;
      }

      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setNotificationStatus:v25];
      goto LABEL_31;
    }

    v22 = status;
    goto LABEL_17;
  }

  hasInvitationUUID = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasInvitationUUID];
  invitationUUID = [entryCopy invitationUUID];
  underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;
  if (!hasInvitationUUID)
  {
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setInvitationUUID:invitationUUID];

    goto LABEL_9;
  }

  invitationUUID2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord invitationUUID];
  v15 = [invitationUUID isEqualToString:invitationUUID2];

  if (v15)
  {
    goto LABEL_9;
  }

  v16 = MEMORY[0x277CCA9B8];
  v17 = objc_opt_class();
  v18 = @"Invitation UUIDs do not match.";
LABEL_7:
  [v16 hk_assignError:error invalidArgument:v18 class:v17 selector:a2];
  v19 = 0;
LABEL_40:

  return v19;
}

- (int64_t)mergeWithLocalEntry:(id)entry error:(id *)error
{
  v105 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  uuid = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy uuid];
  uuid2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord uuid];
  v10 = [uuid isEqualToString:uuid2];

  if ((v10 & 1) == 0)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = objc_opt_class();
    v20 = @"Cannot update with mismatched UUID.";
    goto LABEL_7;
  }

  hasInvitationUUID = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy hasInvitationUUID];
  hasInvitationUUID2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasInvitationUUID];
  v13 = hasInvitationUUID2;
  if (!hasInvitationUUID)
  {
    if (!hasInvitationUUID2)
    {
      goto LABEL_11;
    }

    invitationUUID = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord invitationUUID];
    underlyingSummaryParticipantRecord = entryCopy;
LABEL_10:
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setInvitationUUID:invitationUUID];
    v22 = hasInvitationUUID ^ 1;

    goto LABEL_12;
  }

  invitationUUID = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy invitationUUID];
  underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;
  if (!v13)
  {
    goto LABEL_10;
  }

  invitationUUID2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord invitationUUID];
  v17 = [invitationUUID isEqualToString:invitationUUID2];

  if (v17)
  {
LABEL_11:
    v22 = 0;
    hasInvitationUUID = 0;
LABEL_12:
    hasType = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasType];
    hasType2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy hasType];
    v25 = hasType2;
    if (!hasType)
    {
      if (hasType2)
      {
        [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setType:HDSharingTypeFromCodableType([(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy type])];
        hasInvitationUUID = 1;
      }

      goto LABEL_25;
    }

    type = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord type];
    v27 = type;
    if (v25)
    {
      if (type != HDSharingTypeFromCodableType([(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy type]))
      {
        v18 = MEMORY[0x277CCA9B8];
        v19 = objc_opt_class();
        v20 = @"Invitation types do not match.";
        goto LABEL_7;
      }

LABEL_25:
      hasDirection = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasDirection];
      hasDirection2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy hasDirection];
      v32 = hasDirection2;
      if (!hasDirection)
      {
        if (hasDirection2)
        {
          [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setDirection:HDSharingMessageDirectionFromCodableDirection([(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy direction])];
          hasInvitationUUID = 1;
        }

        goto LABEL_38;
      }

      direction = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord direction];
      v34 = direction;
      if (v32)
      {
        if (direction != HDSharingMessageDirectionFromCodableDirection([(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy direction]))
        {
          v18 = MEMORY[0x277CCA9B8];
          v19 = objc_opt_class();
          v20 = @"Invitation directions do not match.";
          goto LABEL_7;
        }

LABEL_38:
        hasStatus = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasStatus];
        hasStatus2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy hasStatus];
        if (hasStatus)
        {
          if (hasStatus2)
          {
            v39 = HDSharingStatusFromCodableStatus([(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy status]);
            status = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status];
            v41 = HDMergedSharingStatus(v39, status);
            v42 = v41;
            if (v41 != v39)
            {
              [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy setStatus:HDCodableSharingStatusFromStatus(v41)];
              v22 = 1;
            }

            if (v42 != status)
            {
              v43 = self->_underlyingSummaryParticipantRecord;
              v44 = v42;
LABEL_46:
              [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v43 setStatus:v44];
              hasInvitationUUID = 1;
            }
          }

          else
          {
            [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy setStatus:HDCodableSharingStatusFromStatus([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status])];
            v22 = 1;
          }

LABEL_48:
          hasNotificationStatus = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasNotificationStatus];
          hasNotificationStatus2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy hasNotificationStatus];
          if (hasNotificationStatus)
          {
            if (!hasNotificationStatus2)
            {
              [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy setNotificationStatus:HDCodableSharingNotificationStatusFromStatus([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord notificationStatus])];
              v22 = 1;
              goto LABEL_65;
            }

            v47 = HDSharingNotificationStatusFromCodableStatus([(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy notificationStatus]);
            notificationStatus = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord notificationStatus];
            v49 = notificationStatus;
            if (v47)
            {
              if (v47 == 2)
              {
                v50 = 2;
              }

              else if (notificationStatus == 2)
              {
                v50 = 2;
              }

              else
              {
                v50 = 1;
              }
            }

            else
            {
              v50 = notificationStatus;
            }

            if (v50 != v47)
            {
              [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy setNotificationStatus:HDCodableSharingNotificationStatusFromStatus(v50)];
              v22 = 1;
            }

            if (v50 == v49)
            {
LABEL_65:
              hasEntryModificationDate = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasEntryModificationDate];
              hasDateModified = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy hasDateModified];
              v55 = hasDateModified;
              if (hasEntryModificationDate)
              {
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryModificationDate];
                v57 = v56;
                if (!v55)
                {
                  goto LABEL_72;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy dateModified];
                if (v57 < v58)
                {
                  v57 = v58;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryModificationDate];
                if (v57 != v59)
                {
                  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setEntryModificationDate:v57];
                  hasInvitationUUID = 1;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy dateModified];
                if (v57 != v60)
                {
LABEL_72:
                  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy setDateModified:v57];
                  v22 = 1;
                }
              }

              else if (hasDateModified)
              {
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy dateModified];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setEntryModificationDate:?];
                hasInvitationUUID = 1;
              }

              hasEntryInvitationDate = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasEntryInvitationDate];
              hasDateInvited = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy hasDateInvited];
              v63 = hasDateInvited;
              if (hasEntryInvitationDate)
              {
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryInvitationDate];
                v65 = v64;
                if (!v63)
                {
                  goto LABEL_82;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy dateInvited];
                if (v65 >= v66)
                {
                  v65 = v66;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryInvitationDate];
                if (v65 != v67)
                {
                  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setEntryInvitationDate:v65];
                  hasInvitationUUID = 1;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy dateInvited];
                if (v65 != v68)
                {
LABEL_82:
                  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy setDateInvited:v65];
                  v22 = 1;
                }
              }

              else if (hasDateInvited)
              {
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy dateInvited];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setEntryInvitationDate:?];
                hasInvitationUUID = 1;
              }

              hasEntryAcceptanceDate = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasEntryAcceptanceDate];
              hasDateAccepted = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy hasDateAccepted];
              v71 = hasDateAccepted;
              if (hasEntryAcceptanceDate)
              {
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryAcceptanceDate];
                v73 = v72;
                if (!v71)
                {
                  goto LABEL_92;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy dateAccepted];
                if (v73 >= v74)
                {
                  v73 = v74;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryAcceptanceDate];
                if (v73 != v75)
                {
                  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setEntryAcceptanceDate:v73];
                  hasInvitationUUID = 1;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy dateAccepted];
                if (v73 != v76)
                {
LABEL_92:
                  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy setDateAccepted:v73];
                  v22 = 1;
                }
              }

              else if (hasDateAccepted)
              {
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy dateAccepted];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setEntryAcceptanceDate:?];
                hasInvitationUUID = 1;
              }

              hasOwnerParticipant = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasOwnerParticipant];
              hasOwnerParticipant2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy hasOwnerParticipant];
              if (hasOwnerParticipant)
              {
                if (hasOwnerParticipant2)
                {
                  goto LABEL_101;
                }

                ownerParticipant = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord ownerParticipant];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy setOwnerParticipant:ownerParticipant];
                v22 = 1;
              }

              else
              {
                if (!hasOwnerParticipant2)
                {
                  goto LABEL_101;
                }

                ownerParticipant = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy ownerParticipant];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setOwnerParticipant:ownerParticipant];
                hasInvitationUUID = 1;
              }

LABEL_101:
              hasCloudKitIdentifier = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasCloudKitIdentifier];
              hasCloudKitIdentifier2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy hasCloudKitIdentifier];
              if (hasCloudKitIdentifier)
              {
                if (hasCloudKitIdentifier2)
                {
                  goto LABEL_107;
                }

                cloudKitIdentifier = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord cloudKitIdentifier];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy setCloudKitIdentifier:cloudKitIdentifier];
                v22 = 1;
              }

              else
              {
                if (!hasCloudKitIdentifier2)
                {
                  goto LABEL_107;
                }

                cloudKitIdentifier = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy cloudKitIdentifier];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setCloudKitIdentifier:cloudKitIdentifier];
                hasInvitationUUID = 1;
              }

LABEL_107:
              v83 = objc_alloc_init(MEMORY[0x277CBEB58]);
              allContactIdentifiers = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord allContactIdentifiers];

              if (allContactIdentifiers)
              {
                allContactIdentifiers2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord allContactIdentifiers];
                [v83 addObjectsFromArray:allContactIdentifiers2];
              }

              allContactIdentifiers3 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy allContactIdentifiers];

              if (allContactIdentifiers3)
              {
                allContactIdentifiers4 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy allContactIdentifiers];
                [v83 addObjectsFromArray:allContactIdentifiers4];
              }

              allObjects = [v83 allObjects];
              v89 = [allObjects sortedArrayUsingSelector:sel_compare_];

              allContactIdentifiers5 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord allContactIdentifiers];
              v91 = allContactIdentifiers5;
              if (allContactIdentifiers5 != v89)
              {
                if (v89)
                {
                  allContactIdentifiers6 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord allContactIdentifiers];
                  v93 = [allContactIdentifiers6 isEqual:v89];

                  if (v93)
                  {
LABEL_118:
                    allContactIdentifiers7 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy allContactIdentifiers];
                    v95 = allContactIdentifiers7;
                    if (allContactIdentifiers7 != v89)
                    {
                      if (v89)
                      {
                        allContactIdentifiers8 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy allContactIdentifiers];
                        v97 = [allContactIdentifiers8 isEqual:v89];

                        if (v97)
                        {
LABEL_125:
                          record = [(HDCloudSyncRecord *)self record];
                          v99 = [record objectForKeyedSubscript:@"RelationshipRecord"];

                          if (v99)
                          {
                            record2 = [(HDCloudSyncRecord *)self record];
                            [record2 setObject:0 forKeyedSubscript:@"RelationshipRecord"];
                          }

                          else if (!hasInvitationUUID)
                          {
                            if (v22)
                            {
                              v21 = 2;
                            }

                            else
                            {
                              v21 = 4;
                            }

                            goto LABEL_131;
                          }

                          if (v22)
                          {
                            v21 = 3;
                          }

                          else
                          {
                            v21 = 1;
                          }

LABEL_131:

                          goto LABEL_132;
                        }
                      }

                      else
                      {
                      }

                      v95 = [v89 mutableCopy];
                      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy setAllContactIdentifiers:v95];
                      v22 = 1;
                    }

                    goto LABEL_125;
                  }
                }

                else
                {
                }

                v91 = [v89 mutableCopy];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setAllContactIdentifiers:v91];
                hasInvitationUUID = 1;
              }

              goto LABEL_118;
            }

            v52 = self->_underlyingSummaryParticipantRecord;
            v51 = v50;
          }

          else
          {
            if (!hasNotificationStatus2)
            {
              goto LABEL_65;
            }

            v51 = HDSharingNotificationStatusFromCodableStatus([(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy notificationStatus]);
            v52 = self->_underlyingSummaryParticipantRecord;
          }

          [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v52 setNotificationStatus:v51];
          hasInvitationUUID = 1;
          goto LABEL_65;
        }

        if (!hasStatus2)
        {
          goto LABEL_48;
        }

        v44 = HDSharingStatusFromCodableStatus([(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy status]);
        v43 = self->_underlyingSummaryParticipantRecord;
        goto LABEL_46;
      }

      if (direction != 1)
      {
        if (!direction)
        {
          v35 = 0;
LABEL_37:
          [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy setDirection:v35];
          v22 = 1;
          goto LABEL_38;
        }

        _HKInitializeLogging();
        v36 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
        {
          v103 = 134217984;
          v104 = v34;
          _os_log_fault_impl(&dword_228986000, v36, OS_LOG_TYPE_FAULT, "Unexpected direction %ld", &v103, 0xCu);
        }
      }

      v35 = 1;
      goto LABEL_37;
    }

    if (type)
    {
      if (type == 1)
      {
        v28 = 1;
LABEL_24:
        [(HDCloudSyncCodableSharedSummaryParticipantRecord *)entryCopy setType:v28];
        v22 = 1;
        goto LABEL_25;
      }

      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        v103 = 134217984;
        v104 = v27;
        _os_log_fault_impl(&dword_228986000, v29, OS_LOG_TYPE_FAULT, "Unexpected type %ld", &v103, 0xCu);
      }
    }

    v28 = 0;
    goto LABEL_24;
  }

  v18 = MEMORY[0x277CCA9B8];
  v19 = objc_opt_class();
  v20 = @"Invitation UUIDs do not match.";
LABEL_7:
  [v18 hk_assignError:error invalidArgument:v20 class:v19 selector:a2];
  v21 = 5;
LABEL_132:

  v101 = *MEMORY[0x277D85DE8];
  return v21;
}

- (NSUUID)UUID
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  uuid = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord uuid];
  v5 = [v3 initWithUUIDString:uuid];

  return v5;
}

- (void)setAuthorizationRecord:(id)record
{
  uUID = [record UUID];
  uUIDString = [uUID UUIDString];
  v5 = [uUIDString copy];
  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setAuthorizationRecordIdentifier:v5];
}

- (NSUUID)authorizationRecordIdentifier
{
  if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasAuthorizationRecordIdentifier])
  {
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    authorizationRecordIdentifier = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord authorizationRecordIdentifier];
    v5 = [v3 initWithUUIDString:authorizationRecordIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSUUID)invitationUUID
{
  invitationUUID = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord invitationUUID];
  if (invitationUUID)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:invitationUUID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInvitationUUID:(id)d
{
  uUIDString = [d UUIDString];
  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setInvitationUUID:uUIDString];
}

- (void)setCloudKitIdentifier:(id)identifier
{
  v4 = [identifier copy];
  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setCloudKitIdentifier:v4];
}

- (void)setFirstName:(id)name
{
  v4 = [name copy];
  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setFirstName:v4];
}

- (void)setLastName:(id)name
{
  v4 = [name copy];
  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setLastName:v4];
}

- (NSArray)allContactIdentifiers
{
  allContactIdentifiers = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord allContactIdentifiers];
  v3 = [allContactIdentifiers copy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (void)setAllContactIdentifiers:(id)identifiers
{
  v4 = [identifiers mutableCopy];
  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setAllContactIdentifiers:v4];
}

- (NSNumber)userWheelchairMode
{
  if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasUserWheelchairMode])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSharedSummaryParticipantRecord userWheelchairMode](self->_underlyingSummaryParticipantRecord, "userWheelchairMode")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserWheelchairMode:(id)mode
{
  if (mode)
  {
    longLongValue = [mode longLongValue];
    underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setUserWheelchairMode:longLongValue];
  }

  else
  {
    v6 = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v6 setHasUserWheelchairMode:?];
  }
}

- (NSNumber)relationshipType
{
  if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasType])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSharedSummaryParticipantRecord type](self->_underlyingSummaryParticipantRecord, "type")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRelationshipType:(id)type
{
  if (type)
  {
    longLongValue = [type longLongValue];
    underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setType:longLongValue];
  }

  else
  {
    v6 = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v6 setHasType:?];
  }
}

- (NSNumber)relationshipDirection
{
  if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasDirection])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSharedSummaryParticipantRecord direction](self->_underlyingSummaryParticipantRecord, "direction")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRelationshipDirection:(id)direction
{
  if (direction)
  {
    longLongValue = [direction longLongValue];
    underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setDirection:longLongValue];
  }

  else
  {
    v6 = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v6 setHasDirection:?];
  }
}

- (NSNumber)relationshipStatus
{
  if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasStatus])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSharedSummaryParticipantRecord status](self->_underlyingSummaryParticipantRecord, "status")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRelationshipStatus:(id)status
{
  if (status)
  {
    longLongValue = [status longLongValue];
    underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setStatus:longLongValue];
  }

  else
  {
    v6 = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v6 setHasStatus:?];
  }
}

- (NSNumber)notificationStatus
{
  if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasNotificationStatus])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSharedSummaryParticipantRecord notificationStatus](self->_underlyingSummaryParticipantRecord, "notificationStatus")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNotificationStatus:(id)status
{
  if (status)
  {
    longLongValue = [status longLongValue];
    underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setNotificationStatus:longLongValue];
  }

  else
  {
    v6 = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v6 setHasNotificationStatus:?];
  }
}

- (NSDate)entryModificationDate
{
  if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasEntryModificationDate])
  {
    v3 = objc_alloc(MEMORY[0x277CBEAA8]);
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryModificationDate];
    v4 = [v3 initWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEntryModificationDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
    underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setEntryModificationDate:?];
  }

  else
  {
    v5 = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v5 setHasEntryModificationDate:?];
  }
}

- (NSDate)entryInvitationDate
{
  if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasEntryInvitationDate])
  {
    v3 = objc_alloc(MEMORY[0x277CBEAA8]);
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryInvitationDate];
    v4 = [v3 initWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEntryInvitationDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
    underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setEntryInvitationDate:?];
  }

  else
  {
    v5 = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v5 setHasEntryInvitationDate:?];
  }
}

- (NSDate)entryAcceptanceDate
{
  if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasEntryAcceptanceDate])
  {
    v3 = objc_alloc(MEMORY[0x277CBEAA8]);
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryAcceptanceDate];
    v4 = [v3 initWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEntryAcceptanceDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
    underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setEntryAcceptanceDate:?];
  }

  else
  {
    v5 = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v5 setHasEntryAcceptanceDate:?];
  }
}

- (HDCodableSharingSetupMetadata)shareSetupMetadata
{
  setupMetadata = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setupMetadata];

  if (setupMetadata)
  {
    v4 = [HDCodableSharingSetupMetadata alloc];
    setupMetadata2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setupMetadata];
    v6 = [(HDCodableSharingSetupMetadata *)v4 initWithData:setupMetadata2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setShareSetupMetadata:(id)metadata
{
  data = [metadata data];
  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setSetupMetadata:data];
}

- (CKShareParticipant)ownerParticipant
{
  v19 = *MEMORY[0x277D85DE8];
  ownerParticipant = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord ownerParticipant];

  if (ownerParticipant)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = objc_opt_class();
    ownerParticipant2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord ownerParticipant];
    v14 = 0;
    ownerParticipant = [v4 unarchivedObjectOfClass:v5 fromData:ownerParticipant2 error:&v14];
    v7 = v14;

    if (!ownerParticipant)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;
        v12 = v8;
        ownerParticipant3 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord ownerParticipant];
        *buf = 138543618;
        v16 = ownerParticipant3;
        v17 = 2114;
        v18 = v7;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Failed to unarchive share participant %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return ownerParticipant;
}

- (void)setOwnerParticipant:(id)participant
{
  v17 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  if (participantCopy)
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:participantCopy requiringSecureCoding:1 error:&v10];
    v6 = v10;
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setOwnerParticipant:v5];

    ownerParticipant = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord ownerParticipant];

    if (!ownerParticipant)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy = self;
        v13 = 2114;
        v14 = participantCopy;
        v15 = 2114;
        v16 = v6;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to archive owner participant %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setOwnerParticipant:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)codableRecordFromRecord:(id)record
{
  v3 = [*(record + 3) copy];

  return v3;
}

+ (id)recordWithCKRecord:(id)record error:(id *)error
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  recordType2 = [self recordType];
  v10 = [recordType isEqualToString:recordType2];

  if ((v10 & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = objc_opt_class();
    recordType3 = [recordCopy recordType];
    recordType4 = [self recordType];
    v16 = [v13 hk_errorForInvalidArgument:@"@" class:v14 selector:a2 format:{@"record has type (%@), but expected (%@)", recordType3, recordType4}];
    if (v16)
    {
      if (error)
      {
        v17 = v16;
        *error = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_11;
  }

  recordType3 = [recordCopy hd_requiredValueForKey:@"Version" type:objc_opt_class() error:error];
  if (!recordType3)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (![self requiresUnderlyingMessage] || (objc_msgSend(recordCopy, "hd_requiredEncryptedValueForKey:type:error:", @"UnderlyingMessage", objc_opt_class(), error), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v12 = [[self alloc] initWithCKRecord:recordCopy schemaVersion:{objc_msgSend(recordType3, "integerValue")}];
  }

LABEL_12:

  return v12;
}

+ (id)fieldsForUnprotectedSerialization
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___HDCloudSyncSharedSummaryParticipantRecord;
  v2 = objc_msgSendSuper2(&v9, sel_fieldsForUnprotectedSerialization);
  v10 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v4 = [HDCloudSyncSerializedField fieldForKey:@"RelationshipRecord" classes:v3 encrypted:0];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  record = [(HDCloudSyncRecord *)self record];
  recordID = [record recordID];
  record2 = [(HDCloudSyncRecord *)self record];
  v7 = [record2 objectForKeyedSubscript:@"Version"];
  record3 = [(HDCloudSyncRecord *)self record];
  modificationDate = [record3 modificationDate];
  printDescription = [(HDCloudSyncRecord *)self printDescription];
  v11 = [v3 stringWithFormat:@"%@ (Version %@) Last Modified: %@\n%@", recordID, v7, modificationDate, printDescription];

  return v11;
}

@end