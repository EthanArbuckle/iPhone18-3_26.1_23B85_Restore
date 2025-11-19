@interface LNExportedContentConfiguration
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)a3;
- (LNExportedContentConfiguration)configurationWithAuditToken:(id *)a3;
- (LNExportedContentConfiguration)initWithCoder:(id)a3;
- (LNExportedContentConfiguration)initWithContentType:(id)a3 preferredExtractionType:(int64_t)a4;
- (LNExportedContentConfiguration)initWithContentType:(id)a3 preferredExtractionType:(int64_t)a4 auditToken:(id *)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAuditToken:(id *)a3;
@end

@implementation LNExportedContentConfiguration

- (void)setAuditToken:(id *)a3
{
  v3 = *a3->var0;
  *&self->_auditToken.val[4] = *&a3->var0[4];
  *self->_auditToken.val = v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[2];
  *retstr->var0 = *&self->var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v7 = [(LNExportedContentConfiguration *)self contentType];
    v8 = [(LNExportedContentConfiguration *)v6 contentType];
    v9 = v7;
    v10 = v8;
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

    v14 = [(LNExportedContentConfiguration *)self preferredExtractionType];
    v13 = v14 == [(LNExportedContentConfiguration *)v6 preferredExtractionType];
LABEL_15:

    goto LABEL_16;
  }

  v13 = 1;
LABEL_17:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(LNExportedContentConfiguration *)self contentType];
  v4 = [v3 hash];
  v5 = [(LNExportedContentConfiguration *)self preferredExtractionType];

  return v5 ^ v4;
}

- (LNExportedContentConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
  v6 = [v4 decodeIntegerForKey:@"preferredExtractionType"];
  v11 = 0u;
  v12 = 0u;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNExportedContentConfiguration *)self contentType];
  [v4 encodeObject:v5 forKey:@"contentType"];

  [v4 encodeInteger:-[LNExportedContentConfiguration preferredExtractionType](self forKey:{"preferredExtractionType"), @"preferredExtractionType"}];
  v6 = MEMORY[0x1E695DEF0];
  [(LNExportedContentConfiguration *)self auditToken];
  v7 = [v6 if_dataWithAuditToken:&v8];
  [v4 encodeObject:v7 forKey:@"auditToken"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNExportedContentConfiguration *)self contentType];
  v7 = [v6 description];
  v8 = [(LNExportedContentConfiguration *)self preferredExtractionType];
  v9 = @"File";
  if (v8 == 1)
  {
    v9 = @"Data";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, contentType: %@, preferredExtractionType: %@>", v5, self, v7, v9];

  return v10;
}

- (LNExportedContentConfiguration)configurationWithAuditToken:(id *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(LNExportedContentConfiguration *)self contentType];
  v7 = [(LNExportedContentConfiguration *)self preferredExtractionType];
  v8 = *&a3->var0[4];
  v11[0] = *a3->var0;
  v11[1] = v8;
  v9 = [v5 initWithContentType:v6 preferredExtractionType:v7 auditToken:v11];

  return v9;
}

- (LNExportedContentConfiguration)initWithContentType:(id)a3 preferredExtractionType:(int64_t)a4 auditToken:(id *)a5
{
  v9 = a3;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"LNExportedContentConfiguration.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"contentType"}];
  }

  v17.receiver = self;
  v17.super_class = LNExportedContentConfiguration;
  v10 = [(LNExportedContentConfiguration *)&v17 init];
  if (v10)
  {
    v11 = [v9 copy];
    v12 = *(v10 + 1);
    *(v10 + 1) = v11;

    *(v10 + 2) = a4;
    v13 = *a5->var0;
    *(v10 + 40) = *&a5->var0[4];
    *(v10 + 24) = v13;
    v14 = v10;
  }

  return v10;
}

- (LNExportedContentConfiguration)initWithContentType:(id)a3 preferredExtractionType:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"LNExportedContentConfiguration.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"contentType"}];
  }

  v15.receiver = self;
  v15.super_class = LNExportedContentConfiguration;
  v8 = [(LNExportedContentConfiguration *)&v15 init];
  if (v8)
  {
    v9 = [v7 copy];
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    *(v8 + 2) = a4;
    *&v11 = -1;
    *(&v11 + 1) = -1;
    *(v8 + 24) = v11;
    *(v8 + 40) = v11;
    v12 = v8;
  }

  return v8;
}

@end