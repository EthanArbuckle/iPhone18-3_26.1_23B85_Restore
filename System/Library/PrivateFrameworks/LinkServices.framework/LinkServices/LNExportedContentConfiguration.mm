@interface LNExportedContentConfiguration
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)equal;
- (LNExportedContentConfiguration)configurationWithAuditToken:(id *)token;
- (LNExportedContentConfiguration)initWithCoder:(id)coder;
- (LNExportedContentConfiguration)initWithContentType:(id)type preferredExtractionType:(int64_t)extractionType;
- (LNExportedContentConfiguration)initWithContentType:(id)type preferredExtractionType:(int64_t)extractionType auditToken:(id *)token;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAuditToken:(id *)token;
@end

@implementation LNExportedContentConfiguration

- (void)setAuditToken:(id *)token
{
  v3 = *token->var0;
  *&self->_auditToken.val[4] = *&token->var0[4];
  *self->_auditToken.val = v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[2];
  *retstr->var0 = *&self->var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = 0;
LABEL_16:

      goto LABEL_17;
    }

    contentType = [(LNExportedContentConfiguration *)self contentType];
    contentType2 = [(LNExportedContentConfiguration *)v6 contentType];
    v9 = contentType;
    v10 = contentType2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if (!v9 || !v10)
      {

LABEL_14:
        v13 = 0;
        goto LABEL_15;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_14;
      }
    }

    preferredExtractionType = [(LNExportedContentConfiguration *)self preferredExtractionType];
    v13 = preferredExtractionType == [(LNExportedContentConfiguration *)v6 preferredExtractionType];
LABEL_15:

    goto LABEL_16;
  }

  v13 = 1;
LABEL_17:

  return v13;
}

- (unint64_t)hash
{
  contentType = [(LNExportedContentConfiguration *)self contentType];
  v4 = [contentType hash];
  preferredExtractionType = [(LNExportedContentConfiguration *)self preferredExtractionType];

  return preferredExtractionType ^ v4;
}

- (LNExportedContentConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
  v6 = [coderCopy decodeIntegerForKey:@"preferredExtractionType"];
  v11 = 0u;
  v12 = 0u;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];

  if (v7)
  {
    [v7 if_auditToken];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v10[0] = v11;
  v10[1] = v12;
  v8 = [(LNExportedContentConfiguration *)self initWithContentType:v5 preferredExtractionType:v6 auditToken:v10];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contentType = [(LNExportedContentConfiguration *)self contentType];
  [coderCopy encodeObject:contentType forKey:@"contentType"];

  [coderCopy encodeInteger:-[LNExportedContentConfiguration preferredExtractionType](self forKey:{"preferredExtractionType"), @"preferredExtractionType"}];
  v6 = MEMORY[0x1E695DEF0];
  [(LNExportedContentConfiguration *)self auditToken];
  v7 = [v6 if_dataWithAuditToken:&v8];
  [coderCopy encodeObject:v7 forKey:@"auditToken"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  contentType = [(LNExportedContentConfiguration *)self contentType];
  v7 = [contentType description];
  preferredExtractionType = [(LNExportedContentConfiguration *)self preferredExtractionType];
  v9 = @"File";
  if (preferredExtractionType == 1)
  {
    v9 = @"Data";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, contentType: %@, preferredExtractionType: %@>", v5, self, v7, v9];

  return v10;
}

- (LNExportedContentConfiguration)configurationWithAuditToken:(id *)token
{
  v5 = objc_alloc(objc_opt_class());
  contentType = [(LNExportedContentConfiguration *)self contentType];
  preferredExtractionType = [(LNExportedContentConfiguration *)self preferredExtractionType];
  v8 = *&token->var0[4];
  v11[0] = *token->var0;
  v11[1] = v8;
  v9 = [v5 initWithContentType:contentType preferredExtractionType:preferredExtractionType auditToken:v11];

  return v9;
}

- (LNExportedContentConfiguration)initWithContentType:(id)type preferredExtractionType:(int64_t)extractionType auditToken:(id *)token
{
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNExportedContentConfiguration.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"contentType"}];
  }

  v17.receiver = self;
  v17.super_class = LNExportedContentConfiguration;
  v10 = [(LNExportedContentConfiguration *)&v17 init];
  if (v10)
  {
    v11 = [typeCopy copy];
    v12 = *(v10 + 1);
    *(v10 + 1) = v11;

    *(v10 + 2) = extractionType;
    v13 = *token->var0;
    *(v10 + 40) = *&token->var0[4];
    *(v10 + 24) = v13;
    v14 = v10;
  }

  return v10;
}

- (LNExportedContentConfiguration)initWithContentType:(id)type preferredExtractionType:(int64_t)extractionType
{
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNExportedContentConfiguration.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"contentType"}];
  }

  v15.receiver = self;
  v15.super_class = LNExportedContentConfiguration;
  v8 = [(LNExportedContentConfiguration *)&v15 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    *(v8 + 2) = extractionType;
    *&v11 = -1;
    *(&v11 + 1) = -1;
    *(v8 + 24) = v11;
    *(v8 + 40) = v11;
    v12 = v8;
  }

  return v8;
}

@end