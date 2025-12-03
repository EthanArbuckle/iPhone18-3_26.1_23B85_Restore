@interface _CHSIntentReferenceBufBuilder
- (id)initWithBufferBuilder:(id *)builder;
- (void)dealloc;
- (void)setIntentData:(id)data;
- (void)setPartialIntentData:(id)data;
- (void)setSchemaData:(id)data;
- (void)setStableHash:(int64_t)hash;
@end

@implementation _CHSIntentReferenceBufBuilder

- (id)initWithBufferBuilder:(id *)builder
{
  v4 = a2;
  if (builder)
  {
    v8.receiver = builder;
    v8.super_class = _CHSIntentReferenceBufBuilder;
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
  v4.super_class = _CHSIntentReferenceBufBuilder;
  [(_CHSIntentReferenceBufBuilder *)&v4 dealloc];
}

- (void)setStableHash:(int64_t)hash
{
  v7 = *MEMORY[0x1E69E9840];
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<long long>(self->_bldr->var0, 4, hash, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setIntentData:(id)data
{
  v10 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2402 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = dataCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 6, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSchemaData:(id)data
{
  v10 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2412 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = dataCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setPartialIntentData:(id)data
{
  v10 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2422 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = dataCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 10, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end