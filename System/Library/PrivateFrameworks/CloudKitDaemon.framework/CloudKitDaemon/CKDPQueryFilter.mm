@interface CKDPQueryFilter
- (BOOL)isEqual:(id)equal;
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

@implementation CKDPQueryFilter

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
  if ((string - 1) >= 0x1E)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854C950[string - 1];
  }

  return v4;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"equals"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"notEquals"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"in"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v8, @"notIn"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v9, @"lessThan"))
  {
    v6 = 5;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v10, @"lessThanOrEquals"))
  {
    v6 = 6;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v11, @"greaterThan"))
  {
    v6 = 7;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v12, @"greaterThanOrEquals"))
  {
    v6 = 8;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v13, @"near"))
  {
    v6 = 9;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v14, @"containsAllTokens"))
  {
    v6 = 10;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v15, @"containsAnyTokens"))
  {
    v6 = 11;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v16, @"listContains"))
  {
    v6 = 12;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v17, @"listNotContains"))
  {
    v6 = 13;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v18, @"listContainsAny"))
  {
    v6 = 14;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v19, @"listNotContainsAny"))
  {
    v6 = 15;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v20, @"beginsWith"))
  {
    v6 = 16;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v21, @"notBeginsWith"))
  {
    v6 = 17;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v22, @"listMemberBeginsWith"))
  {
    v6 = 18;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v23, @"notListMemberBeginsWith"))
  {
    v6 = 19;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v24, @"listContainsAll"))
  {
    v6 = 20;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v25, @"listNotContainsAll"))
  {
    v6 = 21;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v26, @"isNull"))
  {
    v6 = 22;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v27, @"notNull"))
  {
    v6 = 23;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v28, @"notEqualsOrNull"))
  {
    v6 = 24;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v29, @"notInOrNull"))
  {
    v6 = 25;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v30, @"listNotContainsOrNull"))
  {
    v6 = 26;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v31, @"listNotContainsAnyOrNull"))
  {
    v6 = 27;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v32, @"notBeginsWithOrNull"))
  {
    v6 = 28;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v33, @"notListMemberBeginsWithOrNull"))
  {
    v6 = 29;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v34, @"listNotContainsAllOrNull"))
  {
    v6 = 30;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPQueryFilter;
  v4 = [(CKDPQueryFilter *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  fieldName = self->_fieldName;
  if (fieldName)
  {
    v8 = objc_msgSend_dictionaryRepresentation(fieldName, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"fieldName");
  }

  fieldValue = self->_fieldValue;
  if (fieldValue)
  {
    v11 = objc_msgSend_dictionaryRepresentation(fieldValue, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"fieldValue");
  }

  bounds = self->_bounds;
  if (bounds)
  {
    v14 = objc_msgSend_dictionaryRepresentation(bounds, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"bounds");
  }

  if (*&self->_has)
  {
    v16 = self->_type - 1;
    if (v16 >= 0x1E)
    {
      v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_type);
    }

    else
    {
      v17 = off_27854C950[v16];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v17, @"type");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_fieldName)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_fieldValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_bounds)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  fieldName = self->_fieldName;
  v9 = toCopy;
  if (fieldName)
  {
    objc_msgSend_setFieldName_(toCopy, v5, fieldName);
    toCopy = v9;
  }

  fieldValue = self->_fieldValue;
  if (fieldValue)
  {
    objc_msgSend_setFieldValue_(v9, v5, fieldValue);
    toCopy = v9;
  }

  bounds = self->_bounds;
  if (bounds)
  {
    objc_msgSend_setBounds_(v9, v5, bounds);
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_type;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_fieldName, v11, zone);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_fieldValue, v14, zone);
  v16 = *(v10 + 24);
  *(v10 + 24) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_bounds, v17, zone);
  v19 = *(v10 + 8);
  *(v10 + 8) = v18;

  if (*&self->_has)
  {
    *(v10 + 32) = self->_type;
    *(v10 + 36) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_12;
  }

  fieldName = self->_fieldName;
  v9 = equalCopy[2];
  if (fieldName | v9)
  {
    if (!objc_msgSend_isEqual_(fieldName, v7, v9))
    {
      goto LABEL_12;
    }
  }

  fieldValue = self->_fieldValue;
  v11 = equalCopy[3];
  if (fieldValue | v11)
  {
    if (!objc_msgSend_isEqual_(fieldValue, v7, v11))
    {
      goto LABEL_12;
    }
  }

  bounds = self->_bounds;
  v13 = equalCopy[1];
  if (bounds | v13)
  {
    if (!objc_msgSend_isEqual_(bounds, v7, v13))
    {
      goto LABEL_12;
    }
  }

  v14 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) != 0 && self->_type == *(equalCopy + 8))
    {
      v14 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v14 = 0;
  }

LABEL_13:

  return v14;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_fieldName, a2, v2);
  v7 = objc_msgSend_hash(self->_fieldValue, v5, v6);
  v10 = objc_msgSend_hash(self->_bounds, v8, v9);
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_type;
  }

  else
  {
    v11 = 0;
  }

  return v7 ^ v4 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  fieldName = self->_fieldName;
  v6 = *(fromCopy + 2);
  v11 = fromCopy;
  if (fieldName)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(fieldName, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setFieldName_(self, fromCopy, v6);
  }

  fromCopy = v11;
LABEL_7:
  fieldValue = self->_fieldValue;
  v8 = *(fromCopy + 3);
  if (fieldValue)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_mergeFrom_(fieldValue, fromCopy, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_setFieldValue_(self, fromCopy, v8);
  }

  fromCopy = v11;
LABEL_13:
  bounds = self->_bounds;
  v10 = *(fromCopy + 1);
  if (bounds)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    objc_msgSend_mergeFrom_(bounds, fromCopy, v10);
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    objc_msgSend_setBounds_(self, fromCopy, v10);
  }

  fromCopy = v11;
LABEL_19:
  if (*(fromCopy + 36))
  {
    self->_type = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end