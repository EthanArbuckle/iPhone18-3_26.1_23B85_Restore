@interface FCRecordContentArchive
- (BOOL)isEqual:(id)equal;
- (FCRecordContentArchive)initWithCoder:(id)coder;
- (id)description;
- (id)manifest;
- (id)recordBase;
- (id)unarchiveIntoContentContext:(id)context;
- (unint64_t)hash;
@end

@implementation FCRecordContentArchive

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    recordBase = [(FCRecordContentArchive *)&self->super.super.isa recordBase];
    base = [v6[1] base];
    identifier = [recordBase identifier];
    identifier2 = [base identifier];
    v11 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)recordBase
{
  if (self)
  {
    self = [self[1] base];
    v1 = vars8;
  }

  return self;
}

- (unint64_t)hash
{
  recordBase = [(FCRecordContentArchive *)&self->super.super.isa recordBase];
  identifier = [recordBase identifier];
  v4 = [identifier hash];

  return v4;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  recordBase = [(FCRecordContentArchive *)&self->super.super.isa recordBase];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __37__FCRecordContentArchive_description__block_invoke;
  v16[3] = &unk_1E7C371A8;
  v17 = recordBase;
  v5 = recordBase;
  v6 = __37__FCRecordContentArchive_description__block_invoke(v16);
  [(FCDescription *)v3 addField:@"type" object:v6];

  identifier = [v5 identifier];
  [(FCDescription *)v3 addField:@"identifier" value:identifier];

  v8 = MEMORY[0x1E695DF00];
  fetchDate = [v5 fetchDate];
  v10 = [v8 dateWithPBDate:fetchDate];
  [(FCDescription *)v3 addField:@"fetchDate" object:v10];

  v11 = MEMORY[0x1E695DF00];
  modificationDate = [v5 modificationDate];
  v13 = [v11 dateWithPBDate:modificationDate];
  [(FCDescription *)v3 addField:@"modificationDate" object:v13];

  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

__CFString *__37__FCRecordContentArchive_description__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) recordType] - 1;
  if (v1 > 0x13)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7C37260[v1];
  }
}

- (FCRecordContentArchive)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FCRecordContentArchive;
  v5 = [(FCRecordContentArchive *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"record"];
    record = v5->_record;
    v5->_record = v6;
  }

  return v5;
}

- (id)unarchiveIntoContentContext:(id)context
{
  v17[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  recordBase = [(FCRecordContentArchive *)&self->super.super.isa recordBase];
  internalContentContext = [contextCopy internalContentContext];

  recordSources = [internalContentContext recordSources];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__FCRecordContentArchive_unarchiveIntoContentContext___block_invoke;
  v15[3] = &unk_1E7C371D0;
  v16 = recordBase;
  v8 = recordBase;
  v9 = [recordSources fc_firstObjectPassingTest:v15];

  v17[0] = self->_record;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v11 = [v9 savePBRecords:v10];

  v12 = [[FCContentUnarchiveResult alloc] initWithInterestToken:v11 storageSize:[(FCContentArchive *)self storageSize]];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)manifest
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [FCContentManifest alloc];
  recordBase = [(FCRecordContentArchive *)&self->super.super.isa recordBase];
  identifier = [recordBase identifier];
  v10[0] = identifier;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [(FCContentManifest *)v3 initWithRecordIDs:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end