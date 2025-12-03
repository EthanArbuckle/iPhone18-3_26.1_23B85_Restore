@interface _MemoryEfficientEnumeratorCatalogSubchunk
- (_MemoryEfficientEnumeratorCatalogSubchunk)initWithCatalog:(id)catalog subchunk:(catalog_subchunk_s *)subchunk range:(_NSRange)range;
- (_MemoryEfficientEnumeratorCatalogSubchunk)initWithCatalog:(id)catalog subchunk:(catalog_subchunk_s *)subchunk range:(_NSRange)range oldestTime:(unint64_t)time endTime:(unint64_t)endTime;
- (id)decompressedBufferForChunk:(tracev3_chunk_s *)chunk;
- (unint64_t)getBootUUIDIndex:(os_trace_uuid_map_s *)index;
- (void)enumerateChunksUsingBlock:(id)block;
@end

@implementation _MemoryEfficientEnumeratorCatalogSubchunk

- (unint64_t)getBootUUIDIndex:(os_trace_uuid_map_s *)index
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = 0;
  [(NSUUID *)self->_buuid getUUIDBytes:v6];
  result = _os_trace_uuid_map_lookup(index, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)enumerateChunksUsingBlock:(id)block
{
  blockCopy = block;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __71___MemoryEfficientEnumeratorCatalogSubchunk_enumerateChunksUsingBlock___block_invoke;
  v10 = &unk_2787AED60;
  selfCopy = self;
  v12 = blockCopy;
  v5 = blockCopy;
  v6 = _Block_copy(&v7);
  [(_OSLogChunkStore *)self->_store enumerateChunksInRange:self->_range.location usingBlock:self->_range.length, v6, v7, v8, v9, v10, selfCopy];
}

- (id)decompressedBufferForChunk:(tracev3_chunk_s *)chunk
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
    chunkCopy2 = chunk;
  }

  else
  {
    v4 = [_OSLogChunkBuffer alloc];
    chunkCopy2 = chunk;
    v5 = 0;
  }

  v7 = [(_OSLogChunkBuffer *)v4 initWithChunk:chunkCopy2 subchunk:v5, v9, v10, v11, v12];

  return v7;
}

- (_MemoryEfficientEnumeratorCatalogSubchunk)initWithCatalog:(id)catalog subchunk:(catalog_subchunk_s *)subchunk range:(_NSRange)range oldestTime:(unint64_t)time endTime:(unint64_t)endTime
{
  length = range.length;
  location = range.location;
  catalogCopy = catalog;
  v20.receiver = self;
  v20.super_class = _MemoryEfficientEnumeratorCatalogSubchunk;
  v14 = [(_MemoryEfficientEnumeratorCatalogSubchunk *)&v20 init];
  if (v14)
  {
    store = [catalogCopy store];
    store = v14->_store;
    v14->_store = store;

    v14->_catalog_offset = [catalogCopy chunkRange];
    v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(catalogCopy, "bootUUID")}];
    buuid = v14->_buuid;
    v14->_buuid = v17;

    v14->_range.location = location;
    v14->_range.length = length;
    v14->_had_subchunk = 0;
    if (subchunk)
    {
      v14->_had_subchunk = 1;
      v14->_algo = subchunk->var4;
      v14->_usize = subchunk->var3;
    }

    v14->_ot = time;
    v14->_et = endTime;
  }

  return v14;
}

- (_MemoryEfficientEnumeratorCatalogSubchunk)initWithCatalog:(id)catalog subchunk:(catalog_subchunk_s *)subchunk range:(_NSRange)range
{
  if (subchunk)
  {
    var1 = subchunk->var1;
    var2 = subchunk->var2;
  }

  else
  {
    var1 = 0;
    var2 = -1;
  }

  return [(_MemoryEfficientEnumeratorCatalogSubchunk *)self initWithCatalog:catalog subchunk:subchunk range:range.location oldestTime:range.length endTime:var1, var2];
}

@end