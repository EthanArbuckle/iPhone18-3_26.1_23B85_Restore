@interface GDMentionGenerationResult
- (GDMentionGenerationResult)initWithCoder:(id)coder;
- (GDMentionGenerationResult)initWithMentions:(id)mentions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDMentionGenerationResult

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  mentions = [(GDMentionGenerationResult *)self mentions];
  v4 = [v2 stringWithFormat:@"<GDMentionGenerationResult: %@>", mentions];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mentions = self->_mentions;

  return [v4 initWithMentions:mentions];
}

- (GDMentionGenerationResult)initWithCoder:(id)coder
{
  v18[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_mentions);
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:v8];

  if (v9)
  {
    self = [(GDMentionGenerationResult *)self initWithMentions:v9];
    selfCopy = self;
  }

  else
  {
    error = [coderCopy error];

    if (!error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18[0] = @"GDMentionGenerationResult mentions is nil";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [v12 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v13];
      [coderCopy failWithError:v14];
    }

    selfCopy = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  mentions = self->_mentions;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_mentions);
  [coderCopy encodeObject:mentions forKey:v5];
}

- (GDMentionGenerationResult)initWithMentions:(id)mentions
{
  mentionsCopy = mentions;
  v9.receiver = self;
  v9.super_class = GDMentionGenerationResult;
  v5 = [(GDMentionGenerationResult *)&v9 init];
  if (v5)
  {
    v6 = [mentionsCopy copy];
    mentions = v5->_mentions;
    v5->_mentions = v6;
  }

  return v5;
}

@end