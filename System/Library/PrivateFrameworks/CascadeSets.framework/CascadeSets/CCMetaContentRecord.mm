@interface CCMetaContentRecord
+ (id)genSQLCreateStatements;
+ (id)recordFromDatabaseValueRow:(id)row;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItemRecord:(id)record;
- (CCMetaContentRecord)init;
- (CCMetaContentRecord)initWithDatabaseValueRow:(id)row;
- (NSString)description;
@end

@implementation CCMetaContentRecord

- (CCMetaContentRecord)init
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
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ integer NOT NULL, %@ blob NOT NULL, PRIMARY KEY (%@))", @"metacontent", @"instance_hash", @"metacontent", @"instance_hash"];;
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CCMetaContentRecord)initWithDatabaseValueRow:(id)row
{
  rowCopy = row;
  v11.receiver = self;
  v11.super_class = CCMetaContentRecord;
  v5 = [(CCMetaContentRecord *)&v11 init];
  if (v5)
  {
    v6 = [rowCopy numberValueAtColumnIndex:0];
    instanceHash = v5->_instanceHash;
    v5->_instanceHash = v6;

    v8 = [rowCopy dataValueAtColumnIndex:1];
    metaContent = v5->_metaContent;
    v5->_metaContent = v8;
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = CCMetaContentRecord;
  v3 = [(CCMetaContentRecord *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" metaContent length: %lu, instanceHash: %@", -[NSData length](self->_metaContent, "length"), self->_instanceHash];

  return v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCMetaContentRecord *)self isEqualToItemRecord:v5];
  }

  return v6;
}

- (BOOL)isEqualToItemRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (recordCopy)
  {
    instanceHash = self->_instanceHash;
    instanceHash = [recordCopy instanceHash];
    if ([(NSNumber *)instanceHash isEqual:instanceHash])
    {
      metaContent = self->_metaContent;
      metaContent = [v5 metaContent];
      v10 = [(NSData *)metaContent isEqual:metaContent];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end