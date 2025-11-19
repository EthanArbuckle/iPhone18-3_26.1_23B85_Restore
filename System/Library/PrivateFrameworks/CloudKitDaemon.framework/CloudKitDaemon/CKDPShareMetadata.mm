@interface CKDPShareMetadata
- (BOOL)isEqual:(id)a3;
- (id)_participantPermissionCKLogValue;
- (id)_participantStateCKLogValue;
- (id)_participantTypeCKLogValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)participantPermissionAsString:(int)a3;
- (id)participantStateAsString:(int)a3;
- (id)participantTypeAsString:(int)a3;
- (int)StringAsParticipantPermission:(id)a3;
- (int)StringAsParticipantState:(id)a3;
- (int)StringAsParticipantType:(id)a3;
- (int)participantPermission;
- (int)participantState;
- (int)participantType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDenyAccessRequests:(BOOL)a3;
- (void)setHasParticipantState:(BOOL)a3;
- (void)setHasParticipantType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPShareMetadata

- (id)_participantPermissionCKLogValue
{
  v3 = objc_msgSend_participantPermission(self, a2, v2);
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

- (id)_participantStateCKLogValue
{
  v3 = objc_msgSend_participantState(self, a2, v2);
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

- (int)participantPermission
{
  if (*&self->_has)
  {
    return self->_participantPermission;
  }

  else
  {
    return 1;
  }
}

- (id)participantPermissionAsString:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CCA0[a3 - 1];
  }

  return v4;
}

- (int)StringAsParticipantPermission:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"none"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"readOnly"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"readWrite"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int)participantState
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_participantState;
  }

  else
  {
    return 1;
  }
}

- (void)setHasParticipantState:(BOOL)a3
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

- (id)participantStateAsString:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CCB8[a3 - 1];
  }

  return v4;
}

- (int)StringAsParticipantState:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"invited"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"accepted"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"removed"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, @"unsubscribed"))
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
  if ((*&self->_has & 4) != 0)
  {
    return self->_participantType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasParticipantType:(BOOL)a3
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

- (id)participantTypeAsString:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CCD8[a3 - 1];
  }

  return v4;
}

- (int)StringAsParticipantType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"owner"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"administrator"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"user"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, @"publicUser"))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setHasDenyAccessRequests:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPShareMetadata;
  v4 = [(CKDPShareMetadata *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  routingKey = self->_routingKey;
  if (routingKey)
  {
    objc_msgSend_setObject_forKey_(v4, v5, routingKey, @"routingKey");
  }

  protectedFullToken = self->_protectedFullToken;
  if (protectedFullToken)
  {
    objc_msgSend_setObject_forKey_(v6, v5, protectedFullToken, @"protectedFullToken");
  }

  ownerParticipant = self->_ownerParticipant;
  if (ownerParticipant)
  {
    v10 = objc_msgSend_dictionaryRepresentation(ownerParticipant, v5, protectedFullToken);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"ownerParticipant");
  }

  callerParticipant = self->_callerParticipant;
  if (callerParticipant)
  {
    v13 = objc_msgSend_dictionaryRepresentation(callerParticipant, v5, protectedFullToken);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"callerParticipant");
  }

  has = self->_has;
  if (has)
  {
    v16 = self->_participantPermission - 1;
    if (v16 >= 3)
    {
      v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_participantPermission);
    }

    else
    {
      v17 = off_27854CCA0[v16];
    }

    objc_msgSend_setObject_forKey_(v6, v5, v17, @"participantPermission");

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  v18 = self->_participantState - 1;
  if (v18 >= 4)
  {
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_participantState);
  }

  else
  {
    v19 = off_27854CCB8[v18];
  }

  objc_msgSend_setObject_forKey_(v6, v5, v19, @"participantState");

  if ((*&self->_has & 4) != 0)
  {
LABEL_21:
    v20 = self->_participantType - 1;
    if (v20 >= 4)
    {
      v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_participantType);
    }

    else
    {
      v21 = off_27854CCD8[v20];
    }

    objc_msgSend_setObject_forKey_(v6, v5, v21, @"participantType");
  }

LABEL_25:
  rootRecordType = self->_rootRecordType;
  if (rootRecordType)
  {
    v23 = objc_msgSend_dictionaryRepresentation(rootRecordType, v5, protectedFullToken);
    objc_msgSend_setObject_forKey_(v6, v24, v23, @"rootRecordType");
  }

  signedCryptoRequirements = self->_signedCryptoRequirements;
  if (signedCryptoRequirements)
  {
    v26 = objc_msgSend_dictionaryRepresentation(signedCryptoRequirements, v5, protectedFullToken);
    objc_msgSend_setObject_forKey_(v6, v27, v26, @"signedCryptoRequirements");
  }

  if ((*&self->_has & 8) != 0)
  {
    v28 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_denyAccessRequests);
    objc_msgSend_setObject_forKey_(v6, v29, v28, @"denyAccessRequests");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_routingKey)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_protectedFullToken)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (self->_ownerParticipant)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_callerParticipant)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  has = self->_has;
  if (has)
  {
    participantPermission = self->_participantPermission;
    PBDataWriterWriteInt32Field();
    v4 = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  participantState = self->_participantState;
  PBDataWriterWriteInt32Field();
  v4 = v10;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    participantType = self->_participantType;
    PBDataWriterWriteInt32Field();
    v4 = v10;
  }

LABEL_13:
  if (self->_rootRecordType)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_signedCryptoRequirements)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    denyAccessRequests = self->_denyAccessRequests;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  routingKey = self->_routingKey;
  v13 = v4;
  if (routingKey)
  {
    objc_msgSend_setRoutingKey_(v4, v5, routingKey);
    v4 = v13;
  }

  protectedFullToken = self->_protectedFullToken;
  if (protectedFullToken)
  {
    objc_msgSend_setProtectedFullToken_(v13, v5, protectedFullToken);
    v4 = v13;
  }

  ownerParticipant = self->_ownerParticipant;
  if (ownerParticipant)
  {
    objc_msgSend_setOwnerParticipant_(v13, v5, ownerParticipant);
    v4 = v13;
  }

  callerParticipant = self->_callerParticipant;
  if (callerParticipant)
  {
    objc_msgSend_setCallerParticipant_(v13, v5, callerParticipant);
    v4 = v13;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 6) = self->_participantPermission;
    *(v4 + 76) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  *(v4 + 7) = self->_participantState;
  *(v4 + 76) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    *(v4 + 8) = self->_participantType;
    *(v4 + 76) |= 4u;
  }

LABEL_13:
  rootRecordType = self->_rootRecordType;
  if (rootRecordType)
  {
    objc_msgSend_setRootRecordType_(v13, v5, rootRecordType);
    v4 = v13;
  }

  signedCryptoRequirements = self->_signedCryptoRequirements;
  if (signedCryptoRequirements)
  {
    objc_msgSend_setSignedCryptoRequirements_(v13, v5, signedCryptoRequirements);
    v4 = v13;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 72) = self->_denyAccessRequests;
    *(v4 + 76) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_routingKey, v11, a3);
  v13 = *(v10 + 56);
  *(v10 + 56) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_protectedFullToken, v14, a3);
  v16 = *(v10 + 40);
  *(v10 + 40) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_ownerParticipant, v17, a3);
  v19 = *(v10 + 16);
  *(v10 + 16) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_callerParticipant, v20, a3);
  v22 = *(v10 + 8);
  *(v10 + 8) = v21;

  has = self->_has;
  if (has)
  {
    *(v10 + 24) = self->_participantPermission;
    *(v10 + 76) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v10 + 28) = self->_participantState;
  *(v10 + 76) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v10 + 32) = self->_participantType;
    *(v10 + 76) |= 4u;
  }

LABEL_5:
  v25 = objc_msgSend_copyWithZone_(self->_rootRecordType, v23, a3);
  v26 = *(v10 + 48);
  *(v10 + 48) = v25;

  v28 = objc_msgSend_copyWithZone_(self->_signedCryptoRequirements, v27, a3);
  v29 = *(v10 + 64);
  *(v10 + 64) = v28;

  if ((*&self->_has & 8) != 0)
  {
    *(v10 + 72) = self->_denyAccessRequests;
    *(v10 + 76) |= 8u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_31;
  }

  routingKey = self->_routingKey;
  v9 = v4[7];
  if (routingKey | v9)
  {
    if (!objc_msgSend_isEqual_(routingKey, v7, v9))
    {
      goto LABEL_31;
    }
  }

  protectedFullToken = self->_protectedFullToken;
  v11 = v4[5];
  if (protectedFullToken | v11)
  {
    if (!objc_msgSend_isEqual_(protectedFullToken, v7, v11))
    {
      goto LABEL_31;
    }
  }

  ownerParticipant = self->_ownerParticipant;
  v13 = v4[2];
  if (ownerParticipant | v13)
  {
    if (!objc_msgSend_isEqual_(ownerParticipant, v7, v13))
    {
      goto LABEL_31;
    }
  }

  callerParticipant = self->_callerParticipant;
  v15 = v4[1];
  if (callerParticipant | v15)
  {
    if (!objc_msgSend_isEqual_(callerParticipant, v7, v15))
    {
      goto LABEL_31;
    }
  }

  v16 = *(v4 + 76);
  if (*&self->_has)
  {
    if ((*(v4 + 76) & 1) == 0 || self->_participantPermission != *(v4 + 6))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 76))
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 76) & 2) == 0 || self->_participantState != *(v4 + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 76) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 76) & 4) == 0 || self->_participantType != *(v4 + 8))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 76) & 4) != 0)
  {
    goto LABEL_31;
  }

  rootRecordType = self->_rootRecordType;
  v18 = v4[6];
  if (rootRecordType | v18 && !objc_msgSend_isEqual_(rootRecordType, v7, v18))
  {
    goto LABEL_31;
  }

  signedCryptoRequirements = self->_signedCryptoRequirements;
  v20 = v4[8];
  if (signedCryptoRequirements | v20)
  {
    if (!objc_msgSend_isEqual_(signedCryptoRequirements, v7, v20))
    {
      goto LABEL_31;
    }
  }

  v21 = (*(v4 + 76) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 76) & 8) == 0)
    {
LABEL_31:
      v21 = 0;
      goto LABEL_32;
    }

    if (self->_denyAccessRequests)
    {
      if ((v4[9] & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (*(v4 + 72))
    {
      goto LABEL_31;
    }

    v21 = 1;
  }

LABEL_32:

  return v21;
}

- (unint64_t)hash
{
  v24 = objc_msgSend_hash(self->_routingKey, a2, v2);
  v6 = objc_msgSend_hash(self->_protectedFullToken, v4, v5);
  v9 = objc_msgSend_hash(self->_ownerParticipant, v7, v8);
  v14 = objc_msgSend_hash(self->_callerParticipant, v10, v11);
  if ((*&self->_has & 1) == 0)
  {
    v15 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v15 = 2654435761 * self->_participantPermission;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = 2654435761 * self->_participantState;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v17 = 2654435761 * self->_participantType;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  v18 = objc_msgSend_hash(self->_rootRecordType, v12, v13);
  v21 = objc_msgSend_hash(self->_signedCryptoRequirements, v19, v20);
  if ((*&self->_has & 8) != 0)
  {
    v22 = 2654435761 * self->_denyAccessRequests;
  }

  else
  {
    v22 = 0;
  }

  return v6 ^ v24 ^ v9 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v21 ^ v22;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 7);
  v16 = v4;
  if (v5)
  {
    objc_msgSend_setRoutingKey_(self, v4, v5);
    v4 = v16;
  }

  v6 = *(v4 + 5);
  if (v6)
  {
    objc_msgSend_setProtectedFullToken_(self, v4, v6);
    v4 = v16;
  }

  ownerParticipant = self->_ownerParticipant;
  v8 = *(v4 + 2);
  if (ownerParticipant)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    objc_msgSend_mergeFrom_(ownerParticipant, v4, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    objc_msgSend_setOwnerParticipant_(self, v4, v8);
  }

  v4 = v16;
LABEL_11:
  callerParticipant = self->_callerParticipant;
  v10 = *(v4 + 1);
  if (callerParticipant)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    objc_msgSend_mergeFrom_(callerParticipant, v4, v10);
  }

  else
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    objc_msgSend_setCallerParticipant_(self, v4, v10);
  }

  v4 = v16;
LABEL_17:
  v11 = *(v4 + 76);
  if (v11)
  {
    self->_participantPermission = *(v4 + 6);
    *&self->_has |= 1u;
    v11 = *(v4 + 76);
    if ((v11 & 2) == 0)
    {
LABEL_19:
      if ((v11 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((*(v4 + 76) & 2) == 0)
  {
    goto LABEL_19;
  }

  self->_participantState = *(v4 + 7);
  *&self->_has |= 2u;
  if ((*(v4 + 76) & 4) != 0)
  {
LABEL_20:
    self->_participantType = *(v4 + 8);
    *&self->_has |= 4u;
  }

LABEL_21:
  rootRecordType = self->_rootRecordType;
  v13 = *(v4 + 6);
  if (rootRecordType)
  {
    if (!v13)
    {
      goto LABEL_30;
    }

    objc_msgSend_mergeFrom_(rootRecordType, v4, v13);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_30;
    }

    objc_msgSend_setRootRecordType_(self, v4, v13);
  }

  v4 = v16;
LABEL_30:
  signedCryptoRequirements = self->_signedCryptoRequirements;
  v15 = *(v4 + 8);
  if (signedCryptoRequirements)
  {
    if (!v15)
    {
      goto LABEL_36;
    }

    objc_msgSend_mergeFrom_(signedCryptoRequirements, v4, v15);
  }

  else
  {
    if (!v15)
    {
      goto LABEL_36;
    }

    objc_msgSend_setSignedCryptoRequirements_(self, v4, v15);
  }

  v4 = v16;
LABEL_36:
  if ((*(v4 + 76) & 8) != 0)
  {
    self->_denyAccessRequests = *(v4 + 72);
    *&self->_has |= 8u;
  }

  MEMORY[0x2821F96F8]();
}

@end