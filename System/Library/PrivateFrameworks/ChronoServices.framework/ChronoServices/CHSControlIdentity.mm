@interface CHSControlIdentity
- (BOOL)isEqual:(id)equal;
- (BOOL)matches:(id)matches;
- (CHSControlIdentity)initWithCoder:(id)coder;
- (CHSControlIdentity)initWithExtensionIdentity:(id)identity kind:(id)kind intent:(id)intent;
- (CHSControlIdentity)initWithExtensionIdentity:(id)identity kind:(id)kind intentReference:(id)reference;
- (id)_loggingIdentifier;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSControlIdentity

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  extensionIdentity = [(CHSControlIdentity *)self extensionIdentity];
  v5 = [builder appendObject:extensionIdentity];

  kind = [(CHSControlIdentity *)self kind];
  v7 = [builder appendString:kind];

  v8 = [builder appendInt64:{-[CHSIntentReference stableHash](self->_intentReference, "stableHash")}];
  v9 = [builder hash];

  return v9;
}

- (CHSControlIdentity)initWithExtensionIdentity:(id)identity kind:(id)kind intent:(id)intent
{
  identityCopy = identity;
  kindCopy = kind;
  intentCopy = intent;
  if (intentCopy)
  {
    v11 = [[CHSIntentReference alloc] initWithIntent:intentCopy];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(CHSControlIdentity *)self initWithExtensionIdentity:identityCopy kind:kindCopy intentReference:v11];

  return v12;
}

- (CHSControlIdentity)initWithExtensionIdentity:(id)identity kind:(id)kind intentReference:(id)reference
{
  identityCopy = identity;
  kindCopy = kind;
  referenceCopy = reference;
  v19.receiver = self;
  v19.super_class = CHSControlIdentity;
  v11 = [(CHSControlIdentity *)&v19 init];
  if (v11)
  {
    v12 = [identityCopy copy];
    extensionIdentity = v11->_extensionIdentity;
    v11->_extensionIdentity = v12;

    v14 = [kindCopy copy];
    kind = v11->_kind;
    v11->_kind = v14;

    v16 = [referenceCopy copy];
    intentReference = v11->_intentReference;
    v11->_intentReference = v16;
  }

  return v11;
}

- (BOOL)matches:(id)matches
{
  matchesCopy = matches;
  extensionIdentity = [(CHSControlIdentity *)self extensionIdentity];
  extensionIdentity2 = [matchesCopy extensionIdentity];
  if (BSEqualObjects())
  {
    kind = [(CHSControlIdentity *)self kind];
    kind2 = [matchesCopy kind];
    v9 = BSEqualStrings();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(CHSExtensionIdentity *)self->_extensionIdentity isEqual:v5->_extensionIdentity]&& [(NSString *)self->_kind isEqualToString:v5->_kind])
      {
        stableHash = [(CHSIntentReference *)self->_intentReference stableHash];
        v7 = stableHash == [(CHSIntentReference *)v5->_intentReference stableHash];
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

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CHSControlIdentity_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E7453000;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
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
    stringValue = [v4 stringValue];
  }

  else
  {
    stringValue = @"-";
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(CHSExtensionIdentity *)self->_extensionIdentity description];
  v8 = [v6 stringWithFormat:@"[%@:%@:%@]", v7, self->_kind, stringValue];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_extensionIdentity forKey:@"extId"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
  [coderCopy encodeObject:self->_intentReference forKey:@"intentRef"];
}

- (CHSControlIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  if ([coderCopy containsValueForKey:@"intentRef"])
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentRef"];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CHSControlIdentity *)self initWithExtensionIdentity:v5 kind:v6 intentReference:v7];

  return v8;
}

@end