@interface HDAttachment
- (BOOL)isEqual:(id)equal;
- (HDAttachment)initWithCoder:(id)coder;
- (HDAttachment)initWithIdentifier:(id)identifier name:(id)name type:(id)type hash:(id)hash size:(unint64_t)size creationDate:(id)date metadata:(id)metadata encryptionKey:(id)self0;
- (id)hkAttachment;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDAttachment

- (HDAttachment)initWithIdentifier:(id)identifier name:(id)name type:(id)type hash:(id)hash size:(unint64_t)size creationDate:(id)date metadata:(id)metadata encryptionKey:(id)self0
{
  identifierCopy = identifier;
  nameCopy = name;
  typeCopy = type;
  hashCopy = hash;
  dateCopy = date;
  metadataCopy = metadata;
  keyCopy = key;
  v31.receiver = self;
  v31.super_class = HDAttachment;
  v20 = [(HDAttachment *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, identifier);
    objc_storeStrong(&v21->_name, name);
    objc_storeStrong(&v21->_type, type);
    objc_storeStrong(&v21->_fileHash, hash);
    v21->_size = size;
    objc_storeStrong(&v21->_creationDate, date);
    v22 = [metadataCopy copy];
    metadata = v21->_metadata;
    v21->_metadata = v22;

    v24 = [keyCopy copy];
    encryptionKey = v21->_encryptionKey;
    v21->_encryptionKey = v24;
  }

  return v21;
}

- (id)hkAttachment
{
  v2 = [objc_alloc(MEMORY[0x277CCD000]) initWithIdentifier:self->_identifier name:self->_name typeIdentifier:self->_type size:self->_size creationDate:self->_creationDate metadata:self->_metadata];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      identifier = self->_identifier;
      identifier = [(HDAttachment *)v6 identifier];
      if (![(NSUUID *)identifier isEqual:identifier])
      {
        v14 = 0;
LABEL_56:

        goto LABEL_57;
      }

      name = self->_name;
      name = [(HDAttachment *)v6 name];
      if (name != name)
      {
        name2 = [(HDAttachment *)v6 name];
        if (!name2)
        {
          v14 = 0;
          goto LABEL_55;
        }

        v53 = name2;
        v12 = self->_name;
        name3 = [(HDAttachment *)v6 name];
        if (![(NSString *)v12 isEqualToString:name3])
        {
          v14 = 0;
LABEL_54:

          goto LABEL_55;
        }

        v52 = name3;
      }

      type = self->_type;
      type = [(HDAttachment *)v6 type];
      if (type != type)
      {
        type2 = [(HDAttachment *)v6 type];
        if (!type2)
        {
          goto LABEL_31;
        }

        v49 = type2;
        v18 = self->_type;
        type3 = [(HDAttachment *)v6 type];
        if (![(NSString *)v18 isEqualToString:type3])
        {
          goto LABEL_30;
        }
      }

      v50 = type;
      fileHash = self->_fileHash;
      fileHash = [(HDAttachment *)v6 fileHash];
      if (fileHash == fileHash)
      {
        v48 = fileHash;
        size = self->_size;
        if (size == [(HDAttachment *)v6 size])
        {
          goto LABEL_23;
        }
      }

      else
      {
        fileHash2 = [(HDAttachment *)v6 fileHash];
        if (fileHash2)
        {
          v47 = fileHash2;
          v48 = fileHash;
          v21 = self->_fileHash;
          fileHash3 = [(HDAttachment *)v6 fileHash];
          if ([(NSString *)v21 isEqualToString:fileHash3])
          {
            v46 = fileHash3;
            v23 = self->_size;
            if (v23 != [(HDAttachment *)v6 size])
            {
              v14 = 0;
              v24 = fileHash;
LABEL_48:

              goto LABEL_49;
            }

LABEL_23:
            creationDate = self->_creationDate;
            creationDate = [(HDAttachment *)v6 creationDate];
            v28 = creationDate;
            v29 = creationDate;
            if ([(NSDate *)v28 isEqualToDate:creationDate])
            {
              metadata = self->_metadata;
              [(HDAttachment *)v6 metadata];
              v45 = v44 = v29;
              v43 = metadata;
              if (metadata != v45)
              {
                metadata = [(HDAttachment *)v6 metadata];
                if (!metadata)
                {
                  v14 = 0;
LABEL_46:
                  v24 = fileHash;

LABEL_47:
                  fileHash3 = v46;
                  if (v48 != v24)
                  {
                    goto LABEL_48;
                  }

LABEL_50:

                  if (v50 != type)
                  {
                  }

LABEL_53:
                  name3 = v52;
                  if (name != name)
                  {
                    goto LABEL_54;
                  }

LABEL_55:

                  goto LABEL_56;
                }

                v42 = metadata;
                v32 = self->_metadata;
                metadata = [(HDAttachment *)v6 metadata];
                if (([(NSDictionary *)v32 isEqual:metadata]& 1) == 0)
                {

                  v14 = 0;
                  goto LABEL_39;
                }
              }

              encryptionKey = self->_encryptionKey;
              encryptionKey = [(HDAttachment *)v6 encryptionKey];
              v14 = encryptionKey == encryptionKey;
              if (v14)
              {
              }

              else
              {
                v41 = encryptionKey;
                encryptionKey2 = [(HDAttachment *)v6 encryptionKey];
                if (encryptionKey2)
                {
                  v40 = metadata;
                  v36 = self->_encryptionKey;
                  v37 = encryptionKey2;
                  encryptionKey3 = [(HDAttachment *)v6 encryptionKey];
                  v14 = [(HDEncryptedArchiveSymmetricKey *)v36 isEqual:encryptionKey3];

                  if (v43 != v45)
                  {
                  }

LABEL_39:
                  v24 = fileHash;
                  if (v48 != fileHash)
                  {

LABEL_49:
                    goto LABEL_50;
                  }

                  goto LABEL_50;
                }
              }

              if (v43 != v45)
              {

                goto LABEL_46;
              }
            }

            else
            {

              v14 = 0;
            }

            v24 = fileHash;
            goto LABEL_47;
          }

          if (v50 != type)
          {
LABEL_30:
          }

LABEL_31:

          v14 = 0;
          goto LABEL_53;
        }
      }

      v14 = 0;
      v24 = fileHash;
      goto LABEL_50;
    }

    v14 = 0;
  }

LABEL_57:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
  [coderCopy encodeObject:self->_name forKey:@"Name"];
  [coderCopy encodeObject:self->_type forKey:@"Type"];
  [coderCopy encodeObject:self->_fileHash forKey:@"Hash"];
  [coderCopy encodeInteger:self->_size forKey:@"Size"];
  [coderCopy encodeObject:self->_creationDate forKey:@"CreationDate"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
  [coderCopy encodeObject:self->_encryptionKey forKey:@"EncryptionKey"];
}

- (HDAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Type"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Hash"];
  v9 = [coderCopy decodeIntegerForKey:@"Size"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
  hk_secureAttachmentCodingClasses = [MEMORY[0x277CBEAC0] hk_secureAttachmentCodingClasses];
  v12 = [coderCopy decodeObjectOfClasses:hk_secureAttachmentCodingClasses forKey:@"Metadata"];

  selfCopy = 0;
  if (v5 && v6 && v7 && v8 && v9 >= 1 && v10)
  {
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EncryptionKey"];
    self = [(HDAttachment *)self initWithIdentifier:v5 name:v6 type:v7 hash:v8 size:v9 creationDate:v10 metadata:v12 encryptionKey:v14];

    selfCopy = self;
  }

  return selfCopy;
}

@end