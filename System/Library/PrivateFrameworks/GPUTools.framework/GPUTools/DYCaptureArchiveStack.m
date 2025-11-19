@interface DYCaptureArchiveStack
- (BOOL)_stackIsEmpty:(id *)a3;
- (BOOL)adjunctFileExistsForFilename:(id)a3 error:(id *)a4;
- (BOOL)fileExistsForFilename:(id)a3 error:(id *)a4;
- (BOOL)fileExistsForFilenameBuffer:(const char *)a3 error:(id *)a4;
- (BOOL)getInfo:(id *)a3 forFilePosition:(unint64_t)a4 error:(id *)a5;
- (BOOL)getInfo:(id *)a3 forFilename:(id)a4 error:(id *)a5;
- (BOOL)getInfo:(id *)a3 forFilenameBuffer:(const char *)a4 error:(id *)a5;
- (BOOL)requestDataForFilePosition:(unint64_t)a3 buffer:(void *)a4 size:(unint64_t *)a5 error:(id *)a6;
- (id).cxx_construct;
- (id)allObjects;
- (id)copyAdjunctDataForFilename:(id)a3 error:(id *)a4;
- (id)copyDataForFilePosition:(unint64_t)a3 error:(id *)a4;
- (id)copyDataForFilename:(id)a3 error:(id *)a4;
- (id)copyDataForFilenameBuffer:(const char *)a3 error:(id *)a4;
- (id)filenamesWithPredicate:(id)a3 error:(id *)a4;
- (id)filenamesWithPrefix:(id)a3 error:(id *)a4;
- (id)getFilenameForFilePosition:(unint64_t)a3 error:(id *)a4;
- (id)metadataValueForKey:(id)a3;
- (id)openFileWithFilename:(id)a3 error:(id *)a4;
- (id)resolveFilename:(id)a3 error:(id *)a4;
- (id)top;
- (int64_t)readDataForFilePosition:(unint64_t)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6;
- (int64_t)readDataForFilename:(id)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6;
- (int64_t)readDataForFilenameBuffer:(const char *)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6;
- (vector<unsigned)getSortedFilePositionsForDataCaching;
- (void)allocateAndReadDataForFilenameBuffer:(const char *)a3 outSize:(unint64_t *)a4 error:(id *)a5;
- (void)cacheAllResources;
- (void)close;
- (void)push:(id)a3;
- (void)releaseBytesForFilePosition:(unint64_t)a3;
@end

@implementation DYCaptureArchiveStack

- (void)push:(id)a3
{
  v8 = a3;
  v5 = a3;
  end = self->_archives.__end_;
  if (end >= self->_archives.__cap_)
  {
    v7 = std::vector<GPUTools::objc_ref<DYCaptureArchive *>>::__emplace_back_slow_path<DYCaptureArchive *&>(&self->_archives.__begin_, &v8);
  }

  else
  {
    *end = a3;
    v7 = end + 1;
  }

  self->_archives.__end_ = v7;
}

- (id)top
{
  end = self->_archives.__end_;
  if (self->_archives.__begin_ == end)
  {
    return 0;
  }

  else
  {
    return *(end - 1);
  }
}

- (id)allObjects
{
  v3 = objc_opt_new();
  begin = self->_archives.__begin_;
  end = self->_archives.__end_;
  while (begin != end)
  {
    v6 = *begin++;
    [v3 addObject:v6];
  }

  return v3;
}

- (BOOL)_stackIsEmpty:(id *)a3
{
  begin = self->_archives.__begin_;
  end = self->_archives.__end_;
  if (a3 && begin == end)
  {
    *a3 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:13 userInfo:0];
  }

  return begin == end;
}

- (void)close
{
  begin = self->_archives.__begin_;
  for (i = self->_archives.__end_; i != begin; i -= 8)
  {
    v5 = *(i - 1);
    [v5 close];
  }

  [(DYCaptureArchiveStack *)self clear];
}

- (id)resolveFilename:(id)a3 error:(id *)a4
{
  if (![(DYCaptureArchiveStack *)self _stackIsEmpty:a4])
  {
    p_archives = &self->_archives;
    begin = self->_archives.__begin_;
    for (i = p_archives->__end_; i != begin; i -= 8)
    {
      v11 = *(i - 1);
      result = [v11 resolveFilename:a3 error:a4];
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

- (vector<unsigned)getSortedFilePositionsForDataCaching
{
  v3 = retstr;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  end = self->__end_;
  v58 = self;
  v5 = self->__cap_ - end;
  if (v5)
  {
    if (v5 == 1)
    {
      self = *end;
      if (*end)
      {
        unk_2860B1198(self, "getSortedFilePositionsForDataCaching");
        self = v3->__begin_;
        if (v3->__begin_)
        {
          v3->__end_ = self;
          operator delete(self);
        }
      }

      else
      {
        v62 = 0uLL;
        *&v63 = 0;
      }

      v33 = v62;
      *&v3->__begin_ = v62;
      v3->__cap_ = v63;
      for (i = v33; i != *(&v33 + 1); ++i)
      {
        *i |= 0x8000000000000000;
      }
    }

    else
    {
      __p = 0;
      v66 = 0;
      v67 = 0;
      std::vector<dy_capture_index_file_entry_t *>::reserve(&__p, v5);
      v7 = v58->__end_;
      cap = v58->__cap_;
      if (v7 != cap)
      {
        do
        {
          v8 = [*v7 _fileTable];
          v9 = v66;
          if (v66 >= v67)
          {
            v11 = (v66 - __p) >> 3;
            if ((v11 + 1) >> 61)
            {
              std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
            }

            v12 = (v67 - __p) >> 2;
            if (v12 <= v11 + 1)
            {
              v12 = v11 + 1;
            }

            if (v67 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v13 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = v12;
            }

            if (v13)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<dy_capture_index_file_entry_t *>>(&__p, v13);
            }

            v14 = (8 * v11);
            *v14 = v8;
            v10 = 8 * v11 + 8;
            v15 = v14 - (v66 - __p);
            memcpy(v15, __p, v66 - __p);
            v16 = __p;
            __p = v15;
            v66 = v10;
            v67 = 0;
            if (v16)
            {
              operator delete(v16);
            }
          }

          else
          {
            *v66 = v8;
            v10 = (v9 + 8);
          }

          v66 = v10;
          ++v7;
        }

        while (v7 != cap);
        v7 = v58->__end_;
        cap = v58->__cap_;
      }

      v62 = 0u;
      v63 = 0u;
      v64 = 1065353216;
      if (v7 == cap)
      {
        v32 = 0;
      }

      else
      {
        v57 = v3;
        do
        {
          v17 = cap;
          v18 = [*v7 _header];
          v19 = [*v7 _hashTable];
          v20 = [*v7 _fileTable];
          v21 = [*v7 _stringTableStorage];
          v22 = [*v7 _stringTableOffsets];
          v23 = *(v18 + 8);
          if (v23)
          {
            v24 = v22;
            v25 = (v7 - v58->__end_) >> 3;
            v26 = (v19 + 8);
            v27 = 12 * v23;
            do
            {
              v28 = *(v26 - 2);
              if (v28 != -1 && *v26 == -1)
              {
                v68 = (*(v24 + 8 * *(v26 - 1)) + v21);
                v29 = (v20 + 24 * v28);
                v59 = v29;
                v60 = v25;
                v30 = std::__hash_table<std::__hash_value_type<char const*,std::pair<dy_capture_index_file_entry_t *,unsigned long>>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,std::pair<dy_capture_index_file_entry_t *,unsigned long>>,GPUTools::CStringHash::hash,GPUTools::CStringHash::equal,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,std::pair<dy_capture_index_file_entry_t *,unsigned long>>,GPUTools::CStringHash::equal,GPUTools::CStringHash::hash,true>,std::allocator<std::__hash_value_type<char const*,std::pair<dy_capture_index_file_entry_t *,unsigned long>>>>::__emplace_unique_key_args<char const*,char const*&,std::pair<dy_capture_index_file_entry_t *,unsigned long>>(&v62, &v68);
                if ((v31 & 1) == 0)
                {
                  v30[3] = v29;
                  v30[4] = v25;
                }
              }

              v26 += 3;
              v27 -= 12;
            }

            while (v27);
          }

          ++v7;
          cap = v17;
        }

        while (v7 != v17);
        v32 = *(&v63 + 1);
        v3 = v57;
      }

      v59 = 0;
      v60 = 0;
      v61 = 0;
      std::vector<std::pair<dy_capture_index_file_entry_t *,unsigned long>>::reserve(&v59, v32);
      v35 = v63;
      if (v63)
      {
        v36 = v60;
        do
        {
          if (v36 >= v61)
          {
            v37 = (v36 - v59) >> 4;
            if ((v37 + 1) >> 60)
            {
              std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
            }

            v38 = (v61 - v59) >> 3;
            if (v38 <= v37 + 1)
            {
              v38 = v37 + 1;
            }

            if (v61 - v59 >= 0x7FFFFFFFFFFFFFF0)
            {
              v39 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v39 = v38;
            }

            if (v39)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<dy_capture_index_file_entry_t *,unsigned long>>>(&v59, v39);
            }

            v40 = (16 * v37);
            *v40 = *(v35 + 3);
            v36 = (16 * v37 + 16);
            v41 = v40 - (v60 - v59);
            memcpy(v41, v59, v60 - v59);
            v42 = v59;
            v59 = v41;
            v60 = v36;
            v61 = 0;
            if (v42)
            {
              operator delete(v42);
            }
          }

          else
          {
            *v36 = *(v35 + 3);
            v36 += 16;
          }

          v60 = v36;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        v36 = v60;
      }

      v43 = 126 - 2 * __clz((v36 - v59) >> 4);
      v68 = &__block_literal_global_0;
      if (v36 == v59)
      {
        v44 = 0;
      }

      else
      {
        v44 = v43;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(std::pair<dy_capture_index_file_entry_t *,unsigned long> &,std::pair<dy_capture_index_file_entry_t *,unsigned long> &),std::pair<dy_capture_index_file_entry_t *,unsigned long>*,false>(v59, v36, &v68, v44, 1);
      std::vector<unsigned long long>::reserve(v3, (v60 - v59) >> 4);
      v45 = v59;
      v46 = v60;
      if (v59 != v60)
      {
        v47 = v3->__end_;
        do
        {
          v48 = (0xAAAAAAAAAAAAAAABLL * ((*v45 - *(__p + *(v45 + 1))) >> 3)) | (*(v45 + 1) << 32) | 0x8000000000000000;
          v49 = v3->__cap_;
          if (v47 >= v49)
          {
            begin = v3->__begin_;
            v51 = v47 - v3->__begin_;
            v52 = v51 >> 3;
            v53 = (v51 >> 3) + 1;
            if (v53 >> 61)
            {
              std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
            }

            v54 = v49 - begin;
            if (v54 >> 2 > v53)
            {
              v53 = v54 >> 2;
            }

            if (v54 >= 0x7FFFFFFFFFFFFFF8)
            {
              v55 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v55 = v53;
            }

            if (v55)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(v3, v55);
            }

            *(8 * v52) = v48;
            v47 = (8 * v52 + 8);
            memcpy(0, begin, v51);
            v56 = v3->__begin_;
            v3->__begin_ = 0;
            v3->__end_ = v47;
            v3->__cap_ = 0;
            if (v56)
            {
              operator delete(v56);
            }
          }

          else
          {
            *v47++ = v48;
          }

          v3->__end_ = v47;
          v45 += 16;
        }

        while (v45 != v46);
        v45 = v59;
      }

      if (v45)
      {
        v60 = v45;
        operator delete(v45);
      }

      std::unordered_map<void *,unsigned long>::~unordered_map[abi:ne200100](&v62);
      self = __p;
      if (__p)
      {
        v66 = __p;
        operator delete(__p);
      }
    }
  }

  return self;
}

BOOL __61__DYCaptureArchiveStack_getSortedFilePositionsForDataCaching__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 20);
  v4 = *(*a3 + 20);
  v5 = v3 > v4;
  if (v3 == v4)
  {
    return **a2 > **a3;
  }

  return v5;
}

- (id)openFileWithFilename:(id)a3 error:(id *)a4
{
  if (![(DYCaptureArchiveStack *)self _stackIsEmpty:a4])
  {
    p_archives = &self->_archives;
    begin = self->_archives.__begin_;
    for (i = p_archives->__end_; i != begin; i -= 8)
    {
      v11 = *(i - 1);
      result = [v11 openFileWithFilename:a3 error:a4];
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

- (int64_t)readDataForFilenameBuffer:(const char *)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6
{
  if (![(DYCaptureArchiveStack *)self _stackIsEmpty:a6])
  {
    v17 = 0;
    begin = self->_archives.__begin_;
    end = self->_archives.__end_;
    v13 = *MEMORY[0x277D0AFB8];
    while (end != begin)
    {
      v14 = *(end - 1);
      end -= 8;
      result = [v14 readDataForFilenameBuffer:a3 buffer:a4 size:a5 error:&v17];
      if (result != -1)
      {
        return result;
      }

      if (!v13)
      {
        [DYCaptureArchiveStack readDataForFilenameBuffer:buffer:size:error:];
      }

      v16 = v17;
      if (!v17 || [v17 code] != 13 || (objc_msgSend(objc_msgSend(v16, "domain"), "isEqualToString:", v13) & 1) == 0)
      {
        if (a6)
        {
          *a6 = v17;
        }

        return -1;
      }
    }
  }

  return -1;
}

- (int64_t)readDataForFilename:(id)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6
{
  v10 = [a3 cStringUsingEncoding:1];

  return [(DYCaptureArchiveStack *)self readDataForFilenameBuffer:v10 buffer:a4 size:a5 error:a6];
}

- (id)copyDataForFilenameBuffer:(const char *)a3 error:(id *)a4
{
  if ([(DYCaptureArchiveStack *)self _stackIsEmpty:a4])
  {
    return 0;
  }

  begin = self->_archives.__begin_;
  end = self->_archives.__end_;
  if (end == begin)
  {
    return 0;
  }

  v9 = *MEMORY[0x277D0AFB8];
  while (1)
  {
    v14 = 0;
    v10 = *(end - 1);
    end -= 8;
    v11 = [v10 copyDataForFilenameBuffer:a3 error:&v14];
    if (v11)
    {
      break;
    }

    if (!v9)
    {
      [DYCaptureArchiveStack readDataForFilenameBuffer:buffer:size:error:];
    }

    v12 = v14;
    if (!v14 || [v14 code] != 13 || (objc_msgSend(objc_msgSend(v12, "domain"), "isEqualToString:", v9) & 1) == 0)
    {
      if (a4)
      {
        *a4 = v14;
      }

      return v11;
    }

    if (end == begin)
    {
      return 0;
    }
  }

  return v11;
}

- (id)copyDataForFilename:(id)a3 error:(id *)a4
{
  v6 = [a3 cStringUsingEncoding:1];

  return [(DYCaptureArchiveStack *)self copyDataForFilenameBuffer:v6 error:a4];
}

- (void)allocateAndReadDataForFilenameBuffer:(const char *)a3 outSize:(unint64_t *)a4 error:(id *)a5
{
  if (![(DYCaptureArchiveStack *)self _stackIsEmpty:a5])
  {
    v15 = 0;
    begin = self->_archives.__begin_;
    end = self->_archives.__end_;
    v12 = *MEMORY[0x277D0AFB8];
    while (end != begin)
    {
      v13 = *(end - 1);
      end -= 8;
      result = [v13 allocateAndReadDataForFilenameBuffer:a3 outSize:a4 error:&v15];
      if (result)
      {
        return result;
      }

      if (!v12)
      {
        [DYCaptureArchiveStack readDataForFilenameBuffer:buffer:size:error:];
      }

      v14 = v15;
      if (!v15 || [v15 code] != 13 || (objc_msgSend(objc_msgSend(v14, "domain"), "isEqualToString:", v12) & 1) == 0)
      {
        if (!a5)
        {
          return 0;
        }

        result = 0;
        *a5 = v15;
        return result;
      }
    }
  }

  return 0;
}

- (BOOL)getInfo:(id *)a3 forFilenameBuffer:(const char *)a4 error:(id *)a5
{
  if ([(DYCaptureArchiveStack *)self _stackIsEmpty:a5])
  {
    return 0;
  }

  v16 = 0;
  begin = self->_archives.__begin_;
  end = self->_archives.__end_;
  v12 = *MEMORY[0x277D0AFB8];
  v13 = 0x100000000 - (end << 29);
  while (1)
  {
    if (end == begin)
    {
LABEL_10:
      result = 0;
      if (!a5)
      {
        return result;
      }

      goto LABEL_11;
    }

    v14 = *(end - 1);
    end = end - 8;
    if ([v14 getInfo:a3 forFilenameBuffer:a4 error:&v16])
    {
      break;
    }

    if (!v12)
    {
      [DYCaptureArchiveStack readDataForFilenameBuffer:buffer:size:error:];
    }

    v15 = v16;
    if (v16)
    {
      if ([v16 code] == 13)
      {
        v13 += 0x100000000;
        if ([objc_msgSend(v15 "domain")])
        {
          continue;
        }
      }
    }

    goto LABEL_10;
  }

  a3->var0 |= -(v13 + (self->_archives.__begin_ << 29)) | 0x8000000000000000;
  result = 1;
  if (a5)
  {
LABEL_11:
    *a5 = v16;
  }

  return result;
}

- (BOOL)getInfo:(id *)a3 forFilename:(id)a4 error:(id *)a5
{
  v8 = [a4 cStringUsingEncoding:1];

  return [(DYCaptureArchiveStack *)self getInfo:a3 forFilenameBuffer:v8 error:a5];
}

- (BOOL)fileExistsForFilenameBuffer:(const char *)a3 error:(id *)a4
{
  if ([(DYCaptureArchiveStack *)self _stackIsEmpty:a4])
  {
    return 0;
  }

  v14 = 0;
  p_archives = &self->_archives;
  begin = self->_archives.__begin_;
  end = p_archives->__end_;
  if (end == begin)
  {
    return 0;
  }

  v9 = end - 1;
  v10 = end - 1;
  do
  {
    v11 = *v10--;
    result = [v11 fileExistsForFilenameBuffer:a3 error:&v14];
    if (result)
    {
      break;
    }

    v13 = v14 || v9 == begin;
    v9 = v10;
  }

  while (!v13);
  return result;
}

- (BOOL)fileExistsForFilename:(id)a3 error:(id *)a4
{
  v6 = [a3 cStringUsingEncoding:1];

  return [(DYCaptureArchiveStack *)self fileExistsForFilenameBuffer:v6 error:a4];
}

- (void)cacheAllResources
{
  begin = self->_archives.__begin_;
  if (self->_archives.__end_ != begin)
  {
    v9 = v3;
    v10 = v2;
    v11 = v4;
    v12 = v5;
    v8 = 0;
    do
    {
      [begin[v8++] cacheAllResources];
      begin = self->_archives.__begin_;
    }

    while (v8 < (self->_archives.__end_ - begin) >> 3);
  }
}

- (void)releaseBytesForFilePosition:(unint64_t)a3
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    [DYCaptureArchiveStack releaseBytesForFilePosition:];
  }

  v3 = HIDWORD(a3) & 0x7FFFFFFF;
  begin = self->_archives.__begin_;
  if (v3 >= (self->_archives.__end_ - begin) >> 3)
  {
    [DYCaptureArchiveStack releaseBytesForFilePosition:];
  }

  v5 = begin[v3];

  [v5 releaseBytesForFilePosition:?];
}

- (BOOL)requestDataForFilePosition:(unint64_t)a3 buffer:(void *)a4 size:(unint64_t *)a5 error:(id *)a6
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    [DYCaptureArchiveStack requestDataForFilePosition:buffer:size:error:];
  }

  v6 = HIDWORD(a3) & 0x7FFFFFFF;
  begin = self->_archives.__begin_;
  if (v6 >= (self->_archives.__end_ - begin) >> 3)
  {
    [DYCaptureArchiveStack requestDataForFilePosition:buffer:size:error:];
  }

  v8 = begin[v6];

  return [v8 requestDataForFilePosition:? buffer:? size:? error:?];
}

- (int64_t)readDataForFilePosition:(unint64_t)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    [DYCaptureArchiveStack readDataForFilePosition:buffer:size:error:];
  }

  v6 = HIDWORD(a3) & 0x7FFFFFFF;
  begin = self->_archives.__begin_;
  if (v6 >= (self->_archives.__end_ - begin) >> 3)
  {
    [DYCaptureArchiveStack readDataForFilePosition:buffer:size:error:];
  }

  v8 = begin[v6];

  return [v8 readDataForFilePosition:? buffer:? size:? error:?];
}

- (id)copyDataForFilePosition:(unint64_t)a3 error:(id *)a4
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    [DYCaptureArchiveStack copyDataForFilePosition:error:];
  }

  v4 = HIDWORD(a3) & 0x7FFFFFFF;
  begin = self->_archives.__begin_;
  if (v4 >= (self->_archives.__end_ - begin) >> 3)
  {
    [DYCaptureArchiveStack copyDataForFilePosition:error:];
  }

  v6 = begin[v4];

  return [v6 copyDataForFilePosition:? error:?];
}

- (BOOL)getInfo:(id *)a3 forFilePosition:(unint64_t)a4 error:(id *)a5
{
  if ((a4 & 0x8000000000000000) == 0)
  {
    [DYCaptureArchiveStack getInfo:forFilePosition:error:];
  }

  v5 = HIDWORD(a4) & 0x7FFFFFFF;
  begin = self->_archives.__begin_;
  if (v5 >= (self->_archives.__end_ - begin) >> 3)
  {
    [DYCaptureArchiveStack getInfo:forFilePosition:error:];
  }

  v7 = begin[v5];

  return [v7 getInfo:a3 forFilePosition:? error:?];
}

- (id)getFilenameForFilePosition:(unint64_t)a3 error:(id *)a4
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    [DYCaptureArchiveStack getFilenameForFilePosition:error:];
  }

  v4 = HIDWORD(a3) & 0x7FFFFFFF;
  begin = self->_archives.__begin_;
  if (v4 >= (self->_archives.__end_ - begin) >> 3)
  {
    [DYCaptureArchiveStack getFilenameForFilePosition:error:];
  }

  v6 = begin[v4];

  return [v6 getFilenameForFilePosition:? error:?];
}

- (id)metadataValueForKey:(id)a3
{
  if (![(DYCaptureArchiveStack *)self _stackIsEmpty:0])
  {
    p_archives = &self->_archives;
    begin = self->_archives.__begin_;
    for (i = p_archives->__end_; i != begin; i -= 8)
    {
      v9 = *(i - 1);
      result = [v9 metadataValueForKey:a3];
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

- (id)copyAdjunctDataForFilename:(id)a3 error:(id *)a4
{
  if (![(DYCaptureArchiveStack *)self _stackIsEmpty:0])
  {
    p_archives = &self->_archives;
    begin = self->_archives.__begin_;
    for (i = p_archives->__end_; i != begin; i -= 8)
    {
      v11 = *(i - 1);
      result = [v11 copyAdjunctDataForFilename:a3 error:a4];
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

- (BOOL)adjunctFileExistsForFilename:(id)a3 error:(id *)a4
{
  if ([(DYCaptureArchiveStack *)self _stackIsEmpty:a4])
  {
    return 0;
  }

  v14 = 0;
  p_archives = &self->_archives;
  begin = self->_archives.__begin_;
  end = p_archives->__end_;
  if (end == begin)
  {
    return 0;
  }

  v9 = end - 1;
  v10 = end - 1;
  do
  {
    v11 = *v10--;
    result = [v11 adjunctFileExistsForFilename:a3 error:&v14];
    if (result)
    {
      break;
    }

    v13 = v14 || v9 == begin;
    v9 = v10;
  }

  while (!v13);
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (id)filenamesWithPrefix:(id)a3 error:(id *)a4
{
  v7 = objc_opt_new();
  begin = self->_archives.__begin_;
  end = self->_archives.__end_;
  while (1)
  {
    if (begin == end)
    {
      v11 = [v7 allObjects];
      goto LABEL_6;
    }

    v10 = [*begin filenamesWithPrefix:a3 error:a4];
    if (!v10)
    {
      break;
    }

    [v7 addObjectsFromArray:v10];
    ++begin;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)filenamesWithPredicate:(id)a3 error:(id *)a4
{
  v7 = objc_opt_new();
  begin = self->_archives.__begin_;
  end = self->_archives.__end_;
  while (1)
  {
    if (begin == end)
    {
      v11 = [v7 allObjects];
      goto LABEL_6;
    }

    v10 = [*begin filenamesWithPredicate:a3 error:a4];
    if (!v10)
    {
      break;
    }

    [v7 addObjectsFromArray:v10];
    ++begin;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

@end