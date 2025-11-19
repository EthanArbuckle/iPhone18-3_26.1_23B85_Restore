@interface HDAttachmentReferenceSchemaIdentifier
+ (id)tombstoneSchemaIdentifier;
- (BOOL)isEqual:(id)a3;
- (HDAttachmentReferenceSchemaIdentifier)initWithSchemaIdentifier:(id)a3 schemaVersion:(int64_t)a4 objectIdentifier:(id)a5 attachmentIdentifier:(id)a6;
- (unint64_t)hash;
@end

@implementation HDAttachmentReferenceSchemaIdentifier

- (HDAttachmentReferenceSchemaIdentifier)initWithSchemaIdentifier:(id)a3 schemaVersion:(int64_t)a4 objectIdentifier:(id)a5 attachmentIdentifier:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HDAttachmentReferenceSchemaIdentifier;
  v14 = [(HDAttachmentReferenceSchemaIdentifier *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_schemaIdentifier, a3);
    v15->_schemaVersion = a4;
    objc_storeStrong(&v15->_objectIdentifier, a5);
    objc_storeStrong(&v15->_attachmentIdentifier, a6);
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    schemaIdentifier = self->_schemaIdentifier;
    v8 = [v6 schemaIdentifier];
    if (schemaIdentifier == v8)
    {
      schemaVersion = self->_schemaVersion;
      if (schemaVersion == [v6 schemaVersion])
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = [v6 schemaIdentifier];
      if (v9)
      {
        v3 = v9;
        v10 = self->_schemaIdentifier;
        v11 = [v6 schemaIdentifier];
        if ((-[NSString isEqual:](v10, "isEqual:", v11) & 1) == 0 || (v12 = self->_schemaVersion, v12 != [v6 schemaVersion]))
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v32 = v11;
LABEL_9:
        objectIdentifier = self->_objectIdentifier;
        v16 = [v6 objectIdentifier];
        if (objectIdentifier != v16)
        {
          v17 = [v6 objectIdentifier];
          if (!v17)
          {
            v13 = 0;
LABEL_21:

            goto LABEL_22;
          }

          v18 = v17;
          v19 = self->_objectIdentifier;
          v20 = [v6 objectIdentifier];
          v21 = v19;
          v22 = v20;
          if (([(NSString *)v21 isEqual:v20]& 1) == 0)
          {

            v13 = 0;
LABEL_22:
            v11 = v32;
            if (schemaIdentifier != v8)
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
        v24 = [v6 attachmentIdentifier];
        v13 = attachmentIdentifier == v24;
        if (!v13)
        {
          v25 = [v6 attachmentIdentifier];
          if (v25)
          {
            v26 = self->_attachmentIdentifier;
            v29 = v25;
            v27 = [v6 attachmentIdentifier];
            v13 = [(NSUUID *)v26 isEqual:v27];
          }
        }

        if (objectIdentifier != v16)
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