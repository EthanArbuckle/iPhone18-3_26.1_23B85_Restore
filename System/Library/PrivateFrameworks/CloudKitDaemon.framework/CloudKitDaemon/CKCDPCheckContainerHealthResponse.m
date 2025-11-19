@interface CKCDPCheckContainerHealthResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CKCDPCheckContainerHealthResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPCheckContainerHealthResponse;
  v4 = [(CKCDPCheckContainerHealthResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (BOOL)readFrom:(id)a3
{
  while (1)
  {
    v4 = objc_msgSend_position(a3, a2, a3);
    if (v4 >= objc_msgSend_length(a3, v5, v6) || (objc_msgSend_hasError(a3, v7, v8) & 1) != 0)
    {
      break;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v32 = 0;
      v12 = objc_msgSend_position(a3, v7, v8) + 1;
      if (v12 >= objc_msgSend_position(a3, v13, v14) && (v17 = objc_msgSend_position(a3, v15, v16) + 1, v17 <= objc_msgSend_length(a3, v18, v19)))
      {
        v20 = objc_msgSend_data(a3, v15, v16);
        v23 = objc_msgSend_position(a3, v21, v22);
        objc_msgSend_getBytes_range_(v20, v24, &v32, v23, 1);

        v27 = objc_msgSend_position(a3, v25, v26);
        objc_msgSend_setPosition_(a3, v28, v27 + 1);
      }

      else
      {
        objc_msgSend__setError(a3, v15, v16);
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

    v30 = objc_msgSend_hasError(a3, v7, v8) ? 0 : v11;
LABEL_15:
    if (objc_msgSend_hasError(a3, v7, v8))
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

  return objc_msgSend_hasError(a3, v7, v8) ^ 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v6 = objc_msgSend_allocWithZone_(v4, v5, a3);

  return objc_msgSend_init(v6, v7, v8);
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(v3, v5, v4);

  return isMemberOfClass;
}

@end