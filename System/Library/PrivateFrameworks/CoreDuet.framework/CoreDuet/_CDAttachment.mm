@interface _CDAttachment
+ (id)attachmentWithIdentifier:(id)identifier cloudIdentifier:(id)cloudIdentifier type:(id)type sizeInBytes:(id)bytes creationDate:(id)date;
+ (id)attachmentWithIdentifier:(id)identifier cloudIdentifier:(id)cloudIdentifier type:(id)type sizeInBytes:(id)bytes creationDate:(id)date contentURL:(id)l contentText:(id)text;
- (BOOL)isEqual:(id)equal;
- (_CDAttachment)initWithCoder:(id)coder;
- (_CDAttachment)initWithIdentifier:(id)identifier cloudIdentifier:(id)cloudIdentifier photoLocalIdentifier:(id)localIdentifier type:(id)type sizeInBytes:(id)bytes creationDate:(id)date contentURL:(id)l contentText:(id)self0 photoSceneDescriptor:(id)self1 personInPhoto:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionRedacted:(BOOL)redacted;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setContentText:(id)text;
@end

@implementation _CDAttachment

+ (id)attachmentWithIdentifier:(id)identifier cloudIdentifier:(id)cloudIdentifier type:(id)type sizeInBytes:(id)bytes creationDate:(id)date
{
  dateCopy = date;
  bytesCopy = bytes;
  typeCopy = type;
  cloudIdentifierCopy = cloudIdentifier;
  identifierCopy = identifier;
  v16 = [objc_alloc(objc_opt_class()) initWithIdentifier:identifierCopy cloudIdentifier:cloudIdentifierCopy type:typeCopy sizeInBytes:bytesCopy creationDate:dateCopy contentURL:0 contentText:0];

  return v16;
}

+ (id)attachmentWithIdentifier:(id)identifier cloudIdentifier:(id)cloudIdentifier type:(id)type sizeInBytes:(id)bytes creationDate:(id)date contentURL:(id)l contentText:(id)text
{
  textCopy = text;
  lCopy = l;
  dateCopy = date;
  bytesCopy = bytes;
  typeCopy = type;
  cloudIdentifierCopy = cloudIdentifier;
  identifierCopy = identifier;
  v22 = [objc_alloc(objc_opt_class()) initWithIdentifier:identifierCopy cloudIdentifier:cloudIdentifierCopy type:typeCopy sizeInBytes:bytesCopy creationDate:dateCopy contentURL:lCopy contentText:textCopy];

  return v22;
}

- (_CDAttachment)initWithIdentifier:(id)identifier cloudIdentifier:(id)cloudIdentifier photoLocalIdentifier:(id)localIdentifier type:(id)type sizeInBytes:(id)bytes creationDate:(id)date contentURL:(id)l contentText:(id)self0 photoSceneDescriptor:(id)self1 personInPhoto:(id)self2
{
  identifierCopy = identifier;
  obj = cloudIdentifier;
  cloudIdentifierCopy = cloudIdentifier;
  localIdentifierCopy = localIdentifier;
  typeCopy = type;
  bytesCopy = bytes;
  bytesCopy2 = bytes;
  dateCopy = date;
  dateCopy2 = date;
  lCopy = l;
  textCopy = text;
  descriptorCopy = descriptor;
  photoCopy = photo;
  v35.receiver = self;
  v35.super_class = _CDAttachment;
  v22 = [(_CDAttachment *)&v35 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_identifier, identifier);
    objc_storeStrong(&v23->_cloudIdentifier, obj);
    objc_storeStrong(&v23->_photoLocalIdentifier, localIdentifier);
    objc_storeStrong(&v23->_uti, type);
    objc_storeStrong(&v23->_creationDate, dateCopy);
    objc_storeStrong(&v23->_size, bytesCopy);
    objc_storeStrong(&v23->_contentURL, l);
    [(_CDAttachment *)v23 setContentText:textCopy];
    objc_storeStrong(&v23->_photoSceneDescriptor, descriptor);
    objc_storeStrong(&v23->_personInPhoto, photo);
  }

  return v23;
}

- (_CDAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = _CDAttachment;
  v5 = [(_CDAttachment *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudIdentifier"];
    cloudIdentifier = v5->_cloudIdentifier;
    v5->_cloudIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoLocalIdentifier"];
    photoLocalIdentifier = v5->_photoLocalIdentifier;
    v5->_photoLocalIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uti"];
    uti = v5->_uti;
    v5->_uti = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    size = v5->_size;
    v5->_size = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentURL"];
    contentURL = v5->_contentURL;
    v5->_contentURL = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentText"];
    [(_CDAttachment *)v5 setContentText:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personInPhoto"];
    personInPhoto = v5->_personInPhoto;
    v5->_personInPhoto = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoSceneDescriptor"];
    photoSceneDescriptor = v5->_photoSceneDescriptor;
    v5->_photoSceneDescriptor = v23;

    v25 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_cloudIdentifier forKey:@"cloudIdentifier"];
  [coderCopy encodeObject:self->_photoLocalIdentifier forKey:@"photoLocalIdentifier"];
  [coderCopy encodeObject:self->_uti forKey:@"uti"];
  [coderCopy encodeObject:self->_size forKey:@"size"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_contentURL forKey:@"contentURL"];
  contentText = [(_CDAttachment *)self contentText];
  [coderCopy encodeObject:contentText forKey:@"contentText"];

  [coderCopy encodeObject:self->_personInPhoto forKey:@"personInPhoto"];
  [coderCopy encodeObject:self->_photoSceneDescriptor forKey:@"photoSceneDescriptor"];
}

- (void)setContentText:(id)text
{
  if (text)
  {
    v3 = &stru_1F05B9908;
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong(&self->_contentText, v3);
}

- (id)descriptionRedacted:(BOOL)redacted
{
  redactedCopy = redacted;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend(v5, "appendString:", @"(");
  identifier = [(_CDAttachment *)self identifier];

  if (identifier)
  {
    identifier2 = [(_CDAttachment *)self identifier];
    [v5 appendFormat:@"identifier: %@ ", identifier2];
  }

  cloudIdentifier = [(_CDAttachment *)self cloudIdentifier];

  if (cloudIdentifier)
  {
    cloudIdentifier2 = [(_CDAttachment *)self cloudIdentifier];
    [v5 appendFormat:@"cloudIdentifier: %@ ", cloudIdentifier2];
  }

  photoLocalIdentifier = [(_CDAttachment *)self photoLocalIdentifier];

  if (photoLocalIdentifier)
  {
    photoLocalIdentifier2 = [(_CDAttachment *)self photoLocalIdentifier];
    [v5 appendFormat:@"photoLocalIdentifier: %@ ", photoLocalIdentifier2];
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

  creationDate = [(_CDAttachment *)self creationDate];

  if (creationDate)
  {
    creationDate2 = [(_CDAttachment *)self creationDate];
    [v5 appendFormat:@"creationDate: %@ ", creationDate2];
  }

  contentURL = [(_CDAttachment *)self contentURL];

  if (contentURL)
  {
    if (redactedCopy)
    {
      [v5 appendFormat:@"contentURL: %@ ", @"redacted"];
    }

    else
    {
      contentURL2 = [(_CDAttachment *)self contentURL];
      [v5 appendFormat:@"contentURL: %@ ", contentURL2];
    }
  }

  contentText = [(_CDAttachment *)self contentText];

  if (contentText)
  {
    if (redactedCopy)
    {
      [v5 appendFormat:@"contentText: %@ ", @"redacted"];
    }

    else
    {
      contentText2 = [(_CDAttachment *)self contentText];
      [v5 appendFormat:@"contentText: %@ ", contentText2];
    }
  }

  personInPhoto = [(_CDAttachment *)self personInPhoto];

  if (personInPhoto)
  {
    if (redactedCopy)
    {
      [v5 appendFormat:@"personInPhoto: %@ ", @"redacted"];
    }

    else
    {
      personInPhoto2 = [(_CDAttachment *)self personInPhoto];
      [v5 appendFormat:@"personInPhoto: %@ ", personInPhoto2];
    }
  }

  photoSceneDescriptor = [(_CDAttachment *)self photoSceneDescriptor];

  if (photoSceneDescriptor)
  {
    if (redactedCopy)
    {
      [v5 appendFormat:@"photoSceneDescriptor: %@ ", @"redacted"];
    }

    else
    {
      photoSceneDescriptor2 = [(_CDAttachment *)self photoSceneDescriptor];
      [v5 appendFormat:@"photoSceneDescriptor: %@ ", photoSceneDescriptor2];
    }
  }

  [v5 appendString:@""]);

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_CDAttachment allocWithZone:?]];
  identifier = [(_CDAttachment *)self identifier];
  [(_CDAttachment *)v4 setIdentifier:identifier];

  cloudIdentifier = [(_CDAttachment *)self cloudIdentifier];
  [(_CDAttachment *)v4 setCloudIdentifier:cloudIdentifier];

  v7 = [(_CDAttachment *)self uti];
  [(_CDAttachment *)v4 setUti:v7];

  v8 = [(_CDAttachment *)self size];
  [(_CDAttachment *)v4 setSize:v8];

  creationDate = [(_CDAttachment *)self creationDate];
  [(_CDAttachment *)v4 setCreationDate:creationDate];

  contentURL = [(_CDAttachment *)self contentURL];
  [(_CDAttachment *)v4 setContentURL:contentURL];

  contentText = [(_CDAttachment *)self contentText];
  [(_CDAttachment *)v4 setContentText:contentText];

  personInPhoto = [(_CDAttachment *)self personInPhoto];
  [(_CDAttachment *)v4 setPersonInPhoto:personInPhoto];

  photoSceneDescriptor = [(_CDAttachment *)self photoSceneDescriptor];
  [(_CDAttachment *)v4 setPhotoSceneDescriptor:photoSceneDescriptor];

  return v4;
}

- (unint64_t)hash
{
  v3 = 31 * [(NSUUID *)self->_identifier hash];
  v4 = [(NSUUID *)self->_cloudIdentifier hash];
  v5 = v4 ^ [(NSString *)self->_uti hash];
  v6 = v5 ^ [(NSNumber *)self->_size hash]^ v3;
  v7 = [(NSDate *)self->_creationDate hash];
  personInPhoto = [(_CDAttachment *)self personInPhoto];
  v9 = v7 ^ [personInPhoto hash];
  photoSceneDescriptor = [(_CDAttachment *)self photoSceneDescriptor];
  v11 = v9 ^ [photoSceneDescriptor hash];

  return v6 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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