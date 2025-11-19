@interface _MemoryEfficientEnumeratorCatalogSubchunk
- (_MemoryEfficientEnumeratorCatalogSubchunk)initWithCatalog:(id)a3 subchunk:(catalog_subchunk_s *)a4 range:(_NSRange)a5;
- (_MemoryEfficientEnumeratorCatalogSubchunk)initWithCatalog:(id)a3 subchunk:(catalog_subchunk_s *)a4 range:(_NSRange)a5 oldestTime:(unint64_t)a6 endTime:(unint64_t)a7;
- (id)decompressedBufferForChunk:(tracev3_chunk_s *)a3;
- (unint64_t)getBootUUIDIndex:(os_trace_uuid_map_s *)a3;
- (void)enumerateChunksUsingBlock:(id)a3;
@end

@implementation _MemoryEfficientEnumeratorCatalogSubchunk

- (unint64_t)getBootUUIDIndex:(os_trace_uuid_map_s *)a3
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = 0;
  [(NSUUID *)self->_buuid getUUIDBytes:v6];
  result = _os_trace_uuid_map_lookup(a3, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)enumerateChunksUsingBlock:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __71___MemoryEfficientEnumeratorCatalogSubchunk_enumerateChunksUsingBlock___block_invoke;
  v10 = &unk_2787AED60;
  v11 = self;
  v12 = v4;
  v5 = v4;
  v6 = _Block_copy(&v7);
  [(_OSLogChunkStore *)self->_store enumerateChunksInRange:self->_range.location usingBlock:self->_range.length, v6, v7, v8, v9, v10, v11];
}

- (id)decompressedBufferForChunk:(tracev3_chunk_s *)a3
{
  if (self->_had_subchunk)
  {
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    v9 = 0u;
    *&v11 = vrev64_s32(*&self->_algo);
    v4 = [_OSLogChunkBuffer alloc];
    v5 = &v9;
    v6 = a3;
  }

  else
  {
    v4 = [_OSLogChunkBuffer alloc];
    v6 = a3;
    v5 = 0;
  }

  v7 = [(_OSLogChunkBuffer *)v4 initWithChunk:v6 subchunk:v5, v9, v10, v11, v12];

  return v7;
}

- (_MemoryEfficientEnumeratorCatalogSubchunk)initWithCatalog:(id)a3 subchunk:(catalog_subchunk_s *)a4 range:(_NSRange)a5 oldestTime:(unint64_t)a6 endTime:(unint64_t)a7
{
  length = a5.length;
  location = a5.location;
  v13 = a3;
  v20.receiver = self;
  v20.super_class = _MemoryEfficientEnumeratorCatalogSubchunk;
  v14 = [(_MemoryEfficientEnumeratorCatalogSubchunk *)&v20 init];
  if (v14)
  {
    v15 = [v13 store];
    store = v14->_store;
    v14->_store = v15;

    v14->_catalog_offset = [v13 chunkRange];
    v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v13, "bootUUID")}];
    buuid = v14->_buuid;
    v14->_buuid = v17;

    v14->_range.location = location;
    v14->_range.length = length;
    v14->_had_subchunk = 0;
    if (a4)
    {
      v14->_had_subchunk = 1;
      v14->_algo = a4->var4;
      v14->_usize = a4->var3;
    }

    v14->_ot = a6;
    v14->_et = a7;
  }

  return v14;
}

- (_MemoryEfficientEnumeratorCatalogSubchunk)initWithCatalog:(id)a3 subchunk:(catalog_subchunk_s *)a4 range:(_NSRange)a5
{
  if (a4)
  {
    var1 = a4->var1;
    var2 = a4->var2;
  }

  else
  {
    var1 = 0;
    var2 = -1;
  }

  return [(_MemoryEfficientEnumeratorCatalogSubchunk *)self initWithCatalog:a3 subchunk:a4 range:a5.location oldestTime:a5.length endTime:var1, var2];
}

@end