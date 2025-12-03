@interface CKDPParticipant
- (BOOL)isEqual:(id)equal;
- (id)_participantTypeCKLogValue;
- (id)_permissionCKLogValue;
- (id)_stateCKLogValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)keyHealthAsString:(int)string;
- (id)participantTypeAsString:(int)string;
- (id)permissionAsString:(int)string;
- (id)stateAsString:(int)string;
- (int)StringAsKeyHealth:(id)health;
- (int)StringAsParticipantType:(id)type;
- (int)StringAsPermission:(id)permission;
- (int)StringAsState:(id)state;
- (int)keyHealth;
- (int)participantType;
- (int)permission;
- (int)publicKeyVersion;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAcceptedInProcess:(BOOL)process;
- (void)setHasCreatedInProcess:(BOOL)process;
- (void)setHasIsAnonymousInvitedParticipant:(BOOL)participant;
- (void)setHasIsApprovedRequester:(BOOL)requester;
- (void)setHasIsInNetwork:(BOOL)network;
- (void)setHasIsOrgUser:(BOOL)user;
- (void)setHasKeyHealth:(BOOL)health;
- (void)setHasOutOfNetworkKeyType:(BOOL)type;
- (void)setHasParticipantType:(BOOL)type;
- (void)setHasPermission:(BOOL)permission;
- (void)setHasPublicKeyVersion:(BOOL)version;
- (void)setHasState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation CKDPParticipant

- (id)_stateCKLogValue
{
  v3 = objc_msgSend_state(self, a2, v2);
  if ((v3 - 1) >= 4)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", v3);
  }

  else
  {
    v5 = *(&off_2785485D8 + (v3 - 1));
  }

  return v5;
}

- (id)_participantTypeCKLogValue
{
  v3 = objc_msgSend_participantType(self, a2, v2);
  if ((v3 - 1) >= 4)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", v3);
  }

  else
  {
    v5 = *(&off_2785485F8 + (v3 - 1));
  }

  return v5;
}

- (id)_permissionCKLogValue
{
  v3 = objc_msgSend_permission(self, a2, v2);
  if ((v3 - 1) >= 3)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", v3);
  }

  else
  {
    v5 = *(&off_278548618 + (v3 - 1));
  }

  return v5;
}

- (int)state
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_state;
  }

  else
  {
    return 1;
  }
}

- (void)setHasState:(BOOL)state
{
  if (state)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)stateAsString:(int)string
{
  if ((string - 1) >= 4)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854C8C8[string - 1];
  }

  return v4;
}

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if (objc_msgSend_isEqualToString_(stateCopy, v4, @"invited"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(stateCopy, v5, @"accepted"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(stateCopy, v7, @"removed"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(stateCopy, v8, @"unsubscribed"))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int)participantType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_participantType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasParticipantType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (id)participantTypeAsString:(int)string
{
  if ((string - 1) >= 4)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854C8E8[string - 1];
  }

  return v4;
}

- (int)StringAsParticipantType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"owner"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"administrator"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"user"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v8, @"publicUser"))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int)permission
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_permission;
  }

  else
  {
    return 1;
  }
}

- (void)setHasPermission:(BOOL)permission
{
  if (permission)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)permissionAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854C908[string - 1];
  }

  return v4;
}

- (int)StringAsPermission:(id)permission
{
  permissionCopy = permission;
  if (objc_msgSend_isEqualToString_(permissionCopy, v4, @"none"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(permissionCopy, v5, @"readOnly"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(permissionCopy, v7, @"readWrite"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setHasCreatedInProcess:(BOOL)process
{
  if (process)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasOutOfNetworkKeyType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)publicKeyVersion
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_publicKeyVersion;
  }

  else
  {
    return 1;
  }
}

- (void)setHasPublicKeyVersion:(BOOL)version
{
  if (version)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasAcceptedInProcess:(BOOL)process
{
  if (process)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsInNetwork:(BOOL)network
{
  if (network)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasIsOrgUser:(BOOL)user
{
  if (user)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (int)keyHealth
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_keyHealth;
  }

  else
  {
    return 1;
  }
}

- (void)setHasKeyHealth:(BOOL)health
{
  if (health)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)keyHealthAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854C920[string - 1];
  }

  return v4;
}

- (int)StringAsKeyHealth:(id)health
{
  healthCopy = health;
  if (objc_msgSend_isEqualToString_(healthCopy, v4, @"healthy"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(healthCopy, v5, @"expired"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(healthCopy, v7, @"keylost"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setHasIsAnonymousInvitedParticipant:(BOOL)participant
{
  if (participant)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsApprovedRequester:(BOOL)requester
{
  if (requester)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPParticipant;
  v4 = [(CKDPParticipant *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  participantId = self->_participantId;
  if (participantId)
  {
    v8 = objc_msgSend_dictionaryRepresentation(participantId, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"participantId");
  }

  userId = self->_userId;
  if (userId)
  {
    v11 = objc_msgSend_dictionaryRepresentation(userId, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"userId");
  }

  contactInformation = self->_contactInformation;
  if (contactInformation)
  {
    v14 = objc_msgSend_dictionaryRepresentation(contactInformation, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"contactInformation");
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v17 = self->_state - 1;
    if (v17 >= 4)
    {
      v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_state);
    }

    else
    {
      v18 = off_27854C8C8[v17];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v18, @"state");

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_9;
  }

  v19 = self->_participantType - 1;
  if (v19 >= 4)
  {
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_participantType);
  }

  else
  {
    v20 = off_27854C8E8[v19];
  }

  objc_msgSend_setObject_forKey_(v6, v4, v20, @"participantType");

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_19:
    v21 = self->_permission - 1;
    if (v21 >= 3)
    {
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_permission);
    }

    else
    {
      v22 = off_27854C908[v21];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v22, @"permission");
  }

LABEL_23:
  inviterId = self->_inviterId;
  if (inviterId)
  {
    v24 = objc_msgSend_dictionaryRepresentation(inviterId, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v25, v24, @"inviterId");
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v26 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_createdInProcess);
    objc_msgSend_setObject_forKey_(v6, v27, v26, @"createdInProcess");
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    v29 = objc_msgSend_dictionaryRepresentation(publicKey, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v30, v29, @"publicKey");
  }

  if (*&self->_has)
  {
    v31 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_acceptTimestamp);
    objc_msgSend_setObject_forKey_(v6, v32, v31, @"acceptTimestamp");
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    v34 = objc_msgSend_dictionaryRepresentation(protectionInfo, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v35, v34, @"protectionInfo");
  }

  outOfNetworkPrivateKey = self->_outOfNetworkPrivateKey;
  if (outOfNetworkPrivateKey)
  {
    objc_msgSend_setObject_forKey_(v6, v4, outOfNetworkPrivateKey, @"outOfNetworkPrivateKey");
  }

  v37 = self->_has;
  if ((v37 & 4) != 0)
  {
    v48 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_outOfNetworkKeyType);
    objc_msgSend_setObject_forKey_(v6, v49, v48, @"outOfNetworkKeyType");

    v37 = self->_has;
    if ((v37 & 0x20) == 0)
    {
LABEL_37:
      if ((v37 & 0x80) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_51;
    }
  }

  else if ((v37 & 0x20) == 0)
  {
    goto LABEL_37;
  }

  v50 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_publicKeyVersion);
  objc_msgSend_setObject_forKey_(v6, v51, v50, @"publicKeyVersion");

  v37 = self->_has;
  if ((v37 & 0x80) == 0)
  {
LABEL_38:
    if ((v37 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_51:
  v52 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_acceptedInProcess);
  objc_msgSend_setObject_forKey_(v6, v53, v52, @"acceptedInProcess");

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_39:
    v38 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_isInNetwork);
    objc_msgSend_setObject_forKey_(v6, v39, v38, @"isInNetwork");
  }

LABEL_40:
  acceptedTimestampDate = self->_acceptedTimestampDate;
  if (acceptedTimestampDate)
  {
    v41 = objc_msgSend_dictionaryRepresentation(acceptedTimestampDate, v4, outOfNetworkPrivateKey);
    objc_msgSend_setObject_forKey_(v6, v42, v41, @"acceptedTimestampDate");
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    v43 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_isOrgUser);
    objc_msgSend_setObject_forKey_(v6, v44, v43, @"isOrgUser");
  }

  protectionInfoPublicKey = self->_protectionInfoPublicKey;
  if (protectionInfoPublicKey)
  {
    objc_msgSend_setObject_forKey_(v6, v4, protectionInfoPublicKey, @"protectionInfoPublicKey");
  }

  if ((*&self->_has & 2) != 0)
  {
    v46 = self->_keyHealth - 1;
    if (v46 >= 3)
    {
      v47 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_keyHealth);
    }

    else
    {
      v47 = off_27854C920[v46];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v47, @"keyHealth");
  }

  inviteTimestampDate = self->_inviteTimestampDate;
  if (inviteTimestampDate)
  {
    v55 = objc_msgSend_dictionaryRepresentation(inviteTimestampDate, v4, protectionInfoPublicKey);
    objc_msgSend_setObject_forKey_(v6, v56, v55, @"inviteTimestampDate");
  }

  v57 = self->_has;
  if ((v57 & 0x200) != 0)
  {
    v58 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_isAnonymousInvitedParticipant);
    objc_msgSend_setObject_forKey_(v6, v59, v58, @"isAnonymousInvitedParticipant");

    v57 = self->_has;
  }

  if ((v57 & 0x400) != 0)
  {
    v60 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_isApprovedRequester);
    objc_msgSend_setObject_forKey_(v6, v61, v60, @"isApprovedRequester");
  }

  encryptedContactInformation = self->_encryptedContactInformation;
  if (encryptedContactInformation)
  {
    objc_msgSend_setObject_forKey_(v6, v4, encryptedContactInformation, @"encryptedContactInformation");
  }

  inviteNSSecTimestampDate = self->_inviteNSSecTimestampDate;
  if (inviteNSSecTimestampDate)
  {
    v64 = objc_msgSend_dictionaryRepresentation(inviteNSSecTimestampDate, v4, encryptedContactInformation);
    objc_msgSend_setObject_forKey_(v6, v65, v64, @"inviteNSSecTimestampDate");
  }

  acceptedNSSecTimestampDate = self->_acceptedNSSecTimestampDate;
  if (acceptedNSSecTimestampDate)
  {
    v67 = objc_msgSend_dictionaryRepresentation(acceptedNSSecTimestampDate, v4, encryptedContactInformation);
    objc_msgSend_setObject_forKey_(v6, v68, v67, @"acceptedNSSecTimestampDate");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v21 = toCopy;
  if (self->_participantId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v21;
  }

  if (self->_userId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v21;
  }

  if (self->_contactInformation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v21;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    state = self->_state;
    PBDataWriterWriteInt32Field();
    toCopy = v21;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_9;
  }

  participantType = self->_participantType;
  PBDataWriterWriteInt32Field();
  toCopy = v21;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    permission = self->_permission;
    PBDataWriterWriteInt32Field();
    toCopy = v21;
  }

LABEL_11:
  if (self->_inviterId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v21;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    createdInProcess = self->_createdInProcess;
    PBDataWriterWriteBOOLField();
    toCopy = v21;
  }

  if (self->_publicKey)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v21;
  }

  if (*&self->_has)
  {
    acceptTimestamp = self->_acceptTimestamp;
    PBDataWriterWriteInt64Field();
    toCopy = v21;
  }

  if (self->_protectionInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v21;
  }

  if (self->_outOfNetworkPrivateKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v21;
  }

  v9 = self->_has;
  if ((v9 & 4) != 0)
  {
    outOfNetworkKeyType = self->_outOfNetworkKeyType;
    PBDataWriterWriteInt32Field();
    toCopy = v21;
    v9 = self->_has;
    if ((v9 & 0x20) == 0)
    {
LABEL_25:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_56;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_25;
  }

  publicKeyVersion = self->_publicKeyVersion;
  PBDataWriterWriteInt32Field();
  toCopy = v21;
  v9 = self->_has;
  if ((v9 & 0x80) == 0)
  {
LABEL_26:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_56:
  acceptedInProcess = self->_acceptedInProcess;
  PBDataWriterWriteBOOLField();
  toCopy = v21;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_27:
    isInNetwork = self->_isInNetwork;
    PBDataWriterWriteBOOLField();
    toCopy = v21;
  }

LABEL_28:
  if (self->_acceptedTimestampDate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v21;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    isOrgUser = self->_isOrgUser;
    PBDataWriterWriteBOOLField();
    toCopy = v21;
  }

  if (self->_protectionInfoPublicKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v21;
  }

  if ((*&self->_has & 2) != 0)
  {
    keyHealth = self->_keyHealth;
    PBDataWriterWriteInt32Field();
    toCopy = v21;
  }

  if (self->_inviteTimestampDate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v21;
  }

  v13 = self->_has;
  if ((v13 & 0x200) != 0)
  {
    isAnonymousInvitedParticipant = self->_isAnonymousInvitedParticipant;
    PBDataWriterWriteBOOLField();
    toCopy = v21;
    v13 = self->_has;
  }

  if ((v13 & 0x400) != 0)
  {
    isApprovedRequester = self->_isApprovedRequester;
    PBDataWriterWriteBOOLField();
    toCopy = v21;
  }

  if (self->_encryptedContactInformation)
  {
    PBDataWriterWriteDataField();
    toCopy = v21;
  }

  if (self->_inviteNSSecTimestampDate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v21;
  }

  if (self->_acceptedNSSecTimestampDate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v21;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  participantId = self->_participantId;
  v22 = toCopy;
  if (participantId)
  {
    objc_msgSend_setParticipantId_(toCopy, v5, participantId);
    toCopy = v22;
  }

  userId = self->_userId;
  if (userId)
  {
    objc_msgSend_setUserId_(v22, v5, userId);
    toCopy = v22;
  }

  contactInformation = self->_contactInformation;
  if (contactInformation)
  {
    objc_msgSend_setContactInformation_(v22, v5, contactInformation);
    toCopy = v22;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(toCopy + 33) = self->_state;
    *(toCopy + 76) |= 0x40u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 24) = self->_participantType;
  *(toCopy + 76) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    *(toCopy + 25) = self->_permission;
    *(toCopy + 76) |= 0x10u;
  }

LABEL_11:
  inviterId = self->_inviterId;
  if (inviterId)
  {
    objc_msgSend_setInviterId_(v22, v5, inviterId);
    toCopy = v22;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    *(toCopy + 145) = self->_createdInProcess;
    *(toCopy + 76) |= 0x100u;
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    objc_msgSend_setPublicKey_(v22, v5, publicKey);
    toCopy = v22;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_acceptTimestamp;
    *(toCopy + 76) |= 1u;
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    objc_msgSend_setProtectionInfo_(v22, v5, protectionInfo);
    toCopy = v22;
  }

  outOfNetworkPrivateKey = self->_outOfNetworkPrivateKey;
  if (outOfNetworkPrivateKey)
  {
    objc_msgSend_setOutOfNetworkPrivateKey_(v22, v5, outOfNetworkPrivateKey);
    toCopy = v22;
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    *(toCopy + 19) = self->_outOfNetworkKeyType;
    *(toCopy + 76) |= 4u;
    v14 = self->_has;
    if ((v14 & 0x20) == 0)
    {
LABEL_25:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_56;
    }
  }

  else if ((v14 & 0x20) == 0)
  {
    goto LABEL_25;
  }

  *(toCopy + 32) = self->_publicKeyVersion;
  *(toCopy + 76) |= 0x20u;
  v14 = self->_has;
  if ((v14 & 0x80) == 0)
  {
LABEL_26:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_56:
  *(toCopy + 144) = self->_acceptedInProcess;
  *(toCopy + 76) |= 0x80u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_27:
    *(toCopy + 148) = self->_isInNetwork;
    *(toCopy + 76) |= 0x800u;
  }

LABEL_28:
  acceptedTimestampDate = self->_acceptedTimestampDate;
  if (acceptedTimestampDate)
  {
    objc_msgSend_setAcceptedTimestampDate_(v22, v5, acceptedTimestampDate);
    toCopy = v22;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    *(toCopy + 149) = self->_isOrgUser;
    *(toCopy + 76) |= 0x1000u;
  }

  protectionInfoPublicKey = self->_protectionInfoPublicKey;
  if (protectionInfoPublicKey)
  {
    objc_msgSend_setProtectionInfoPublicKey_(v22, v5, protectionInfoPublicKey);
    toCopy = v22;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 18) = self->_keyHealth;
    *(toCopy + 76) |= 2u;
  }

  inviteTimestampDate = self->_inviteTimestampDate;
  if (inviteTimestampDate)
  {
    objc_msgSend_setInviteTimestampDate_(v22, v5, inviteTimestampDate);
    toCopy = v22;
  }

  v18 = self->_has;
  if ((v18 & 0x200) != 0)
  {
    *(toCopy + 146) = self->_isAnonymousInvitedParticipant;
    *(toCopy + 76) |= 0x200u;
    v18 = self->_has;
  }

  if ((v18 & 0x400) != 0)
  {
    *(toCopy + 147) = self->_isApprovedRequester;
    *(toCopy + 76) |= 0x400u;
  }

  encryptedContactInformation = self->_encryptedContactInformation;
  if (encryptedContactInformation)
  {
    objc_msgSend_setEncryptedContactInformation_(v22, v5, encryptedContactInformation);
    toCopy = v22;
  }

  inviteNSSecTimestampDate = self->_inviteNSSecTimestampDate;
  if (inviteNSSecTimestampDate)
  {
    objc_msgSend_setInviteNSSecTimestampDate_(v22, v5, inviteNSSecTimestampDate);
    toCopy = v22;
  }

  acceptedNSSecTimestampDate = self->_acceptedNSSecTimestampDate;
  if (acceptedNSSecTimestampDate)
  {
    objc_msgSend_setAcceptedNSSecTimestampDate_(v22, v5, acceptedNSSecTimestampDate);
    toCopy = v22;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_participantId, v11, zone);
  v13 = *(v10 + 88);
  *(v10 + 88) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_userId, v14, zone);
  v16 = *(v10 + 136);
  *(v10 + 136) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_contactInformation, v17, zone);
  v19 = *(v10 + 32);
  *(v10 + 32) = v18;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v10 + 132) = self->_state;
    *(v10 + 152) |= 0x40u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v10 + 96) = self->_participantType;
  *(v10 + 152) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    *(v10 + 100) = self->_permission;
    *(v10 + 152) |= 0x10u;
  }

LABEL_5:
  v22 = objc_msgSend_copyWithZone_(self->_inviterId, v20, zone);
  v23 = *(v10 + 64);
  *(v10 + 64) = v22;

  if ((*&self->_has & 0x100) != 0)
  {
    *(v10 + 145) = self->_createdInProcess;
    *(v10 + 152) |= 0x100u;
  }

  v25 = objc_msgSend_copyWithZone_(self->_publicKey, v24, zone);
  v26 = *(v10 + 120);
  *(v10 + 120) = v25;

  if (*&self->_has)
  {
    *(v10 + 8) = self->_acceptTimestamp;
    *(v10 + 152) |= 1u;
  }

  v28 = objc_msgSend_copyWithZone_(self->_protectionInfo, v27, zone);
  v29 = *(v10 + 104);
  *(v10 + 104) = v28;

  v31 = objc_msgSend_copyWithZone_(self->_outOfNetworkPrivateKey, v30, zone);
  v32 = *(v10 + 80);
  *(v10 + 80) = v31;

  v34 = self->_has;
  if ((v34 & 4) != 0)
  {
    *(v10 + 76) = self->_outOfNetworkKeyType;
    *(v10 + 152) |= 4u;
    v34 = self->_has;
    if ((v34 & 0x20) == 0)
    {
LABEL_11:
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }
  }

  else if ((v34 & 0x20) == 0)
  {
    goto LABEL_11;
  }

  *(v10 + 128) = self->_publicKeyVersion;
  *(v10 + 152) |= 0x20u;
  v34 = self->_has;
  if ((v34 & 0x80) == 0)
  {
LABEL_12:
    if ((v34 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_28:
  *(v10 + 144) = self->_acceptedInProcess;
  *(v10 + 152) |= 0x80u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_13:
    *(v10 + 148) = self->_isInNetwork;
    *(v10 + 152) |= 0x800u;
  }

LABEL_14:
  v35 = objc_msgSend_copyWithZone_(self->_acceptedTimestampDate, v33, zone);
  v36 = *(v10 + 24);
  *(v10 + 24) = v35;

  if ((*&self->_has & 0x1000) != 0)
  {
    *(v10 + 149) = self->_isOrgUser;
    *(v10 + 152) |= 0x1000u;
  }

  v38 = objc_msgSend_copyWithZone_(self->_protectionInfoPublicKey, v37, zone);
  v39 = *(v10 + 112);
  *(v10 + 112) = v38;

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 72) = self->_keyHealth;
    *(v10 + 152) |= 2u;
  }

  v41 = objc_msgSend_copyWithZone_(self->_inviteTimestampDate, v40, zone);
  v42 = *(v10 + 56);
  *(v10 + 56) = v41;

  v44 = self->_has;
  if ((v44 & 0x200) != 0)
  {
    *(v10 + 146) = self->_isAnonymousInvitedParticipant;
    *(v10 + 152) |= 0x200u;
    v44 = self->_has;
  }

  if ((v44 & 0x400) != 0)
  {
    *(v10 + 147) = self->_isApprovedRequester;
    *(v10 + 152) |= 0x400u;
  }

  v45 = objc_msgSend_copyWithZone_(self->_encryptedContactInformation, v43, zone);
  v46 = *(v10 + 40);
  *(v10 + 40) = v45;

  v48 = objc_msgSend_copyWithZone_(self->_inviteNSSecTimestampDate, v47, zone);
  v49 = *(v10 + 48);
  *(v10 + 48) = v48;

  v51 = objc_msgSend_copyWithZone_(self->_acceptedNSSecTimestampDate, v50, zone);
  v52 = *(v10 + 16);
  *(v10 + 16) = v51;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_48;
  }

  participantId = self->_participantId;
  v9 = equalCopy[11];
  if (participantId | v9)
  {
    if (!objc_msgSend_isEqual_(participantId, v7, v9))
    {
      goto LABEL_48;
    }
  }

  userId = self->_userId;
  v11 = equalCopy[17];
  if (userId | v11)
  {
    if (!objc_msgSend_isEqual_(userId, v7, v11))
    {
      goto LABEL_48;
    }
  }

  contactInformation = self->_contactInformation;
  v13 = equalCopy[4];
  if (contactInformation | v13)
  {
    if (!objc_msgSend_isEqual_(contactInformation, v7, v13))
    {
      goto LABEL_48;
    }
  }

  has = self->_has;
  v15 = *(equalCopy + 76);
  if ((has & 0x40) != 0)
  {
    if ((v15 & 0x40) == 0 || self->_state != *(equalCopy + 33))
    {
      goto LABEL_48;
    }
  }

  else if ((v15 & 0x40) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 8) != 0)
  {
    if ((v15 & 8) == 0 || self->_participantType != *(equalCopy + 24))
    {
      goto LABEL_48;
    }
  }

  else if ((v15 & 8) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 0x10) != 0)
  {
    if ((v15 & 0x10) == 0 || self->_permission != *(equalCopy + 25))
    {
      goto LABEL_48;
    }
  }

  else if ((v15 & 0x10) != 0)
  {
    goto LABEL_48;
  }

  inviterId = self->_inviterId;
  v17 = equalCopy[8];
  if (inviterId | v17)
  {
    if (!objc_msgSend_isEqual_(inviterId, v7, v17))
    {
      goto LABEL_48;
    }

    has = self->_has;
    v15 = *(equalCopy + 76);
  }

  if ((has & 0x100) != 0)
  {
    if ((v15 & 0x100) == 0)
    {
      goto LABEL_48;
    }

    v20 = *(equalCopy + 145);
    if (self->_createdInProcess)
    {
      if ((*(equalCopy + 145) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 145))
    {
      goto LABEL_48;
    }
  }

  else if ((v15 & 0x100) != 0)
  {
    goto LABEL_48;
  }

  publicKey = self->_publicKey;
  v19 = equalCopy[15];
  if (publicKey | v19)
  {
    if (!objc_msgSend_isEqual_(publicKey, v7, v19))
    {
      goto LABEL_48;
    }

    has = self->_has;
    v15 = *(equalCopy + 76);
  }

  if (has)
  {
    if ((v15 & 1) == 0 || self->_acceptTimestamp != equalCopy[1])
    {
      goto LABEL_48;
    }
  }

  else if (v15)
  {
    goto LABEL_48;
  }

  protectionInfo = self->_protectionInfo;
  v22 = equalCopy[13];
  if (protectionInfo | v22 && !objc_msgSend_isEqual_(protectionInfo, v7, v22))
  {
    goto LABEL_48;
  }

  outOfNetworkPrivateKey = self->_outOfNetworkPrivateKey;
  v24 = equalCopy[10];
  if (outOfNetworkPrivateKey | v24)
  {
    if (!objc_msgSend_isEqual_(outOfNetworkPrivateKey, v7, v24))
    {
      goto LABEL_48;
    }
  }

  v25 = self->_has;
  v26 = *(equalCopy + 76);
  if ((v25 & 4) != 0)
  {
    if ((v26 & 4) == 0 || self->_outOfNetworkKeyType != *(equalCopy + 19))
    {
      goto LABEL_48;
    }
  }

  else if ((v26 & 4) != 0)
  {
    goto LABEL_48;
  }

  if ((v25 & 0x20) != 0)
  {
    if ((v26 & 0x20) == 0 || self->_publicKeyVersion != *(equalCopy + 32))
    {
      goto LABEL_48;
    }
  }

  else if ((v26 & 0x20) != 0)
  {
    goto LABEL_48;
  }

  if ((v25 & 0x80) != 0)
  {
    if ((v26 & 0x80) == 0)
    {
      goto LABEL_48;
    }

    v33 = *(equalCopy + 144);
    if (self->_acceptedInProcess)
    {
      if ((equalCopy[18] & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (equalCopy[18])
    {
      goto LABEL_48;
    }
  }

  else if ((v26 & 0x80) != 0)
  {
    goto LABEL_48;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((equalCopy[19] & 0x800) == 0)
    {
      goto LABEL_48;
    }

    v34 = *(equalCopy + 148);
    if (self->_isInNetwork)
    {
      if ((*(equalCopy + 148) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 148))
    {
      goto LABEL_48;
    }
  }

  else if ((equalCopy[19] & 0x800) != 0)
  {
    goto LABEL_48;
  }

  acceptedTimestampDate = self->_acceptedTimestampDate;
  v30 = equalCopy[3];
  if (acceptedTimestampDate | v30)
  {
    if (!objc_msgSend_isEqual_(acceptedTimestampDate, v7, v30))
    {
      goto LABEL_48;
    }

    v25 = self->_has;
    v26 = *(equalCopy + 76);
  }

  if ((v25 & 0x1000) != 0)
  {
    if ((v26 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    v35 = *(equalCopy + 149);
    if (self->_isOrgUser)
    {
      if ((*(equalCopy + 149) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 149))
    {
      goto LABEL_48;
    }
  }

  else if ((v26 & 0x1000) != 0)
  {
    goto LABEL_48;
  }

  protectionInfoPublicKey = self->_protectionInfoPublicKey;
  v32 = equalCopy[14];
  if (protectionInfoPublicKey | v32)
  {
    if (!objc_msgSend_isEqual_(protectionInfoPublicKey, v7, v32))
    {
      goto LABEL_48;
    }

    v25 = self->_has;
    v26 = *(equalCopy + 76);
  }

  if ((v25 & 2) != 0)
  {
    if ((v26 & 2) == 0 || self->_keyHealth != *(equalCopy + 18))
    {
      goto LABEL_48;
    }
  }

  else if ((v26 & 2) != 0)
  {
    goto LABEL_48;
  }

  inviteTimestampDate = self->_inviteTimestampDate;
  v37 = equalCopy[7];
  if (inviteTimestampDate | v37)
  {
    if (!objc_msgSend_isEqual_(inviteTimestampDate, v7, v37))
    {
      goto LABEL_48;
    }

    v25 = self->_has;
    v26 = *(equalCopy + 76);
  }

  if ((v25 & 0x200) != 0)
  {
    if ((v26 & 0x200) == 0)
    {
      goto LABEL_48;
    }

    v38 = *(equalCopy + 146);
    if (self->_isAnonymousInvitedParticipant)
    {
      if ((*(equalCopy + 146) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 146))
    {
      goto LABEL_48;
    }
  }

  else if ((v26 & 0x200) != 0)
  {
    goto LABEL_48;
  }

  if ((v25 & 0x400) == 0)
  {
    if ((v26 & 0x400) == 0)
    {
      goto LABEL_111;
    }

LABEL_48:
    isEqual = 0;
    goto LABEL_49;
  }

  if ((v26 & 0x400) == 0)
  {
    goto LABEL_48;
  }

  v39 = *(equalCopy + 147);
  if (!self->_isApprovedRequester)
  {
    if ((*(equalCopy + 147) & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_48;
  }

  if ((*(equalCopy + 147) & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_111:
  encryptedContactInformation = self->_encryptedContactInformation;
  v41 = equalCopy[5];
  if (encryptedContactInformation | v41 && !objc_msgSend_isEqual_(encryptedContactInformation, v7, v41))
  {
    goto LABEL_48;
  }

  inviteNSSecTimestampDate = self->_inviteNSSecTimestampDate;
  v43 = equalCopy[6];
  if (inviteNSSecTimestampDate | v43)
  {
    if (!objc_msgSend_isEqual_(inviteNSSecTimestampDate, v7, v43))
    {
      goto LABEL_48;
    }
  }

  acceptedNSSecTimestampDate = self->_acceptedNSSecTimestampDate;
  v45 = equalCopy[2];
  if (acceptedNSSecTimestampDate | v45)
  {
    isEqual = objc_msgSend_isEqual_(acceptedNSSecTimestampDate, v7, v45);
  }

  else
  {
    isEqual = 1;
  }

LABEL_49:

  return isEqual;
}

- (unint64_t)hash
{
  v55 = objc_msgSend_hash(self->_participantId, a2, v2);
  v54 = objc_msgSend_hash(self->_userId, v4, v5);
  v53 = objc_msgSend_hash(self->_contactInformation, v6, v7);
  has = self->_has;
  if ((has & 0x40) == 0)
  {
    v52 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v51 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v52 = 2654435761 * self->_state;
  if ((has & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v51 = 2654435761 * self->_participantType;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v50 = 2654435761 * self->_permission;
    goto LABEL_8;
  }

LABEL_7:
  v50 = 0;
LABEL_8:
  v49 = objc_msgSend_hash(self->_inviterId, v8, v9);
  if ((*&self->_has & 0x100) != 0)
  {
    v48 = 2654435761 * self->_createdInProcess;
  }

  else
  {
    v48 = 0;
  }

  v47 = objc_msgSend_hash(self->_publicKey, v11, v12);
  if (*&self->_has)
  {
    v46 = 2654435761 * self->_acceptTimestamp;
  }

  else
  {
    v46 = 0;
  }

  v45 = objc_msgSend_hash(self->_protectionInfo, v13, v14);
  v44 = objc_msgSend_hash(self->_outOfNetworkPrivateKey, v15, v16);
  v19 = self->_has;
  if ((v19 & 4) != 0)
  {
    v43 = 2654435761 * self->_outOfNetworkKeyType;
    if ((v19 & 0x20) != 0)
    {
LABEL_16:
      v20 = 2654435761 * self->_publicKeyVersion;
      if ((v19 & 0x80) != 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      v21 = 0;
      if ((*&self->_has & 0x800) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v43 = 0;
    if ((v19 & 0x20) != 0)
    {
      goto LABEL_16;
    }
  }

  v20 = 0;
  if ((v19 & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = 2654435761 * self->_acceptedInProcess;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_18:
    v22 = 2654435761 * self->_isInNetwork;
    goto LABEL_23;
  }

LABEL_22:
  v22 = 0;
LABEL_23:
  v25 = objc_msgSend_hash(self->_acceptedTimestampDate, v17, v18);
  if ((*&self->_has & 0x1000) != 0)
  {
    v26 = 2654435761 * self->_isOrgUser;
  }

  else
  {
    v26 = 0;
  }

  v29 = objc_msgSend_hash(self->_protectionInfoPublicKey, v23, v24);
  if ((*&self->_has & 2) != 0)
  {
    v30 = 2654435761 * self->_keyHealth;
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_msgSend_hash(self->_inviteTimestampDate, v27, v28);
  if ((*&self->_has & 0x200) != 0)
  {
    v34 = 2654435761 * self->_isAnonymousInvitedParticipant;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_31;
    }

LABEL_33:
    v35 = 0;
    goto LABEL_34;
  }

  v34 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  v35 = 2654435761 * self->_isApprovedRequester;
LABEL_34:
  v36 = v31 ^ v34 ^ v35 ^ objc_msgSend_hash(self->_encryptedContactInformation, v32, v33);
  v39 = v36 ^ objc_msgSend_hash(self->_inviteNSSecTimestampDate, v37, v38);
  return v54 ^ v55 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v20 ^ v21 ^ v22 ^ v25 ^ v26 ^ v29 ^ v30 ^ v39 ^ objc_msgSend_hash(self->_acceptedNSSecTimestampDate, v40, v41);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  participantId = self->_participantId;
  v6 = *(fromCopy + 11);
  v31 = fromCopy;
  if (participantId)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(participantId, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setParticipantId_(self, fromCopy, v6);
  }

  fromCopy = v31;
LABEL_7:
  userId = self->_userId;
  v8 = *(fromCopy + 17);
  if (userId)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_mergeFrom_(userId, fromCopy, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_setUserId_(self, fromCopy, v8);
  }

  fromCopy = v31;
LABEL_13:
  contactInformation = self->_contactInformation;
  v10 = *(fromCopy + 4);
  if (contactInformation)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    objc_msgSend_mergeFrom_(contactInformation, fromCopy, v10);
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    objc_msgSend_setContactInformation_(self, fromCopy, v10);
  }

  fromCopy = v31;
LABEL_19:
  v11 = *(fromCopy + 76);
  if ((v11 & 0x40) != 0)
  {
    self->_state = *(fromCopy + 33);
    *&self->_has |= 0x40u;
    v11 = *(fromCopy + 76);
    if ((v11 & 8) == 0)
    {
LABEL_21:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((v11 & 8) == 0)
  {
    goto LABEL_21;
  }

  self->_participantType = *(fromCopy + 24);
  *&self->_has |= 8u;
  if ((*(fromCopy + 76) & 0x10) != 0)
  {
LABEL_22:
    self->_permission = *(fromCopy + 25);
    *&self->_has |= 0x10u;
  }

LABEL_23:
  inviterId = self->_inviterId;
  v13 = *(fromCopy + 8);
  if (inviterId)
  {
    if (!v13)
    {
      goto LABEL_32;
    }

    objc_msgSend_mergeFrom_(inviterId, fromCopy, v13);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_32;
    }

    objc_msgSend_setInviterId_(self, fromCopy, v13);
  }

  fromCopy = v31;
LABEL_32:
  if ((*(fromCopy + 76) & 0x100) != 0)
  {
    self->_createdInProcess = *(fromCopy + 145);
    *&self->_has |= 0x100u;
  }

  publicKey = self->_publicKey;
  v15 = *(fromCopy + 15);
  if (publicKey)
  {
    if (!v15)
    {
      goto LABEL_40;
    }

    objc_msgSend_mergeFrom_(publicKey, fromCopy, v15);
  }

  else
  {
    if (!v15)
    {
      goto LABEL_40;
    }

    objc_msgSend_setPublicKey_(self, fromCopy, v15);
  }

  fromCopy = v31;
LABEL_40:
  if (*(fromCopy + 76))
  {
    self->_acceptTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  protectionInfo = self->_protectionInfo;
  v17 = *(fromCopy + 13);
  if (protectionInfo)
  {
    if (!v17)
    {
      goto LABEL_48;
    }

    objc_msgSend_mergeFrom_(protectionInfo, fromCopy, v17);
  }

  else
  {
    if (!v17)
    {
      goto LABEL_48;
    }

    objc_msgSend_setProtectionInfo_(self, fromCopy, v17);
  }

  fromCopy = v31;
LABEL_48:
  v18 = *(fromCopy + 10);
  if (v18)
  {
    objc_msgSend_setOutOfNetworkPrivateKey_(self, fromCopy, v18);
    fromCopy = v31;
  }

  v19 = *(fromCopy + 76);
  if ((v19 & 4) != 0)
  {
    self->_outOfNetworkKeyType = *(fromCopy + 19);
    *&self->_has |= 4u;
    v19 = *(fromCopy + 76);
    if ((v19 & 0x20) == 0)
    {
LABEL_52:
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_60;
    }
  }

  else if ((v19 & 0x20) == 0)
  {
    goto LABEL_52;
  }

  self->_publicKeyVersion = *(fromCopy + 32);
  *&self->_has |= 0x20u;
  v19 = *(fromCopy + 76);
  if ((v19 & 0x80) == 0)
  {
LABEL_53:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_60:
  self->_acceptedInProcess = *(fromCopy + 144);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 76) & 0x800) != 0)
  {
LABEL_54:
    self->_isInNetwork = *(fromCopy + 148);
    *&self->_has |= 0x800u;
  }

LABEL_55:
  acceptedTimestampDate = self->_acceptedTimestampDate;
  v21 = *(fromCopy + 3);
  if (acceptedTimestampDate)
  {
    if (!v21)
    {
      goto LABEL_65;
    }

    objc_msgSend_mergeFrom_(acceptedTimestampDate, fromCopy, v21);
  }

  else
  {
    if (!v21)
    {
      goto LABEL_65;
    }

    objc_msgSend_setAcceptedTimestampDate_(self, fromCopy, v21);
  }

  fromCopy = v31;
LABEL_65:
  if ((*(fromCopy + 76) & 0x1000) != 0)
  {
    self->_isOrgUser = *(fromCopy + 149);
    *&self->_has |= 0x1000u;
  }

  v22 = *(fromCopy + 14);
  if (v22)
  {
    objc_msgSend_setProtectionInfoPublicKey_(self, fromCopy, v22);
    fromCopy = v31;
  }

  if ((*(fromCopy + 76) & 2) != 0)
  {
    self->_keyHealth = *(fromCopy + 18);
    *&self->_has |= 2u;
  }

  inviteTimestampDate = self->_inviteTimestampDate;
  v24 = *(fromCopy + 7);
  if (inviteTimestampDate)
  {
    if (!v24)
    {
      goto LABEL_77;
    }

    objc_msgSend_mergeFrom_(inviteTimestampDate, fromCopy, v24);
  }

  else
  {
    if (!v24)
    {
      goto LABEL_77;
    }

    objc_msgSend_setInviteTimestampDate_(self, fromCopy, v24);
  }

  fromCopy = v31;
LABEL_77:
  v25 = *(fromCopy + 76);
  if ((v25 & 0x200) != 0)
  {
    self->_isAnonymousInvitedParticipant = *(fromCopy + 146);
    *&self->_has |= 0x200u;
    v25 = *(fromCopy + 76);
  }

  if ((v25 & 0x400) != 0)
  {
    self->_isApprovedRequester = *(fromCopy + 147);
    *&self->_has |= 0x400u;
  }

  v26 = *(fromCopy + 5);
  if (v26)
  {
    objc_msgSend_setEncryptedContactInformation_(self, fromCopy, v26);
    fromCopy = v31;
  }

  inviteNSSecTimestampDate = self->_inviteNSSecTimestampDate;
  v28 = *(fromCopy + 6);
  if (inviteNSSecTimestampDate)
  {
    if (!v28)
    {
      goto LABEL_89;
    }

    objc_msgSend_mergeFrom_(inviteNSSecTimestampDate, fromCopy, v28);
  }

  else
  {
    if (!v28)
    {
      goto LABEL_89;
    }

    objc_msgSend_setInviteNSSecTimestampDate_(self, fromCopy, v28);
  }

  fromCopy = v31;
LABEL_89:
  acceptedNSSecTimestampDate = self->_acceptedNSSecTimestampDate;
  v30 = *(fromCopy + 2);
  if (acceptedNSSecTimestampDate)
  {
    if (v30)
    {
      objc_msgSend_mergeFrom_(acceptedNSSecTimestampDate, fromCopy, v30);
    }
  }

  else if (v30)
  {
    objc_msgSend_setAcceptedNSSecTimestampDate_(self, fromCopy, v30);
  }

  MEMORY[0x2821F96F8]();
}

@end