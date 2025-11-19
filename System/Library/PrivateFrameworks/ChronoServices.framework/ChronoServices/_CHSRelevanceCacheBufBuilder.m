@interface _CHSRelevanceCacheBufBuilder
- (id)_finish;
- (id)initWithBufferBuilder:(id *)a1;
- (void)dealloc;
- (void)setArchivedObjects:(id)a3;
- (void)setGroups:(id)a3;
@end

@implementation _CHSRelevanceCacheBufBuilder

- (id)initWithBufferBuilder:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = _CHSRelevanceCacheBufBuilder;
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
  v4.super_class = _CHSRelevanceCacheBufBuilder;
  [(_CHSRelevanceCacheBufBuilder *)&v4 dealloc];
}

- (void)setArchivedObjects:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:404 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 4, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setGroups:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:414 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 6, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_finish
{
  if (a1)
  {
    v3 = [OUTLINED_FUNCTION_0_1(a1) firstError];

    if (v3)
    {
      a1 = &unk_1F0A7A058;
    }

    else
    {
      a1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{OUTLINED_FUNCTION_1_1(objc_msgSend(*(v1 + 8), "fbb"))}];
    }

    v2 = vars8;
  }

  return a1;
}

@end