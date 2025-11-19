@interface _CHSIntentReferenceBufBuilder
- (id)initWithBufferBuilder:(id *)a1;
- (void)dealloc;
- (void)setIntentData:(id)a3;
- (void)setPartialIntentData:(id)a3;
- (void)setSchemaData:(id)a3;
- (void)setStableHash:(int64_t)a3;
@end

@implementation _CHSIntentReferenceBufBuilder

- (id)initWithBufferBuilder:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = _CHSIntentReferenceBufBuilder;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = [v4 firstError];

      if (!v6)
      {
        operator new();
      }
    }
  }

  return a1;
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

- (void)setStableHash:(int64_t)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<long long>(self->_bldr->var0, 4, a3, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setIntentData:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2402 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 6, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSchemaData:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2412 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setPartialIntentData:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2422 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 10, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end