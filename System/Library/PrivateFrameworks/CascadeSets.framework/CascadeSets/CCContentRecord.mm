@interface CCContentRecord
+ (id)genSQLCreateStatements;
+ (id)recordFromDatabaseValueRow:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItemRecord:(id)a3;
- (CCContentRecord)init;
- (CCContentRecord)initWithDatabaseValueRow:(id)a3;
- (NSString)description;
@end

@implementation CCContentRecord

- (CCContentRecord)init
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
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ integer NOT NULL, %@ blob NOT NULL, PRIMARY KEY (%@))", @"content", @"content_hash", @"content", @"content_hash"];;
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CCContentRecord)initWithDatabaseValueRow:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CCContentRecord;
  v5 = [(CCContentRecord *)&v11 init];
  if (v5)
  {
    v6 = [v4 numberValueAtColumnIndex:0];
    contentHash = v5->_contentHash;
    v5->_contentHash = v6;

    v8 = [v4 dataValueAtColumnIndex:1];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCContentRecord *)self isEqualToItemRecord:v5];
  }

  return v6;
}

- (BOOL)isEqualToItemRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    contentHash = self->_contentHash;
    v7 = [v4 contentHash];
    if ([(NSNumber *)contentHash isEqual:v7])
    {
      content = self->_content;
      v9 = [v5 content];
      v10 = [(NSData *)content isEqual:v9];
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