@interface _CDAttachment
+ (id)attachmentWithIdentifier:(id)a3 cloudIdentifier:(id)a4 type:(id)a5 sizeInBytes:(id)a6 creationDate:(id)a7;
+ (id)attachmentWithIdentifier:(id)a3 cloudIdentifier:(id)a4 type:(id)a5 sizeInBytes:(id)a6 creationDate:(id)a7 contentURL:(id)a8 contentText:(id)a9;
- (BOOL)isEqual:(id)a3;
- (_CDAttachment)initWithCoder:(id)a3;
- (_CDAttachment)initWithIdentifier:(id)a3 cloudIdentifier:(id)a4 photoLocalIdentifier:(id)a5 type:(id)a6 sizeInBytes:(id)a7 creationDate:(id)a8 contentURL:(id)a9 contentText:(id)a10 photoSceneDescriptor:(id)a11 personInPhoto:(id)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionRedacted:(BOOL)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setContentText:(id)a3;
@end

@implementation _CDAttachment

+ (id)attachmentWithIdentifier:(id)a3 cloudIdentifier:(id)a4 type:(id)a5 sizeInBytes:(id)a6 creationDate:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [objc_alloc(objc_opt_class()) initWithIdentifier:v15 cloudIdentifier:v14 type:v13 sizeInBytes:v12 creationDate:v11 contentURL:0 contentText:0];

  return v16;
}

+ (id)attachmentWithIdentifier:(id)a3 cloudIdentifier:(id)a4 type:(id)a5 sizeInBytes:(id)a6 creationDate:(id)a7 contentURL:(id)a8 contentText:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [objc_alloc(objc_opt_class()) initWithIdentifier:v21 cloudIdentifier:v20 type:v19 sizeInBytes:v18 creationDate:v17 contentURL:v16 contentText:v15];

  return v22;
}

- (_CDAttachment)initWithIdentifier:(id)a3 cloudIdentifier:(id)a4 photoLocalIdentifier:(id)a5 type:(id)a6 sizeInBytes:(id)a7 creationDate:(id)a8 contentURL:(id)a9 contentText:(id)a10 photoSceneDescriptor:(id)a11 personInPhoto:(id)a12
{
  v34 = a3;
  obj = a4;
  v33 = a4;
  v32 = a5;
  v31 = a6;
  v27 = a7;
  v30 = a7;
  v26 = a8;
  v29 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v35.receiver = self;
  v35.super_class = _CDAttachment;
  v22 = [(_CDAttachment *)&v35 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_identifier, a3);
    objc_storeStrong(&v23->_cloudIdentifier, obj);
    objc_storeStrong(&v23->_photoLocalIdentifier, a5);
    objc_storeStrong(&v23->_uti, a6);
    objc_storeStrong(&v23->_creationDate, v26);
    objc_storeStrong(&v23->_size, v27);
    objc_storeStrong(&v23->_contentURL, a9);
    [(_CDAttachment *)v23 setContentText:v19];
    objc_storeStrong(&v23->_photoSceneDescriptor, a11);
    objc_storeStrong(&v23->_personInPhoto, a12);
  }

  return v23;
}

- (_CDAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = _CDAttachment;
  v5 = [(_CDAttachment *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudIdentifier"];
    cloudIdentifier = v5->_cloudIdentifier;
    v5->_cloudIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoLocalIdentifier"];
    photoLocalIdentifier = v5->_photoLocalIdentifier;
    v5->_photoLocalIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uti"];
    uti = v5->_uti;
    v5->_uti = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    size = v5->_size;
    v5->_size = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentURL"];
    contentURL = v5->_contentURL;
    v5->_contentURL = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentText"];
    [(_CDAttachment *)v5 setContentText:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personInPhoto"];
    personInPhoto = v5->_personInPhoto;
    v5->_personInPhoto = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoSceneDescriptor"];
    photoSceneDescriptor = v5->_photoSceneDescriptor;
    v5->_photoSceneDescriptor = v23;

    v25 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  [v6 encodeObject:self->_cloudIdentifier forKey:@"cloudIdentifier"];
  [v6 encodeObject:self->_photoLocalIdentifier forKey:@"photoLocalIdentifier"];
  [v6 encodeObject:self->_uti forKey:@"uti"];
  [v6 encodeObject:self->_size forKey:@"size"];
  [v6 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v6 encodeObject:self->_contentURL forKey:@"contentURL"];
  v5 = [(_CDAttachment *)self contentText];
  [v6 encodeObject:v5 forKey:@"contentText"];

  [v6 encodeObject:self->_personInPhoto forKey:@"personInPhoto"];
  [v6 encodeObject:self->_photoSceneDescriptor forKey:@"photoSceneDescriptor"];
}

- (void)setContentText:(id)a3
{
  if (a3)
  {
    v3 = &stru_1F05B9908;
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong(&self->_contentText, v3);
}

- (id)descriptionRedacted:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend(v5, "appendString:", @"(");
  v6 = [(_CDAttachment *)self identifier];

  if (v6)
  {
    v7 = [(_CDAttachment *)self identifier];
    [v5 appendFormat:@"identifier: %@ ", v7];
  }

  v8 = [(_CDAttachment *)self cloudIdentifier];

  if (v8)
  {
    v9 = [(_CDAttachment *)self cloudIdentifier];
    [v5 appendFormat:@"cloudIdentifier: %@ ", v9];
  }

  v10 = [(_CDAttachment *)self photoLocalIdentifier];

  if (v10)
  {
    v11 = [(_CDAttachment *)self photoLocalIdentifier];
    [v5 appendFormat:@"photoLocalIdentifier: %@ ", v11];
  }

  v12 = [(_CDAttachment *)self uti];

  if (v12)
  {
    v13 = [(_CDAttachment *)self uti];
    [v5 appendFormat:@"UTI: %@ ", v13];
  }

  v14 = [(_CDAttachment *)self size];

  if (v14)
  {
    v15 = [(_CDAttachment *)self size];
    [v5 appendFormat:@"size: %@ ", v15];
  }

  v16 = [(_CDAttachment *)self creationDate];

  if (v16)
  {
    v17 = [(_CDAttachment *)self creationDate];
    [v5 appendFormat:@"creationDate: %@ ", v17];
  }

  v18 = [(_CDAttachment *)self contentURL];

  if (v18)
  {
    if (v3)
    {
      [v5 appendFormat:@"contentURL: %@ ", @"redacted"];
    }

    else
    {
      v19 = [(_CDAttachment *)self contentURL];
      [v5 appendFormat:@"contentURL: %@ ", v19];
    }
  }

  v20 = [(_CDAttachment *)self contentText];

  if (v20)
  {
    if (v3)
    {
      [v5 appendFormat:@"contentText: %@ ", @"redacted"];
    }

    else
    {
      v21 = [(_CDAttachment *)self contentText];
      [v5 appendFormat:@"contentText: %@ ", v21];
    }
  }

  v22 = [(_CDAttachment *)self personInPhoto];

  if (v22)
  {
    if (v3)
    {
      [v5 appendFormat:@"personInPhoto: %@ ", @"redacted"];
    }

    else
    {
      v23 = [(_CDAttachment *)self personInPhoto];
      [v5 appendFormat:@"personInPhoto: %@ ", v23];
    }
  }

  v24 = [(_CDAttachment *)self photoSceneDescriptor];

  if (v24)
  {
    if (v3)
    {
      [v5 appendFormat:@"photoSceneDescriptor: %@ ", @"redacted"];
    }

    else
    {
      v25 = [(_CDAttachment *)self photoSceneDescriptor];
      [v5 appendFormat:@"photoSceneDescriptor: %@ ", v25];
    }
  }

  [v5 appendString:@""]);

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_CDAttachment allocWithZone:?]];
  v5 = [(_CDAttachment *)self identifier];
  [(_CDAttachment *)v4 setIdentifier:v5];

  v6 = [(_CDAttachment *)self cloudIdentifier];
  [(_CDAttachment *)v4 setCloudIdentifier:v6];

  v7 = [(_CDAttachment *)self uti];
  [(_CDAttachment *)v4 setUti:v7];

  v8 = [(_CDAttachment *)self size];
  [(_CDAttachment *)v4 setSize:v8];

  v9 = [(_CDAttachment *)self creationDate];
  [(_CDAttachment *)v4 setCreationDate:v9];

  v10 = [(_CDAttachment *)self contentURL];
  [(_CDAttachment *)v4 setContentURL:v10];

  v11 = [(_CDAttachment *)self contentText];
  [(_CDAttachment *)v4 setContentText:v11];

  v12 = [(_CDAttachment *)self personInPhoto];
  [(_CDAttachment *)v4 setPersonInPhoto:v12];

  v13 = [(_CDAttachment *)self photoSceneDescriptor];
  [(_CDAttachment *)v4 setPhotoSceneDescriptor:v13];

  return v4;
}

- (unint64_t)hash
{
  v3 = 31 * [(NSUUID *)self->_identifier hash];
  v4 = [(NSUUID *)self->_cloudIdentifier hash];
  v5 = v4 ^ [(NSString *)self->_uti hash];
  v6 = v5 ^ [(NSNumber *)self->_size hash]^ v3;
  v7 = [(NSDate *)self->_creationDate hash];
  v8 = [(_CDAttachment *)self personInPhoto];
  v9 = v7 ^ [v8 hash];
  v10 = [(_CDAttachment *)self photoSceneDescriptor];
  v11 = v9 ^ [v10 hash];

  return v6 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_identifier;
      v7 = v6;
      if (v6 == v5->_identifier)
      {
      }

      else
      {
        v8 = [(NSUUID *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v10 = self->_cloudIdentifier;
      v11 = v10;
      if (v10 == v5->_cloudIdentifier)
      {
      }

      else
      {
        v12 = [(NSUUID *)v10 isEqual:?];

        if ((v12 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v13 = self->_uti;
      v14 = v13;
      if (v13 == v5->_uti)
      {
      }

      else
      {
        v15 = [(NSString *)v13 isEqual:?];

        if ((v15 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v16 = self->_size;
      v17 = v16;
      if (v16 == v5->_size)
      {
      }

      else
      {
        v18 = [(NSNumber *)v16 isEqual:?];

        if ((v18 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v19 = self->_creationDate;
      v20 = v19;
      if (v19 == v5->_creationDate)
      {
      }

      else
      {
        v21 = [(NSDate *)v19 isEqual:?];

        if ((v21 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v22 = self->_contentURL;
      v23 = v22;
      if (v22 == v5->_contentURL)
      {
      }

      else
      {
        v24 = [(NSURL *)v22 isEqual:?];

        if ((v24 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v25 = self->_contentText;
      v26 = v25;
      if (v25 == v5->_contentText)
      {
      }

      else
      {
        v27 = [(NSString *)v25 isEqual:?];

        if ((v27 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v28 = self->_photoSceneDescriptor;
      v29 = v28;
      if (v28 == v5->_photoSceneDescriptor)
      {
      }

      else
      {
        v30 = [(NSString *)v28 isEqual:?];

        if ((v30 & 1) == 0)
        {
LABEL_35:
          v9 = 0;
LABEL_36:

          goto LABEL_37;
        }
      }

      v32 = self->_personInPhoto;
      v33 = v32;
      if (v32 == v5->_personInPhoto)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSString *)v32 isEqual:?];
      }

      goto LABEL_36;
    }

    v9 = 0;
  }

LABEL_37:

  return v9;
}

@end