@interface SecureBackupEscrowReason
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)reasonAsString:(int)a3;
- (int)StringAsReason:(id)a3;
- (int)reason;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SecureBackupEscrowReason

- (int)reason
{
  if (*&self->_has)
  {
    return self->_reason;
  }

  else
  {
    return 0;
  }
}

- (id)reasonAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"FEDERATION_MOVE";
    }

    else
    {
      v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
    }
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  return v4;
}

- (int)StringAsReason:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"UNKNOWN"))
  {
    isEqualToString = 0;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v3, v5, @"FEDERATION_MOVE");
  }

  return isEqualToString;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = SecureBackupEscrowReason;
  v4 = [(SecureBackupEscrowReason *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason)
    {
      if (reason == 1)
      {
        v7 = @"FEDERATION_MOVE";
        objc_msgSend_setObject_forKey_(v5, v4, @"FEDERATION_MOVE", @"reason");
      }

      else
      {
        v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_reason);
        objc_msgSend_setObject_forKey_(v5, v8, v7, @"reason");
      }
    }

    else
    {
      v7 = @"UNKNOWN";
      objc_msgSend_setObject_forKey_(v5, v4, @"UNKNOWN", @"reason");
    }
  }

  expectedFederationID = self->_expectedFederationID;
  if (expectedFederationID)
  {
    objc_msgSend_setObject_forKey_(v5, v4, expectedFederationID, @"expectedFederationID");
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    reason = self->_reason;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_expectedFederationID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_reason;
    *(v4 + 20) |= 1u;
  }

  expectedFederationID = self->_expectedFederationID;
  if (expectedFederationID)
  {
    v7 = v4;
    objc_msgSend_setExpectedFederationID_(v4, v5, expectedFederationID);
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 16) = self->_reason;
    *(v10 + 20) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_expectedFederationID, v11, a3);
  v14 = v12[1];
  v12[1] = v13;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_9;
  }

  v8 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_reason != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    isEqual = 0;
    goto LABEL_10;
  }

  expectedFederationID = self->_expectedFederationID;
  v10 = v4[1];
  if (expectedFederationID | v10)
  {
    isEqual = objc_msgSend_isEqual_(expectedFederationID, v7, v10);
  }

  else
  {
    isEqual = 1;
  }

LABEL_10:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_reason;
  }

  else
  {
    v3 = 0;
  }

  return objc_msgSend_hash(self->_expectedFederationID, a2, v2) ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 20))
  {
    self->_reason = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v6 = *(v4 + 1);
  if (v6)
  {
    v7 = v4;
    objc_msgSend_setExpectedFederationID_(self, v5, v6);
    v4 = v7;
  }
}

@end