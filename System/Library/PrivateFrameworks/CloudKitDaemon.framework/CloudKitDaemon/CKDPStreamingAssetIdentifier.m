@interface CKDPStreamingAssetIdentifier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPStreamingAssetIdentifier

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPStreamingAssetIdentifier;
  v4 = [(CKDPStreamingAssetIdentifier *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  owner = self->_owner;
  if (owner)
  {
    objc_msgSend_setObject_forKey_(v4, v5, owner, @"owner");
  }

  fileSignature = self->_fileSignature;
  if (fileSignature)
  {
    objc_msgSend_setObject_forKey_(v6, v5, fileSignature, @"fileSignature");
  }

  referenceSignature = self->_referenceSignature;
  if (referenceSignature)
  {
    objc_msgSend_setObject_forKey_(v6, v5, referenceSignature, @"referenceSignature");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_owner)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_fileSignature)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_referenceSignature)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  owner = self->_owner;
  v9 = v4;
  if (owner)
  {
    objc_msgSend_setOwner_(v4, v5, owner);
    v4 = v9;
  }

  fileSignature = self->_fileSignature;
  if (fileSignature)
  {
    objc_msgSend_setFileSignature_(v9, v5, fileSignature);
    v4 = v9;
  }

  referenceSignature = self->_referenceSignature;
  if (referenceSignature)
  {
    objc_msgSend_setReferenceSignature_(v9, v5, referenceSignature);
    v4 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_owner, v11, a3);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_fileSignature, v14, a3);
  v16 = v10[1];
  v10[1] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_referenceSignature, v17, a3);
  v19 = v10[3];
  v10[3] = v18;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((owner = self->_owner, v9 = v4[2], !(owner | v9)) || objc_msgSend_isEqual_(owner, v7, v9)) && ((fileSignature = self->_fileSignature, v11 = v4[1], !(fileSignature | v11)) || objc_msgSend_isEqual_(fileSignature, v7, v11)))
  {
    referenceSignature = self->_referenceSignature;
    v13 = v4[3];
    if (referenceSignature | v13)
    {
      isEqual = objc_msgSend_isEqual_(referenceSignature, v7, v13);
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
  v4 = objc_msgSend_hash(self->_owner, a2, v2);
  v7 = objc_msgSend_hash(self->_fileSignature, v5, v6) ^ v4;
  return v7 ^ objc_msgSend_hash(self->_referenceSignature, v8, v9);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4[2];
  v9 = v4;
  if (v6)
  {
    objc_msgSend_setOwner_(self, v5, v6);
    v4 = v9;
  }

  v7 = v4[1];
  if (v7)
  {
    objc_msgSend_setFileSignature_(self, v5, v7);
    v4 = v9;
  }

  v8 = v4[3];
  if (v8)
  {
    objc_msgSend_setReferenceSignature_(self, v5, v8);
    v4 = v9;
  }
}

@end