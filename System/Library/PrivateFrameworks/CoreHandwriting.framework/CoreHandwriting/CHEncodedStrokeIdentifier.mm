@interface CHEncodedStrokeIdentifier
- (BOOL)isEqual:(id)equal;
- (CHEncodedStrokeIdentifier)initWithCoder:(id)coder;
- (CHEncodedStrokeIdentifier)initWithData:(id)data;
- (unint64_t)hash;
@end

@implementation CHEncodedStrokeIdentifier

- (CHEncodedStrokeIdentifier)initWithData:(id)data
{
  dataCopy = data;
  v11 = objc_msgSend_init(self, v6, v7, v8, v9, v10);
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 16), data);
    v12->_savedHash = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  if (self->_savedHash)
  {
    return self->_savedHash;
  }

  if (objc_msgSend_length(self->_encodedStrokeIdentifier, a2, v2, v3, v4, v5) < 0x51)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 80;
    do
    {
      v15 = objc_msgSend_subdataWithRange_(self->_encodedStrokeIdentifier, v8, v14 - 80, 80, v11, v12);
      v13 ^= objc_msgSend_hash(v15, v16, v17, v18, v19, v20);

      v14 += 80;
    }

    while (v14 < objc_msgSend_length(self->_encodedStrokeIdentifier, v21, v22, v23, v24, v25));
  }

  v31 = objc_msgSend_length(self->_encodedStrokeIdentifier, v8, v9, v10, v11, v12) % 0x50uLL;
  if (v31)
  {
    v32 = objc_msgSend_length(self->_encodedStrokeIdentifier, v26, v27, v28, v29, v30);
    v36 = objc_msgSend_subdataWithRange_(self->_encodedStrokeIdentifier, v33, v32 - v31, v31, v34, v35);
    v13 ^= objc_msgSend_hash(v36, v37, v38, v39, v40, v41);
  }

  self->_savedHash = v13;
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v11 = v5;
    if (self)
    {
      if (self == v5)
      {
        LOBYTE(self) = 1;
      }

      else
      {
        encodedStrokeIdentifier = self->_encodedStrokeIdentifier;
        v18 = objc_msgSend_encodedStrokeIdentifier(v5, v6, v7, v8, v9, v10);
        if (encodedStrokeIdentifier == v18)
        {
          LOBYTE(self) = 1;
        }

        else
        {
          self = self->_encodedStrokeIdentifier;
          v19 = objc_msgSend_encodedStrokeIdentifier(v11, v13, v14, v15, v16, v17);
          LOBYTE(self) = objc_msgSend_isEqual_(self, v20, v19, v21, v22, v23);
        }
      }
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (CHEncodedStrokeIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"encodedStrokeIdentifier", v7, v8);

  v14 = objc_msgSend_initWithData_(self, v10, v9, v11, v12, v13);
  return v14;
}

@end