@interface CKDPResponseOperationResultErrorServer
- (BOOL)isEqual:(id)equal;
- (id)_typeCKLogValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)string;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPResponseOperationResultErrorServer

- (id)_typeCKLogValue
{
  v3 = objc_msgSend_type(self, a2, v2);
  if (v3 <= 7)
  {
    if (v3 > 3)
    {
      switch(v3)
      {
        case 4:
          v5 = @"containerUnavailable";
          goto LABEL_31;
        case 6:
          v5 = @"mescalSignatureParseError";
          goto LABEL_31;
        case 7:
          v5 = @"zoneBusy";
          goto LABEL_31;
      }
    }

    else
    {
      switch(v3)
      {
        case 1:
          v5 = @"unknown";
          goto LABEL_31;
        case 2:
          v5 = @"overloaded";
          goto LABEL_31;
        case 3:
          v5 = @"notFound";
          goto LABEL_31;
      }
    }

    goto LABEL_30;
  }

  if (v3 <= 200001)
  {
    switch(v3)
    {
      case 8:
        v5 = @"zoneUnavailable";
        goto LABEL_31;
      case 9:
        v5 = @"transactionTimeout";
        goto LABEL_31;
      case 0x30D41:
        v5 = @"partitionLookupFailed";
        goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v3 > 200003)
  {
    if (v3 == 200004)
    {
      v5 = @"userAssignmentLocked";
      goto LABEL_31;
    }

    if (v3 == 200005)
    {
      v5 = @"quotaServiceUnavailable";
      goto LABEL_31;
    }

LABEL_30:
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", v3);
    goto LABEL_31;
  }

  if (v3 == 200002)
  {
    v5 = @"timeoutOnInternalBackends";
  }

  else
  {
    v5 = @"solrError";
  }

LABEL_31:

  return v5;
}

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (id)typeAsString:(int)string
{
  if (string <= 7)
  {
    if (string > 3)
    {
      switch(string)
      {
        case 4:
          v4 = @"containerUnavailable";

          return v4;
        case 6:
          v4 = @"mescalSignatureParseError";

          return v4;
        case 7:
          v4 = @"zoneBusy";

          return v4;
      }
    }

    else
    {
      switch(string)
      {
        case 1:
          v4 = @"unknown";

          return v4;
        case 2:
          v4 = @"overloaded";

          return v4;
        case 3:
          v4 = @"notFound";

          return v4;
      }
    }

LABEL_56:
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);

    return v4;
  }

  if (string <= 200001)
  {
    switch(string)
    {
      case 8:
        v4 = @"zoneUnavailable";

        return v4;
      case 9:
        v4 = @"transactionTimeout";

        return v4;
      case 200001:
        v4 = @"partitionLookupFailed";

        return v4;
    }

    goto LABEL_56;
  }

  if (string <= 200003)
  {
    if (string == 200002)
    {
      v4 = @"timeoutOnInternalBackends";
    }

    else
    {
      v4 = @"solrError";
    }

    return v4;
  }

  if (string != 200004)
  {
    if (string == 200005)
    {
      v4 = @"quotaServiceUnavailable";

      return v4;
    }

    goto LABEL_56;
  }

  v4 = @"userAssignmentLocked";

  return v4;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"unknown"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"overloaded"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"notFound"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v8, @"containerUnavailable"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v9, @"mescalSignatureParseError"))
  {
    v6 = 6;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v10, @"zoneBusy"))
  {
    v6 = 7;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v11, @"zoneUnavailable"))
  {
    v6 = 8;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v12, @"transactionTimeout"))
  {
    v6 = 9;
  }

  else
  {
    v6 = 200001;
    if ((objc_msgSend_isEqualToString_(typeCopy, v13, @"partitionLookupFailed") & 1) == 0)
    {
      if (objc_msgSend_isEqualToString_(typeCopy, v14, @"timeoutOnInternalBackends"))
      {
        v6 = 200002;
      }

      else if (objc_msgSend_isEqualToString_(typeCopy, v15, @"solrError"))
      {
        v6 = 200003;
      }

      else if (objc_msgSend_isEqualToString_(typeCopy, v16, @"userAssignmentLocked"))
      {
        v6 = 200004;
      }

      else if (objc_msgSend_isEqualToString_(typeCopy, v17, @"quotaServiceUnavailable"))
      {
        v6 = 200005;
      }

      else
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPResponseOperationResultErrorServer;
  v4 = [(CKDPResponseOperationResultErrorServer *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    type = self->_type;
    if (type <= 7)
    {
      if (type > 3)
      {
        if (type == 4)
        {
          v7 = @"containerUnavailable";
          objc_msgSend_setObject_forKey_(v5, v4, @"containerUnavailable", @"type");
          goto LABEL_32;
        }

        if (type == 6)
        {
          v7 = @"mescalSignatureParseError";
          objc_msgSend_setObject_forKey_(v5, v4, @"mescalSignatureParseError", @"type");
          goto LABEL_32;
        }

        if (type != 7)
        {
          goto LABEL_31;
        }

        v7 = @"zoneBusy";
        objc_msgSend_setObject_forKey_(v5, v4, @"zoneBusy", @"type");
      }

      else
      {
        if (type == 1)
        {
          v7 = @"unknown";
          objc_msgSend_setObject_forKey_(v5, v4, @"unknown", @"type");
          goto LABEL_32;
        }

        if (type == 2)
        {
          v7 = @"overloaded";
          objc_msgSend_setObject_forKey_(v5, v4, @"overloaded", @"type");
          goto LABEL_32;
        }

        if (type != 3)
        {
          goto LABEL_31;
        }

        v7 = @"notFound";
        objc_msgSend_setObject_forKey_(v5, v4, @"notFound", @"type");
      }
    }

    else
    {
      if (type > 200001)
      {
        if (type <= 200003)
        {
          if (type == 200002)
          {
            v7 = @"timeoutOnInternalBackends";
            objc_msgSend_setObject_forKey_(v5, v4, @"timeoutOnInternalBackends", @"type");
          }

          else
          {
            v7 = @"solrError";
            objc_msgSend_setObject_forKey_(v5, v4, @"solrError", @"type");
          }

          goto LABEL_32;
        }

        if (type == 200004)
        {
          v7 = @"userAssignmentLocked";
          objc_msgSend_setObject_forKey_(v5, v4, @"userAssignmentLocked", @"type");
          goto LABEL_32;
        }

        if (type == 200005)
        {
          v7 = @"quotaServiceUnavailable";
          objc_msgSend_setObject_forKey_(v5, v4, @"quotaServiceUnavailable", @"type");
          goto LABEL_32;
        }

LABEL_31:
        v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_type);
        objc_msgSend_setObject_forKey_(v5, v8, v7, @"type");
        goto LABEL_32;
      }

      if (type == 8)
      {
        v7 = @"zoneUnavailable";
        objc_msgSend_setObject_forKey_(v5, v4, @"zoneUnavailable", @"type");
        goto LABEL_32;
      }

      if (type == 9)
      {
        v7 = @"transactionTimeout";
        objc_msgSend_setObject_forKey_(v5, v4, @"transactionTimeout", @"type");
        goto LABEL_32;
      }

      if (type != 200001)
      {
        goto LABEL_31;
      }

      v7 = @"partitionLookupFailed";
      objc_msgSend_setObject_forKey_(v5, v4, @"partitionLookupFailed", @"type");
    }

LABEL_32:
  }

  return v5;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_type;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  result = objc_msgSend_init(v7, v8, v9);
  if (*&self->_has)
  {
    *(result + 2) = self->_type;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_6;
  }

  v7 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_type == *(equalCopy + 2))
    {
      v7 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_type = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end