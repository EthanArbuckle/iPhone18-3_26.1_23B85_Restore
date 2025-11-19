@interface CCProvenanceRecord
+ (id)genSQLCreateStatements;
+ (id)recordFromDatabaseValueRow:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItemRecord:(id)a3;
- (CCProvenanceRecord)init;
- (CCProvenanceRecord)initWithDatabaseValueRow:(id)a3;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CCProvenanceRecord

- (CCProvenanceRecord)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (id)recordFromDatabaseValueRow:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDatabaseValueRow:v3];

  return v4;
}

+ (id)genSQLCreateStatements
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ integer PRIMARY KEY, %@ integer NOT NULL, %@ integer NULLABLE, %@ integer NULLABLE, %@ integer NOT NULL, %@ integer NOT NULL, %@ integer NULLABLE, %@ integer NULLABLE, %@ integer NULLABLE, %@ integer NULLABLE, FOREIGN KEY (%@) REFERENCES %@ (%@) ON UPDATE CASCADE ON DELETE CASCADE) ", @"provenance", @"provenance_row_id", @"device_row_id", @"instance_hash", @"content_hash", @"content_sequence_number", @"content_state", @"metacontent_sequence_number", @"metacontent_state", @"content_sequence_number_end_of_run", @"metacontent_sequence_number_end_of_run", @"device_row_id", @"device", @"device_row_id"];;
  v10[0] = v2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX %@ ON %@ (%@, %@, %@)", @"idx_provenance_content_hash", @"provenance", @"content_hash", @"content_state", @"device_row_id"];;
  v10[1] = v3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX %@ ON %@ (%@, %@, %@, %@)", @"idx_provenance_content_hash_metacontent_state", @"provenance", @"content_hash", @"content_state", @"metacontent_state", @"device_row_id"];;
  v10[2] = v4;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX %@ ON %@ (%@, %@, %@ DESC)", @"idx_provenance_content_sequence_number", @"provenance", @"device_row_id", @"content_state", @"content_sequence_number"];;
  v10[3] = v5;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX %@ ON %@ (%@, %@, %@ DESC)", @"idx_provenance_metacontent_sequence_number", @"provenance", @"device_row_id", @"metacontent_state", @"metacontent_sequence_number"];;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (CCProvenanceRecord)initWithDatabaseValueRow:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CCProvenanceRecord;
  v5 = [(CCProvenanceRecord *)&v27 init];
  if (v5)
  {
    v6 = [v4 numberValueAtColumnIndex:0];
    provenanceRowId = v5->_provenanceRowId;
    v5->_provenanceRowId = v6;

    v8 = [v4 numberValueAtColumnIndex:1];
    deviceRowId = v5->_deviceRowId;
    v5->_deviceRowId = v8;

    v10 = [v4 numberValueAtColumnIndex:2];
    instanceHash = v5->_instanceHash;
    v5->_instanceHash = v10;

    v12 = [v4 numberValueAtColumnIndex:3];
    contentHash = v5->_contentHash;
    v5->_contentHash = v12;

    v14 = [v4 numberValueAtColumnIndex:4];
    contentSequenceNumber = v5->_contentSequenceNumber;
    v5->_contentSequenceNumber = v14;

    v16 = [v4 numberValueAtColumnIndex:5];
    contentState = v5->_contentState;
    v5->_contentState = v16;

    v18 = [v4 numberValueAtColumnIndex:6];
    metaContentSequenceNumber = v5->_metaContentSequenceNumber;
    v5->_metaContentSequenceNumber = v18;

    v20 = [v4 numberValueAtColumnIndex:7];
    metaContentState = v5->_metaContentState;
    v5->_metaContentState = v20;

    v22 = [v4 numberValueAtColumnIndex:8];
    contentSequenceNumberEndOfRun = v5->_contentSequenceNumberEndOfRun;
    v5->_contentSequenceNumberEndOfRun = v22;

    v24 = [v4 numberValueAtColumnIndex:9];
    metaContentSequenceNumberEndOfRun = v5->_metaContentSequenceNumberEndOfRun;
    v5->_metaContentSequenceNumberEndOfRun = v24;
  }

  return v5;
}

- (NSString)description
{
  v20.receiver = self;
  v20.super_class = CCProvenanceRecord;
  v3 = [(CCProvenanceRecord *)&v20 description];
  deviceRowId = self->_deviceRowId;
  provenanceRowId = self->_provenanceRowId;
  contentHash = self->_contentHash;
  instanceHash = self->_instanceHash;
  contentSequenceNumber = self->_contentSequenceNumber;
  contentSequenceNumberEndOfRun = self->_contentSequenceNumberEndOfRun;
  v7 = [(NSNumber *)self->_contentState unsignedShortValue];
  if (v7 > 2u)
  {
    v8 = @"Undefined";
  }

  else
  {
    v8 = off_1E7C8B348[v7 & 3];
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%u)", v8, v7];
  metaContentSequenceNumber = self->_metaContentSequenceNumber;
  metaContentSequenceNumberEndOfRun = self->_metaContentSequenceNumberEndOfRun;
  v12 = [(NSNumber *)self->_metaContentState unsignedShortValue];
  if (v12 > 2u)
  {
    v13 = @"Undefined";
  }

  else
  {
    v13 = off_1E7C8B348[v12 & 3];
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%u)", v13, v12];
  v15 = [v3 stringByAppendingFormat:@" provenanceRowId: %@, deviceRowId: %@, instanceHash: %@, contentHash: %@, contentSequenceNumber: %@, endOfRun: %@, contentState: %@, metaContentSequenceNumber: %@, endOfRun: %@, metaContentState: %@", provenanceRowId, deviceRowId, instanceHash, contentHash, contentSequenceNumber, contentSequenceNumberEndOfRun, v9, metaContentSequenceNumber, metaContentSequenceNumberEndOfRun, v14];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCProvenanceRecord *)self isEqualToItemRecord:v5];
  }

  return v6;
}

- (BOOL)isEqualToItemRecord:(id)a3
{
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    v12 = 0;
    goto LABEL_97;
  }

  provenanceRowId = self->_provenanceRowId;
  v10 = provenanceRowId;
  if (!provenanceRowId)
  {
    v3 = [v7 provenanceRowId];
    if (!v3)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v10 = self->_provenanceRowId;
  }

  v4 = [v8 provenanceRowId];
  if (([(NSNumber *)v10 isEqual:v4]& 1) == 0)
  {

    v12 = 0;
    goto LABEL_95;
  }

  v11 = 1;
LABEL_10:
  deviceRowId = self->_deviceRowId;
  v14 = deviceRowId;
  if (!deviceRowId)
  {
    v15 = [v8 deviceRowId];
    if (!v15)
    {
      v71 = 0;
      v72 = 0;
      goto LABEL_17;
    }

    v71 = v15;
    v14 = self->_deviceRowId;
  }

  v5 = [v8 deviceRowId];
  if (([(NSNumber *)v14 isEqual:v5]& 1) == 0)
  {

    v12 = 0;
    goto LABEL_92;
  }

  v72 = 1;
LABEL_17:
  instanceHash = self->_instanceHash;
  v17 = instanceHash;
  if (!instanceHash)
  {
    v18 = [v8 instanceHash];
    if (!v18)
    {
      v69 = 0;
      v70 = v11;
      v67 = 0;
      goto LABEL_24;
    }

    v67 = v18;
    v17 = self->_instanceHash;
  }

  v19 = [v8 instanceHash];
  v20 = v17;
  v21 = v19;
  if (![(NSNumber *)v20 isEqual:v19])
  {
    v12 = 0;
    goto LABEL_102;
  }

  v66 = v21;
  v69 = 1;
  v70 = v11;
LABEL_24:
  contentHash = self->_contentHash;
  v23 = contentHash;
  if (!contentHash)
  {
    v24 = [v8 contentHash];
    if (!v24)
    {
      v62 = 0;
      v65 = 0;
      goto LABEL_31;
    }

    v62 = v24;
    v23 = self->_contentHash;
  }

  v68 = [v8 contentHash];
  if (![(NSNumber *)v23 isEqual:?])
  {
    v12 = 0;
    v11 = v70;
    goto LABEL_86;
  }

  v65 = 1;
LABEL_31:
  contentSequenceNumber = self->_contentSequenceNumber;
  v64 = contentSequenceNumber;
  if (!contentSequenceNumber)
  {
    v26 = [v8 contentSequenceNumber];
    if (!v26)
    {
      v58 = 0;
      v61 = 0;
      goto LABEL_38;
    }

    v58 = v26;
    contentSequenceNumber = self->_contentSequenceNumber;
  }

  v63 = [v8 contentSequenceNumber];
  if (![(NSNumber *)contentSequenceNumber isEqual:?])
  {
    v12 = 0;
    v11 = v70;
    goto LABEL_83;
  }

  v61 = 1;
LABEL_38:
  contentSequenceNumberEndOfRun = self->_contentSequenceNumberEndOfRun;
  v60 = contentSequenceNumberEndOfRun;
  if (!contentSequenceNumberEndOfRun)
  {
    v28 = [v8 contentSequenceNumberEndOfRun];
    if (!v28)
    {
      v54 = 0;
      v57 = 0;
      goto LABEL_45;
    }

    v54 = v28;
    contentSequenceNumberEndOfRun = self->_contentSequenceNumberEndOfRun;
  }

  v59 = [v8 contentSequenceNumberEndOfRun];
  if (![(NSNumber *)contentSequenceNumberEndOfRun isEqual:?])
  {
    v12 = 0;
    v11 = v70;
    goto LABEL_80;
  }

  v57 = 1;
LABEL_45:
  contentState = self->_contentState;
  v56 = contentState;
  if (!contentState)
  {
    v30 = [v8 contentState];
    if (!v30)
    {
      v50 = 0;
      v52 = 0;
      goto LABEL_52;
    }

    v50 = v30;
    contentState = self->_contentState;
  }

  v55 = [v8 contentState];
  if (![(NSNumber *)contentState isEqual:?])
  {
    v12 = 0;
    v11 = v70;
    goto LABEL_77;
  }

  v52 = 1;
LABEL_52:
  metaContentSequenceNumber = self->_metaContentSequenceNumber;
  v53 = metaContentSequenceNumber;
  if (!metaContentSequenceNumber)
  {
    v32 = [v8 metaContentSequenceNumber];
    if (!v32)
    {
      v46 = 0;
      v49 = 0;
      goto LABEL_59;
    }

    v46 = v32;
    metaContentSequenceNumber = self->_metaContentSequenceNumber;
  }

  v51 = [v8 metaContentSequenceNumber];
  if (![(NSNumber *)metaContentSequenceNumber isEqual:?])
  {
    v12 = 0;
    v11 = v70;
    goto LABEL_74;
  }

  v49 = 1;
LABEL_59:
  metaContentSequenceNumberEndOfRun = self->_metaContentSequenceNumberEndOfRun;
  v48 = metaContentSequenceNumberEndOfRun;
  if (!metaContentSequenceNumberEndOfRun)
  {
    v34 = [v8 metaContentSequenceNumberEndOfRun];
    if (!v34)
    {
      v43 = 0;
      v35 = 0;
      goto LABEL_66;
    }

    v43 = v34;
    metaContentSequenceNumberEndOfRun = self->_metaContentSequenceNumberEndOfRun;
  }

  v47 = [v8 metaContentSequenceNumberEndOfRun];
  if (![(NSNumber *)metaContentSequenceNumberEndOfRun isEqual:?])
  {
    v12 = 0;
    v11 = v70;
LABEL_71:

    goto LABEL_72;
  }

  v35 = 1;
LABEL_66:
  metaContentState = self->_metaContentState;
  v37 = metaContentState;
  v45 = v35;
  if (!metaContentState)
  {
    v38 = [v8 metaContentState];
    if (!v38)
    {
      v41 = 0;
      v12 = 1;
      v11 = v70;
      goto LABEL_117;
    }

    v42 = v38;
    v37 = self->_metaContentState;
  }

  v39 = v37;
  v44 = [v8 metaContentState];
  v12 = [(NSNumber *)v39 isEqual:v44];

  if (metaContentState)
  {
    v11 = v70;
    if (!v45)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  v11 = v70;
  v41 = v42;
LABEL_117:

  if (v45)
  {
    goto LABEL_71;
  }

LABEL_72:
  if (v48)
  {
    if (!v49)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v49)
  {
LABEL_74:
  }

LABEL_75:
  if (v53)
  {
    if (!v52)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (v52)
  {
LABEL_77:
  }

LABEL_78:
  if (v56)
  {
    if (!v57)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (v57)
  {
LABEL_80:
  }

LABEL_81:
  if (v60)
  {
    if (!v61)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  if (v61)
  {
LABEL_83:
  }

LABEL_84:
  if (!v64)
  {

    if ((v65 & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v65)
  {
LABEL_86:
  }

LABEL_87:
  if (contentHash)
  {
    if (!v69)
    {
      goto LABEL_89;
    }
  }

  else
  {

    if ((v69 & 1) == 0)
    {
LABEL_89:
      if (instanceHash)
      {
        goto LABEL_90;
      }

      goto LABEL_103;
    }
  }

  v21 = v66;
LABEL_102:

  if (instanceHash)
  {
LABEL_90:
    if (!v72)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_103:

  if (v72)
  {
LABEL_91:
  }

LABEL_92:
  if (deviceRowId)
  {
    if (!v11)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  if (v11)
  {
LABEL_94:
  }

LABEL_95:
  if (!provenanceRowId)
  {
  }

LABEL_97:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_provenanceRowId hash];
  v4 = [(NSNumber *)self->_deviceRowId hash]^ v3;
  v5 = [(NSNumber *)self->_instanceHash hash];
  v6 = v4 ^ v5 ^ [(NSNumber *)self->_contentHash hash];
  v7 = [(NSNumber *)self->_contentSequenceNumber hash];
  v8 = v7 ^ [(NSNumber *)self->_contentState hash];
  v9 = v6 ^ v8 ^ [(NSNumber *)self->_metaContentSequenceNumber hash];
  v10 = [(NSNumber *)self->_metaContentState hash];
  v11 = v10 ^ [(NSNumber *)self->_contentSequenceNumberEndOfRun hash];
  return v9 ^ v11 ^ [(NSNumber *)self->_metaContentSequenceNumberEndOfRun hash];
}

@end