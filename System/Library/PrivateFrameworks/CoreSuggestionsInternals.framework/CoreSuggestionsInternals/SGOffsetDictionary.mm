@interface SGOffsetDictionary
- ($540B417C6688EA6D30870DDF6F7BDD26)carrierEntryForKey:(const char *)a3;
- (SGOffsetDictionary)initWithFilehandle:(id)a3 sizeFactor:(unint64_t)a4 keyLength:(int)a5 singleByteOffset:(BOOL)a6;
- (id)fullMappingFromFile:(id)a3;
- (id)stringValueForKey:(const char *)a3 fromFile:(id)a4;
- (int)payloadCountForKey:(const char *)a3;
- (unint64_t)payloadLengthForKey:(const char *)a3;
- (unint64_t)seekLocationForKey:(const char *)a3;
- (void)dealloc;
@end

@implementation SGOffsetDictionary

- (id)fullMappingFromFile:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:self->_count];
  if (self->_count)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v11 = 0;
      v11 = self->_carrierEntries[v6];
      v8 = objCStringForCarrierKey(v11.var2);
      [v4 seekToFileOffset:v11.var0 + self->_payloadOffset];
      v9 = readUtf8String(v4, self->_sizeFactor * v11.var1);
      [v5 setObject:v9 forKeyedSubscript:v8];

      ++v7;
      ++v6;
    }

    while (v7 < self->_count);
  }

  return v5;
}

- (id)stringValueForKey:(const char *)a3 fromFile:(id)a4
{
  v6 = a4;
  v7 = [(SGOffsetDictionary *)self seekLocationForKey:a3];
  if (v7 && (v8 = v7, (v9 = [(SGOffsetDictionary *)self carrierEntryForKey:a3]) != 0))
  {
    v10 = v9;
    [v6 seekToFileOffset:v8];
    v11 = readUtf8String(v6, self->_sizeFactor * v10->var1);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int)payloadCountForKey:(const char *)a3
{
  v3 = [(SGOffsetDictionary *)self carrierEntryForKey:a3];
  if (v3)
  {
    LODWORD(v3) = v3->var1;
  }

  return v3;
}

- (unint64_t)seekLocationForKey:(const char *)a3
{
  result = [(SGOffsetDictionary *)self carrierEntryForKey:a3];
  if (result)
  {
    return *result + self->_payloadOffset;
  }

  return result;
}

- (unint64_t)payloadLengthForKey:(const char *)a3
{
  result = [(SGOffsetDictionary *)self carrierEntryForKey:a3];
  if (result)
  {
    return self->_sizeFactor * *(result + 8);
  }

  return result;
}

- ($540B417C6688EA6D30870DDF6F7BDD26)carrierEntryForKey:(const char *)a3
{
  if (strnlen(a3, 3uLL) <= 1)
  {
    [MEMORY[0x277CBEAD8] raise:@"KeyTooShort" format:@"The key was too short."];
  }

  result = self->_mruCarrierEntry;
  if (!result || (*result->var2 == *a3 ? (v6 = result->var2[2] == *(a3 + 2)) : (v6 = 0), !v6))
  {
    carrierEntries = self->_carrierEntries;
    count = self->_count;
    __compar[0] = MEMORY[0x277D85DD0];
    __compar[1] = 3221225472;
    __compar[2] = __41__SGOffsetDictionary_carrierEntryForKey___block_invoke;
    __compar[3] = &__block_descriptor_40_e15_i24__0r_v8r_v16l;
    __compar[4] = a3;
    return bsearch_b(a3, carrierEntries, count, 0x10uLL, __compar);
  }

  return result;
}

uint64_t __41__SGOffsetDictionary_carrierEntryForKey___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = bswap32(**(a1 + 32) | (*(*(a1 + 32) + 2) << 16));
  v4 = bswap32(*(a3 + 10) | (*(a3 + 12) << 16));
  v5 = v3 >= v4;
  v6 = v3 > v4;
  v7 = !v5;
  return (v6 - v7);
}

- (void)dealloc
{
  free(self->_carrierEntries);
  v3.receiver = self;
  v3.super_class = SGOffsetDictionary;
  [(SGOffsetDictionary *)&v3 dealloc];
}

- (SGOffsetDictionary)initWithFilehandle:(id)a3 sizeFactor:(unint64_t)a4 keyLength:(int)a5 singleByteOffset:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v33.receiver = self;
  v33.super_class = SGOffsetDictionary;
  v11 = [(SGOffsetDictionary *)&v33 init];
  if (v11)
  {
    [v10 seekToFileOffset:0];
    v12 = bswap32(*[v10 dataOfLength:2]) >> 16;
    v11->_count = v12;
    v13 = malloc_type_malloc(16 * v12, 0x10000408B6DE1C6uLL);
    if (!v13)
    {
      v30 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v30);
    }

    v14 = v13;
    if (v11->_count)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [v10 dataOfLength:3];
        v18 = *(v17 + 2);
        *v14[v15].var2 = *v17;
        v14[v15].var2[2] = v18;
        v19 = v10;
        if (v6)
        {
          v20 = *[v19 dataOfLength:1];
        }

        else
        {
          v20 = bswap32(*[v19 dataOfLength:2]) >> 16;
        }

        totalPayloadSize = v11->_totalPayloadSize;
        v22 = &v14[v15];
        v22->var0 = totalPayloadSize;
        v22->var1 = v20;
        v11->_totalPayloadSize = totalPayloadSize + v20 * a4;
        if (v15 * 16)
        {
          v23 = bswap32(*v22[-1].var2 | (v22[-1].var2[2] << 16));
          v24 = bswap32(*v14[v15].var2 | (v14[v15].var2[2] << 16));
          v25 = v23 >= v24;
          v26 = v23 > v24;
          v27 = !v25;
          if (v26 - v27 >= 0)
          {
            v32 = [MEMORY[0x277CCA890] currentHandler];
            v31 = objCStringForCarrierKey(v14[v15 - 1].var2);
            v28 = objCStringForCarrierKey(v14[v15].var2);
            [v32 handleFailureInMethod:a2 object:v11 file:@"SGFlightData.m" lineNumber:96 description:{@"Expected keys to be unique and in ascending order. That constraint was violated by this sequence of keys:\n%d: %@\n%d: %@", v16 - 1, v31, v16, v28}];
          }
        }

        ++v16;
        ++v15;
      }

      while (v16 < v11->_count);
    }

    v11->_carrierEntries = v14;
    v11->_payloadOffset = [v10 offsetInFile];
    v11->_sizeFactor = a4;
  }

  return v11;
}

@end