@interface _CHSExtensionIdentityBufBuilder
- (id)initWithBufferBuilder:(id *)builder;
- (void)dealloc;
- (void)setContainerBundleIdentifier:(id)identifier;
- (void)setDeviceIdentifier:(id)identifier;
- (void)setExtensionBundleIdentifier:(id)identifier;
- (void)setTokenString:(id)string;
@end

@implementation _CHSExtensionIdentityBufBuilder

- (id)initWithBufferBuilder:(id *)builder
{
  v4 = a2;
  if (builder)
  {
    v8.receiver = builder;
    v8.super_class = _CHSExtensionIdentityBufBuilder;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    builder = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      firstError = [v4 firstError];

      if (!firstError)
      {
        operator new();
      }
    }
  }

  return builder;
}

- (void)dealloc
{
  bldr = self->_bldr;
  if (bldr)
  {
    MEMORY[0x19A8C4F00](bldr, 0x1020C403A5D3213);
  }

  v4.receiver = self;
  v4.super_class = _CHSExtensionIdentityBufBuilder;
  [(_CHSExtensionIdentityBufBuilder *)&v4 dealloc];
}

- (void)setTokenString:(id)string
{
  v10 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:866 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = stringCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 4, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setExtensionBundleIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:876 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = identifierCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 6, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setContainerBundleIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:886 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = identifierCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setDeviceIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:896 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = identifierCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 10, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end