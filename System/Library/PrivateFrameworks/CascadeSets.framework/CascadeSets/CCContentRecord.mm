@interface CCContentRecord
+ (id)genSQLCreateStatements;
+ (id)recordFromDatabaseValueRow:(id)row;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItemRecord:(id)record;
- (CCContentRecord)init;
- (CCContentRecord)initWithDatabaseValueRow:(id)row;
- (NSString)description;
@end

@implementation CCContentRecord

- (CCContentRecord)init
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
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ integer NOT NULL, %@ blob NOT NULL, PRIMARY KEY (%@))", @"content", @"content_hash", @"content", @"content_hash"];;
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CCContentRecord)initWithDatabaseValueRow:(id)row
{
  rowCopy = row;
  v11.receiver = self;
  v11.super_class = CCContentRecord;
  v5 = [(CCContentRecord *)&v11 init];
  if (v5)
  {
    v6 = [rowCopy numberValueAtColumnIndex:0];
    contentHash = v5->_contentHash;
    v5->_contentHash = v6;

    v8 = [rowCopy dataValueAtColumnIndex:1];
    content = v5->_content;
    v5->_content = v8;
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = CCContentRecord;
  v3 = [(CCContentRecord *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" contentHash: %@, content length: %lu", self->_contentHash, -[NSData length](self->_content, "length")];

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCContentRecord *)self isEqualToItemRecord:v5];
  }

  return v6;
}

- (BOOL)isEqualToItemRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (recordCopy)
  {
    contentHash = self->_contentHash;
    contentHash = [recordCopy contentHash];
    if ([(NSNumber *)contentHash isEqual:contentHash])
    {
      content = self->_content;
      content = [v5 content];
      v10 = [(NSData *)content isEqual:content];
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