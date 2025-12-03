@interface AFBBufferBuilder(_CHSIntentReferenceBuf)
- (id)_chsCreateIntentReferenceBufUsingBlock:()_CHSIntentReferenceBuf;
- (id)_chsCreateVectorOfIntentReferenceBufWithOffsets:()_CHSIntentReferenceBuf;
- (id)_chsFinishedBufferWithRootIntentReferenceBufOfs:()_CHSIntentReferenceBuf error:;
- (uint64_t)_chsCreateVectorOfIntentReferenceBufWithOffsets:()_CHSIntentReferenceBuf;
- (uint64_t)_chsFinishBufferWithRootIntentReferenceBufOfs:()_CHSIntentReferenceBuf error:;
- (void)_chsCreateVectorOfIntentReferenceBufWithOffsets:()_CHSIntentReferenceBuf;
@end

@implementation AFBBufferBuilder(_CHSIntentReferenceBuf)

- (id)_chsCreateIntentReferenceBufUsingBlock:()_CHSIntentReferenceBuf
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2443 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  [self throwIfFinalizedWithSelector:a2];
  v7 = [[_CHSIntentReferenceBufBuilder alloc] initWithBufferBuilder:self];
  v5[2](v5, v7);
  _finish = [(_CHSRelevanceCacheBufBuilder *)v7 _finish];

  objc_autoreleasePoolPop(v6);

  return _finish;
}

- (id)_chsCreateVectorOfIntentReferenceBufWithOffsets:()_CHSIntentReferenceBuf
{
  *a2 = &unk_1F0A50FA0;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (id)_chsFinishedBufferWithRootIntentReferenceBufOfs:()_CHSIntentReferenceBuf error:
{
  v7 = a3;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2465 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  [self throwIfFinalizedWithSelector:a2];
  firstError = [self firstError];

  if (firstError)
  {
    if (a4)
    {
      [self firstError];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    path = [self path];
    if (!path)
    {
      apple::aiml::flatbuffers2::FlatBufferBuilder::Finish([self fbb], objc_msgSend(v7, "unsignedIntValue"), "RECA", 0);
      [self finalizeWithSelector:a2];
      operator new();
    }

    v19 = 0;
    v12 = [self _chsFinishBufferWithRootIntentReferenceBufOfs:v7 error:&v19];
    v13 = v19;
    if (v12)
    {
      v18 = v13;
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:path options:8 error:&v18];
      v14 = v18;

      v13 = v14;
    }

    else
    {
      v9 = 0;
    }

    objc_autoreleasePoolPop(v10);
    if (a4)
    {
      v15 = v13;
      *a4 = v13;
    }
  }

  return v9;
}

- (uint64_t)_chsFinishBufferWithRootIntentReferenceBufOfs:()_CHSIntentReferenceBuf error:
{
  v7 = a3;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2499 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  [self throwIfFinalizedWithSelector:a2];
  firstError = [self firstError];

  if (firstError)
  {
    if (a4)
    {
      [self firstError];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v7;
    apple::aiml::flatbuffers2::FlatBufferBuilder::Finish([self fbb], objc_msgSend(v11, "unsignedIntValue"), "RECA", 0);
    BufferPointer = apple::aiml::flatbuffers2::FlatBufferBuilder::GetBufferPointer([self fbb]);
    v13 = [self fbb];
    v14 = v13[8];
    v15 = v13[12];
    v16 = v13[10];
    apple::aiml::flatbuffers2::FlatBufferBuilder::Release([self fbb], v22);
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(v22);
    v21 = 0;
    v9 = [self finalizeWithSelector:a2 allocatorBufferAddr:BufferPointer size:(v14 - v15 + v16) error:&v21];
    v17 = v21;

    objc_autoreleasePoolPop(v10);
    if (a4)
    {
      v18 = v17;
      *a4 = v17;
    }
  }

  return v9;
}

- (void)_chsCreateVectorOfIntentReferenceBufWithOffsets:()_CHSIntentReferenceBuf
{

  operator delete(self);
}

- (uint64_t)_chsCreateVectorOfIntentReferenceBufWithOffsets:()_CHSIntentReferenceBuf
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end