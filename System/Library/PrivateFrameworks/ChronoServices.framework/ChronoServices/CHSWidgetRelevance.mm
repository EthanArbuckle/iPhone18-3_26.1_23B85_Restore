@interface CHSWidgetRelevance
- (BOOL)isEqual:(id)equal;
- (CHSWidgetRelevance)initWithAttribute:(id)attribute intentReference:(id)reference;
- (CHSWidgetRelevance)initWithCoder:(id)coder;
- (LNRelevantContext)relevantContext;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetRelevance

- (CHSWidgetRelevance)initWithAttribute:(id)attribute intentReference:(id)reference
{
  attributeCopy = attribute;
  referenceCopy = reference;
  v12.receiver = self;
  v12.super_class = CHSWidgetRelevance;
  v9 = [(CHSWidgetRelevance *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attribute, attribute);
    objc_storeStrong(&v10->_intentReference, reference);
  }

  return v10;
}

- (LNRelevantContext)relevantContext
{
  attribute = self->_attribute;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    context = [(CHSWidgetRelevanceAttribute *)self->_attribute context];
    toLnContext = [context toLnContext];
  }

  else
  {
    toLnContext = 0;
  }

  return toLnContext;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  attribute = self->_attribute;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __30__CHSWidgetRelevance_isEqual___block_invoke;
  v18[3] = &unk_1E7453078;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:attribute counterpart:v18];
  intentReference = self->_intentReference;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __30__CHSWidgetRelevance_isEqual___block_invoke_2;
  v16 = &unk_1E7453078;
  v10 = v7;
  v17 = v10;
  v11 = [v5 appendObject:intentReference counterpart:&v13];
  LOBYTE(v7) = [v5 isEqual];

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [v3 appendObject:self->_attribute];
  v5 = [v3 appendObject:self->_intentReference];
  v6 = [v3 hash];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_attribute withName:@"attribute"];
  v5 = [v3 appendObject:self->_intentReference withName:@"intentReference" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_attribute forKey:@"attribute"];
  [coderCopy encodeObject:self->_intentReference forKey:@"intentReference"];
}

- (CHSWidgetRelevance)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (initWithCoder__onceToken != -1)
  {
    [CHSWidgetRelevance initWithCoder:];
  }

  v11.receiver = self;
  v11.super_class = CHSWidgetRelevance;
  v5 = [(CHSWidgetRelevance *)&v11 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"relevantContext"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relevantContext"];
      v7 = [[CHSWidgetRelevanceRelevantContextAttribute alloc] initWithRelevantContext:v6];
    }

    else
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attribute"];
    }

    objc_storeStrong(&v5->_attribute, v7);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentReference"];
    intentReference = v5->_intentReference;
    v5->_intentReference = v8;
  }

  return v5;
}

@end