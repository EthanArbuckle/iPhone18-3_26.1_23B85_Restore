@interface HDAttachment
- (BOOL)isEqual:(id)a3;
- (HDAttachment)initWithCoder:(id)a3;
- (HDAttachment)initWithIdentifier:(id)a3 name:(id)a4 type:(id)a5 hash:(id)a6 size:(unint64_t)a7 creationDate:(id)a8 metadata:(id)a9 encryptionKey:(id)a10;
- (id)hkAttachment;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDAttachment

- (HDAttachment)initWithIdentifier:(id)a3 name:(id)a4 type:(id)a5 hash:(id)a6 size:(unint64_t)a7 creationDate:(id)a8 metadata:(id)a9 encryptionKey:(id)a10
{
  v30 = a3;
  v29 = a4;
  v28 = a5;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v31.receiver = self;
  v31.super_class = HDAttachment;
  v20 = [(HDAttachment *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, a3);
    objc_storeStrong(&v21->_name, a4);
    objc_storeStrong(&v21->_type, a5);
    objc_storeStrong(&v21->_fileHash, a6);
    v21->_size = a7;
    objc_storeStrong(&v21->_creationDate, a8);
    v22 = [v18 copy];
    metadata = v21->_metadata;
    v21->_metadata = v22;

    v24 = [v19 copy];
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      identifier = self->_identifier;
      v8 = [(HDAttachment *)v6 identifier];
      if (![(NSUUID *)identifier isEqual:v8])
      {
        v14 = 0;
LABEL_56:

        goto LABEL_57;
      }

      name = self->_name;
      v10 = [(HDAttachment *)v6 name];
      if (name != v10)
      {
        v11 = [(HDAttachment *)v6 name];
        if (!v11)
        {
          v14 = 0;
          goto LABEL_55;
        }

        v53 = v11;
        v12 = self->_name;
        v13 = [(HDAttachment *)v6 name];
        if (![(NSString *)v12 isEqualToString:v13])
        {
          v14 = 0;
LABEL_54:

          goto LABEL_55;
        }

        v52 = v13;
      }

      type = self->_type;
      v16 = [(HDAttachment *)v6 type];
      if (type != v16)
      {
        v17 = [(HDAttachment *)v6 type];
        if (!v17)
        {
          goto LABEL_31;
        }

        v49 = v17;
        v18 = self->_type;
        v3 = [(HDAttachment *)v6 type];
        if (![(NSString *)v18 isEqualToString:v3])
        {
          goto LABEL_30;
        }
      }

      v50 = type;
      fileHash = self->_fileHash;
      v51 = [(HDAttachment *)v6 fileHash];
      if (fileHash == v51)
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
        v20 = [(HDAttachment *)v6 fileHash];
        if (v20)
        {
          v47 = v20;
          v48 = fileHash;
          v21 = self->_fileHash;
          v22 = [(HDAttachment *)v6 fileHash];
          if ([(NSString *)v21 isEqualToString:v22])
          {
            v46 = v22;
            v23 = self->_size;
            if (v23 != [(HDAttachment *)v6 size])
            {
              v14 = 0;
              v24 = v51;
LABEL_48:

              goto LABEL_49;
            }

LABEL_23:
            creationDate = self->_creationDate;
            v27 = [(HDAttachment *)v6 creationDate];
            v28 = creationDate;
            v29 = v27;
            if ([(NSDate *)v28 isEqualToDate:v27])
            {
              metadata = self->_metadata;
              [(HDAttachment *)v6 metadata];
              v45 = v44 = v29;
              v43 = metadata;
              if (metadata != v45)
              {
                v31 = [(HDAttachment *)v6 metadata];
                if (!v31)
                {
                  v14 = 0;
LABEL_46:
                  v24 = v51;

LABEL_47:
                  v22 = v46;
                  if (v48 != v24)
                  {
                    goto LABEL_48;
                  }

LABEL_50:

                  if (v50 != v16)
                  {
                  }

LABEL_53:
                  v13 = v52;
                  if (name != v10)
                  {
                    goto LABEL_54;
                  }

LABEL_55:

                  goto LABEL_56;
                }

                v42 = v31;
                v32 = self->_metadata;
                metadata = [(HDAttachment *)v6 metadata];
                if (([(NSDictionary *)v32 isEqual:metadata]& 1) == 0)
                {

                  v14 = 0;
                  goto LABEL_39;
                }
              }

              encryptionKey = self->_encryptionKey;
              v34 = [(HDAttachment *)v6 encryptionKey];
              v14 = encryptionKey == v34;
              if (v14)
              {
              }

              else
              {
                v41 = v34;
                v35 = [(HDAttachment *)v6 encryptionKey];
                if (v35)
                {
                  v40 = metadata;
                  v36 = self->_encryptionKey;
                  v37 = v35;
                  v38 = [(HDAttachment *)v6 encryptionKey];
                  v14 = [(HDEncryptedArchiveSymmetricKey *)v36 isEqual:v38];

                  if (v43 != v45)
                  {
                  }

LABEL_39:
                  v24 = v51;
                  if (v48 != v51)
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

            v24 = v51;
            goto LABEL_47;
          }

          if (v50 != v16)
          {
LABEL_30:
          }

LABEL_31:

          v14 = 0;
          goto LABEL_53;
        }
      }

      v14 = 0;
      v24 = v51;
      goto LABEL_50;
    }

    v14 = 0;
  }

LABEL_57:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"Identifier"];
  [v5 encodeObject:self->_name forKey:@"Name"];
  [v5 encodeObject:self->_type forKey:@"Type"];
  [v5 encodeObject:self->_fileHash forKey:@"Hash"];
  [v5 encodeInteger:self->_size forKey:@"Size"];
  [v5 encodeObject:self->_creationDate forKey:@"CreationDate"];
  [v5 encodeObject:self->_metadata forKey:@"Metadata"];
  [v5 encodeObject:self->_encryptionKey forKey:@"EncryptionKey"];
}

- (HDAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Type"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Hash"];
  v9 = [v4 decodeIntegerForKey:@"Size"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
  v11 = [MEMORY[0x277CBEAC0] hk_secureAttachmentCodingClasses];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"Metadata"];

  v13 = 0;
  if (v5 && v6 && v7 && v8 && v9 >= 1 && v10)
  {
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EncryptionKey"];
    self = [(HDAttachment *)self initWithIdentifier:v5 name:v6 type:v7 hash:v8 size:v9 creationDate:v10 metadata:v12 encryptionKey:v14];

    v13 = self;
  }

  return v13;
}

@end