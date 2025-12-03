@interface CKDPStreamingAssetIdentifier
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_owner)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_fileSignature)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_referenceSignature)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  owner = self->_owner;
  v9 = toCopy;
  if (owner)
  {
    objc_msgSend_setOwner_(toCopy, v5, owner);
    toCopy = v9;
  }

  fileSignature = self->_fileSignature;
  if (fileSignature)
  {
    objc_msgSend_setFileSignature_(v9, v5, fileSignature);
    toCopy = v9;
  }

  referenceSignature = self->_referenceSignature;
  if (referenceSignature)
  {
    objc_msgSend_setReferenceSignature_(v9, v5, referenceSignature);
    toCopy = v9;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_owner, v11, zone);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_fileSignature, v14, zone);
  v16 = v10[1];
  v10[1] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_referenceSignature, v17, zone);
  v19 = v10[3];
  v10[3] = v18;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((owner = self->_owner, v9 = equalCopy[2], !(owner | v9)) || objc_msgSend_isEqual_(owner, v7, v9)) && ((fileSignature = self->_fileSignature, v11 = equalCopy[1], !(fileSignature | v11)) || objc_msgSend_isEqual_(fileSignature, v7, v11)))
  {
    referenceSignature = self->_referenceSignature;
    v13 = equalCopy[3];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (v6)
  {
    objc_msgSend_setOwner_(self, v5, v6);
    fromCopy = v9;
  }

  v7 = fromCopy[1];
  if (v7)
  {
    objc_msgSend_setFileSignature_(self, v5, v7);
    fromCopy = v9;
  }

  v8 = fromCopy[3];
  if (v8)
  {
    objc_msgSend_setReferenceSignature_(self, v5, v8);
    fromCopy = v9;
  }
}

@end