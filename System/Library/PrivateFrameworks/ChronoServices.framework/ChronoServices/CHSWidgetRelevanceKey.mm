@interface CHSWidgetRelevanceKey
- (BOOL)isEqual:(id)a3;
- (BOOL)matches:(id)a3;
- (CHSWidgetRelevanceKey)initWithCoder:(id)a3;
- (CHSWidgetRelevanceKey)initWithExtensionIdentity:(id)a3 kind:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSWidgetRelevanceKey

- (CHSWidgetRelevanceKey)initWithExtensionIdentity:(id)a3 kind:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CHSWidgetRelevanceKey;
  v8 = [(CHSWidgetRelevanceKey *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    extensionIdentity = v8->_extensionIdentity;
    v8->_extensionIdentity = v9;

    v11 = [v7 copy];
    kind = v8->_kind;
    v8->_kind = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  extensionIdentity = self->_extensionIdentity;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __33__CHSWidgetRelevanceKey_isEqual___block_invoke;
  v18[3] = &unk_1E7453078;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendObject:extensionIdentity counterpart:v18];
  kind = self->_kind;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __33__CHSWidgetRelevanceKey_isEqual___block_invoke_2;
  v16 = &unk_1E7453078;
  v10 = v7;
  v17 = v10;
  v11 = [v5 appendObject:kind counterpart:&v13];
  LOBYTE(v7) = [v5 isEqual];

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_extensionIdentity];
  v5 = [v3 appendString:self->_kind];
  v6 = [v3 hash];

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  extensionIdentity = self->_extensionIdentity;
  v4 = [(CHSWidgetRelevanceKey *)self kind];
  v5 = [v2 stringWithFormat:@"%@-%@", extensionIdentity, v4];

  return v5;
}

- (BOOL)matches:(id)a3
{
  v4 = a3;
  extensionIdentity = self->_extensionIdentity;
  v6 = [v4 extensionIdentity];
  if ([(CHSExtensionIdentity *)extensionIdentity isEqual:v6])
  {
    kind = self->_kind;
    v8 = [v4 kind];
    v9 = [(NSString *)kind isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CHSWidgetRelevanceKey)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CHSWidgetRelevanceKey;
  v5 = [(CHSWidgetRelevanceKey *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentity"];
    extensionIdentity = v5->_extensionIdentity;
    v5->_extensionIdentity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    kind = v5->_kind;
    v5->_kind = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_extensionIdentity forKey:@"extensionIdentity"];
  [v4 encodeObject:self->_kind forKey:@"kind"];
}

@end