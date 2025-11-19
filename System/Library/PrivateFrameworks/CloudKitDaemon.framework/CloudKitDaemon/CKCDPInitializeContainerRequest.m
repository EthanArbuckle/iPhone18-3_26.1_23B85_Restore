@interface CKCDPInitializeContainerRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKCDPInitializeContainerRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPInitializeContainerRequest;
  v4 = [(CKCDPInitializeContainerRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  containerName = self->_containerName;
  if (containerName)
  {
    objc_msgSend_setObject_forKey_(v4, v5, containerName, @"containerName");
  }

  path = self->_path;
  if (path)
  {
    objc_msgSend_setObject_forKey_(v6, v5, path, @"path");
  }

  environment = self->_environment;
  if (environment)
  {
    objc_msgSend_setObject_forKey_(v6, v5, environment, @"environment");
  }

  return v6;
}

- (BOOL)readFrom:(id)a3
{
  v5 = objc_msgSend_position(a3, a2, a3);
  if (v5 < objc_msgSend_length(a3, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a3, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v43 = 0;
        v13 = objc_msgSend_position(a3, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a3, v14, v15) && (v18 = objc_msgSend_position(a3, v16, v17) + 1, v18 <= objc_msgSend_length(a3, v19, v20)))
        {
          v21 = objc_msgSend_data(a3, v16, v17);
          v24 = objc_msgSend_position(a3, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a3, v26, v27);
          objc_msgSend_setPosition_(a3, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a3, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a3, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a3, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3) - 1;
      if (v32 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v33 = off_27854C7E8[v32];
        v34 = PBReaderReadString();
        v35 = *v33;
        v36 = *(&self->super.super.super.isa + v35);
        *(&self->super.super.super.isa + v35) = v34;
      }

      v39 = objc_msgSend_position(a3, v37, v38);
    }

    while (v39 < objc_msgSend_length(a3, v40, v41));
  }

  return objc_msgSend_hasError(a3, v8, v9) ^ 1;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_containerName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_path)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_environment)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  containerName = self->_containerName;
  v9 = v4;
  if (containerName)
  {
    objc_msgSend_setContainerName_(v4, v5, containerName);
    v4 = v9;
  }

  path = self->_path;
  if (path)
  {
    objc_msgSend_setPath_(v9, v5, path);
    v4 = v9;
  }

  environment = self->_environment;
  if (environment)
  {
    objc_msgSend_setEnvironment_(v9, v5, environment);
    v4 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_containerName, v11, a3);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_path, v14, a3);
  v16 = v10[3];
  v10[3] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_environment, v17, a3);
  v19 = v10[2];
  v10[2] = v18;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((containerName = self->_containerName, v9 = v4[1], !(containerName | v9)) || objc_msgSend_isEqual_(containerName, v7, v9)) && ((path = self->_path, v11 = v4[3], !(path | v11)) || objc_msgSend_isEqual_(path, v7, v11)))
  {
    environment = self->_environment;
    v13 = v4[2];
    if (environment | v13)
    {
      isEqual = objc_msgSend_isEqual_(environment, v7, v13);
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

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_containerName, a2, v2);
  v7 = objc_msgSend_hash(self->_path, v5, v6) ^ v4;
  return v7 ^ objc_msgSend_hash(self->_environment, v8, v9);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4[1];
  v9 = v4;
  if (v6)
  {
    objc_msgSend_setContainerName_(self, v5, v6);
    v4 = v9;
  }

  v7 = v4[3];
  if (v7)
  {
    objc_msgSend_setPath_(self, v5, v7);
    v4 = v9;
  }

  v8 = v4[2];
  if (v8)
  {
    objc_msgSend_setEnvironment_(self, v5, v8);
    v4 = v9;
  }
}

@end