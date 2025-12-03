@interface CKCDPStopAllContainerRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CKCDPStopAllContainerRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPStopAllContainerRequest;
  v4 = [(CKCDPStopAllContainerRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (BOOL)readFrom:(id)from
{
  while (1)
  {
    v4 = objc_msgSend_position(from, a2, from);
    if (v4 >= objc_msgSend_length(from, v5, v6) || (objc_msgSend_hasError(from, v7, v8) & 1) != 0)
    {
      break;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v32 = 0;
      v12 = objc_msgSend_position(from, v7, v8) + 1;
      if (v12 >= objc_msgSend_position(from, v13, v14) && (v17 = objc_msgSend_position(from, v15, v16) + 1, v17 <= objc_msgSend_length(from, v18, v19)))
      {
        v20 = objc_msgSend_data(from, v15, v16);
        v23 = objc_msgSend_position(from, v21, v22);
        objc_msgSend_getBytes_range_(v20, v24, &v32, v23, 1);

        v27 = objc_msgSend_position(from, v25, v26);
        objc_msgSend_setPosition_(from, v28, v27 + 1);
      }

      else
      {
        objc_msgSend__setError(from, v15, v16);
      }

      v11 |= (v32 & 0x7F) << v9;
      if ((v32 & 0x80) == 0)
      {
        break;
      }

      v9 += 7;
      if (v10++ >= 9)
      {
        v30 = 0;
        goto LABEL_15;
      }
    }

    v30 = objc_msgSend_hasError(from, v7, v8) ? 0 : v11;
LABEL_15:
    if (objc_msgSend_hasError(from, v7, v8))
    {
      break;
    }

    v8 = v30 & 7;
    if (v8 == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return objc_msgSend_hasError(from, v7, v8) ^ 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  v6 = objc_msgSend_allocWithZone_(v4, v5, zone);

  return objc_msgSend_init(v6, v7, v8);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(equalCopy, v5, v4);

  return isMemberOfClass;
}

@end