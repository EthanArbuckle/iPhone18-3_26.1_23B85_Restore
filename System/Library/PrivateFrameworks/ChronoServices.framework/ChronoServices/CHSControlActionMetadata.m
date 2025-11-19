@interface CHSControlActionMetadata
- (BOOL)isEqual:(id)a3;
- (CHSControlActionMetadata)initWithCoder:(id)a3;
- (CHSControlActionMetadata)initWithIntentType:(id)a3;
- (NSString)rawIntentType;
- (id)_initWithMetadata:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSControlActionMetadata

- (id)succinctDescription
{
  v2 = [(CHSControlActionMetadata *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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
  v9 = self;
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

- (CHSControlActionMetadata)initWithIntentType:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CHSControlActionMetadata;
  v5 = [(CHSControlActionMetadata *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    intentType = v5->_intentType;
    v5->_intentType = v6;
  }

  return v5;
}

- (id)_initWithMetadata:(id)a3
{
  v4 = a3;
  v5 = [(CHSControlActionMetadata *)self initWithIntentType:*(v4 + 1)];
  v6 = v5;
  if (v5)
  {
    v5->_isLauncher = *(v4 + 16);
    v5->_isCameraCapture = *(v4 + 17);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_intentType forKey:@"intentType"];
  [v4 encodeBool:self->_isLauncher forKey:@"isLauncher"];
  [v4 encodeBool:self->_isCameraCapture forKey:@"isCameraCapture"];
}

- (CHSControlActionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentType"];
  if (v5)
  {
    v6 = [(CHSControlActionMetadata *)self initWithIntentType:v5];
    if (v6)
    {
      v6->_isLauncher = [v4 decodeBoolForKey:@"isLauncher"];
      v6->_isCameraCapture = [v4 decodeBoolForKey:@"isCameraCapture"];
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHSControlActionMetadata *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v3 = [(CHSControlActionMetadata *)self succinctDescriptionBuilder];

  return v3;
}

@end