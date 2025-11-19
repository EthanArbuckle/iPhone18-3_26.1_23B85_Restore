@interface GDMentionGenerationResult
- (GDMentionGenerationResult)initWithCoder:(id)a3;
- (GDMentionGenerationResult)initWithMentions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDMentionGenerationResult

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(GDMentionGenerationResult *)self mentions];
  v4 = [v2 stringWithFormat:@"<GDMentionGenerationResult: %@>", v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  mentions = self->_mentions;

  return [v4 initWithMentions:mentions];
}

- (GDMentionGenerationResult)initWithCoder:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_mentions);
  v9 = [v4 decodeObjectOfClasses:v7 forKey:v8];

  if (v9)
  {
    self = [(GDMentionGenerationResult *)self initWithMentions:v9];
    v10 = self;
  }

  else
  {
    v11 = [v4 error];

    if (!v11)
    {
      v12 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18[0] = @"GDMentionGenerationResult mentions is nil";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [v12 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v13];
      [v4 failWithError:v14];
    }

    v10 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  mentions = self->_mentions;
  v4 = a3;
  v5 = NSStringFromSelector(sel_mentions);
  [v4 encodeObject:mentions forKey:v5];
}

- (GDMentionGenerationResult)initWithMentions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GDMentionGenerationResult;
  v5 = [(GDMentionGenerationResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    mentions = v5->_mentions;
    v5->_mentions = v6;
  }

  return v5;
}

@end