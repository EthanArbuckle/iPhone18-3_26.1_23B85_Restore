@interface AFBBufferBuilder(_CHSWidgetRelevancePropertiesBuf)
- (id)_chsCreateVectorOfWidgetRelevancePropertiesBufWithOffsets:()_CHSWidgetRelevancePropertiesBuf;
- (id)_chsCreateWidgetRelevancePropertiesBufUsingBlock:()_CHSWidgetRelevancePropertiesBuf;
- (id)_chsFinishedBufferWithRootWidgetRelevancePropertiesBufOfs:()_CHSWidgetRelevancePropertiesBuf error:;
- (uint64_t)_chsCreateVectorOfWidgetRelevancePropertiesBufWithOffsets:()_CHSWidgetRelevancePropertiesBuf;
- (uint64_t)_chsFinishBufferWithRootWidgetRelevancePropertiesBufOfs:()_CHSWidgetRelevancePropertiesBuf error:;
- (void)_chsCreateVectorOfWidgetRelevancePropertiesBufWithOffsets:()_CHSWidgetRelevancePropertiesBuf;
@end

@implementation AFBBufferBuilder(_CHSWidgetRelevancePropertiesBuf)

- (id)_chsCreateWidgetRelevancePropertiesBufUsingBlock:()_CHSWidgetRelevancePropertiesBuf
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"_CHSRelevanceCache_generated.mm" lineNumber:1461 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  [a1 throwIfFinalizedWithSelector:a2];
  v7 = [[_CHSWidgetRelevancePropertiesBufBuilder alloc] initWithBufferBuilder:a1];
  v5[2](v5, v7);
  v8 = [(_CHSRelevanceCacheBufBuilder *)v7 _finish];

  objc_autoreleasePoolPop(v6);

  return v8;
}

- (id)_chsCreateVectorOfWidgetRelevancePropertiesBufWithOffsets:()_CHSWidgetRelevancePropertiesBuf
{
  *a2 = &unk_1F0A50EA0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

- (id)_chsFinishedBufferWithRootWidgetRelevancePropertiesBufOfs:()_CHSWidgetRelevancePropertiesBuf error:
{
  v7 = a3;
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"_CHSRelevanceCache_generated.mm" lineNumber:1483 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  [a1 throwIfFinalizedWithSelector:a2];
  v8 = [a1 firstError];

  if (v8)
  {
    if (a4)
    {
      [a1 firstError];
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
    v11 = [a1 path];
    if (!v11)
    {
      apple::aiml::flatbuffers2::FlatBufferBuilder::Finish([a1 fbb], objc_msgSend(v7, "unsignedIntValue"), "RECA", 0);
      [a1 finalizeWithSelector:a2];
      operator new();
    }

    v19 = 0;
    v12 = [a1 _chsFinishBufferWithRootWidgetRelevancePropertiesBufOfs:v7 error:&v19];
    v13 = v19;
    if (v12)
    {
      v18 = v13;
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v11 options:8 error:&v18];
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

- (uint64_t)_chsFinishBufferWithRootWidgetRelevancePropertiesBufOfs:()_CHSWidgetRelevancePropertiesBuf error:
{
  v7 = a3;
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"_CHSRelevanceCache_generated.mm" lineNumber:1517 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  [a1 throwIfFinalizedWithSelector:a2];
  v8 = [a1 firstError];

  if (v8)
  {
    if (a4)
    {
      [a1 firstError];
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
    apple::aiml::flatbuffers2::FlatBufferBuilder::Finish([a1 fbb], objc_msgSend(v11, "unsignedIntValue"), "RECA", 0);
    BufferPointer = apple::aiml::flatbuffers2::FlatBufferBuilder::GetBufferPointer([a1 fbb]);
    v13 = [a1 fbb];
    v14 = v13[8];
    v15 = v13[12];
    v16 = v13[10];
    apple::aiml::flatbuffers2::FlatBufferBuilder::Release([a1 fbb], v22);
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(v22);
    v21 = 0;
    v9 = [a1 finalizeWithSelector:a2 allocatorBufferAddr:BufferPointer size:(v14 - v15 + v16) error:&v21];
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

- (void)_chsCreateVectorOfWidgetRelevancePropertiesBufWithOffsets:()_CHSWidgetRelevancePropertiesBuf
{

  operator delete(a1);
}

- (uint64_t)_chsCreateVectorOfWidgetRelevancePropertiesBufWithOffsets:()_CHSWidgetRelevancePropertiesBuf
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end