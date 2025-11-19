@interface CKDPListRange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)_CKLogToFileHandle:(id)a3 atDepth:(int)a4;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPListRange

- (void)_CKLogToFileHandle:(id)a3 atDepth:(int)a4
{
  v45 = a3;
  if (objc_msgSend_hasLeft(self, v6, v7) && objc_msgSend_hasRight(self, v8, v9))
  {
    v11 = objc_msgSend_left(self, v8, v10);
    v14 = objc_msgSend_index(v11, v12, v13);
    v17 = objc_msgSend_right(self, v15, v16);
    if (v14 == objc_msgSend_index(v17, v18, v19))
    {
      v22 = objc_msgSend_left(self, v20, v21);
      isReversed = objc_msgSend_isReversed(v22, v23, v24);
      v28 = objc_msgSend_right(self, v26, v27);
      v31 = objc_msgSend_isReversed(v28, v29, v30);

      if (isReversed == v31)
      {
        v33 = objc_msgSend_left(self, v8, v32);
        objc_msgSend__CKLogToFileHandle_atDepth_(v33, v34, v45, (a4 + 1));

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  if (qword_280D58340 != -1)
  {
    dispatch_once(&qword_280D58340, &unk_28385D280);
  }

  objc_msgSend_writeData_(v45, v8, qword_280D58338);
  v37 = objc_msgSend_left(self, v35, v36);
  objc_msgSend__CKLogToFileHandle_atDepth_(v37, v38, v45, (a4 + 1));

  if (qword_280D58350 != -1)
  {
    dispatch_once(&qword_280D58350, &unk_28385D2A0);
  }

  objc_msgSend_writeData_(v45, v39, qword_280D58348);
  v42 = objc_msgSend_right(self, v40, v41);
  objc_msgSend__CKLogToFileHandle_atDepth_(v42, v43, v45, (a4 + 1));

  if (qword_280D58360 != -1)
  {
    dispatch_once(&qword_280D58360, &unk_28385D2C0);
  }

  objc_msgSend_writeData_(v45, v44, qword_280D58358);
LABEL_14:
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPListRange;
  v4 = [(CKDPListRange *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  left = self->_left;
  if (left)
  {
    v8 = objc_msgSend_dictionaryRepresentation(left, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"left");
  }

  right = self->_right;
  if (right)
  {
    v11 = objc_msgSend_dictionaryRepresentation(right, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"right");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_left)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_right)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  left = self->_left;
  v8 = v4;
  if (left)
  {
    objc_msgSend_setLeft_(v4, v5, left);
    v4 = v8;
  }

  right = self->_right;
  if (right)
  {
    objc_msgSend_setRight_(v8, v5, right);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_left, v11, a3);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_right, v14, a3);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((left = self->_left, v9 = v4[1], !(left | v9)) || objc_msgSend_isEqual_(left, v7, v9)))
  {
    right = self->_right;
    v11 = v4[2];
    if (right | v11)
    {
      isEqual = objc_msgSend_isEqual_(right, v7, v11);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  left = self->_left;
  v6 = v4[1];
  v9 = v4;
  if (left)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(left, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setLeft_(self, v4, v6);
  }

  v4 = v9;
LABEL_7:
  right = self->_right;
  v8 = v4[2];
  if (right)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(right, v4, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setRight_(self, v4, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end