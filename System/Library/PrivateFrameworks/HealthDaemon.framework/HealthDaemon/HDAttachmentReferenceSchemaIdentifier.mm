@interface HDAttachmentReferenceSchemaIdentifier
+ (id)tombstoneSchemaIdentifier;
- (BOOL)isEqual:(id)equal;
- (HDAttachmentReferenceSchemaIdentifier)initWithSchemaIdentifier:(id)identifier schemaVersion:(int64_t)version objectIdentifier:(id)objectIdentifier attachmentIdentifier:(id)attachmentIdentifier;
- (unint64_t)hash;
@end

@implementation HDAttachmentReferenceSchemaIdentifier

- (HDAttachmentReferenceSchemaIdentifier)initWithSchemaIdentifier:(id)identifier schemaVersion:(int64_t)version objectIdentifier:(id)objectIdentifier attachmentIdentifier:(id)attachmentIdentifier
{
  identifierCopy = identifier;
  objectIdentifierCopy = objectIdentifier;
  attachmentIdentifierCopy = attachmentIdentifier;
  v17.receiver = self;
  v17.super_class = HDAttachmentReferenceSchemaIdentifier;
  v14 = [(HDAttachmentReferenceSchemaIdentifier *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_schemaIdentifier, identifier);
    v15->_schemaVersion = version;
    objc_storeStrong(&v15->_objectIdentifier, objectIdentifier);
    objc_storeStrong(&v15->_attachmentIdentifier, attachmentIdentifier);
  }

  return v15;
}

+ (id)tombstoneSchemaIdentifier
{
  v2 = [HDAttachmentReferenceSchemaIdentifier alloc];
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v4 = [(HDAttachmentReferenceSchemaIdentifier *)v2 initWithSchemaIdentifier:&stru_283BF39C8 schemaVersion:0 objectIdentifier:&stru_283BF39C8 attachmentIdentifier:v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    schemaIdentifier = self->_schemaIdentifier;
    schemaIdentifier = [v6 schemaIdentifier];
    if (schemaIdentifier == schemaIdentifier)
    {
      schemaVersion = self->_schemaVersion;
      if (schemaVersion == [v6 schemaVersion])
      {
        goto LABEL_9;
      }
    }

    else
    {
      schemaIdentifier2 = [v6 schemaIdentifier];
      if (schemaIdentifier2)
      {
        v3 = schemaIdentifier2;
        v10 = self->_schemaIdentifier;
        schemaIdentifier3 = [v6 schemaIdentifier];
        if ((-[NSString isEqual:](v10, "isEqual:", schemaIdentifier3) & 1) == 0 || (v12 = self->_schemaVersion, v12 != [v6 schemaVersion]))
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v32 = schemaIdentifier3;
LABEL_9:
        objectIdentifier = self->_objectIdentifier;
        objectIdentifier = [v6 objectIdentifier];
        if (objectIdentifier != objectIdentifier)
        {
          objectIdentifier2 = [v6 objectIdentifier];
          if (!objectIdentifier2)
          {
            v13 = 0;
LABEL_21:

            goto LABEL_22;
          }

          v18 = objectIdentifier2;
          v19 = self->_objectIdentifier;
          objectIdentifier3 = [v6 objectIdentifier];
          v21 = v19;
          v22 = objectIdentifier3;
          if (([(NSString *)v21 isEqual:objectIdentifier3]& 1) == 0)
          {

            v13 = 0;
LABEL_22:
            schemaIdentifier3 = v32;
            if (schemaIdentifier != schemaIdentifier)
            {
              goto LABEL_23;
            }

LABEL_24:

            goto LABEL_25;
          }

          v30 = v22;
          v31 = v18;
        }

        attachmentIdentifier = self->_attachmentIdentifier;
        attachmentIdentifier = [v6 attachmentIdentifier];
        v13 = attachmentIdentifier == attachmentIdentifier;
        if (!v13)
        {
          attachmentIdentifier2 = [v6 attachmentIdentifier];
          if (attachmentIdentifier2)
          {
            v26 = self->_attachmentIdentifier;
            v29 = attachmentIdentifier2;
            attachmentIdentifier3 = [v6 attachmentIdentifier];
            v13 = [(NSUUID *)v26 isEqual:attachmentIdentifier3];
          }
        }

        if (objectIdentifier != objectIdentifier)
        {
        }

        goto LABEL_21;
      }
    }

    v13 = 0;
    goto LABEL_24;
  }

  v13 = 0;
LABEL_25:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_schemaIdentifier hash];
  v4 = [(NSString *)self->_objectIdentifier hash]^ v3;
  return v4 ^ [(NSUUID *)self->_attachmentIdentifier hash];
}

@end