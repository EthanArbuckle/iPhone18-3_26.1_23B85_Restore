@interface CCInstanceRecord
+ (id)genSQLCreateStatements;
+ (id)recordFromDatabaseValueRow:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItemRecord:(id)a3;
- (CCInstanceRecord)init;
- (CCInstanceRecord)initWithDatabaseValueRow:(id)a3;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CCInstanceRecord

- (CCInstanceRecord)init
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
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ integer NOT NULL, %@ integer NOT NULL, %@ integer NOT NULL, PRIMARY KEY (%@) FOREIGN KEY (%@) REFERENCES %@ (%@) ON UPDATE CASCADE ON DELETE CASCADE)", @"instance", @"source_item_id_hash", @"provenance_row_id", @"modified", @"source_item_id_hash", @"provenance_row_id", @"provenance", @"provenance_row_id"];;
  v7[0] = v2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX %@ ON %@ (%@ ASC)", @"idx_instance_modified", @"instance", @"modified"];;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (CCInstanceRecord)initWithDatabaseValueRow:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CCInstanceRecord;
  v5 = [(CCInstanceRecord *)&v13 init];
  if (v5)
  {
    v6 = [v4 numberValueAtColumnIndex:0];
    sourceItemIdHash = v5->_sourceItemIdHash;
    v5->_sourceItemIdHash = v6;

    v8 = [v4 numberValueAtColumnIndex:1];
    provenanceRowId = v5->_provenanceRowId;
    v5->_provenanceRowId = v8;

    v10 = [v4 numberValueAtColumnIndex:2];
    modified = v5->_modified;
    v5->_modified = v10;
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = CCInstanceRecord;
  v3 = [(CCInstanceRecord *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"sourceItemIdHash: %@, provenanceRowId: %@, modified: %@", self->_sourceItemIdHash, self->_provenanceRowId, self->_modified];

  return v4;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCInstanceRecord *)self isEqualToItemRecord:v5];
  }

  return v6;
}

- (BOOL)isEqualToItemRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    sourceItemIdHash = self->_sourceItemIdHash;
    v7 = [v4 sourceItemIdHash];
    if ([(NSNumber *)sourceItemIdHash isEqual:v7])
    {
      provenanceRowId = self->_provenanceRowId;
      v9 = [v5 provenanceRowId];
      if ([(NSNumber *)provenanceRowId isEqual:v9])
      {
        modified = self->_modified;
        v11 = [v5 modified];
        v12 = [(NSNumber *)modified isEqual:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_sourceItemIdHash hash];
  v4 = [(NSNumber *)self->_provenanceRowId hash]^ v3;
  return v4 ^ [(NSNumber *)self->_modified hash];
}

@end