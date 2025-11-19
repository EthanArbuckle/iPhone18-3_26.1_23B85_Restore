@interface FCRecordContentArchive
- (BOOL)isEqual:(id)a3;
- (FCRecordContentArchive)initWithCoder:(id)a3;
- (id)description;
- (id)manifest;
- (id)recordBase;
- (id)unarchiveIntoContentContext:(id)a3;
- (unint64_t)hash;
@end

@implementation FCRecordContentArchive

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v7 = [(FCRecordContentArchive *)&self->super.super.isa recordBase];
    v8 = [v6[1] base];
    v9 = [v7 identifier];
    v10 = [v8 identifier];
    v11 = [v9 isEqualToString:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)recordBase
{
  if (a1)
  {
    a1 = [a1[1] base];
    v1 = vars8;
  }

  return a1;
}

- (unint64_t)hash
{
  v2 = [(FCRecordContentArchive *)&self->super.super.isa recordBase];
  v3 = [v2 identifier];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  v4 = [(FCRecordContentArchive *)&self->super.super.isa recordBase];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __37__FCRecordContentArchive_description__block_invoke;
  v16[3] = &unk_1E7C371A8;
  v17 = v4;
  v5 = v4;
  v6 = __37__FCRecordContentArchive_description__block_invoke(v16);
  [(FCDescription *)v3 addField:@"type" object:v6];

  v7 = [v5 identifier];
  [(FCDescription *)v3 addField:@"identifier" value:v7];

  v8 = MEMORY[0x1E695DF00];
  v9 = [v5 fetchDate];
  v10 = [v8 dateWithPBDate:v9];
  [(FCDescription *)v3 addField:@"fetchDate" object:v10];

  v11 = MEMORY[0x1E695DF00];
  v12 = [v5 modificationDate];
  v13 = [v11 dateWithPBDate:v12];
  [(FCDescription *)v3 addField:@"modificationDate" object:v13];

  v14 = [(FCDescription *)v3 descriptionString];

  return v14;
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

- (FCRecordContentArchive)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCRecordContentArchive;
  v5 = [(FCRecordContentArchive *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"record"];
    record = v5->_record;
    v5->_record = v6;
  }

  return v5;
}

- (id)unarchiveIntoContentContext:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FCRecordContentArchive *)&self->super.super.isa recordBase];
  v6 = [v4 internalContentContext];

  v7 = [v6 recordSources];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__FCRecordContentArchive_unarchiveIntoContentContext___block_invoke;
  v15[3] = &unk_1E7C371D0;
  v16 = v5;
  v8 = v5;
  v9 = [v7 fc_firstObjectPassingTest:v15];

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
  v4 = [(FCRecordContentArchive *)&self->super.super.isa recordBase];
  v5 = [v4 identifier];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [(FCContentManifest *)v3 initWithRecordIDs:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end