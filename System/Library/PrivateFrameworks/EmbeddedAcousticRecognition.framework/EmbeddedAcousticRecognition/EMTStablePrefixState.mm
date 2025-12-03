@interface EMTStablePrefixState
+ (id)stablePrefixState;
- (EMTStablePrefixState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (vector<int,)data;
- (vector<quasar::TranslationPhrase::SegmentInfo,)sourceSideData;
- (void)setData:()vector<int;
- (void)setSourceSideData:()vector<quasar:(std::allocator<quasar::TranslationPhrase::SegmentInfo>> *)quasar :TranslationPhrase::SegmentInfo;
@end

@implementation EMTStablePrefixState

+ (id)stablePrefixState
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSArray *)self->_stablePrefixData copyWithZone:zone];
  [v5 setStablePrefixData:v6];

  v7 = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{zone), "init"}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_segmentInfoData;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:{zone, v14}];
        [v7 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v5 setSegmentInfoData:v7];
  return v5;
}

- (EMTStablePrefixState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EMTStablePrefixState;
  v5 = [(EMTStablePrefixState *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"stablePrefixData"];
    stablePrefixData = v5->_stablePrefixData;
    v5->_stablePrefixData = v6;
  }

  return v5;
}

- (void)setData:()vector<int
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  var0 = a3->var0;
  var1 = a3->var1;
  if (a3->var0 != var1)
  {
    do
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:*var0];
      [(NSArray *)v5 addObject:v8];

      ++var0;
    }

    while (var0 != var1);
  }

  stablePrefixData = self->_stablePrefixData;
  self->_stablePrefixData = v5;
}

- (vector<int,)data
{
  if (self->_isFinalReceived)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Stable prefix should never be used after translation is finalized using this prefix."];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x4812000000;
  v13 = __Block_byref_object_copy__15;
  v14 = __Block_byref_object_dispose__15;
  v15 = &unk_1B5CADD23;
  memset(&__p, 0, sizeof(__p));
  stablePrefixData = [(EMTStablePrefixState *)self stablePrefixData];
  std::vector<int>::reserve(&__p, [stablePrefixData count]);

  stablePrefixData = self->_stablePrefixData;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __28__EMTStablePrefixState_data__block_invoke;
  v9[3] = &unk_1E7C1BCA8;
  v9[4] = &v10;
  [(NSArray *)stablePrefixData enumerateObjectsUsingBlock:v9];
  v7 = v11;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(retstr, v7[6], v7[7], (v7[7] - v7[6]) >> 2);
  _Block_object_dispose(&v10, 8);
  result = __p.__begin_;
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return result;
}

void __28__EMTStablePrefixState_data__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v20 = v3;
  v5 = [v3 integerValue];
  v7 = v4[7];
  v6 = v4[8];
  if (v7 >= v6)
  {
    v9 = v4[6];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFFCLL;
    v15 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>((v4 + 6), v15);
    }

    v16 = (v7 - v9) >> 2;
    v17 = (4 * v11);
    v18 = (4 * v11 - 4 * v16);
    *v17 = v5;
    v8 = v17 + 1;
    memcpy(v18, v9, v10);
    v19 = v4[6];
    v4[6] = v18;
    v4[7] = v8;
    v4[8] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v7 = v5;
    v8 = v7 + 4;
  }

  v4[7] = v8;
}

- (void)setSourceSideData:()vector<quasar:(std::allocator<quasar::TranslationPhrase::SegmentInfo>> *)quasar :TranslationPhrase::SegmentInfo
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  var0 = quasar->var0;
  var1 = quasar->var1;
  if (quasar->var0 != var1)
  {
    do
    {
      v8 = *&var0->var0;
      *&v11[7] = *(&var0->var1 + 3);
      *v11 = v8;
      v13 = 0;
      v14 = 0;
      v12 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v12, var0->var5.var0, var0->var5.var1, var0->var5.var1 - var0->var5.var0);
      __p = 0;
      v16 = 0;
      v17 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, var0->var6.var0, var0->var6.var1, var0->var6.var1 - var0->var6.var0);
      v9 = [EMTSegmentInfo segmentInfoWithData:v11];
      [(NSArray *)v5 addObject:v9];

      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }

      if (v12)
      {
        v13 = v12;
        operator delete(v12);
      }

      ++var0;
    }

    while (var0 != var1);
  }

  segmentInfoData = self->_segmentInfoData;
  self->_segmentInfoData = v5;
}

- (vector<quasar::TranslationPhrase::SegmentInfo,)sourceSideData
{
  if (self->_isFinalReceived)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Stable prefix should never be used after translation is finalized using this prefix."];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x4812000000;
  v13 = __Block_byref_object_copy__11;
  v14 = __Block_byref_object_dispose__12;
  v15 = &unk_1B5CADD23;
  memset(v16, 0, sizeof(v16));
  segmentInfoData = [(EMTStablePrefixState *)self segmentInfoData];
  std::vector<quasar::TranslationPhrase::SegmentInfo>::reserve(v16, [segmentInfoData count]);

  segmentInfoData = self->_segmentInfoData;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__EMTStablePrefixState_sourceSideData__block_invoke;
  v9[3] = &unk_1E7C1BCD0;
  v9[4] = &v10;
  [(NSArray *)segmentInfoData enumerateObjectsUsingBlock:v9];
  v7 = v11;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__init_with_size[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*>(retstr, v7[6], v7[7], (v7[7] - v7[6]) >> 6);
  _Block_object_dispose(&v10, 8);
  v17 = v16;
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v17);
  return result;
}

void __38__EMTStablePrefixState_sourceSideData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  if (v3)
  {
    [v3 getData];
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    v10 = 0u;
    *v11 = 0u;
  }

  v6 = *(v5 + 56);
  if (v6 >= *(v5 + 64))
  {
    v8 = std::vector<quasar::TranslationPhrase::SegmentInfo>::__emplace_back_slow_path<quasar::TranslationPhrase::SegmentInfo>(v5 + 48, &v10);
    v9 = __p[1];
    *(v5 + 56) = v8;
    if (v9)
    {
      __p[2] = v9;
      operator delete(v9);
    }
  }

  else
  {
    v7 = v10;
    *(v6 + 7) = *(&v10 + 7);
    *v6 = v7;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    *(v6 + 16) = *v11;
    *(v6 + 32) = __p[0];
    v11[0] = 0;
    v11[1] = 0;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 40) = *&__p[1];
    *(v6 + 56) = __p[3];
    memset(__p, 0, sizeof(__p));
    *(v5 + 56) = v6 + 64;
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }
}

@end