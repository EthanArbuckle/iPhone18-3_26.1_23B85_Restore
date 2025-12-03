@interface CKDPQuerySort
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)orderAsString:(int)string;
- (int)StringAsOrder:(id)order;
- (int)order;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPQuerySort

- (int)order
{
  if (*&self->_has)
  {
    return self->_order;
  }

  else
  {
    return 1;
  }
}

- (id)orderAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"ascending";
  }

  else if (string == 2)
  {
    v4 = @"descending";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  return v4;
}

- (int)StringAsOrder:(id)order
{
  orderCopy = order;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(orderCopy, v4, @"ascending") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(orderCopy, v5, @"descending"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPQuerySort;
  v4 = [(CKDPQuerySort *)&v11 description];
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

  if (*&self->_has)
  {
    order = self->_order;
    if (order == 1)
    {
      v11 = @"ascending";
      objc_msgSend_setObject_forKey_(v6, v4, @"ascending", @"order");
    }

    else if (order == 2)
    {
      v11 = @"descending";
      objc_msgSend_setObject_forKey_(v6, v4, @"descending", @"order");
    }

    else
    {
      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_order);
      objc_msgSend_setObject_forKey_(v6, v12, v11, @"order");
    }
  }

  coordinate = self->_coordinate;
  if (coordinate)
  {
    v14 = objc_msgSend_dictionaryRepresentation(coordinate, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"coordinate");
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

  if (*&self->_has)
  {
    order = self->_order;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_coordinate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  fieldName = self->_fieldName;
  v8 = toCopy;
  if (fieldName)
  {
    objc_msgSend_setFieldName_(toCopy, v5, fieldName);
    toCopy = v8;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_order;
    *(toCopy + 28) |= 1u;
  }

  coordinate = self->_coordinate;
  if (coordinate)
  {
    objc_msgSend_setCoordinate_(v8, v5, coordinate);
    toCopy = v8;
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

  if (*&self->_has)
  {
    *(v10 + 24) = self->_order;
    *(v10 + 28) |= 1u;
  }

  v15 = objc_msgSend_copyWithZone_(self->_coordinate, v14, zone);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_11;
  }

  fieldName = self->_fieldName;
  v9 = equalCopy[2];
  if (fieldName | v9)
  {
    if (!objc_msgSend_isEqual_(fieldName, v7, v9))
    {
      goto LABEL_11;
    }
  }

  v10 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_order != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    isEqual = 0;
    goto LABEL_12;
  }

  coordinate = self->_coordinate;
  v12 = equalCopy[1];
  if (coordinate | v12)
  {
    isEqual = objc_msgSend_isEqual_(coordinate, v7, v12);
  }

  else
  {
    isEqual = 1;
  }

LABEL_12:

  return isEqual;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_fieldName, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_order;
  }

  else
  {
    v7 = 0;
  }

  return v7 ^ objc_msgSend_hash(self->_coordinate, v4, v5) ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  fieldName = self->_fieldName;
  v6 = *(fromCopy + 2);
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  if (*(fromCopy + 28))
  {
    self->_order = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  coordinate = self->_coordinate;
  v8 = *(fromCopy + 1);
  if (coordinate)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(coordinate, fromCopy, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setCoordinate_(self, fromCopy, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end