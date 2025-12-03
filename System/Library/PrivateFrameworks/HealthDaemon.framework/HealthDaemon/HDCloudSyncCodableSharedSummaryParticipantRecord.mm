@interface HDCloudSyncCodableSharedSummaryParticipantRecord
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAllContactIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEntryAcceptanceDate:(BOOL)date;
- (void)setHasEntryInvitationDate:(BOOL)date;
- (void)setHasEntryModificationDate:(BOOL)date;
- (void)setHasNotificationStatus:(BOOL)status;
- (void)setHasStatus:(BOOL)status;
- (void)setHasType:(BOOL)type;
- (void)setHasUserWheelchairMode:(BOOL)mode;
- (void)writeTo:(id)to;
@end

@implementation HDCloudSyncCodableSharedSummaryParticipantRecord

- (void)addAllContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  allContactIdentifiers = self->_allContactIdentifiers;
  v8 = identifiersCopy;
  if (!allContactIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_allContactIdentifiers;
    self->_allContactIdentifiers = v6;

    identifiersCopy = v8;
    allContactIdentifiers = self->_allContactIdentifiers;
  }

  [(NSMutableArray *)allContactIdentifiers addObject:identifiersCopy];
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasNotificationStatus:(BOOL)status
{
  if (status)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasEntryModificationDate:(BOOL)date
{
  if (date)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEntryInvitationDate:(BOOL)date
{
  if (date)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEntryAcceptanceDate:(BOOL)date
{
  if (date)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasUserWheelchairMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableSharedSummaryParticipantRecord;
  v4 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)&v8 description];
  dictionaryRepresentation = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier)
  {
    [v4 setObject:contactIdentifier forKey:@"contactIdentifier"];
  }

  authorizationRecordIdentifier = self->_authorizationRecordIdentifier;
  if (authorizationRecordIdentifier)
  {
    [v4 setObject:authorizationRecordIdentifier forKey:@"authorizationRecordIdentifier"];
  }

  cloudKitIdentifier = self->_cloudKitIdentifier;
  if (cloudKitIdentifier)
  {
    [v4 setObject:cloudKitIdentifier forKey:@"cloudKitIdentifier"];
  }

  invitationUUID = self->_invitationUUID;
  if (invitationUUID)
  {
    [v4 setObject:invitationUUID forKey:@"invitationUUID"];
  }

  firstName = self->_firstName;
  if (firstName)
  {
    [v4 setObject:firstName forKey:@"firstName"];
  }

  lastName = self->_lastName;
  if (lastName)
  {
    [v4 setObject:lastName forKey:@"lastName"];
  }

  allContactIdentifiers = self->_allContactIdentifiers;
  if (allContactIdentifiers)
  {
    [v4 setObject:allContactIdentifiers forKey:@"allContactIdentifiers"];
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v4 setObject:v19 forKey:@"type"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_19:
      if ((has & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_36;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_19;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_direction];
  [v4 setObject:v20 forKey:@"direction"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_20:
    if ((has & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_status];
  [v4 setObject:v21 forKey:@"status"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_21:
    if ((has & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_notificationStatus];
  [v4 setObject:v22 forKey:@"notificationStatus"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_22:
    if ((has & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_38:
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_entryModificationDate];
  [v4 setObject:v23 forKey:@"entryModificationDate"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_23:
    if ((has & 2) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_39:
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:self->_entryInvitationDate];
  [v4 setObject:v24 forKey:@"entryInvitationDate"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_24:
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_entryAcceptanceDate];
    [v4 setObject:v14 forKey:@"entryAcceptanceDate"];
  }

LABEL_25:
  ownerParticipant = self->_ownerParticipant;
  if (ownerParticipant)
  {
    [v4 setObject:ownerParticipant forKey:@"ownerParticipant"];
  }

  setupMetadata = self->_setupMetadata;
  if (setupMetadata)
  {
    [v4 setObject:setupMetadata forKey:@"setupMetadata"];
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_userWheelchairMode];
    [v4 setObject:v17 forKey:@"userWheelchairMode"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_authorizationRecordIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cloudKitIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_invitationUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_firstName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lastName)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_allContactIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_24:
      if ((has & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_39;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_24;
  }

  direction = self->_direction;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_25:
    if ((has & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

LABEL_39:
  status = self->_status;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_26:
    if ((has & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_40:
  notificationStatus = self->_notificationStatus;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_27:
    if ((has & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_41:
  entryModificationDate = self->_entryModificationDate;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_28:
    if ((has & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_42:
  entryInvitationDate = self->_entryInvitationDate;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_29:
    entryAcceptanceDate = self->_entryAcceptanceDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_30:
  if (self->_ownerParticipant)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_setupMetadata)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    userWheelchairMode = self->_userWheelchairMode;
    PBDataWriterWriteInt64Field();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
  }

  if (self->_contactIdentifier)
  {
    [toCopy setContactIdentifier:?];
  }

  if (self->_authorizationRecordIdentifier)
  {
    [toCopy setAuthorizationRecordIdentifier:?];
  }

  if (self->_cloudKitIdentifier)
  {
    [toCopy setCloudKitIdentifier:?];
  }

  if (self->_invitationUUID)
  {
    [toCopy setInvitationUUID:?];
  }

  if (self->_firstName)
  {
    [toCopy setFirstName:?];
  }

  if (self->_lastName)
  {
    [toCopy setLastName:?];
  }

  if ([(HDCloudSyncCodableSharedSummaryParticipantRecord *)self allContactIdentifiersCount])
  {
    [toCopy clearAllContactIdentifiers];
    allContactIdentifiersCount = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self allContactIdentifiersCount];
    if (allContactIdentifiersCount)
    {
      v5 = allContactIdentifiersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self allContactIdentifiersAtIndex:i];
        [toCopy addAllContactIdentifiers:v7];
      }
    }
  }

  has = self->_has;
  v9 = toCopy;
  if ((has & 0x40) != 0)
  {
    *(toCopy + 7) = self->_type;
    *(toCopy + 152) |= 0x40u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_21:
      if ((has & 0x20) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_38;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_21;
  }

  *(toCopy + 1) = self->_direction;
  *(toCopy + 152) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_22:
    if ((has & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 6) = self->_status;
  *(toCopy + 152) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_23:
    if ((has & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 5) = self->_notificationStatus;
  *(toCopy + 152) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_24:
    if ((has & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 4) = *&self->_entryModificationDate;
  *(toCopy + 152) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_25:
    if ((has & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_41:
  *(toCopy + 3) = *&self->_entryInvitationDate;
  *(toCopy + 152) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_26:
    *(toCopy + 2) = *&self->_entryAcceptanceDate;
    *(toCopy + 152) |= 2u;
  }

LABEL_27:
  if (self->_ownerParticipant)
  {
    [toCopy setOwnerParticipant:?];
    v9 = toCopy;
  }

  if (self->_setupMetadata)
  {
    [toCopy setSetupMetadata:?];
    v9 = toCopy;
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    v9[8] = self->_userWheelchairMode;
    *(v9 + 152) |= 0x80u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:zone];
  v7 = *(v5 + 144);
  *(v5 + 144) = v6;

  v8 = [(NSString *)self->_contactIdentifier copyWithZone:zone];
  v9 = *(v5 + 96);
  *(v5 + 96) = v8;

  v10 = [(NSString *)self->_authorizationRecordIdentifier copyWithZone:zone];
  v11 = *(v5 + 80);
  *(v5 + 80) = v10;

  v12 = [(NSString *)self->_cloudKitIdentifier copyWithZone:zone];
  v13 = *(v5 + 88);
  *(v5 + 88) = v12;

  v14 = [(NSString *)self->_invitationUUID copyWithZone:zone];
  v15 = *(v5 + 112);
  *(v5 + 112) = v14;

  v16 = [(NSString *)self->_firstName copyWithZone:zone];
  v17 = *(v5 + 104);
  *(v5 + 104) = v16;

  v18 = [(NSString *)self->_lastName copyWithZone:zone];
  v19 = *(v5 + 120);
  *(v5 + 120) = v18;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = self->_allContactIdentifiers;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v33 + 1) + 8 * i) copyWithZone:{zone, v33}];
        [v5 addAllContactIdentifiers:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v22);
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v5 + 56) = self->_type;
    *(v5 + 152) |= 0x40u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_10:
      if ((has & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 8) = self->_direction;
  *(v5 + 152) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 48) = self->_status;
  *(v5 + 152) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 40) = self->_notificationStatus;
  *(v5 + 152) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 32) = self->_entryModificationDate;
  *(v5 + 152) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_24:
  *(v5 + 24) = self->_entryInvitationDate;
  *(v5 + 152) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_15:
    *(v5 + 16) = self->_entryAcceptanceDate;
    *(v5 + 152) |= 2u;
  }

LABEL_16:
  v27 = [(NSData *)self->_ownerParticipant copyWithZone:zone, v33];
  v28 = *(v5 + 128);
  *(v5 + 128) = v27;

  v29 = [(NSData *)self->_setupMetadata copyWithZone:zone];
  v30 = *(v5 + 136);
  *(v5 + 136) = v29;

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(v5 + 64) = self->_userWheelchairMode;
    *(v5 + 152) |= 0x80u;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 18))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_62;
    }
  }

  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier | *(equalCopy + 12))
  {
    if (![(NSString *)contactIdentifier isEqual:?])
    {
      goto LABEL_62;
    }
  }

  authorizationRecordIdentifier = self->_authorizationRecordIdentifier;
  if (authorizationRecordIdentifier | *(equalCopy + 10))
  {
    if (![(NSString *)authorizationRecordIdentifier isEqual:?])
    {
      goto LABEL_62;
    }
  }

  cloudKitIdentifier = self->_cloudKitIdentifier;
  if (cloudKitIdentifier | *(equalCopy + 11))
  {
    if (![(NSString *)cloudKitIdentifier isEqual:?])
    {
      goto LABEL_62;
    }
  }

  invitationUUID = self->_invitationUUID;
  if (invitationUUID | *(equalCopy + 14))
  {
    if (![(NSString *)invitationUUID isEqual:?])
    {
      goto LABEL_62;
    }
  }

  firstName = self->_firstName;
  if (firstName | *(equalCopy + 13))
  {
    if (![(NSString *)firstName isEqual:?])
    {
      goto LABEL_62;
    }
  }

  lastName = self->_lastName;
  if (lastName | *(equalCopy + 15))
  {
    if (![(NSString *)lastName isEqual:?])
    {
      goto LABEL_62;
    }
  }

  allContactIdentifiers = self->_allContactIdentifiers;
  if (allContactIdentifiers | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)allContactIdentifiers isEqual:?])
    {
      goto LABEL_62;
    }
  }

  v13 = equalCopy[152];
  if ((*&self->_has & 0x40) != 0)
  {
    if ((equalCopy[152] & 0x40) == 0 || self->_type != *(equalCopy + 7))
    {
      goto LABEL_62;
    }
  }

  else if ((equalCopy[152] & 0x40) != 0)
  {
LABEL_62:
    v17 = 0;
    goto LABEL_63;
  }

  if (*&self->_has)
  {
    if ((equalCopy[152] & 1) == 0 || self->_direction != *(equalCopy + 1))
    {
      goto LABEL_62;
    }
  }

  else if (equalCopy[152])
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((equalCopy[152] & 0x20) == 0 || self->_status != *(equalCopy + 6))
    {
      goto LABEL_62;
    }
  }

  else if ((equalCopy[152] & 0x20) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((equalCopy[152] & 0x10) == 0 || self->_notificationStatus != *(equalCopy + 5))
    {
      goto LABEL_62;
    }
  }

  else if ((equalCopy[152] & 0x10) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((equalCopy[152] & 8) == 0 || self->_entryModificationDate != *(equalCopy + 4))
    {
      goto LABEL_62;
    }
  }

  else if ((equalCopy[152] & 8) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[152] & 4) == 0 || self->_entryInvitationDate != *(equalCopy + 3))
    {
      goto LABEL_62;
    }
  }

  else if ((equalCopy[152] & 4) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[152] & 2) == 0 || self->_entryAcceptanceDate != *(equalCopy + 2))
    {
      goto LABEL_62;
    }
  }

  else if ((equalCopy[152] & 2) != 0)
  {
    goto LABEL_62;
  }

  ownerParticipant = self->_ownerParticipant;
  if (ownerParticipant | *(equalCopy + 16) && ![(NSData *)ownerParticipant isEqual:?])
  {
    goto LABEL_62;
  }

  setupMetadata = self->_setupMetadata;
  if (setupMetadata | *(equalCopy + 17))
  {
    if (![(NSData *)setupMetadata isEqual:?])
    {
      goto LABEL_62;
    }
  }

  v16 = equalCopy[152];
  if ((*&self->_has & 0x80000000) != 0)
  {
    if ((v16 & 0x80000000) == 0 || self->_userWheelchairMode != *(equalCopy + 8))
    {
      goto LABEL_62;
    }

    v17 = 1;
  }

  else
  {
    v17 = v16 >= 0;
  }

LABEL_63:

  return v17;
}

- (unint64_t)hash
{
  v32 = [(NSString *)self->_uuid hash];
  v31 = [(NSString *)self->_contactIdentifier hash];
  v30 = [(NSString *)self->_authorizationRecordIdentifier hash];
  v29 = [(NSString *)self->_cloudKitIdentifier hash];
  v28 = [(NSString *)self->_invitationUUID hash];
  v27 = [(NSString *)self->_firstName hash];
  v26 = [(NSString *)self->_lastName hash];
  v25 = [(NSMutableArray *)self->_allContactIdentifiers hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v24 = 2654435761 * self->_type;
    if (*&self->_has)
    {
LABEL_3:
      v5 = 2654435761 * self->_direction;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v24 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_status;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

LABEL_12:
  v6 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v7 = 2654435761 * self->_notificationStatus;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  entryModificationDate = self->_entryModificationDate;
  if (entryModificationDate < 0.0)
  {
    entryModificationDate = -entryModificationDate;
  }

  *v3.i64 = floor(entryModificationDate + 0.5);
  v9 = (entryModificationDate - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v10), v4, v3);
  v11 = 2654435761u * *v3.i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_15:
  if ((*&self->_has & 4) != 0)
  {
    entryInvitationDate = self->_entryInvitationDate;
    if (entryInvitationDate < 0.0)
    {
      entryInvitationDate = -entryInvitationDate;
    }

    *v3.i64 = floor(entryInvitationDate + 0.5);
    v14 = (entryInvitationDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v15), v4, v3);
    v12 = 2654435761u * *v3.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    entryAcceptanceDate = self->_entryAcceptanceDate;
    if (entryAcceptanceDate < 0.0)
    {
      entryAcceptanceDate = -entryAcceptanceDate;
    }

    *v3.i64 = floor(entryAcceptanceDate + 0.5);
    v18 = (entryAcceptanceDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v4, v3).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = [(NSData *)self->_ownerParticipant hash];
  v21 = [(NSData *)self->_setupMetadata hash];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v22 = 2654435761 * self->_userWheelchairMode;
  }

  else
  {
    v22 = 0;
  }

  return v31 ^ v32 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v5 ^ v6 ^ v7 ^ v11 ^ v12 ^ v16 ^ v20 ^ v21 ^ v22;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 18))
  {
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self setUuid:?];
  }

  if (*(fromCopy + 12))
  {
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self setContactIdentifier:?];
  }

  if (*(fromCopy + 10))
  {
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self setAuthorizationRecordIdentifier:?];
  }

  if (*(fromCopy + 11))
  {
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self setCloudKitIdentifier:?];
  }

  if (*(fromCopy + 14))
  {
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self setInvitationUUID:?];
  }

  if (*(fromCopy + 13))
  {
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self setFirstName:?];
  }

  if (*(fromCopy + 15))
  {
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self setLastName:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(fromCopy + 9);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self addAllContactIdentifiers:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = fromCopy[152];
  if ((v10 & 0x40) != 0)
  {
    self->_type = *(fromCopy + 7);
    *&self->_has |= 0x40u;
    v10 = fromCopy[152];
    if ((v10 & 1) == 0)
    {
LABEL_24:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_39;
    }
  }

  else if ((fromCopy[152] & 1) == 0)
  {
    goto LABEL_24;
  }

  self->_direction = *(fromCopy + 1);
  *&self->_has |= 1u;
  v10 = fromCopy[152];
  if ((v10 & 0x20) == 0)
  {
LABEL_25:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_status = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v10 = fromCopy[152];
  if ((v10 & 0x10) == 0)
  {
LABEL_26:
    if ((v10 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_notificationStatus = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v10 = fromCopy[152];
  if ((v10 & 8) == 0)
  {
LABEL_27:
    if ((v10 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_entryModificationDate = *(fromCopy + 4);
  *&self->_has |= 8u;
  v10 = fromCopy[152];
  if ((v10 & 4) == 0)
  {
LABEL_28:
    if ((v10 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_42:
  self->_entryInvitationDate = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((fromCopy[152] & 2) != 0)
  {
LABEL_29:
    self->_entryAcceptanceDate = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_30:
  if (*(fromCopy + 16))
  {
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self setOwnerParticipant:?];
  }

  if (*(fromCopy + 17))
  {
    [(HDCloudSyncCodableSharedSummaryParticipantRecord *)self setSetupMetadata:?];
  }

  if (fromCopy[152] < 0)
  {
    self->_userWheelchairMode = *(fromCopy + 8);
    *&self->_has |= 0x80u;
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end