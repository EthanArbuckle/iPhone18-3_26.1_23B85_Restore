@interface _CHSRelevanceCacheBufBuilder
- (id)_finish;
- (id)initWithBufferBuilder:(id *)builder;
- (void)dealloc;
- (void)setArchivedObjects:(id)objects;
- (void)setGroups:(id)groups;
@end

@implementation _CHSRelevanceCacheBufBuilder

- (id)initWithBufferBuilder:(id *)builder
{
  v4 = a2;
  if (builder)
  {
    v8.receiver = builder;
    v8.super_class = _CHSRelevanceCacheBufBuilder;
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
  v4.super_class = _CHSRelevanceCacheBufBuilder;
  [(_CHSRelevanceCacheBufBuilder *)&v4 dealloc];
}

- (void)setArchivedObjects:(id)objects
{
  v10 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  if (!objectsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:404 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = objectsCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 4, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setGroups:(id)groups
{
  v10 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  if (!groupsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:414 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = groupsCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(self->_bldr->var0, 6, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_finish
{
  if (self)
  {
    firstError = [OUTLINED_FUNCTION_0_1(self) firstError];

    if (firstError)
    {
      self = &unk_1F0A7A058;
    }

    else
    {
      self = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{OUTLINED_FUNCTION_1_1(objc_msgSend(*(v1 + 8), "fbb"))}];
    }

    v2 = vars8;
  }

  return self;
}

@end