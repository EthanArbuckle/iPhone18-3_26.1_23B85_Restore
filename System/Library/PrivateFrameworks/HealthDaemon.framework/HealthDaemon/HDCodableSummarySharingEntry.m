@interface HDCodableSummarySharingEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualFirstName:(id)a3 lastName:(id)a4;
- (BOOL)isEquivalent:(id)a3;
- (HDCodableSummarySharingEntry)initWithUUID:(id)a3 invitationUUID:(id)a4 cloudKitIdentifier:(id)a5 primaryContactIdentifier:(id)a6 allContactIdentifiers:(id)a7 firstName:(id)a8 lastName:(id)a9 sharingAuthorizations:(id)a10 userWheelchairMode:(int64_t)a11 type:(int64_t)a12 direction:(unint64_t)a13 status:(int64_t)a14 notificationStatus:(int64_t)a15 dateModified:(id)a16 dateInvited:(id)a17 dateAccepted:(id)a18 setupMetadata:(id)a19 ownerParticipant:(id)a20;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)shareOwnerParticipant;
- (id)sharingEntry;
- (id)sharingRecipientIdentifier;
- (int)StringAsDirection:(id)a3;
- (int)StringAsNotificationStatus:(id)a3;
- (int)StringAsStatus:(id)a3;
- (int)StringAsType:(id)a3;
- (int)StringAsUserWheelchairMode:(id)a3;
- (int)direction;
- (int)notificationStatus;
- (int)status;
- (int)type;
- (int)userWheelchairMode;
- (unint64_t)hash;
- (void)addAllContactIdentifiers:(id)a3;
- (void)addAuthorizationCategories:(id)a3;
- (void)addSharingAuthorizations:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDateInvited:(BOOL)a3;
- (void)setHasDateModified:(BOOL)a3;
- (void)setHasDirection:(BOOL)a3;
- (void)setHasNotificationStatus:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasUserWheelchairMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSummarySharingEntry

- (void)addAllContactIdentifiers:(id)a3
{
  v4 = a3;
  allContactIdentifiers = self->_allContactIdentifiers;
  v8 = v4;
  if (!allContactIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_allContactIdentifiers;
    self->_allContactIdentifiers = v6;

    v4 = v8;
    allContactIdentifiers = self->_allContactIdentifiers;
  }

  [(NSMutableArray *)allContactIdentifiers addObject:v4];
}

- (int)type
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Invite"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Request"];
  }

  return v4;
}

- (int)direction
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_direction;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDirection:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsDirection:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Outgoing"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Incoming"];
  }

  return v4;
}

- (int)status
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Pending"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Accepted"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Declined"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Rescinded"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Revoked"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDateModified:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addAuthorizationCategories:(id)a3
{
  v4 = a3;
  authorizationCategories = self->_authorizationCategories;
  v8 = v4;
  if (!authorizationCategories)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_authorizationCategories;
    self->_authorizationCategories = v6;

    v4 = v8;
    authorizationCategories = self->_authorizationCategories;
  }

  [(NSMutableArray *)authorizationCategories addObject:v4];
}

- (void)setHasDateInvited:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)notificationStatus
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_notificationStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNotificationStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsNotificationStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Pending"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Accepted"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addSharingAuthorizations:(id)a3
{
  v4 = a3;
  sharingAuthorizations = self->_sharingAuthorizations;
  v8 = v4;
  if (!sharingAuthorizations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_sharingAuthorizations;
    self->_sharingAuthorizations = v6;

    v4 = v8;
    sharingAuthorizations = self->_sharingAuthorizations;
  }

  [(NSMutableArray *)sharingAuthorizations addObject:v4];
}

- (int)userWheelchairMode
{
  if ((*&self->_has & 0x80000000) != 0)
  {
    return self->_userWheelchairMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUserWheelchairMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (int)StringAsUserWheelchairMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NotSet"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"No"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Yes"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSummarySharingEntry;
  v4 = [(HDCodableSummarySharingEntry *)&v8 description];
  v5 = [(HDCodableSummarySharingEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  primaryContactIdentifier = self->_primaryContactIdentifier;
  if (primaryContactIdentifier)
  {
    [v4 setObject:primaryContactIdentifier forKey:@"primaryContactIdentifier"];
  }

  allContactIdentifiers = self->_allContactIdentifiers;
  if (allContactIdentifiers)
  {
    [v4 setObject:allContactIdentifiers forKey:@"allContactIdentifiers"];
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

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    type = self->_type;
    if (type)
    {
      if (type == 1)
      {
        v12 = @"Request";
      }

      else
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
      }
    }

    else
    {
      v12 = @"Invite";
    }

    [v4 setObject:v12 forKey:@"type"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_13:
      if ((has & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

  direction = self->_direction;
  if (direction)
  {
    if (direction == 1)
    {
      v14 = @"Incoming";
    }

    else
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_direction];
    }
  }

  else
  {
    v14 = @"Outgoing";
  }

  [v4 setObject:v14 forKey:@"direction"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_27:
    status = self->_status;
    if (status >= 5)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v16 = off_27861DE68[status];
    }

    [v4 setObject:v16 forKey:@"status"];
  }

LABEL_31:
  sharingSetupMetadata = self->_sharingSetupMetadata;
  if (sharingSetupMetadata)
  {
    v18 = [(HDCodableSharingSetupMetadata *)sharingSetupMetadata dictionaryRepresentation];
    [v4 setObject:v18 forKey:@"sharingSetupMetadata"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dateModified];
    [v4 setObject:v19 forKey:@"dateModified"];
  }

  authorizationCategories = self->_authorizationCategories;
  if (authorizationCategories)
  {
    [v4 setObject:authorizationCategories forKey:@"authorizationCategories"];
  }

  v21 = self->_has;
  if (v21)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dateAccepted];
    [v4 setObject:v22 forKey:@"dateAccepted"];

    v21 = self->_has;
  }

  if ((v21 & 2) != 0)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dateInvited];
    [v4 setObject:v23 forKey:@"dateInvited"];
  }

  invitationUUID = self->_invitationUUID;
  if (invitationUUID)
  {
    [v4 setObject:invitationUUID forKey:@"invitationUUID"];
  }

  cloudKitIdentifier = self->_cloudKitIdentifier;
  if (cloudKitIdentifier)
  {
    [v4 setObject:cloudKitIdentifier forKey:@"cloudKitIdentifier"];
  }

  ownerParticipant = self->_ownerParticipant;
  if (ownerParticipant)
  {
    [v4 setObject:ownerParticipant forKey:@"ownerParticipant"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    notificationStatus = self->_notificationStatus;
    if (notificationStatus >= 3)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_notificationStatus];
    }

    else
    {
      v28 = off_27861DE90[notificationStatus];
    }

    [v4 setObject:v28 forKey:@"notificationStatus"];
  }

  if ([(NSMutableArray *)self->_sharingAuthorizations count])
  {
    v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_sharingAuthorizations, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v30 = self->_sharingAuthorizations;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v41;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v41 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          [v29 addObject:v35];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v32);
    }

    [v4 setObject:v29 forKey:@"sharingAuthorizations"];
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    userWheelchairMode = self->_userWheelchairMode;
    if (userWheelchairMode >= 3)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_userWheelchairMode];
    }

    else
    {
      v37 = off_27861DEA8[userWheelchairMode];
    }

    [v4 setObject:v37 forKey:@"userWheelchairMode"];
  }

  v38 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_primaryContactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = self->_allContactIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v7);
  }

  if (self->_firstName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lastName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_18:
      if ((has & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_18;
  }

  direction = self->_direction;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_19:
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

LABEL_20:
  if (self->_sharingSetupMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    dateModified = self->_dateModified;
    PBDataWriterWriteDoubleField();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = self->_authorizationCategories;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v38 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v16);
  }

  v20 = self->_has;
  if (v20)
  {
    dateAccepted = self->_dateAccepted;
    PBDataWriterWriteDoubleField();
    v20 = self->_has;
  }

  if ((v20 & 2) != 0)
  {
    dateInvited = self->_dateInvited;
    PBDataWriterWriteDoubleField();
  }

  if (self->_invitationUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cloudKitIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ownerParticipant)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    notificationStatus = self->_notificationStatus;
    PBDataWriterWriteInt32Field();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = self->_sharingAuthorizations;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v34 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v26);
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    userWheelchairMode = self->_userWheelchairMode;
    PBDataWriterWriteInt32Field();
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v20 = a3;
  if (self->_uuid)
  {
    [v20 setUuid:?];
  }

  if (self->_primaryContactIdentifier)
  {
    [v20 setPrimaryContactIdentifier:?];
  }

  if ([(HDCodableSummarySharingEntry *)self allContactIdentifiersCount])
  {
    [v20 clearAllContactIdentifiers];
    v4 = [(HDCodableSummarySharingEntry *)self allContactIdentifiersCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableSummarySharingEntry *)self allContactIdentifiersAtIndex:i];
        [v20 addAllContactIdentifiers:v7];
      }
    }
  }

  if (self->_firstName)
  {
    [v20 setFirstName:?];
  }

  v8 = v20;
  if (self->_lastName)
  {
    [v20 setLastName:?];
    v8 = v20;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v8[33] = self->_type;
    *(v8 + 152) |= 0x40u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_15:
      if ((has & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

  v8[14] = self->_direction;
  *(v8 + 152) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_16:
    v8[32] = self->_status;
    *(v8 + 152) |= 0x20u;
  }

LABEL_17:
  if (self->_sharingSetupMetadata)
  {
    [v20 setSharingSetupMetadata:?];
    v8 = v20;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v8 + 3) = *&self->_dateModified;
    *(v8 + 152) |= 4u;
  }

  if ([(HDCodableSummarySharingEntry *)self authorizationCategoriesCount])
  {
    [v20 clearAuthorizationCategories];
    v10 = [(HDCodableSummarySharingEntry *)self authorizationCategoriesCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(HDCodableSummarySharingEntry *)self authorizationCategoriesAtIndex:j];
        [v20 addAuthorizationCategories:v13];
      }
    }
  }

  v14 = self->_has;
  v15 = v20;
  if (v14)
  {
    *(v20 + 1) = *&self->_dateAccepted;
    *(v20 + 152) |= 1u;
    v14 = self->_has;
  }

  if ((v14 & 2) != 0)
  {
    *(v20 + 2) = *&self->_dateInvited;
    *(v20 + 152) |= 2u;
  }

  if (self->_invitationUUID)
  {
    [v20 setInvitationUUID:?];
    v15 = v20;
  }

  if (self->_cloudKitIdentifier)
  {
    [v20 setCloudKitIdentifier:?];
    v15 = v20;
  }

  if (self->_ownerParticipant)
  {
    [v20 setOwnerParticipant:?];
    v15 = v20;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v15[22] = self->_notificationStatus;
    *(v15 + 152) |= 0x10u;
  }

  if ([(HDCodableSummarySharingEntry *)self sharingAuthorizationsCount])
  {
    [v20 clearSharingAuthorizations];
    v16 = [(HDCodableSummarySharingEntry *)self sharingAuthorizationsCount];
    if (v16)
    {
      v17 = v16;
      for (k = 0; k != v17; ++k)
      {
        v19 = [(HDCodableSummarySharingEntry *)self sharingAuthorizationsAtIndex:k];
        [v20 addSharingAuthorizations:v19];
      }
    }
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(v20 + 34) = self->_userWheelchairMode;
    *(v20 + 152) |= 0x80u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:a3];
  v7 = *(v5 + 144);
  *(v5 + 144) = v6;

  v8 = [(NSString *)self->_primaryContactIdentifier copyWithZone:a3];
  v9 = *(v5 + 104);
  *(v5 + 104) = v8;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v10 = self->_allContactIdentifiers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v53;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v52 + 1) + 8 * i) copyWithZone:a3];
        [v5 addAllContactIdentifiers:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v12);
  }

  v16 = [(NSString *)self->_firstName copyWithZone:a3];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  v18 = [(NSString *)self->_lastName copyWithZone:a3];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v5 + 132) = self->_type;
    *(v5 + 152) |= 0x40u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_10:
      if ((has & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 56) = self->_direction;
  *(v5 + 152) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    *(v5 + 128) = self->_status;
    *(v5 + 152) |= 0x20u;
  }

LABEL_12:
  v21 = [(HDCodableSharingSetupMetadata *)self->_sharingSetupMetadata copyWithZone:a3];
  v22 = *(v5 + 120);
  *(v5 + 120) = v21;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_dateModified;
    *(v5 + 152) |= 4u;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v23 = self->_authorizationCategories;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v49;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v49 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v48 + 1) + 8 * j) copyWithZone:a3];
        [v5 addAuthorizationCategories:v28];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v25);
  }

  v29 = self->_has;
  if (v29)
  {
    *(v5 + 8) = self->_dateAccepted;
    *(v5 + 152) |= 1u;
    v29 = self->_has;
  }

  if ((v29 & 2) != 0)
  {
    *(v5 + 16) = self->_dateInvited;
    *(v5 + 152) |= 2u;
  }

  v30 = [(NSString *)self->_invitationUUID copyWithZone:a3];
  v31 = *(v5 + 72);
  *(v5 + 72) = v30;

  v32 = [(NSString *)self->_cloudKitIdentifier copyWithZone:a3];
  v33 = *(v5 + 48);
  *(v5 + 48) = v32;

  v34 = [(NSData *)self->_ownerParticipant copyWithZone:a3];
  v35 = *(v5 + 96);
  *(v5 + 96) = v34;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 88) = self->_notificationStatus;
    *(v5 + 152) |= 0x10u;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v36 = self->_sharingAuthorizations;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v45;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v44 + 1) + 8 * k) copyWithZone:{a3, v44}];
        [v5 addSharingAuthorizations:v41];
      }

      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v38);
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(v5 + 136) = self->_userWheelchairMode;
    *(v5 + 152) |= 0x80u;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_67;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 18))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_67;
    }
  }

  primaryContactIdentifier = self->_primaryContactIdentifier;
  if (primaryContactIdentifier | *(v4 + 13))
  {
    if (![(NSString *)primaryContactIdentifier isEqual:?])
    {
      goto LABEL_67;
    }
  }

  allContactIdentifiers = self->_allContactIdentifiers;
  if (allContactIdentifiers | *(v4 + 4))
  {
    if (![(NSMutableArray *)allContactIdentifiers isEqual:?])
    {
      goto LABEL_67;
    }
  }

  firstName = self->_firstName;
  if (firstName | *(v4 + 8))
  {
    if (![(NSString *)firstName isEqual:?])
    {
      goto LABEL_67;
    }
  }

  lastName = self->_lastName;
  if (lastName | *(v4 + 10))
  {
    if (![(NSString *)lastName isEqual:?])
    {
      goto LABEL_67;
    }
  }

  has = self->_has;
  v11 = *(v4 + 152);
  if ((has & 0x40) != 0)
  {
    if ((*(v4 + 152) & 0x40) == 0 || self->_type != *(v4 + 33))
    {
      goto LABEL_67;
    }
  }

  else if ((*(v4 + 152) & 0x40) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 152) & 8) == 0 || self->_direction != *(v4 + 14))
    {
      goto LABEL_67;
    }
  }

  else if ((*(v4 + 152) & 8) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 152) & 0x20) == 0 || self->_status != *(v4 + 32))
    {
      goto LABEL_67;
    }
  }

  else if ((*(v4 + 152) & 0x20) != 0)
  {
    goto LABEL_67;
  }

  sharingSetupMetadata = self->_sharingSetupMetadata;
  if (sharingSetupMetadata | *(v4 + 15))
  {
    if (![(HDCodableSharingSetupMetadata *)sharingSetupMetadata isEqual:?])
    {
      goto LABEL_67;
    }

    has = self->_has;
    v11 = *(v4 + 152);
  }

  if ((has & 4) != 0)
  {
    if ((v11 & 4) == 0 || self->_dateModified != *(v4 + 3))
    {
      goto LABEL_67;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_67;
  }

  authorizationCategories = self->_authorizationCategories;
  if (authorizationCategories | *(v4 + 5))
  {
    if (![(NSMutableArray *)authorizationCategories isEqual:?])
    {
      goto LABEL_67;
    }

    has = self->_has;
    v11 = *(v4 + 152);
  }

  if (has)
  {
    if ((v11 & 1) == 0 || self->_dateAccepted != *(v4 + 1))
    {
      goto LABEL_67;
    }
  }

  else if (v11)
  {
    goto LABEL_67;
  }

  if ((has & 2) != 0)
  {
    if ((v11 & 2) == 0 || self->_dateInvited != *(v4 + 2))
    {
      goto LABEL_67;
    }
  }

  else if ((v11 & 2) != 0)
  {
    goto LABEL_67;
  }

  invitationUUID = self->_invitationUUID;
  if (invitationUUID | *(v4 + 9) && ![(NSString *)invitationUUID isEqual:?])
  {
    goto LABEL_67;
  }

  cloudKitIdentifier = self->_cloudKitIdentifier;
  if (cloudKitIdentifier | *(v4 + 6))
  {
    if (![(NSString *)cloudKitIdentifier isEqual:?])
    {
      goto LABEL_67;
    }
  }

  ownerParticipant = self->_ownerParticipant;
  if (ownerParticipant | *(v4 + 12))
  {
    if (![(NSData *)ownerParticipant isEqual:?])
    {
      goto LABEL_67;
    }
  }

  v17 = self->_has;
  v18 = *(v4 + 152);
  if ((v17 & 0x10) != 0)
  {
    if ((*(v4 + 152) & 0x10) == 0 || self->_notificationStatus != *(v4 + 22))
    {
      goto LABEL_67;
    }
  }

  else if ((*(v4 + 152) & 0x10) != 0)
  {
    goto LABEL_67;
  }

  sharingAuthorizations = self->_sharingAuthorizations;
  if (sharingAuthorizations | *(v4 + 14))
  {
    if ([(NSMutableArray *)sharingAuthorizations isEqual:?])
    {
      v17 = self->_has;
      v18 = *(v4 + 152);
      goto LABEL_62;
    }

LABEL_67:
    v20 = 0;
    goto LABEL_68;
  }

LABEL_62:
  if (v17 < 0)
  {
    if ((v18 & 0x80) == 0 || self->_userWheelchairMode != *(v4 + 34))
    {
      goto LABEL_67;
    }

    v20 = 1;
  }

  else
  {
    v20 = v18 >= 0;
  }

LABEL_68:

  return v20;
}

- (unint64_t)hash
{
  v36 = [(NSString *)self->_uuid hash];
  v35 = [(NSString *)self->_primaryContactIdentifier hash];
  v34 = [(NSMutableArray *)self->_allContactIdentifiers hash];
  v33 = [(NSString *)self->_firstName hash];
  v32 = [(NSString *)self->_lastName hash];
  if ((*&self->_has & 0x40) == 0)
  {
    v31 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v30 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v31 = 2654435761 * self->_type;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v30 = 2654435761 * self->_direction;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v29 = 2654435761 * self->_status;
    goto LABEL_8;
  }

LABEL_7:
  v29 = 0;
LABEL_8:
  v28 = [(HDCodableSharingSetupMetadata *)self->_sharingSetupMetadata hash];
  if ((*&self->_has & 4) != 0)
  {
    dateModified = self->_dateModified;
    if (dateModified < 0.0)
    {
      dateModified = -dateModified;
    }

    *v3.i64 = floor(dateModified + 0.5);
    v7 = (dateModified - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v26 = [(NSMutableArray *)self->_authorizationCategories hash];
  if (*&self->_has)
  {
    dateAccepted = self->_dateAccepted;
    if (dateAccepted < 0.0)
    {
      dateAccepted = -dateAccepted;
    }

    *v9.i64 = floor(dateAccepted + 0.5);
    v13 = (dateAccepted - *v9.i64) * 1.84467441e19;
    *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v9 = vbslq_s8(vnegq_f64(v14), v10, v9);
    v11 = 2654435761u * *v9.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    dateInvited = self->_dateInvited;
    if (dateInvited < 0.0)
    {
      dateInvited = -dateInvited;
    }

    *v9.i64 = floor(dateInvited + 0.5);
    v17 = (dateInvited - *v9.i64) * 1.84467441e19;
    *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v10, v9).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = [(NSString *)self->_invitationUUID hash];
  v20 = [(NSString *)self->_cloudKitIdentifier hash];
  v21 = [(NSData *)self->_ownerParticipant hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v22 = 2654435761 * self->_notificationStatus;
  }

  else
  {
    v22 = 0;
  }

  v23 = [(NSMutableArray *)self->_sharingAuthorizations hash];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v24 = 2654435761 * self->_userWheelchairMode;
  }

  else
  {
    v24 = 0;
  }

  return v35 ^ v36 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v5 ^ v27 ^ v11 ^ v15 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24;
}

- (void)mergeFrom:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 18))
  {
    [(HDCodableSummarySharingEntry *)self setUuid:?];
  }

  if (*(v4 + 13))
  {
    [(HDCodableSummarySharingEntry *)self setPrimaryContactIdentifier:?];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = *(v4 + 4);
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HDCodableSummarySharingEntry *)self addAllContactIdentifiers:*(*(&v33 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v7);
  }

  if (*(v4 + 8))
  {
    [(HDCodableSummarySharingEntry *)self setFirstName:?];
  }

  if (*(v4 + 10))
  {
    [(HDCodableSummarySharingEntry *)self setLastName:?];
  }

  v10 = v4[152];
  if ((v10 & 0x40) != 0)
  {
    self->_type = *(v4 + 33);
    *&self->_has |= 0x40u;
    v10 = v4[152];
    if ((v10 & 8) == 0)
    {
LABEL_18:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v4[152] & 8) == 0)
  {
    goto LABEL_18;
  }

  self->_direction = *(v4 + 14);
  *&self->_has |= 8u;
  if ((v4[152] & 0x20) != 0)
  {
LABEL_19:
    self->_status = *(v4 + 32);
    *&self->_has |= 0x20u;
  }

LABEL_20:
  sharingSetupMetadata = self->_sharingSetupMetadata;
  v12 = *(v4 + 15);
  if (sharingSetupMetadata)
  {
    if (v12)
    {
      [(HDCodableSharingSetupMetadata *)sharingSetupMetadata mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(HDCodableSummarySharingEntry *)self setSharingSetupMetadata:?];
  }

  if ((v4[152] & 4) != 0)
  {
    self->_dateModified = *(v4 + 3);
    *&self->_has |= 4u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = *(v4 + 5);
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(HDCodableSummarySharingEntry *)self addAuthorizationCategories:*(*(&v29 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v15);
  }

  v18 = v4[152];
  if (v18)
  {
    self->_dateAccepted = *(v4 + 1);
    *&self->_has |= 1u;
    v18 = v4[152];
  }

  if ((v18 & 2) != 0)
  {
    self->_dateInvited = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 9))
  {
    [(HDCodableSummarySharingEntry *)self setInvitationUUID:?];
  }

  if (*(v4 + 6))
  {
    [(HDCodableSummarySharingEntry *)self setCloudKitIdentifier:?];
  }

  if (*(v4 + 12))
  {
    [(HDCodableSummarySharingEntry *)self setOwnerParticipant:?];
  }

  if ((v4[152] & 0x10) != 0)
  {
    self->_notificationStatus = *(v4 + 22);
    *&self->_has |= 0x10u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = *(v4 + 14);
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(HDCodableSummarySharingEntry *)self addSharingAuthorizations:*(*(&v25 + 1) + 8 * k), v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v21);
  }

  if (v4[152] < 0)
  {
    self->_userWheelchairMode = *(v4 + 34);
    *&self->_has |= 0x80u;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (HDCodableSummarySharingEntry)initWithUUID:(id)a3 invitationUUID:(id)a4 cloudKitIdentifier:(id)a5 primaryContactIdentifier:(id)a6 allContactIdentifiers:(id)a7 firstName:(id)a8 lastName:(id)a9 sharingAuthorizations:(id)a10 userWheelchairMode:(int64_t)a11 type:(int64_t)a12 direction:(unint64_t)a13 status:(int64_t)a14 notificationStatus:(int64_t)a15 dateModified:(id)a16 dateInvited:(id)a17 dateAccepted:(id)a18 setupMetadata:(id)a19 ownerParticipant:(id)a20
{
  v68 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  v33 = a16;
  v58 = a17;
  v57 = a18;
  v56 = a19;
  v59 = a20;
  v61.receiver = self;
  v61.super_class = HDCodableSummarySharingEntry;
  v34 = [(HDCodableSummarySharingEntry *)&v61 init];
  if (v34)
  {
    v55 = v33;
    v53 = v25;
    v35 = [v25 UUIDString];
    [(HDCodableSummarySharingEntry *)v34 setUuid:v35];

    v36 = [v26 UUIDString];
    [(HDCodableSummarySharingEntry *)v34 setInvitationUUID:v36];

    v52 = v27;
    v37 = [v27 copy];
    [(HDCodableSummarySharingEntry *)v34 setCloudKitIdentifier:v37];

    v38 = [v28 copy];
    [(HDCodableSummarySharingEntry *)v34 setPrimaryContactIdentifier:v38];

    v39 = [v29 copy];
    [(HDCodableSummarySharingEntry *)v34 setAllContactIdentifiers:v39];

    v40 = [v30 copy];
    [(HDCodableSummarySharingEntry *)v34 setFirstName:v40];

    v41 = [v31 copy];
    [(HDCodableSummarySharingEntry *)v34 setLastName:v41];

    [(HDCodableSummarySharingEntry *)v34 setUserWheelchairMode:a11];
    [(HDCodableSummarySharingEntry *)v34 setType:a12];
    [(HDCodableSummarySharingEntry *)v34 setDirection:a13];
    [(HDCodableSummarySharingEntry *)v34 setStatus:a14];
    [(HDCodableSummarySharingEntry *)v34 setNotificationStatus:a15];
    if (v33)
    {
      [v33 timeIntervalSinceReferenceDate];
      [(HDCodableSummarySharingEntry *)v34 setDateModified:?];
    }

    else
    {
      v42 = [MEMORY[0x277CBEAA8] date];
      [v42 timeIntervalSinceReferenceDate];
      [(HDCodableSummarySharingEntry *)v34 setDateModified:?];
    }

    v25 = v53;
    if (v58)
    {
      [v58 timeIntervalSinceReferenceDate];
      [(HDCodableSummarySharingEntry *)v34 setDateInvited:?];
    }

    if (v57)
    {
      [v57 timeIntervalSinceReferenceDate];
      [(HDCodableSummarySharingEntry *)v34 setDateAccepted:?];
    }

    [(HDCodableSummarySharingEntry *)v34 setSharingSetupMetadata:v56];
    if (v59)
    {
      v60 = 0;
      v43 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v59 requiringSecureCoding:1 error:&v60];
      v44 = v60;
      [(HDCodableSummarySharingEntry *)v34 setOwnerParticipant:v43];

      v45 = [(HDCodableSummarySharingEntry *)v34 ownerParticipant];

      if (!v45)
      {
        _HKInitializeLogging();
        v46 = HKLogSharing();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v63 = v34;
          v64 = 2114;
          v65 = v59;
          v66 = 2114;
          v67 = v44;
          _os_log_error_impl(&dword_228986000, v46, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to archive owner participant %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      [(HDCodableSummarySharingEntry *)v34 setOwnerParticipant:?];
    }

    v47 = HDCodableSharingAuthorizationsFromSharingAuthorizations(v32);
    [(HDCodableSummarySharingEntry *)v34 setSharingAuthorizations:v47];

    v48 = [(HDCodableSummarySharingEntry *)v34 sharingAuthorizations];
    v49 = HDAuthorizationIdentifiersFromCodableSharingAuthorizations(v48);
    [(HDCodableSummarySharingEntry *)v34 setAuthorizationCategories:v49];

    v27 = v52;
    v33 = v55;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v34;
}

- (id)sharingEntry
{
  v23 = objc_alloc(MEMORY[0x277CCDA70]);
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v24 = [(HDCodableSummarySharingEntry *)self uuid];
  v21 = [v3 initWithUUIDString:v24];
  v20 = [(HDCodableSummarySharingEntry *)self primaryContactIdentifier];
  v22 = [(HDCodableSummarySharingEntry *)self allContactIdentifiers];
  v4 = [v22 copy];
  v5 = [(HDCodableSummarySharingEntry *)self firstName];
  v6 = [(HDCodableSummarySharingEntry *)self lastName];
  v19 = [(HDCodableSummarySharingEntry *)self userWheelchairMode];
  v7 = [(HDCodableSummarySharingEntry *)self type];
  v8 = [(HDCodableSummarySharingEntry *)self status];
  v9 = [(HDCodableSummarySharingEntry *)self notificationStatus];
  v10 = [(HDCodableSummarySharingEntry *)self direction];
  v11 = MEMORY[0x277CBEAA8];
  [(HDCodableSummarySharingEntry *)self dateModified];
  v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
  v13 = [v23 initWithUUID:v21 primaryContactIdentifier:v20 allContactIdentifiers:v4 firstName:v5 lastName:v6 userWheelchairMode:v19 type:v7 status:v8 notificationStatus:v9 direction:v10 modificationDate:v12];

  if ([(HDCodableSummarySharingEntry *)self hasDateAccepted])
  {
    v14 = MEMORY[0x277CBEAA8];
    [(HDCodableSummarySharingEntry *)self dateAccepted];
    v15 = [v14 dateWithTimeIntervalSinceReferenceDate:?];
    [v13 _setDateAccepted:v15];
  }

  if ([(HDCodableSummarySharingEntry *)self hasDateInvited])
  {
    v16 = MEMORY[0x277CBEAA8];
    [(HDCodableSummarySharingEntry *)self dateInvited];
    v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
    [v13 _setDateInvited:v17];
  }

  return v13;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  cloudKitIdentifier = self->_cloudKitIdentifier;
  v6 = *(v4 + 6);
  if (cloudKitIdentifier != v6 && (!v6 || ![(NSString *)cloudKitIdentifier isEqualToString:?]))
  {
    goto LABEL_44;
  }

  primaryContactIdentifier = self->_primaryContactIdentifier;
  v8 = *(v4 + 13);
  if (primaryContactIdentifier != v8 && (!v8 || ![(NSString *)primaryContactIdentifier isEqualToString:?]))
  {
    goto LABEL_44;
  }

  allContactIdentifiers = self->_allContactIdentifiers;
  v10 = *(v4 + 4);
  if (allContactIdentifiers != v10 && (!v10 || ![(NSMutableArray *)allContactIdentifiers isEqualToArray:?]))
  {
    goto LABEL_44;
  }

  firstName = self->_firstName;
  v12 = *(v4 + 8);
  if (firstName != v12 && (!v12 || ![(NSString *)firstName isEqualToString:?]))
  {
    goto LABEL_44;
  }

  lastName = self->_lastName;
  v14 = *(v4 + 10);
  if (lastName != v14 && (!v14 || ![(NSString *)lastName isEqualToString:?]))
  {
    goto LABEL_44;
  }

  has = self->_has;
  if ((*&has & 0x80000000) != 0)
  {
    if ((v4[152] & 0x80000000) == 0 || self->_userWheelchairMode != *(v4 + 34))
    {
      goto LABEL_44;
    }
  }

  else if (*(v4 + 34))
  {
LABEL_44:
    v21 = 0;
    goto LABEL_45;
  }

  sharingAuthorizations = self->_sharingAuthorizations;
  v17 = *(v4 + 14);
  if (sharingAuthorizations != v17)
  {
    if (!v17 || ![(NSMutableArray *)sharingAuthorizations isEqualToArray:?])
    {
      goto LABEL_44;
    }

    *&has = self->_has;
  }

  v18 = v4[152];
  if ((*&has & 0x40) != 0)
  {
    if ((v4[152] & 0x40) == 0 || self->_type != *(v4 + 33))
    {
      goto LABEL_44;
    }
  }

  else if ((v4[152] & 0x40) != 0)
  {
    goto LABEL_44;
  }

  if ((*&has & 8) != 0)
  {
    if ((v4[152] & 8) == 0 || self->_direction != *(v4 + 14))
    {
      goto LABEL_44;
    }
  }

  else if ((v4[152] & 8) != 0)
  {
    goto LABEL_44;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v4[152] & 0x20) == 0 || self->_status != *(v4 + 32))
    {
      goto LABEL_44;
    }
  }

  else if ((v4[152] & 0x20) != 0)
  {
    goto LABEL_44;
  }

  sharingSetupMetadata = self->_sharingSetupMetadata;
  v20 = *(v4 + 15);
  if (sharingSetupMetadata == v20)
  {
    v21 = 1;
    goto LABEL_45;
  }

  if (!v20)
  {
    goto LABEL_44;
  }

  v21 = [(HDCodableSharingSetupMetadata *)sharingSetupMetadata isEqual:?];
LABEL_45:

  return v21;
}

- (id)sharingRecipientIdentifier
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [(HDCodableSummarySharingEntry *)self uuid];
  v5 = [v3 initWithUUIDString:v4];

  v6 = [objc_alloc(MEMORY[0x277CCD988]) initForInvitationUUID:v5];

  return v6;
}

- (id)shareOwnerParticipant
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HDCodableSummarySharingEntry *)self ownerParticipant];
  if (v3)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
    v5 = v9;
    if (!v4)
    {
      _HKInitializeLogging();
      v6 = HKLogSharing();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v11 = self;
        v12 = 2114;
        v13 = v3;
        v14 = 2114;
        v15 = v5;
        _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to unarchive owner participant %{public}@: %{public}@", buf, 0x20u);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isEqualFirstName:(id)a3 lastName:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDCodableSummarySharingEntry *)self firstName];
  if (v10 != v8)
  {
    v11 = [(HDCodableSummarySharingEntry *)self firstName];
    if (!v11)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v4 = v11;
    v5 = [(HDCodableSummarySharingEntry *)self firstName];
    if (![v8 isEqualToString:v5])
    {
      v12 = 0;
LABEL_12:

      goto LABEL_13;
    }
  }

  v13 = [(HDCodableSummarySharingEntry *)self lastName];
  v14 = v13;
  if (v13 == v9)
  {

    v12 = 1;
  }

  else
  {
    v15 = [(HDCodableSummarySharingEntry *)self lastName];
    if (v15)
    {
      v16 = v15;
      v17 = [(HDCodableSummarySharingEntry *)self lastName];
      v12 = [v9 isEqualToString:v17];
    }

    else
    {

      v12 = 0;
    }
  }

  if (v10 != v8)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v12;
}

@end