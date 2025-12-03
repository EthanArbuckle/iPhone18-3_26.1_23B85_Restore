@interface EMTSegmentInfo
+ (id)segmentInfo;
+ (id)segmentInfoWithData:(const void *)data;
- (EMTSegmentInfo)initWithCoder:(id)coder;
- (SegmentInfo)getData;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMTSegmentInfo

+ (id)segmentInfo
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)segmentInfoWithData:(const void *)data
{
  v4 = objc_alloc_init(self);
  [v4 setIsStable:*(data + 8)];
  [v4 setIsSourceSideBoundary:*(data + 10)];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = *(data + 2);
  for (i = *(data + 3); v6 != i; ++v6)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:*v6];
    [v5 addObject:v8];
  }

  [v4 setSourceTokenIDs:v5];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = *(data + 5);
  for (j = *(data + 6); v10 != j; ++v10)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:*v10];
    [v9 addObject:v12];
  }

  [v4 setTargetTokenIDs:v9];

  return v4;
}

- (SegmentInfo)getData
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x7012000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = &unk_1B5CADD23;
  isStable = self->_isStable;
  v19 = -1;
  v20 = isStable;
  v21 = 0;
  *v23 = 0u;
  *__p = 0u;
  v25 = 0u;
  isSourceSideBoundary = self->_isSourceSideBoundary;
  std::vector<int>::reserve(v23, [(NSArray *)self->_sourceTokenIDs count]);
  sourceTokenIDs = self->_sourceTokenIDs;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __25__EMTSegmentInfo_getData__block_invoke;
  v12[3] = &unk_1E7C1BCA8;
  v12[4] = &v13;
  [(NSArray *)sourceTokenIDs enumerateObjectsUsingBlock:v12];
  std::vector<int>::reserve((v14 + 11), [(NSArray *)self->_targetTokenIDs count]);
  targetTokenIDs = self->_targetTokenIDs;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __25__EMTSegmentInfo_getData__block_invoke_2;
  v11[3] = &unk_1E7C1BCA8;
  v11[4] = &v13;
  [(NSArray *)targetTokenIDs enumerateObjectsUsingBlock:v11];
  v8 = v14;
  v9 = *(v14 + 55);
  *&retstr->var0 = v14[6];
  *(&retstr->var1 + 3) = v9;
  retstr->var5.var0 = 0;
  retstr->var5.var1 = 0;
  retstr->var5.var2 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&retstr->var5, v8[8], v8[9], (v8[9] - v8[8]) >> 2);
  retstr->var6.var0 = 0;
  retstr->var6.var1 = 0;
  retstr->var6.var2 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&retstr->var6, v8[11], v8[12], (v8[12] - v8[11]) >> 2);
  _Block_object_dispose(&v13, 8);
  if (__p[1])
  {
    *&v25 = __p[1];
    operator delete(__p[1]);
  }

  result = v23[0];
  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }

  return result;
}

void __25__EMTSegmentInfo_getData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v20 = v3;
  v5 = [v3 integerValue];
  v7 = v4[9];
  v6 = v4[10];
  if (v7 >= v6)
  {
    v9 = v4[8];
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>((v4 + 8), v15);
    }

    v16 = (v7 - v9) >> 2;
    v17 = (4 * v11);
    v18 = (4 * v11 - 4 * v16);
    *v17 = v5;
    v8 = v17 + 1;
    memcpy(v18, v9, v10);
    v19 = v4[8];
    v4[8] = v18;
    v4[9] = v8;
    v4[10] = 0;
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

  v4[9] = v8;
}

void __25__EMTSegmentInfo_getData__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v20 = v3;
  v5 = [v3 integerValue];
  v7 = v4[12];
  v6 = v4[13];
  if (v7 >= v6)
  {
    v9 = v4[11];
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>((v4 + 11), v15);
    }

    v16 = (v7 - v9) >> 2;
    v17 = (4 * v11);
    v18 = (4 * v11 - 4 * v16);
    *v17 = v5;
    v8 = v17 + 1;
    memcpy(v18, v9, v10);
    v19 = v4[11];
    v4[11] = v18;
    v4[12] = v8;
    v4[13] = 0;
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

  v4[12] = v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSArray *)self->_sourceTokenIDs copyWithZone:zone];
  [v5 setSourceTokenIDs:v6];

  v7 = [(NSArray *)self->_targetTokenIDs copyWithZone:zone];
  [v5 setTargetTokenIDs:v7];

  [v5 setIsStable:self->_isStable];
  [v5 setIsSourceSideBoundary:self->_isSourceSideBoundary];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_sourceTokenIDs forKey:@"sourceTokenIDsData"];
  [coderCopy encodeObject:self->_targetTokenIDs forKey:@"targetTokenIDsData"];
  [coderCopy encodeBool:self->_isStable forKey:@"isStableData"];
  [coderCopy encodeBool:self->_isSourceSideBoundary forKey:@"isSourceSideBoundaryData"];
}

- (EMTSegmentInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = EMTSegmentInfo;
  v5 = [(EMTSegmentInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"sourceTokenIDsData"];
    sourceTokenIDs = v5->_sourceTokenIDs;
    v5->_sourceTokenIDs = v6;

    v8 = [coderCopy decodeObjectForKey:@"targetTokenIDsData"];
    targetTokenIDs = v5->_targetTokenIDs;
    v5->_targetTokenIDs = v8;

    v5->_isStable = [coderCopy decodeBoolForKey:@"isStableData"];
    v5->_isSourceSideBoundary = [coderCopy decodeBoolForKey:@"isSourceSideBoundaryData"];
  }

  return v5;
}

@end