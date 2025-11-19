@interface HDCloudSyncSharedSummaryParticipantRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isParticipantRecord:(id)a3;
+ (id)codableRecordFromRecord:(id)a3;
+ (id)fieldsForUnprotectedSerialization;
+ (id)recordIDWithZoneID:(id)a3 UUID:(id)a4;
+ (id)recordWithCKRecord:(id)a3 error:(id *)a4;
- (BOOL)updateWithLocalEntry:(id)a3 error:(id *)a4;
- (CKShareParticipant)ownerParticipant;
- (HDCloudSyncSharedSummaryParticipantRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
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
- (id)initInZone:(id)a3 codableEntry:(id)a4;
- (int64_t)mergeWithLocalEntry:(id)a3 error:(id *)a4;
- (void)setAllContactIdentifiers:(id)a3;
- (void)setAuthorizationRecord:(id)a3;
- (void)setCloudKitIdentifier:(id)a3;
- (void)setEntryAcceptanceDate:(id)a3;
- (void)setEntryInvitationDate:(id)a3;
- (void)setEntryModificationDate:(id)a3;
- (void)setFirstName:(id)a3;
- (void)setInvitationUUID:(id)a3;
- (void)setLastName:(id)a3;
- (void)setNotificationStatus:(id)a3;
- (void)setOwnerParticipant:(id)a3;
- (void)setRelationshipDirection:(id)a3;
- (void)setRelationshipStatus:(id)a3;
- (void)setRelationshipType:(id)a3;
- (void)setShareSetupMetadata:(id)a3;
- (void)setUserWheelchairMode:(id)a3;
@end

@implementation HDCloudSyncSharedSummaryParticipantRecord

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

+ (id)recordIDWithZoneID:(id)a3 UUID:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [a4 UUIDString];
  v8 = [v5 stringWithFormat:@"%@/%@", @"SharedSummaryParticipantRecord", v7];

  v9 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v8 zoneID:v6];

  return v9;
}

+ (BOOL)isParticipantRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"SharedSummaryParticipantRecordType"];

  return v4;
}

- (id)initInZone:(id)a3 codableEntry:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCAD78];
  v8 = a3;
  v9 = [v7 alloc];
  v10 = [v6 uuid];
  v11 = [v9 initWithUUIDString:v10];

  v12 = [objc_opt_class() recordIDWithZoneID:v8 UUID:v11];

  v13 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"SharedSummaryParticipantRecordType" recordID:v12];
  v14 = [(HDCloudSyncSharedSummaryParticipantRecord *)self initWithCKRecord:v13 schemaVersion:1];
  if (v14)
  {
    v15 = [v11 UUIDString];
    v16 = [v15 copy];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setUuid:v16];

    v17 = [v6 invitationUUID];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setInvitationUUID:v17];

    v18 = [v6 primaryContactIdentifier];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setContactIdentifier:v18];

    v19 = [v6 cloudKitIdentifier];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setCloudKitIdentifier:v19];

    v20 = [v6 firstName];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setFirstName:v20];

    v21 = [v6 lastName];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setLastName:v21];

    -[HDCloudSyncCodableSharedSummaryParticipantRecord setUserWheelchairMode:](v14->_underlyingSummaryParticipantRecord, "setUserWheelchairMode:", [v6 userWheelchairMode]);
    v22 = [v6 allContactIdentifiers];
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setAllContactIdentifiers:v22];

    -[HDCloudSyncCodableSharedSummaryParticipantRecord setType:](v14->_underlyingSummaryParticipantRecord, "setType:", [v6 type]);
    -[HDCloudSyncCodableSharedSummaryParticipantRecord setDirection:](v14->_underlyingSummaryParticipantRecord, "setDirection:", [v6 direction]);
    -[HDCloudSyncCodableSharedSummaryParticipantRecord setStatus:](v14->_underlyingSummaryParticipantRecord, "setStatus:", [v6 status]);
    -[HDCloudSyncCodableSharedSummaryParticipantRecord setNotificationStatus:](v14->_underlyingSummaryParticipantRecord, "setNotificationStatus:", [v6 notificationStatus]);
    if ([v6 hasDateModified])
    {
      [v6 dateModified];
      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setEntryModificationDate:?];
    }

    if ([v6 hasDateInvited])
    {
      [v6 dateInvited];
      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setEntryInvitationDate:?];
    }

    if ([v6 hasDateAccepted])
    {
      [v6 dateAccepted];
      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setEntryAcceptanceDate:?];
    }

    if ([v6 hasSharingSetupMetadata])
    {
      v23 = [v6 sharingSetupMetadata];
      v24 = [v23 data];
      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setSetupMetadata:v24];
    }

    if ([v6 hasOwnerParticipant])
    {
      v25 = [v6 ownerParticipant];
      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setOwnerParticipant:v25];
    }

    if ([v6 hasCloudKitIdentifier])
    {
      v26 = [v6 cloudKitIdentifier];
      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v14->_underlyingSummaryParticipantRecord setCloudKitIdentifier:v26];
    }
  }

  return v14;
}

- (HDCloudSyncSharedSummaryParticipantRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HDCloudSyncSharedSummaryParticipantRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:a3 schemaVersion:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!v6)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableSharedSummaryParticipantRecord);
    underlyingSummaryParticipantRecord = v5->_underlyingSummaryParticipantRecord;
    v5->_underlyingSummaryParticipantRecord = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableSharedSummaryParticipantRecord alloc] initWithData:v6];
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

- (BOOL)updateWithLocalEntry:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [v7 uuid];
  v9 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord uuid];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = objc_opt_class();
    v18 = @"Cannot update with mismatched UUID.";
    goto LABEL_7;
  }

  if (![v7 hasInvitationUUID])
  {
LABEL_9:
    v20 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasStatus];
    v21 = [v7 status];
    if (v20)
    {
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          if (![(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status])
          {
            v22 = 3;
            goto LABEL_17;
          }
        }

        else if (v21 == 4 && (![(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status]|| [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status]== 1))
        {
          v22 = 4;
          goto LABEL_17;
        }
      }

      else if (v21 == 1)
      {
        if (![(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status])
        {
          v22 = 1;
          goto LABEL_17;
        }
      }

      else if (v21 == 2 && (![(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status]|| [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status]== 1))
      {
        v22 = 2;
LABEL_17:
        [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setStatus:v22];
      }

      v23 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasNotificationStatus];
      v24 = [v7 notificationStatus];
      if (v23)
      {
        if (v24 == 2)
        {
          v25 = 2;
        }

        else
        {
          if (v24 != 1 || [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord notificationStatus])
          {
LABEL_31:
            if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasType])
            {
              v26 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord type];
              if (v26 != [v7 type])
              {
                v16 = MEMORY[0x277CCA9B8];
                v17 = objc_opt_class();
                v18 = @"Invitation types do not match.";
                goto LABEL_7;
              }
            }

            else
            {
              -[HDCloudSyncCodableSharedSummaryParticipantRecord setType:](self->_underlyingSummaryParticipantRecord, "setType:", [v7 type]);
            }

            if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasDirection])
            {
              v27 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord direction];
              if (v27 != [v7 direction])
              {
                v16 = MEMORY[0x277CCA9B8];
                v17 = objc_opt_class();
                v18 = @"Invitation directions do not match.";
                goto LABEL_7;
              }
            }

            else
            {
              -[HDCloudSyncCodableSharedSummaryParticipantRecord setDirection:](self->_underlyingSummaryParticipantRecord, "setDirection:", [v7 direction]);
            }

            v19 = 1;
            goto LABEL_40;
          }

          v25 = 1;
        }
      }

      else
      {
        v25 = v24;
      }

      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setNotificationStatus:v25];
      goto LABEL_31;
    }

    v22 = v21;
    goto LABEL_17;
  }

  v11 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasInvitationUUID];
  v12 = [v7 invitationUUID];
  underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;
  if (!v11)
  {
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setInvitationUUID:v12];

    goto LABEL_9;
  }

  v14 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord invitationUUID];
  v15 = [v12 isEqualToString:v14];

  if (v15)
  {
    goto LABEL_9;
  }

  v16 = MEMORY[0x277CCA9B8];
  v17 = objc_opt_class();
  v18 = @"Invitation UUIDs do not match.";
LABEL_7:
  [v16 hk_assignError:a4 invalidArgument:v18 class:v17 selector:a2];
  v19 = 0;
LABEL_40:

  return v19;
}

- (int64_t)mergeWithLocalEntry:(id)a3 error:(id *)a4
{
  v105 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 uuid];
  v9 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord uuid];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = objc_opt_class();
    v20 = @"Cannot update with mismatched UUID.";
    goto LABEL_7;
  }

  v11 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 hasInvitationUUID];
  v12 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasInvitationUUID];
  v13 = v12;
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_11;
    }

    v14 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord invitationUUID];
    underlyingSummaryParticipantRecord = v7;
LABEL_10:
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setInvitationUUID:v14];
    v22 = v11 ^ 1;

    goto LABEL_12;
  }

  v14 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 invitationUUID];
  underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;
  if (!v13)
  {
    goto LABEL_10;
  }

  v16 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord invitationUUID];
  v17 = [v14 isEqualToString:v16];

  if (v17)
  {
LABEL_11:
    v22 = 0;
    v11 = 0;
LABEL_12:
    v23 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasType];
    v24 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 hasType];
    v25 = v24;
    if (!v23)
    {
      if (v24)
      {
        [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setType:HDSharingTypeFromCodableType([(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 type])];
        v11 = 1;
      }

      goto LABEL_25;
    }

    v26 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord type];
    v27 = v26;
    if (v25)
    {
      if (v26 != HDSharingTypeFromCodableType([(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 type]))
      {
        v18 = MEMORY[0x277CCA9B8];
        v19 = objc_opt_class();
        v20 = @"Invitation types do not match.";
        goto LABEL_7;
      }

LABEL_25:
      v30 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasDirection];
      v31 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 hasDirection];
      v32 = v31;
      if (!v30)
      {
        if (v31)
        {
          [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setDirection:HDSharingMessageDirectionFromCodableDirection([(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 direction])];
          v11 = 1;
        }

        goto LABEL_38;
      }

      v33 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord direction];
      v34 = v33;
      if (v32)
      {
        if (v33 != HDSharingMessageDirectionFromCodableDirection([(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 direction]))
        {
          v18 = MEMORY[0x277CCA9B8];
          v19 = objc_opt_class();
          v20 = @"Invitation directions do not match.";
          goto LABEL_7;
        }

LABEL_38:
        v37 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasStatus];
        v38 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 hasStatus];
        if (v37)
        {
          if (v38)
          {
            v39 = HDSharingStatusFromCodableStatus([(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 status]);
            v40 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status];
            v41 = HDMergedSharingStatus(v39, v40);
            v42 = v41;
            if (v41 != v39)
            {
              [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 setStatus:HDCodableSharingStatusFromStatus(v41)];
              v22 = 1;
            }

            if (v42 != v40)
            {
              v43 = self->_underlyingSummaryParticipantRecord;
              v44 = v42;
LABEL_46:
              [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v43 setStatus:v44];
              v11 = 1;
            }
          }

          else
          {
            [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 setStatus:HDCodableSharingStatusFromStatus([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord status])];
            v22 = 1;
          }

LABEL_48:
          v45 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasNotificationStatus];
          v46 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 hasNotificationStatus];
          if (v45)
          {
            if (!v46)
            {
              [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 setNotificationStatus:HDCodableSharingNotificationStatusFromStatus([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord notificationStatus])];
              v22 = 1;
              goto LABEL_65;
            }

            v47 = HDSharingNotificationStatusFromCodableStatus([(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 notificationStatus]);
            v48 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord notificationStatus];
            v49 = v48;
            if (v47)
            {
              if (v47 == 2)
              {
                v50 = 2;
              }

              else if (v48 == 2)
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
              v50 = v48;
            }

            if (v50 != v47)
            {
              [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 setNotificationStatus:HDCodableSharingNotificationStatusFromStatus(v50)];
              v22 = 1;
            }

            if (v50 == v49)
            {
LABEL_65:
              v53 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasEntryModificationDate];
              v54 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 hasDateModified];
              v55 = v54;
              if (v53)
              {
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryModificationDate];
                v57 = v56;
                if (!v55)
                {
                  goto LABEL_72;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 dateModified];
                if (v57 < v58)
                {
                  v57 = v58;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryModificationDate];
                if (v57 != v59)
                {
                  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setEntryModificationDate:v57];
                  v11 = 1;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 dateModified];
                if (v57 != v60)
                {
LABEL_72:
                  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 setDateModified:v57];
                  v22 = 1;
                }
              }

              else if (v54)
              {
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 dateModified];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setEntryModificationDate:?];
                v11 = 1;
              }

              v61 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasEntryInvitationDate];
              v62 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 hasDateInvited];
              v63 = v62;
              if (v61)
              {
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryInvitationDate];
                v65 = v64;
                if (!v63)
                {
                  goto LABEL_82;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 dateInvited];
                if (v65 >= v66)
                {
                  v65 = v66;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryInvitationDate];
                if (v65 != v67)
                {
                  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setEntryInvitationDate:v65];
                  v11 = 1;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 dateInvited];
                if (v65 != v68)
                {
LABEL_82:
                  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 setDateInvited:v65];
                  v22 = 1;
                }
              }

              else if (v62)
              {
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 dateInvited];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setEntryInvitationDate:?];
                v11 = 1;
              }

              v69 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasEntryAcceptanceDate];
              v70 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 hasDateAccepted];
              v71 = v70;
              if (v69)
              {
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryAcceptanceDate];
                v73 = v72;
                if (!v71)
                {
                  goto LABEL_92;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 dateAccepted];
                if (v73 >= v74)
                {
                  v73 = v74;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord entryAcceptanceDate];
                if (v73 != v75)
                {
                  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setEntryAcceptanceDate:v73];
                  v11 = 1;
                }

                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 dateAccepted];
                if (v73 != v76)
                {
LABEL_92:
                  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 setDateAccepted:v73];
                  v22 = 1;
                }
              }

              else if (v70)
              {
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 dateAccepted];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setEntryAcceptanceDate:?];
                v11 = 1;
              }

              v77 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasOwnerParticipant];
              v78 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 hasOwnerParticipant];
              if (v77)
              {
                if (v78)
                {
                  goto LABEL_101;
                }

                v79 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord ownerParticipant];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 setOwnerParticipant:v79];
                v22 = 1;
              }

              else
              {
                if (!v78)
                {
                  goto LABEL_101;
                }

                v79 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 ownerParticipant];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setOwnerParticipant:v79];
                v11 = 1;
              }

LABEL_101:
              v80 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasCloudKitIdentifier];
              v81 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 hasCloudKitIdentifier];
              if (v80)
              {
                if (v81)
                {
                  goto LABEL_107;
                }

                v82 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord cloudKitIdentifier];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 setCloudKitIdentifier:v82];
                v22 = 1;
              }

              else
              {
                if (!v81)
                {
                  goto LABEL_107;
                }

                v82 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 cloudKitIdentifier];
                [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setCloudKitIdentifier:v82];
                v11 = 1;
              }

LABEL_107:
              v83 = objc_alloc_init(MEMORY[0x277CBEB58]);
              v84 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord allContactIdentifiers];

              if (v84)
              {
                v85 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord allContactIdentifiers];
                [v83 addObjectsFromArray:v85];
              }

              v86 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 allContactIdentifiers];

              if (v86)
              {
                v87 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 allContactIdentifiers];
                [v83 addObjectsFromArray:v87];
              }

              v88 = [v83 allObjects];
              v89 = [v88 sortedArrayUsingSelector:sel_compare_];

              v90 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord allContactIdentifiers];
              v91 = v90;
              if (v90 != v89)
              {
                if (v89)
                {
                  v92 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord allContactIdentifiers];
                  v93 = [v92 isEqual:v89];

                  if (v93)
                  {
LABEL_118:
                    v94 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 allContactIdentifiers];
                    v95 = v94;
                    if (v94 != v89)
                    {
                      if (v89)
                      {
                        v96 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 allContactIdentifiers];
                        v97 = [v96 isEqual:v89];

                        if (v97)
                        {
LABEL_125:
                          v98 = [(HDCloudSyncRecord *)self record];
                          v99 = [v98 objectForKeyedSubscript:@"RelationshipRecord"];

                          if (v99)
                          {
                            v100 = [(HDCloudSyncRecord *)self record];
                            [v100 setObject:0 forKeyedSubscript:@"RelationshipRecord"];
                          }

                          else if (!v11)
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
                      [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 setAllContactIdentifiers:v95];
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
                v11 = 1;
              }

              goto LABEL_118;
            }

            v52 = self->_underlyingSummaryParticipantRecord;
            v51 = v50;
          }

          else
          {
            if (!v46)
            {
              goto LABEL_65;
            }

            v51 = HDSharingNotificationStatusFromCodableStatus([(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 notificationStatus]);
            v52 = self->_underlyingSummaryParticipantRecord;
          }

          [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v52 setNotificationStatus:v51];
          v11 = 1;
          goto LABEL_65;
        }

        if (!v38)
        {
          goto LABEL_48;
        }

        v44 = HDSharingStatusFromCodableStatus([(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 status]);
        v43 = self->_underlyingSummaryParticipantRecord;
        goto LABEL_46;
      }

      if (v33 != 1)
      {
        if (!v33)
        {
          v35 = 0;
LABEL_37:
          [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 setDirection:v35];
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

    if (v26)
    {
      if (v26 == 1)
      {
        v28 = 1;
LABEL_24:
        [(HDCloudSyncCodableSharedSummaryParticipantRecord *)v7 setType:v28];
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
  [v18 hk_assignError:a4 invalidArgument:v20 class:v19 selector:a2];
  v21 = 5;
LABEL_132:

  v101 = *MEMORY[0x277D85DE8];
  return v21;
}

- (NSUUID)UUID
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord uuid];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

- (void)setAuthorizationRecord:(id)a3
{
  v6 = [a3 UUID];
  v4 = [v6 UUIDString];
  v5 = [v4 copy];
  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setAuthorizationRecordIdentifier:v5];
}

- (NSUUID)authorizationRecordIdentifier
{
  if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord hasAuthorizationRecordIdentifier])
  {
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    v4 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord authorizationRecordIdentifier];
    v5 = [v3 initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSUUID)invitationUUID
{
  v2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord invitationUUID];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInvitationUUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setInvitationUUID:v4];
}

- (void)setCloudKitIdentifier:(id)a3
{
  v4 = [a3 copy];
  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setCloudKitIdentifier:v4];
}

- (void)setFirstName:(id)a3
{
  v4 = [a3 copy];
  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setFirstName:v4];
}

- (void)setLastName:(id)a3
{
  v4 = [a3 copy];
  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setLastName:v4];
}

- (NSArray)allContactIdentifiers
{
  v2 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord allContactIdentifiers];
  v3 = [v2 copy];
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

- (void)setAllContactIdentifiers:(id)a3
{
  v4 = [a3 mutableCopy];
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

- (void)setUserWheelchairMode:(id)a3
{
  if (a3)
  {
    v4 = [a3 longLongValue];
    underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setUserWheelchairMode:v4];
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

- (void)setRelationshipType:(id)a3
{
  if (a3)
  {
    v4 = [a3 longLongValue];
    underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setType:v4];
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

- (void)setRelationshipDirection:(id)a3
{
  if (a3)
  {
    v4 = [a3 longLongValue];
    underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setDirection:v4];
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

- (void)setRelationshipStatus:(id)a3
{
  if (a3)
  {
    v4 = [a3 longLongValue];
    underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setStatus:v4];
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

- (void)setNotificationStatus:(id)a3
{
  if (a3)
  {
    v4 = [a3 longLongValue];
    underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;

    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord setNotificationStatus:v4];
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

- (void)setEntryModificationDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
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

- (void)setEntryInvitationDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
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

- (void)setEntryAcceptanceDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
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
  v3 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setupMetadata];

  if (v3)
  {
    v4 = [HDCodableSharingSetupMetadata alloc];
    v5 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setupMetadata];
    v6 = [(HDCodableSharingSetupMetadata *)v4 initWithData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setShareSetupMetadata:(id)a3
{
  v4 = [a3 data];
  [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setSetupMetadata:v4];
}

- (CKShareParticipant)ownerParticipant
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord ownerParticipant];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = objc_opt_class();
    v6 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord ownerParticipant];
    v14 = 0;
    v3 = [v4 unarchivedObjectOfClass:v5 fromData:v6 error:&v14];
    v7 = v14;

    if (!v3)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        underlyingSummaryParticipantRecord = self->_underlyingSummaryParticipantRecord;
        v12 = v8;
        v13 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)underlyingSummaryParticipantRecord ownerParticipant];
        *buf = 138543618;
        v16 = v13;
        v17 = 2114;
        v18 = v7;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Failed to unarchive share participant %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setOwnerParticipant:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v10];
    v6 = v10;
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord setOwnerParticipant:v5];

    v7 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self->_underlyingSummaryParticipantRecord ownerParticipant];

    if (!v7)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v12 = self;
        v13 = 2114;
        v14 = v4;
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

+ (id)codableRecordFromRecord:(id)a3
{
  v3 = [*(a3 + 3) copy];

  return v3;
}

+ (id)recordWithCKRecord:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [v7 recordType];
  v9 = [a1 recordType];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = objc_opt_class();
    v11 = [v7 recordType];
    v15 = [a1 recordType];
    v16 = [v13 hk_errorForInvalidArgument:@"@" class:v14 selector:a2 format:{@"record has type (%@), but expected (%@)", v11, v15}];
    if (v16)
    {
      if (a4)
      {
        v17 = v16;
        *a4 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_11;
  }

  v11 = [v7 hd_requiredValueForKey:@"Version" type:objc_opt_class() error:a4];
  if (!v11)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (![a1 requiresUnderlyingMessage] || (objc_msgSend(v7, "hd_requiredEncryptedValueForKey:type:error:", @"UnderlyingMessage", objc_opt_class(), a4), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v12 = [[a1 alloc] initWithCKRecord:v7 schemaVersion:{objc_msgSend(v11, "integerValue")}];
  }

LABEL_12:

  return v12;
}

+ (id)fieldsForUnprotectedSerialization
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = a1;
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
  v4 = [(HDCloudSyncRecord *)self record];
  v5 = [v4 recordID];
  v6 = [(HDCloudSyncRecord *)self record];
  v7 = [v6 objectForKeyedSubscript:@"Version"];
  v8 = [(HDCloudSyncRecord *)self record];
  v9 = [v8 modificationDate];
  v10 = [(HDCloudSyncRecord *)self printDescription];
  v11 = [v3 stringWithFormat:@"%@ (Version %@) Last Modified: %@\n%@", v5, v7, v9, v10];

  return v11;
}

@end