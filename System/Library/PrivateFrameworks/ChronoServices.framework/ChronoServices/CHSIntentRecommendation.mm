@interface CHSIntentRecommendation
- (BOOL)isEqual:(id)equal;
- (CHSIntentRecommendation)initWithBSXPCCoder:(id)coder;
- (CHSIntentRecommendation)initWithCoder:(id)coder;
- (CHSIntentRecommendation)initWithIntentReference:(id)reference localizedDescription:(id)description;
- (NSString)description;
- (id)_copyFillingInSchema:(id)schema;
- (id)_copyWithoutSchemaDataIfNecessary;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSIntentRecommendation

- (CHSIntentRecommendation)initWithIntentReference:(id)reference localizedDescription:(id)description
{
  referenceCopy = reference;
  descriptionCopy = description;
  if (referenceCopy)
  {
    v15.receiver = self;
    v15.super_class = CHSIntentRecommendation;
    v9 = [(CHSIntentRecommendation *)&v15 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_intentReference, reference);
      v11 = [descriptionCopy copy];
      localizedDescription = v10->_localizedDescription;
      v10->_localizedDescription = v11;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_copyFillingInSchema:(id)schema
{
  v4 = [(CHSIntentReference *)self->_intentReference _copyFillingInSchema:schema];
  if (v4 == self->_intentReference)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [[CHSIntentRecommendation alloc] initWithIntentReference:v4 localizedDescription:self->_localizedDescription];
  }

  v6 = selfCopy;

  return v6;
}

- (id)_copyWithoutSchemaDataIfNecessary
{
  _copyWithoutSchemaDataIfNecessary = [(CHSIntentReference *)self->_intentReference _copyWithoutSchemaDataIfNecessary];
  if (_copyWithoutSchemaDataIfNecessary == self->_intentReference)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [[CHSIntentRecommendation alloc] initWithIntentReference:_copyWithoutSchemaDataIfNecessary localizedDescription:self->_localizedDescription];
  }

  v5 = selfCopy;

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __38__CHSIntentRecommendation_description__block_invoke;
  v11 = &unk_1E7453000;
  v4 = v3;
  v12 = v4;
  selfCopy = self;
  v5 = [v4 modifyProem:&v8];
  build = [v4 build];

  return build;
}

uint64_t __38__CHSIntentRecommendation_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"intentReference"];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return [v3 appendString:v4 withName:@"description" skipIfEmpty:1];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      localizedDescription = self->_localizedDescription;
      v7 = v5->_localizedDescription;
      if (BSEqualObjects())
      {
        v8 = [(CHSIntentReference *)self->_intentReference isEqual:v5->_intentReference];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_intentReference forKey:@"intent2"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"desc"];
}

- (CHSIntentRecommendation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"desc"];
  if (![coderCopy containsValueForKey:@"intent2"])
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"intent"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:0];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = 0;
        goto LABEL_9;
      }

      v11 = v10;
    }

    v12 = v11;
LABEL_9:
    v6 = [[CHSIntentReference alloc] _initWithIntentInMemoryOnly:v12];

    goto LABEL_10;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent2"];
LABEL_10:
  selfCopy = 0;
  if (v6 && v5)
  {
    self = [(CHSIntentRecommendation *)self initWithIntentReference:v6 localizedDescription:v5];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_intentReference forKey:@"intent2"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"desc"];
}

- (CHSIntentRecommendation)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent2"];
  v6 = [coderCopy decodeStringForKey:@"desc"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CHSIntentRecommendation *)self initWithIntentReference:v5 localizedDescription:v6];
    selfCopy = self;
  }

  return selfCopy;
}

@end