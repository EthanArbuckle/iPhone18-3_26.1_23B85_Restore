@interface HDAttachmentReference
- (BOOL)isEqual:(id)equal;
- (HDAttachmentReference)initWithCoder:(id)coder;
- (HDAttachmentReference)initWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier creationDate:(id)date options:(int64_t)options metadata:(id)metadata type:(int64_t)type cloudStatus:(int64_t)status;
- (HDAttachmentReference)referenceWithObjectIdentifier:(id)identifier;
- (id)hkAttachmentReferenceWithAttachment:(id)attachment;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDAttachmentReference

- (HDAttachmentReference)initWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier creationDate:(id)date options:(int64_t)options metadata:(id)metadata type:(int64_t)type cloudStatus:(int64_t)status
{
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  dateCopy = date;
  metadataCopy = metadata;
  v29.receiver = self;
  v29.super_class = HDAttachmentReference;
  v20 = [(HDAttachmentReference *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, identifier);
    schemaIdentifier = [schemaIdentifierCopy schemaIdentifier];
    schemaIdentifier = v21->_schemaIdentifier;
    v21->_schemaIdentifier = schemaIdentifier;

    v21->_schemaVersion = [schemaIdentifierCopy schemaVersion];
    objectIdentifier = [schemaIdentifierCopy objectIdentifier];
    objectIdentifier = v21->_objectIdentifier;
    v21->_objectIdentifier = objectIdentifier;

    attachmentIdentifier = [schemaIdentifierCopy attachmentIdentifier];
    attachmentIdentifier = v21->_attachmentIdentifier;
    v21->_attachmentIdentifier = attachmentIdentifier;

    objc_storeStrong(&v21->_creationDate, date);
    v21->_options = options;
    objc_storeStrong(&v21->_metadata, metadata);
    v21->_type = type;
    v21->_cloudStatus = status;
  }

  return v21;
}

- (HDAttachmentReference)referenceWithObjectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[HDAttachmentReferenceSchemaIdentifier alloc] initWithSchemaIdentifier:self->_schemaIdentifier schemaVersion:self->_schemaVersion objectIdentifier:identifierCopy attachmentIdentifier:self->_attachmentIdentifier];

  v6 = [HDAttachmentReference alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [(HDAttachmentReference *)v6 initWithIdentifier:uUID schemaIdentifier:v5 creationDate:date options:self->_options metadata:self->_metadata type:self->_type cloudStatus:0];

  return v9;
}

- (id)hkAttachmentReferenceWithAttachment:(id)attachment
{
  v4 = MEMORY[0x277CCD010];
  attachmentCopy = attachment;
  v6 = [v4 alloc];
  identifier = self->_identifier;
  objectIdentifier = self->_objectIdentifier;
  hkAttachment = [attachmentCopy hkAttachment];

  v10 = [v6 _initWithIdentifier:identifier objectIdentifier:objectIdentifier attachment:hkAttachment creationDate:self->_creationDate metadata:self->_metadata];

  return v10;
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
      identifier = [(HDAttachmentReference *)v6 identifier];
      if (![(NSUUID *)identifier isEqual:identifier])
      {
        v14 = 0;
LABEL_36:

        goto LABEL_37;
      }

      schemaIdentifier = self->_schemaIdentifier;
      schemaIdentifier = [(HDAttachmentReference *)v6 schemaIdentifier];
      if (schemaIdentifier != schemaIdentifier)
      {
        schemaIdentifier2 = [(HDAttachmentReference *)v6 schemaIdentifier];
        if (!schemaIdentifier2)
        {
          v14 = 0;
          goto LABEL_35;
        }

        v12 = schemaIdentifier2;
        v13 = self->_schemaIdentifier;
        schemaIdentifier3 = [(HDAttachmentReference *)v6 schemaIdentifier];
        if (![(NSString *)v13 isEqualToString:schemaIdentifier3])
        {
          v14 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v43 = v12;
      }

      objectIdentifier = self->_objectIdentifier;
      objectIdentifier = [(HDAttachmentReference *)v6 objectIdentifier];
      if (objectIdentifier == objectIdentifier)
      {
        v42 = schemaIdentifier3;
      }

      else
      {
        objectIdentifier2 = [(HDAttachmentReference *)v6 objectIdentifier];
        if (!objectIdentifier2)
        {
          v14 = 0;
          v12 = v43;
          goto LABEL_33;
        }

        v41 = objectIdentifier2;
        v18 = self->_objectIdentifier;
        objectIdentifier3 = [(HDAttachmentReference *)v6 objectIdentifier];
        v20 = v18;
        v21 = objectIdentifier3;
        if (![(NSString *)v20 isEqualToString:objectIdentifier3])
        {

          v14 = 0;
          v12 = v43;
          if (schemaIdentifier == schemaIdentifier)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v39 = v21;
        v42 = schemaIdentifier3;
      }

      attachmentIdentifier = self->_attachmentIdentifier;
      attachmentIdentifier = [(HDAttachmentReference *)v6 attachmentIdentifier];
      if (![(NSUUID *)attachmentIdentifier isEqual:attachmentIdentifier])
      {

        v14 = 0;
LABEL_31:
        if (objectIdentifier == objectIdentifier)
        {

          schemaIdentifier3 = v42;
          v12 = v43;
          if (schemaIdentifier == schemaIdentifier)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        schemaIdentifier3 = v42;
        v12 = v43;
LABEL_33:

        if (schemaIdentifier != schemaIdentifier)
        {
          goto LABEL_34;
        }

LABEL_35:

        goto LABEL_36;
      }

      creationDate = self->_creationDate;
      creationDate = [(HDAttachmentReference *)v6 creationDate];
      if ([(NSDate *)creationDate isEqualToDate:?]&& (options = self->_options, options == [(HDAttachmentReference *)v6 options]))
      {
        metadata = self->_metadata;
        v27 = metadata;
        if (metadata)
        {
          goto LABEL_23;
        }

        metadata = [(HDAttachmentReference *)v6 metadata];
        if (metadata)
        {
          v35 = metadata;
          v27 = self->_metadata;
LABEL_23:
          v37 = metadata;
          v29 = v27;
          metadata2 = [(HDAttachmentReference *)v6 metadata];
          if ([(NSDictionary *)v29 isEqualToDictionary:?]&& (type = self->_type, type == [(HDAttachmentReference *)v6 type]))
          {
            cloudStatus = self->_cloudStatus;
            v14 = cloudStatus == [(HDAttachmentReference *)v6 cloudStatus];
          }

          else
          {
            v14 = 0;
          }

          if (!v37)
          {
          }

          goto LABEL_30;
        }

        v33 = self->_type;
        if (v33 == [(HDAttachmentReference *)v6 type])
        {
          v34 = self->_cloudStatus;
          v14 = v34 == [(HDAttachmentReference *)v6 cloudStatus];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_30:

      goto LABEL_31;
    }

    v14 = 0;
  }

LABEL_37:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
  [coderCopy encodeObject:self->_schemaIdentifier forKey:@"SchemaIdentifier"];
  [coderCopy encodeInteger:self->_schemaVersion forKey:@"SchemaVersion"];
  [coderCopy encodeObject:self->_objectIdentifier forKey:@"ObjectIdentifier"];
  [coderCopy encodeObject:self->_attachmentIdentifier forKey:@"AttachmentIdentifier"];
  [coderCopy encodeObject:self->_creationDate forKey:@"CreationDate"];
  [coderCopy encodeInteger:self->_options forKey:@"Options"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
  [coderCopy encodeInteger:self->_type forKey:@"Type"];
  [coderCopy encodeInteger:self->_cloudStatus forKey:@"CloudStatus"];
}

- (HDAttachmentReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SchemaIdentifier"];
  v18 = [coderCopy decodeIntegerForKey:@"SchemaVersion"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ObjectIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AttachmentIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
  v9 = [coderCopy decodeIntegerForKey:@"Options"];
  hk_secureAttachmentCodingClasses = [MEMORY[0x277CBEAC0] hk_secureAttachmentCodingClasses];
  v11 = [coderCopy decodeObjectOfClasses:hk_secureAttachmentCodingClasses forKey:@"Metadata"];

  v12 = [coderCopy decodeIntegerForKey:@"Type"];
  v13 = [coderCopy decodeIntegerForKey:@"CloudStatus"];

  v14 = 0;
  if (v4 && v5 && v6 && v7 && v8)
  {
    v15 = [[HDAttachmentReferenceSchemaIdentifier alloc] initWithSchemaIdentifier:v5 schemaVersion:v18 objectIdentifier:v6 attachmentIdentifier:v7];
    selfCopy = [(HDAttachmentReference *)self initWithIdentifier:v4 schemaIdentifier:v15 creationDate:v8 options:v9 metadata:v11 type:v12 cloudStatus:v13];

    v14 = selfCopy;
  }

  else
  {
    selfCopy = self;
  }

  return v14;
}

@end