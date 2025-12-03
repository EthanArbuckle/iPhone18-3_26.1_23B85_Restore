@interface OITSUChunkedString
- (OITSUChunkedString)initWithChunkLength:(unint64_t)length;
- (id).cxx_construct;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)appendString:(id)string;
- (void)dealloc;
- (void)deleteCharactersInRange:(_NSRange)range;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
- (void)insertString:(id)string atIndex:(unint64_t)index;
- (void)p_appendRange:(_NSRange)range fromString:(id)string;
- (void)p_compactChunksInRange:(_NSRange)range;
- (void)p_deleteCharactersInRange:(_NSRange)range chunkIndex:(unint64_t)index;
- (void)p_insertCharactersInRange:(_NSRange)range fromString:(id)string atIndex:(unint64_t)index chunkIndex:(unint64_t)chunkIndex;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
@end

@implementation OITSUChunkedString

- (OITSUChunkedString)initWithChunkLength:(unint64_t)length
{
  v5.receiver = self;
  v5.super_class = OITSUChunkedString;
  result = [(OITSUChunkedString *)&v5 init];
  if (result)
  {
    result->_chunkLength = length;
  }

  return result;
}

- (void)dealloc
{
  std::vector<std::shared_ptr<TSUStringChunk>>::clear[abi:ne200100](&self->_chunks);
  v3.receiver = self;
  v3.super_class = OITSUChunkedString;
  [(OITSUChunkedString *)&v3 dealloc];
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  if (self->_length <= index)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"character index out of bounds"];
  }

  v5 = *(self->_chunks.__begin_ + 2 * p_chunkIndexForCharacterIndex(index, &self->_chunks.__begin_));
  return *(v5 + index - *v5 + 12);
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > self->_length)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"range out of bounds"];
  }

  v8 = p_chunkIndexForCharacterIndex(location, &self->_chunks.__begin_);
  if (length)
  {
    v9 = 16 * v8;
    do
    {
      v10 = *(self->_chunks.__begin_ + v9);
      v11 = location - *v10;
      if (length >= v10[2] - v11)
      {
        v12 = v10[2] - v11;
      }

      else
      {
        v12 = length;
      }

      memmove(characters, v10 + 2 * v11 + 24, 2 * v12);
      characters += v12;
      location += v12;
      v9 += 16;
      length -= v12;
    }

    while (length);
  }
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > self->_length)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"range out of bounds"];
  }

  v17 = [string length];
  v8 = [string length];
  if (v8 >= length)
  {
    v9 = length;
  }

  else
  {
    v9 = v8;
  }

  v10 = p_chunkIndexForCharacterIndex(location, &self->_chunks.__begin_);
  v18 = v9;
  if (v9)
  {
    v11 = location;
    while (1)
    {
      begin = self->_chunks.__begin_;
      v13 = begin[2 * v10];
      v14 = *v13;
      v20.length = v13[2];
      v20.location = *v13;
      v21.location = v11;
      v21.length = v9;
      v15 = NSIntersectionRange(v20, v21);
      [string getCharacters:begin[2 * v10] + 2 * (v15.location - v14) + 24 range:{v11 - location, v15.length}];
      v11 += v15.length;
      v9 -= v15.length;
      if (!v9)
      {
        break;
      }

      ++v10;
    }
  }

  if ((v17 - length) < 1)
  {
    if (((v17 - length) & 0x8000000000000000) != 0)
    {

      [(OITSUChunkedString *)self p_deleteCharactersInRange:v18 + location chunkIndex:length - v18, v10];
    }
  }

  else
  {
    v16 = v17 - v18;
    if (v18 + location == self->_length)
    {

      [(OITSUChunkedString *)self p_appendRange:v18 fromString:v16, string];
    }

    else
    {

      [(OITSUChunkedString *)self p_insertCharactersInRange:v18 fromString:v16 atIndex:string chunkIndex:?];
    }
  }
}

- (void)insertString:(id)string atIndex:(unint64_t)index
{
  if (self->_length < index)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"range out of bounds"];
  }

  if ([string length])
  {
    if (self->_length == index)
    {

      [(OITSUChunkedString *)self appendString:string];
    }

    else
    {
      v7 = p_chunkIndexForCharacterIndex(index, &self->_chunks.__begin_);
      v8 = [string length];

      [(OITSUChunkedString *)self p_insertCharactersInRange:0 fromString:v8 atIndex:string chunkIndex:index, v7];
    }
  }
}

- (void)deleteCharactersInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > self->_length)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"range out of bounds"];
  }

  if (length)
  {
    v6 = p_chunkIndexForCharacterIndex(location, &self->_chunks.__begin_);

    [(OITSUChunkedString *)self p_deleteCharactersInRange:location chunkIndex:length, v6];
  }
}

- (void)appendString:(id)string
{
  v5 = [string length];

  [(OITSUChunkedString *)self p_appendRange:0 fromString:v5, string];
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)p_appendRange:(_NSRange)range fromString:(id)string
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    p_chunks = &self->_chunks;
    do
    {
      end = p_chunks->__end_;
      if (end == p_chunks->__begin_ || ((v10 = *(end - 2), (v11 = *(end - 1)) == 0) ? (v18 = v10) : (atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed), *&v18 = v10, *(&v18 + 1) = v11), v12 = *(v10 + 8), v13 = *(v10 + 16), v14 = v12 - v13, v12 == v13))
      {
        operator new();
      }

      if (v14 <= 0)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUChunkedString(Private) p_appendRange:fromString:]"];
        +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v15, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUChunkedString.mm"], 330, 0, "should have allocated a chunk with available space at this point");
        +[OITSUAssertionHandler logBacktraceThrottled];
        v10 = v18;
      }

      if (length >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = length;
      }

      [string getCharacters:v10 + 2 * *(v10 + 16) + 24 range:{location, v16, v17}];
      *(v18 + 16) += v16;
      self->_length += v16;
      if (*(&v18 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
      }

      location += v16;
      length -= v16;
    }

    while (length);
  }
}

- (void)p_insertCharactersInRange:(_NSRange)range fromString:(id)string atIndex:(unint64_t)index chunkIndex:(unint64_t)chunkIndex
{
  chunkIndexCopy = chunkIndex;
  location = range.location;
  length = range.length;
  selfCopy = self;
  p_chunks = &self->_chunks;
  begin = self->_chunks.__begin_;
  if (self->_chunks.__end_ == begin)
  {
    operator new();
  }

  v12 = begin[chunkIndex];
  v13 = *(&begin[chunkIndex] + 1);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    v81 = v12;
    v14 = v12;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v81 = v12;
    v14 = v12;
    if (!v12)
    {
LABEL_6:
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUChunkedString(Private) p_insertCharactersInRange:fromString:atIndex:chunkIndex:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v15, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUChunkedString.mm"], 357, 0, "invalid nil value for '%{public}s'", "chunk");
      +[OITSUAssertionHandler logBacktraceThrottled];
      v14 = v81;
    }
  }

  v16 = v14[2];
  if (v14[1] - v16 < length)
  {
    v17 = chunkIndexCopy;
    indexCopy = index;
    v18 = (v16 + length);
    if (vcvtps_u32_f32(v18 / selfCopy->_chunkLength) != 1)
    {
      operator new();
    }

    v76 = selfCopy;
    v19 = *(p_chunks->__begin_ + chunkIndexCopy);
    v20 = *(p_chunks->__begin_ + 2 * chunkIndexCopy + 1);
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = vcvtps_u32_f32(v18 / 1uLL);
    v22 = *(&v81 + 1);
    v82 = v19;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      v23 = v82;
    }

    else
    {
      v23 = v19;
    }

    v77 = length;
    v28 = index - *v23;
    v29 = v28 - v21;
    if (v28 <= v21)
    {
      v34 = 0;
      v29 = indexCopy - *v23;
      v30 = chunkIndexCopy;
    }

    else
    {
      v30 = chunkIndexCopy + 1;
      v31 = p_chunks->__begin_ + 16 * chunkIndexCopy + 16;
      v32 = *v31;
      v33 = *(v31 + 8);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      memmove(v32 + 3, v23 + 2 * v21 + 24, 2 * v29);
      v32[2] += v29;
      v34 = v21 - v28;
      *v32 = *v23 + v21 - v28 + v23[2];
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        v23 = v82;
      }

      chunkIndexCopy = v17;
    }

    v35 = v23[2];
    v36 = v35 - v28;
    if (v35 <= v28)
    {
      v36 = 0;
      v39 = 0;
    }

    else
    {
      v37 = malloc_type_malloc(2 * v36, 0x1000040BDFB0063uLL);
      v38 = (v82 + 2 * v28 + 24);
      v39 = v37;
      memmove(v37, v38, 2 * v36);
      v34 -= v36;
      v40 = p_chunks->__begin_ + 16 * chunkIndexCopy;
      v42 = *(v40 + 16);
      v41 = *(v40 + 24);
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        *v42 -= v36;
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      else
      {
        *v42 -= v36;
      }
    }

    *(v82 + 16) += v34;
    v43 = *(p_chunks->__begin_ + v30);
    v44 = *(p_chunks->__begin_ + 2 * v30 + 1);
    if (v44)
    {
      atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(&v82 + 1);
    v81 = v43;
    v75 = v39;
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      v46 = v81;
    }

    else
    {
      v46 = v43;
    }

    v47 = *v46;
    v48 = v77;
    v49 = location - indexCopy;
    while (1)
    {
      v50 = *(p_chunks->__begin_ + v30);
      v51 = *(p_chunks->__begin_ + 2 * v30 + 1);
      if (v51)
      {
        atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
      }

      v52 = *(&v81 + 1);
      v81 = v50;
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        v53 = v81;
      }

      else
      {
        v53 = v50;
      }

      v54 = v21 - *(v53 + 16);
      if (v54)
      {
        v56 = v48 >= v54 ? v21 - *(v53 + 16) : v48;
        [string getCharacters:v53 + 2 * v29 + 24 range:{v49 + indexCopy, v56}];
        *v81 = v47;
        v55 = *(v81 + 16) + v56;
        *(v81 + 16) = v55;
        indexCopy += v56;
        v48 -= v56;
      }

      else
      {
        v55 = v21;
      }

      v29 = 0;
      v47 += v55;
      if (!v48)
      {
        break;
      }

      ++v30;
    }

    if (!v39)
    {
      goto LABEL_75;
    }

    v57 = *(p_chunks->__begin_ + v30);
    v58 = *(p_chunks->__begin_ + 2 * v30 + 1);
    if (v58)
    {
      atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
    }

    v59 = *(&v81 + 1);
    v81 = v57;
    if (v59)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      v60 = v81;
      if (!v36)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v60 = v57;
      if (!v36)
      {
LABEL_74:
        free(v75);
LABEL_75:
        chunkIndexCopy = v30;
        selfCopy = v76;
        length = v77;
        goto LABEL_76;
      }
    }

    v61 = *v60;
    v62 = v60[2] + *v60;
    v63 = v62;
    while (1)
    {
      v64 = *(p_chunks->__begin_ + v30);
      v65 = *(p_chunks->__begin_ + 2 * v30 + 1);
      if (v65)
      {
        atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
      }

      v66 = *(&v81 + 1);
      v81 = v64;
      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        v67 = v81;
      }

      else
      {
        v67 = v64;
      }

      v68 = *(v67 + 16);
      if (v21 == v68)
      {
        v69 = v21;
      }

      else
      {
        v70 = v36 >= v21 - v68 ? v21 - v68 : v36;
        memcpy((v67 + 2 * v68 + 24), &v75[2 * (v63 - v62)], 2 * v70);
        *v81 = v61;
        v69 = *(v81 + 16) + v70;
        *(v81 + 16) = v69;
        v63 += v70;
        v36 -= v70;
      }

      v61 += v69;
      if (!v36)
      {
        break;
      }

      ++v30;
    }

    goto LABEL_74;
  }

  v24 = index - *v14;
  v25 = v16 > v24;
  v26 = v16 - v24;
  if (v25 && length != 0)
  {
    memmove(v14 + 2 * v24 + 2 * length + 24, v14 + 2 * v24 + 24, 2 * v26);
    v14 = v81;
  }

  [string getCharacters:v14 + 2 * v24 + 24 range:{location, length}];
  *(v81 + 16) += length;
LABEL_76:
  v71 = (p_chunks->__end_ - p_chunks->__begin_) >> 4;
  if (v71 > chunkIndexCopy + 1)
  {
    v72 = ~chunkIndexCopy + v71;
    v73 = (p_chunks->__begin_ + 16 * chunkIndexCopy + 16);
    do
    {
      v74 = *v73;
      v73 += 2;
      *v74 += length;
      --v72;
    }

    while (v72);
  }

  selfCopy->_length += length;
  if (*(&v81 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v81 + 1));
  }
}

- (void)p_deleteCharactersInRange:(_NSRange)range chunkIndex:(unint64_t)index
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v7 = 0;
    selfCopy = self;
    p_chunks = &self->_chunks;
    indexCopy = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v10 = (p_chunks->__begin_ + 16 * index);
      v28.location = **v10;
      v28.length = (*v10)[2];
      v29.location = location;
      v29.length = length;
      v11 = NSIntersectionRange(v28, v29);
      v12 = *v10;
      v13 = **v10;
      v14 = (*v10)[2];
      v15 = v11.location - v13 + v11.length;
      if (v11.length)
      {
        v16 = v14 > v15;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        memmove(v12 + 2 * (v11.location - v13) + 24, v12 + 2 * v15 + 24, 2 * (v14 - v15));
        v12 = *v10;
        v13 = **v10;
        v14 = (*v10)[2];
      }

      *v12 = v13 - v7;
      v17 = v14 - v11.length;
      v12[2] = v17;
      if (v17)
      {
        if (indexCopy == 0x7FFFFFFFFFFFFFFFLL)
        {
          indexCopy = index;
        }

        ++index;
      }

      else
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *>(&v27, p_chunks->__begin_ + index + 1, p_chunks->__end_, p_chunks->__begin_ + 16 * index);
        v19 = v18;
        end = p_chunks->__end_;
        if (end != v18)
        {
          do
          {
            v21 = *(end - 1);
            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            end -= 16;
          }

          while (end != v19);
        }

        p_chunks->__end_ = v19;
      }

      location += v11.length;
      v7 += v11.length;
      length -= v11.length;
    }

    while (length);
    self = selfCopy;
  }

  else
  {
    v7 = 0;
    indexCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  v22 = (self->_chunks.__end_ - self->_chunks.__begin_) >> 4;
  v23 = v22 - index;
  if (v22 > index)
  {
    v24 = (self->_chunks.__begin_ + 16 * index);
    do
    {
      v25 = *v24;
      v24 += 2;
      *v25 -= v7;
      --v23;
    }

    while (v23);
  }

  self->_length -= v7;
  if (indexCopy != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(OITSUChunkedString *)self p_compactChunksInRange:?];
  }
}

- (void)p_compactChunksInRange:(_NSRange)range
{
  if (range.length)
  {
    if (range.location >= range.location + range.length)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v4 = (self->_chunks.__begin_ + 16 * range.location);
      length = range.length;
      do
      {
        v6 = *v4;
        v4 += 2;
        v3 += *(v6 + 16);
        --length;
      }

      while (length);
    }

    chunkLength = self->_chunkLength;
    if (v3 + (chunkLength >> 2) - 1 < chunkLength * (range.length - 1))
    {
      v8 = chunkLength;
      begin = self->_chunks.__begin_;
      v10 = &begin[16 * range.location];
      v12 = *v10;
      v11 = *(v10 + 1);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        begin = self->_chunks.__begin_;
      }

      v13 = v12[2];
      location = range.location;
      v14 = range.location + 1;
      v15 = &begin[16 * range.location + 16];
      v17 = *v15;
      v16 = *(v15 + 1);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = v12[2];
      v41 = v16;
      v39 = v11;
      v34 = vcvtps_u32_f32(v3 / v8);
      v35 = range.location + range.length;
      if (v18 < v3)
      {
        v19 = v12 + 2 * v13 + 24;
        v20 = (v17 + 3);
        v37 = *v12;
        v38 = range.location;
        do
        {
          v21 = v12[1];
          v22 = v12[2];
          v23 = v21 - v22;
          v24 = v17[2];
          if (v24 >= v21 - v22)
          {
            v25 = v21 - v22;
          }

          else
          {
            v25 = v17[2];
          }

          if (v25)
          {
            memmove(v19, v20, 2 * v25);
            v19 += 2 * v25;
            v20 += 2 * v25;
            v12[2] += v25;
            v17[2] -= v25;
            v18 += v25;
          }

          if (v18 < v3)
          {
            if (v12[1] == v12[2])
            {
              ++v38;
              v26 = self->_chunks.__begin_ + 16 * v38;
              v12 = *v26;
              v27 = *(v26 + 1);
              if (v27)
              {
                atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v39)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v39);
              }

              *v12 = v18 + v37;
              v19 = (v12 + 3);
              v39 = v27;
            }

            if (v24 <= v23)
            {
              ++v14;
              v28 = self->_chunks.__begin_ + 16 * v14;
              v17 = *v28;
              v29 = v28[1];
              if (v29)
              {
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v41)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v41);
              }

              v20 = (v17 + 3);
              v41 = v29;
            }

            if (v17 == v12)
            {
              v30 = v17 + 3;
              v31 = v17[2];
              memmove(v17 + 3, v20, 2 * v31);
              ++v14;
              v32 = self->_chunks.__begin_ + 16 * v14;
              v17 = *v32;
              v33 = v32[1];
              if (v33)
              {
                atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v41)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v41);
              }

              v18 += v31;
              v20 = (v17 + 3);
              v41 = v33;
              v19 = v30 + 2 * v31;
            }
          }
        }

        while (v18 < v3);
      }

      std::vector<std::shared_ptr<TSUStringChunk>>::erase(&self->_chunks, self->_chunks.__begin_ + 16 * location + 16 * v34, self->_chunks.__begin_ + v35);
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if (v39)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }
    }
  }
}

@end