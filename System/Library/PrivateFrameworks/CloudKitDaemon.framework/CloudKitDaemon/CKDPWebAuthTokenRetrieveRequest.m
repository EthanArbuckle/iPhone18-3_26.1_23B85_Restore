@interface CKDPWebAuthTokenRetrieveRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPWebAuthTokenRetrieveRequest

+ (id)options
{
  if (qword_280D550F0 != -1)
  {
    dispatch_once(&qword_280D550F0, &unk_28385E200);
  }

  v3 = qword_280D550E8;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPWebAuthTokenRetrieveRequest;
  v4 = [(CKDPWebAuthTokenRetrieveRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  apiToken = self->_apiToken;
  if (apiToken)
  {
    objc_msgSend_setObject_forKey_(v4, v5, apiToken, @"apiToken");
  }

  if (*&self->_has)
  {
    v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_forceFetchToken);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"forceFetchToken");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_apiToken)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    forceFetchToken = self->_forceFetchToken;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  apiToken = self->_apiToken;
  if (apiToken)
  {
    v7 = v4;
    objc_msgSend_setApiToken_(v4, v5, apiToken);
    v4 = v7;
  }

  if (*&self->_has)
  {
    v4[16] = self->_forceFetchToken;
    v4[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_apiToken, v11, a3);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if (*&self->_has)
  {
    *(v10 + 16) = self->_forceFetchToken;
    *(v10 + 20) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_6;
  }

  apiToken = self->_apiToken;
  v9 = v4[1];
  if (apiToken | v9)
  {
    if (!objc_msgSend_isEqual_(apiToken, v7, v9))
    {
      goto LABEL_6;
    }
  }

  v10 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0)
    {
LABEL_6:
      v10 = 0;
      goto LABEL_7;
    }

    if (self->_forceFetchToken)
    {
      if ((v4[2] & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_6;
    }

    v10 = 1;
  }

LABEL_7:

  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_apiToken, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_forceFetchToken;
  }

  else
  {
    v5 = 0;
  }

  return v5 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = *(v4 + 1);
  if (v6)
  {
    v7 = v4;
    objc_msgSend_setApiToken_(self, v5, v6);
    v4 = v7;
  }

  if (*(v4 + 20))
  {
    self->_forceFetchToken = *(v4 + 16);
    *&self->_has |= 1u;
  }
}

@end