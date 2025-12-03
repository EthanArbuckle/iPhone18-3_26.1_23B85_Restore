@interface _CHSWidgetRelevancePropertiesBufBuilder
- (id)initWithBufferBuilder:(id *)builder;
- (void)dealloc;
- (void)setExtensionIdentity:(id)identity;
- (void)setIsDeletion:(BOOL)deletion;
- (void)setKind:(id)kind;
- (void)setLastRelevanceUpdate:(double)update;
- (void)setRelevances:(id)relevances;
- (void)setSupportsBackgroundRefresh:(BOOL)refresh;
@end

@implementation _CHSWidgetRelevancePropertiesBufBuilder

- (id)initWithBufferBuilder:(id *)builder
{
  v4 = a2;
  if (builder)
  {
    v8.receiver = builder;
    v8.super_class = _CHSWidgetRelevancePropertiesBufBuilder;
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
  v4.super_class = _CHSWidgetRelevancePropertiesBufBuilder;
  [(_CHSWidgetRelevancePropertiesBufBuilder *)&v4 dealloc];
}

- (void)setExtensionIdentity:(id)identity
{
  v10 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  if (!identityCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1399 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = identityCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 4, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setKind:(id)kind
{
  v10 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  if (!kindCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1409 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = kindCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 6, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSupportsBackgroundRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  v7 = *MEMORY[0x1E69E9840];
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 8, refreshCopy, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setIsDeletion:(BOOL)deletion
{
  deletionCopy = deletion;
  v7 = *MEMORY[0x1E69E9840];
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 10, deletionCopy, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setLastRelevanceUpdate:(double)update
{
  v7 = *MEMORY[0x1E69E9840];
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(self->_bldr->var0, 12, update, 0.0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setRelevances:(id)relevances
{
  v10 = *MEMORY[0x1E69E9840];
  relevancesCopy = relevances;
  if (!relevancesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1440 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = relevancesCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 14, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end