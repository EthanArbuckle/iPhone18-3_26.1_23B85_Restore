@interface CHSControlIdentity
- (BOOL)isEqual:(id)a3;
- (BOOL)matches:(id)a3;
- (CHSControlIdentity)initWithCoder:(id)a3;
- (CHSControlIdentity)initWithExtensionIdentity:(id)a3 kind:(id)a4 intent:(id)a5;
- (CHSControlIdentity)initWithExtensionIdentity:(id)a3 kind:(id)a4 intentReference:(id)a5;
- (id)_loggingIdentifier;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSControlIdentity

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(CHSControlIdentity *)self extensionIdentity];
  v5 = [v3 appendObject:v4];

  v6 = [(CHSControlIdentity *)self kind];
  v7 = [v3 appendString:v6];

  v8 = [v3 appendInt64:{-[CHSIntentReference stableHash](self->_intentReference, "stableHash")}];
  v9 = [v3 hash];

  return v9;
}

- (CHSControlIdentity)initWithExtensionIdentity:(id)a3 kind:(id)a4 intent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [[CHSIntentReference alloc] initWithIntent:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(CHSControlIdentity *)self initWithExtensionIdentity:v8 kind:v9 intentReference:v11];

  return v12;
}

- (CHSControlIdentity)initWithExtensionIdentity:(id)a3 kind:(id)a4 intentReference:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CHSControlIdentity;
  v11 = [(CHSControlIdentity *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    extensionIdentity = v11->_extensionIdentity;
    v11->_extensionIdentity = v12;

    v14 = [v9 copy];
    kind = v11->_kind;
    v11->_kind = v14;

    v16 = [v10 copy];
    intentReference = v11->_intentReference;
    v11->_intentReference = v16;
  }

  return v11;
}

- (BOOL)matches:(id)a3
{
  v4 = a3;
  v5 = [(CHSControlIdentity *)self extensionIdentity];
  v6 = [v4 extensionIdentity];
  if (BSEqualObjects())
  {
    v7 = [(CHSControlIdentity *)self kind];
    v8 = [v4 kind];
    v9 = BSEqualStrings();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(CHSExtensionIdentity *)self->_extensionIdentity isEqual:v5->_extensionIdentity]&& [(NSString *)self->_kind isEqualToString:v5->_kind])
      {
        v6 = [(CHSIntentReference *)self->_intentReference stableHash];
        v7 = v6 == [(CHSIntentReference *)v5->_intentReference stableHash];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CHSControlIdentity_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E7453000;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

id __51__CHSControlIdentity_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) extensionIdentity];
  v4 = [v2 appendObject:v3 withName:@"extensionIdentity"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) kind];
  [v5 appendString:v6 withName:@"kind"];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"intent" skipIfNil:1];
}

- (id)_loggingIdentifier
{
  intentReference = self->_intentReference;
  if (intentReference)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CHSIntentReference stableHash](intentReference, "stableHash")}];
    v5 = [v4 stringValue];
  }

  else
  {
    v5 = @"-";
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(CHSExtensionIdentity *)self->_extensionIdentity description];
  v8 = [v6 stringWithFormat:@"[%@:%@:%@]", v7, self->_kind, v5];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_extensionIdentity forKey:@"extId"];
  [v4 encodeObject:self->_kind forKey:@"kind"];
  [v4 encodeObject:self->_intentReference forKey:@"intentRef"];
}

- (CHSControlIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extId"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  if ([v4 containsValueForKey:@"intentRef"])
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentRef"];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CHSControlIdentity *)self initWithExtensionIdentity:v5 kind:v6 intentReference:v7];

  return v8;
}

@end