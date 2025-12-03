@interface CHSWidgetRelevanceKey
- (BOOL)isEqual:(id)equal;
- (BOOL)matches:(id)matches;
- (CHSWidgetRelevanceKey)initWithCoder:(id)coder;
- (CHSWidgetRelevanceKey)initWithExtensionIdentity:(id)identity kind:(id)kind;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetRelevanceKey

- (CHSWidgetRelevanceKey)initWithExtensionIdentity:(id)identity kind:(id)kind
{
  identityCopy = identity;
  kindCopy = kind;
  v14.receiver = self;
  v14.super_class = CHSWidgetRelevanceKey;
  v8 = [(CHSWidgetRelevanceKey *)&v14 init];
  if (v8)
  {
    v9 = [identityCopy copy];
    extensionIdentity = v8->_extensionIdentity;
    v8->_extensionIdentity = v9;

    v11 = [kindCopy copy];
    kind = v8->_kind;
    v8->_kind = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  extensionIdentity = self->_extensionIdentity;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __33__CHSWidgetRelevanceKey_isEqual___block_invoke;
  v18[3] = &unk_1E7453078;
  v7 = equalCopy;
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_extensionIdentity];
  v5 = [builder appendString:self->_kind];
  v6 = [builder hash];

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  extensionIdentity = self->_extensionIdentity;
  kind = [(CHSWidgetRelevanceKey *)self kind];
  v5 = [v2 stringWithFormat:@"%@-%@", extensionIdentity, kind];

  return v5;
}

- (BOOL)matches:(id)matches
{
  matchesCopy = matches;
  extensionIdentity = self->_extensionIdentity;
  extensionIdentity = [matchesCopy extensionIdentity];
  if ([(CHSExtensionIdentity *)extensionIdentity isEqual:extensionIdentity])
  {
    kind = self->_kind;
    kind = [matchesCopy kind];
    v9 = [(NSString *)kind isEqualToString:kind];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CHSWidgetRelevanceKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CHSWidgetRelevanceKey;
  v5 = [(CHSWidgetRelevanceKey *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentity"];
    extensionIdentity = v5->_extensionIdentity;
    v5->_extensionIdentity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    kind = v5->_kind;
    v5->_kind = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_extensionIdentity forKey:@"extensionIdentity"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
}

@end