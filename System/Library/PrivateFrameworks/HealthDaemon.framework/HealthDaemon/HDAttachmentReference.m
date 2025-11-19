@interface HDAttachmentReference
- (BOOL)isEqual:(id)a3;
- (HDAttachmentReference)initWithCoder:(id)a3;
- (HDAttachmentReference)initWithIdentifier:(id)a3 schemaIdentifier:(id)a4 creationDate:(id)a5 options:(int64_t)a6 metadata:(id)a7 type:(int64_t)a8 cloudStatus:(int64_t)a9;
- (HDAttachmentReference)referenceWithObjectIdentifier:(id)a3;
- (id)hkAttachmentReferenceWithAttachment:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDAttachmentReference

- (HDAttachmentReference)initWithIdentifier:(id)a3 schemaIdentifier:(id)a4 creationDate:(id)a5 options:(int64_t)a6 metadata:(id)a7 type:(int64_t)a8 cloudStatus:(int64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v29.receiver = self;
  v29.super_class = HDAttachmentReference;
  v20 = [(HDAttachmentReference *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, a3);
    v22 = [v17 schemaIdentifier];
    schemaIdentifier = v21->_schemaIdentifier;
    v21->_schemaIdentifier = v22;

    v21->_schemaVersion = [v17 schemaVersion];
    v24 = [v17 objectIdentifier];
    objectIdentifier = v21->_objectIdentifier;
    v21->_objectIdentifier = v24;

    v26 = [v17 attachmentIdentifier];
    attachmentIdentifier = v21->_attachmentIdentifier;
    v21->_attachmentIdentifier = v26;

    objc_storeStrong(&v21->_creationDate, a5);
    v21->_options = a6;
    objc_storeStrong(&v21->_metadata, a7);
    v21->_type = a8;
    v21->_cloudStatus = a9;
  }

  return v21;
}

- (HDAttachmentReference)referenceWithObjectIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[HDAttachmentReferenceSchemaIdentifier alloc] initWithSchemaIdentifier:self->_schemaIdentifier schemaVersion:self->_schemaVersion objectIdentifier:v4 attachmentIdentifier:self->_attachmentIdentifier];

  v6 = [HDAttachmentReference alloc];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [(HDAttachmentReference *)v6 initWithIdentifier:v7 schemaIdentifier:v5 creationDate:v8 options:self->_options metadata:self->_metadata type:self->_type cloudStatus:0];

  return v9;
}

- (id)hkAttachmentReferenceWithAttachment:(id)a3
{
  v4 = MEMORY[0x277CCD010];
  v5 = a3;
  v6 = [v4 alloc];
  identifier = self->_identifier;
  objectIdentifier = self->_objectIdentifier;
  v9 = [v5 hkAttachment];

  v10 = [v6 _initWithIdentifier:identifier objectIdentifier:objectIdentifier attachment:v9 creationDate:self->_creationDate metadata:self->_metadata];

  return v10;
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
      v8 = [(HDAttachmentReference *)v6 identifier];
      if (![(NSUUID *)identifier isEqual:v8])
      {
        v14 = 0;
LABEL_36:

        goto LABEL_37;
      }

      schemaIdentifier = self->_schemaIdentifier;
      v10 = [(HDAttachmentReference *)v6 schemaIdentifier];
      if (schemaIdentifier != v10)
      {
        v11 = [(HDAttachmentReference *)v6 schemaIdentifier];
        if (!v11)
        {
          v14 = 0;
          goto LABEL_35;
        }

        v12 = v11;
        v13 = self->_schemaIdentifier;
        v3 = [(HDAttachmentReference *)v6 schemaIdentifier];
        if (![(NSString *)v13 isEqualToString:v3])
        {
          v14 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v43 = v12;
      }

      objectIdentifier = self->_objectIdentifier;
      v16 = [(HDAttachmentReference *)v6 objectIdentifier];
      if (objectIdentifier == v16)
      {
        v42 = v3;
      }

      else
      {
        v17 = [(HDAttachmentReference *)v6 objectIdentifier];
        if (!v17)
        {
          v14 = 0;
          v12 = v43;
          goto LABEL_33;
        }

        v41 = v17;
        v18 = self->_objectIdentifier;
        v19 = [(HDAttachmentReference *)v6 objectIdentifier];
        v20 = v18;
        v21 = v19;
        if (![(NSString *)v20 isEqualToString:v19])
        {

          v14 = 0;
          v12 = v43;
          if (schemaIdentifier == v10)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v39 = v21;
        v42 = v3;
      }

      attachmentIdentifier = self->_attachmentIdentifier;
      v23 = [(HDAttachmentReference *)v6 attachmentIdentifier];
      if (![(NSUUID *)attachmentIdentifier isEqual:v23])
      {

        v14 = 0;
LABEL_31:
        if (objectIdentifier == v16)
        {

          v3 = v42;
          v12 = v43;
          if (schemaIdentifier == v10)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v3 = v42;
        v12 = v43;
LABEL_33:

        if (schemaIdentifier != v10)
        {
          goto LABEL_34;
        }

LABEL_35:

        goto LABEL_36;
      }

      creationDate = self->_creationDate;
      v40 = [(HDAttachmentReference *)v6 creationDate];
      if ([(NSDate *)creationDate isEqualToDate:?]&& (options = self->_options, options == [(HDAttachmentReference *)v6 options]))
      {
        metadata = self->_metadata;
        v27 = metadata;
        if (metadata)
        {
          goto LABEL_23;
        }

        v28 = [(HDAttachmentReference *)v6 metadata];
        if (v28)
        {
          v35 = v28;
          v27 = self->_metadata;
LABEL_23:
          v37 = metadata;
          v29 = v27;
          v38 = [(HDAttachmentReference *)v6 metadata];
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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"Identifier"];
  [v5 encodeObject:self->_schemaIdentifier forKey:@"SchemaIdentifier"];
  [v5 encodeInteger:self->_schemaVersion forKey:@"SchemaVersion"];
  [v5 encodeObject:self->_objectIdentifier forKey:@"ObjectIdentifier"];
  [v5 encodeObject:self->_attachmentIdentifier forKey:@"AttachmentIdentifier"];
  [v5 encodeObject:self->_creationDate forKey:@"CreationDate"];
  [v5 encodeInteger:self->_options forKey:@"Options"];
  [v5 encodeObject:self->_metadata forKey:@"Metadata"];
  [v5 encodeInteger:self->_type forKey:@"Type"];
  [v5 encodeInteger:self->_cloudStatus forKey:@"CloudStatus"];
}

- (HDAttachmentReference)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SchemaIdentifier"];
  v18 = [v3 decodeIntegerForKey:@"SchemaVersion"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ObjectIdentifier"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AttachmentIdentifier"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
  v9 = [v3 decodeIntegerForKey:@"Options"];
  v10 = [MEMORY[0x277CBEAC0] hk_secureAttachmentCodingClasses];
  v11 = [v3 decodeObjectOfClasses:v10 forKey:@"Metadata"];

  v12 = [v3 decodeIntegerForKey:@"Type"];
  v13 = [v3 decodeIntegerForKey:@"CloudStatus"];

  v14 = 0;
  if (v4 && v5 && v6 && v7 && v8)
  {
    v15 = [[HDAttachmentReferenceSchemaIdentifier alloc] initWithSchemaIdentifier:v5 schemaVersion:v18 objectIdentifier:v6 attachmentIdentifier:v7];
    v16 = [(HDAttachmentReference *)self initWithIdentifier:v4 schemaIdentifier:v15 creationDate:v8 options:v9 metadata:v11 type:v12 cloudStatus:v13];

    v14 = v16;
  }

  else
  {
    v16 = self;
  }

  return v14;
}

@end