@interface CCProvenanceRecord
+ (id)genSQLCreateStatements;
+ (id)recordFromDatabaseValueRow:(id)row;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItemRecord:(id)record;
- (CCProvenanceRecord)init;
- (CCProvenanceRecord)initWithDatabaseValueRow:(id)row;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CCProvenanceRecord

- (CCProvenanceRecord)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (id)recordFromDatabaseValueRow:(id)row
{
  rowCopy = row;
  v4 = [objc_alloc(objc_opt_class()) initWithDatabaseValueRow:rowCopy];

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

- (CCProvenanceRecord)initWithDatabaseValueRow:(id)row
{
  rowCopy = row;
  v27.receiver = self;
  v27.super_class = CCProvenanceRecord;
  v5 = [(CCProvenanceRecord *)&v27 init];
  if (v5)
  {
    v6 = [rowCopy numberValueAtColumnIndex:0];
    provenanceRowId = v5->_provenanceRowId;
    v5->_provenanceRowId = v6;

    v8 = [rowCopy numberValueAtColumnIndex:1];
    deviceRowId = v5->_deviceRowId;
    v5->_deviceRowId = v8;

    v10 = [rowCopy numberValueAtColumnIndex:2];
    instanceHash = v5->_instanceHash;
    v5->_instanceHash = v10;

    v12 = [rowCopy numberValueAtColumnIndex:3];
    contentHash = v5->_contentHash;
    v5->_contentHash = v12;

    v14 = [rowCopy numberValueAtColumnIndex:4];
    contentSequenceNumber = v5->_contentSequenceNumber;
    v5->_contentSequenceNumber = v14;

    v16 = [rowCopy numberValueAtColumnIndex:5];
    contentState = v5->_contentState;
    v5->_contentState = v16;

    v18 = [rowCopy numberValueAtColumnIndex:6];
    metaContentSequenceNumber = v5->_metaContentSequenceNumber;
    v5->_metaContentSequenceNumber = v18;

    v20 = [rowCopy numberValueAtColumnIndex:7];
    metaContentState = v5->_metaContentState;
    v5->_metaContentState = v20;

    v22 = [rowCopy numberValueAtColumnIndex:8];
    contentSequenceNumberEndOfRun = v5->_contentSequenceNumberEndOfRun;
    v5->_contentSequenceNumberEndOfRun = v22;

    v24 = [rowCopy numberValueAtColumnIndex:9];
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
  unsignedShortValue = [(NSNumber *)self->_contentState unsignedShortValue];
  if (unsignedShortValue > 2u)
  {
    v8 = @"Undefined";
  }

  else
  {
    v8 = off_1E7C8B348[unsignedShortValue & 3];
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%u)", v8, unsignedShortValue];
  metaContentSequenceNumber = self->_metaContentSequenceNumber;
  metaContentSequenceNumberEndOfRun = self->_metaContentSequenceNumberEndOfRun;
  unsignedShortValue2 = [(NSNumber *)self->_metaContentState unsignedShortValue];
  if (unsignedShortValue2 > 2u)
  {
    v13 = @"Undefined";
  }

  else
  {
    v13 = off_1E7C8B348[unsignedShortValue2 & 3];
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%u)", v13, unsignedShortValue2];
  v15 = [v3 stringByAppendingFormat:@" provenanceRowId: %@, deviceRowId: %@, instanceHash: %@, contentHash: %@, contentSequenceNumber: %@, endOfRun: %@, contentState: %@, metaContentSequenceNumber: %@, endOfRun: %@, metaContentState: %@", provenanceRowId, deviceRowId, instanceHash, contentHash, contentSequenceNumber, contentSequenceNumberEndOfRun, v9, metaContentSequenceNumber, metaContentSequenceNumberEndOfRun, v14];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCProvenanceRecord *)self isEqualToItemRecord:v5];
  }

  return v6;
}

- (BOOL)isEqualToItemRecord:(id)record
{
  recordCopy = record;
  v8 = recordCopy;
  if (!recordCopy)
  {
    v12 = 0;
    goto LABEL_97;
  }

  provenanceRowId = self->_provenanceRowId;
  v10 = provenanceRowId;
  if (!provenanceRowId)
  {
    provenanceRowId = [recordCopy provenanceRowId];
    if (!provenanceRowId)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v10 = self->_provenanceRowId;
  }

  provenanceRowId2 = [v8 provenanceRowId];
  if (([(NSNumber *)v10 isEqual:provenanceRowId2]& 1) == 0)
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
    deviceRowId = [v8 deviceRowId];
    if (!deviceRowId)
    {
      v71 = 0;
      v72 = 0;
      goto LABEL_17;
    }

    v71 = deviceRowId;
    v14 = self->_deviceRowId;
  }

  deviceRowId2 = [v8 deviceRowId];
  if (([(NSNumber *)v14 isEqual:deviceRowId2]& 1) == 0)
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
    instanceHash = [v8 instanceHash];
    if (!instanceHash)
    {
      v69 = 0;
      v70 = v11;
      v67 = 0;
      goto LABEL_24;
    }

    v67 = instanceHash;
    v17 = self->_instanceHash;
  }

  instanceHash2 = [v8 instanceHash];
  v20 = v17;
  v21 = instanceHash2;
  if (![(NSNumber *)v20 isEqual:instanceHash2])
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
    contentHash = [v8 contentHash];
    if (!contentHash)
    {
      v62 = 0;
      v65 = 0;
      goto LABEL_31;
    }

    v62 = contentHash;
    v23 = self->_contentHash;
  }

  contentHash2 = [v8 contentHash];
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
    contentSequenceNumber = [v8 contentSequenceNumber];
    if (!contentSequenceNumber)
    {
      v58 = 0;
      v61 = 0;
      goto LABEL_38;
    }

    v58 = contentSequenceNumber;
    contentSequenceNumber = self->_contentSequenceNumber;
  }

  contentSequenceNumber2 = [v8 contentSequenceNumber];
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
    contentSequenceNumberEndOfRun = [v8 contentSequenceNumberEndOfRun];
    if (!contentSequenceNumberEndOfRun)
    {
      v54 = 0;
      v57 = 0;
      goto LABEL_45;
    }

    v54 = contentSequenceNumberEndOfRun;
    contentSequenceNumberEndOfRun = self->_contentSequenceNumberEndOfRun;
  }

  contentSequenceNumberEndOfRun2 = [v8 contentSequenceNumberEndOfRun];
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
    contentState = [v8 contentState];
    if (!contentState)
    {
      v50 = 0;
      v52 = 0;
      goto LABEL_52;
    }

    v50 = contentState;
    contentState = self->_contentState;
  }

  contentState2 = [v8 contentState];
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
    metaContentSequenceNumber = [v8 metaContentSequenceNumber];
    if (!metaContentSequenceNumber)
    {
      v46 = 0;
      v49 = 0;
      goto LABEL_59;
    }

    v46 = metaContentSequenceNumber;
    metaContentSequenceNumber = self->_metaContentSequenceNumber;
  }

  metaContentSequenceNumber2 = [v8 metaContentSequenceNumber];
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
    metaContentSequenceNumberEndOfRun = [v8 metaContentSequenceNumberEndOfRun];
    if (!metaContentSequenceNumberEndOfRun)
    {
      v43 = 0;
      v35 = 0;
      goto LABEL_66;
    }

    v43 = metaContentSequenceNumberEndOfRun;
    metaContentSequenceNumberEndOfRun = self->_metaContentSequenceNumberEndOfRun;
  }

  metaContentSequenceNumberEndOfRun2 = [v8 metaContentSequenceNumberEndOfRun];
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
    metaContentState = [v8 metaContentState];
    if (!metaContentState)
    {
      v41 = 0;
      v12 = 1;
      v11 = v70;
      goto LABEL_117;
    }

    v42 = metaContentState;
    v37 = self->_metaContentState;
  }

  v39 = v37;
  metaContentState2 = [v8 metaContentState];
  v12 = [(NSNumber *)v39 isEqual:metaContentState2];

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