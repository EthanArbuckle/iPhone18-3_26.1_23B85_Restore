@interface CHSControlActionMetadata
- (BOOL)isEqual:(id)equal;
- (CHSControlActionMetadata)initWithCoder:(id)coder;
- (CHSControlActionMetadata)initWithIntentType:(id)type;
- (NSString)rawIntentType;
- (id)_initWithMetadata:(id)metadata;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSControlActionMetadata

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CHSControlActionMetadata *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__CHSControlActionMetadata_succinctDescriptionBuilder__block_invoke;
  v7[3] = &unk_1E7453000;
  v4 = v3;
  v8 = v4;
  selfCopy = self;
  [v4 appendProem:self block:v7];
  v5 = v4;

  return v4;
}

id __54__CHSControlActionMetadata_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 8) withName:@"intentType"];
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 16) withName:@"isLauncher"];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 17) withName:@"isCameraCapture"];
}

- (CHSControlActionMetadata)initWithIntentType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = CHSControlActionMetadata;
  v5 = [(CHSControlActionMetadata *)&v9 init];
  if (v5)
  {
    v6 = [typeCopy copy];
    intentType = v5->_intentType;
    v5->_intentType = v6;
  }

  return v5;
}

- (id)_initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [(CHSControlActionMetadata *)self initWithIntentType:*(metadataCopy + 1)];
  v6 = v5;
  if (v5)
  {
    v5->_isLauncher = *(metadataCopy + 16);
    v5->_isCameraCapture = *(metadataCopy + 17);
  }

  return v6;
}

- (NSString)rawIntentType
{
  v3 = [(NSString *)self->_intentType hasPrefix:@"appintent:"];
  intentType = self->_intentType;
  if (v3)
  {
    v5 = -[NSString substringFromIndex:](intentType, "substringFromIndex:", [@"appintent:" length]);
  }

  else
  {
    v5 = [(NSString *)intentType copy];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      intentType = self->_intentType;
      v7 = v5->_intentType;
      if (BSEqualStrings() && (isLauncher = self->_isLauncher, v9 = v5->_isLauncher, BSEqualBools()))
      {
        isCameraCapture = self->_isCameraCapture;
        v11 = v5->_isCameraCapture;
        v12 = BSEqualBools();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_intentType forKey:@"intentType"];
  [coderCopy encodeBool:self->_isLauncher forKey:@"isLauncher"];
  [coderCopy encodeBool:self->_isCameraCapture forKey:@"isCameraCapture"];
}

- (CHSControlActionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentType"];
  if (v5)
  {
    v6 = [(CHSControlActionMetadata *)self initWithIntentType:v5];
    if (v6)
    {
      v6->_isLauncher = [coderCopy decodeBoolForKey:@"isLauncher"];
      v6->_isCameraCapture = [coderCopy decodeBoolForKey:@"isCameraCapture"];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CHSControlActionMetadata *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(CHSControlActionMetadata *)self succinctDescriptionBuilder];

  return succinctDescriptionBuilder;
}

@end