@interface _OSLogEnumeratorCatalogSubchunk
- (_OSLogEnumeratorCatalogSubchunk)initWithCatalog:(id)catalog subchunk:(catalog_subchunk_s *)subchunk range:(_NSRange)range;
- (_OSLogEnumeratorCatalogSubchunk)initWithCatalog:(id)catalog subchunk:(catalog_subchunk_s *)subchunk range:(_NSRange)range oldestTime:(unint64_t)time endTime:(unint64_t)endTime;
- (id)decompressedBufferForChunk:(tracev3_chunk_s *)chunk;
- (unint64_t)getBootUUIDIndex:(os_trace_uuid_map_s *)index;
- (void)enumerateChunksUsingBlock:(id)block;
@end

@implementation _OSLogEnumeratorCatalogSubchunk

- (unint64_t)getBootUUIDIndex:(os_trace_uuid_map_s *)index
{
  bootUUID = [(_OSLogEnumeratorCatalog *)self->_catalog bootUUID];

  return _os_trace_uuid_map_lookup(index, bootUUID);
}

- (void)enumerateChunksUsingBlock:(id)block
{
  blockCopy = block;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61___OSLogEnumeratorCatalogSubchunk_enumerateChunksUsingBlock___block_invoke;
  v11 = &unk_2787AED60;
  selfCopy = self;
  v13 = blockCopy;
  v5 = blockCopy;
  v6 = _Block_copy(&v8);
  v7 = [(_OSLogEnumeratorCatalog *)self->_catalog store:v8];
  [v7 enumerateChunksInRange:self->_range.location usingBlock:{self->_range.length, v6}];
}

- (id)decompressedBufferForChunk:(tracev3_chunk_s *)chunk
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
  v6 = [(NSMutableDictionary *)self->_decompressedChunks objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [[_OSLogChunkBuffer alloc] initWithChunk:chunk subchunk:self->_subchunk];
    [(NSMutableDictionary *)self->_decompressedChunks setObject:v6 forKeyedSubscript:v5];
  }

  v7 = v6;

  return v7;
}

- (_OSLogEnumeratorCatalogSubchunk)initWithCatalog:(id)catalog subchunk:(catalog_subchunk_s *)subchunk range:(_NSRange)range oldestTime:(unint64_t)time endTime:(unint64_t)endTime
{
  length = range.length;
  location = range.location;
  catalogCopy = catalog;
  v19.receiver = self;
  v19.super_class = _OSLogEnumeratorCatalogSubchunk;
  v15 = [(_OSLogEnumeratorCatalogSubchunk *)&v19 init];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
    decompressedChunks = v15->_decompressedChunks;
    v15->_decompressedChunks = v16;

    objc_storeStrong(&v15->_catalog, catalog);
    v15->_range.location = location;
    v15->_range.length = length;
    v15->_subchunk = subchunk;
    v15->_ot = time;
    v15->_et = endTime;
  }

  return v15;
}

- (_OSLogEnumeratorCatalogSubchunk)initWithCatalog:(id)catalog subchunk:(catalog_subchunk_s *)subchunk range:(_NSRange)range
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

  return [(_OSLogEnumeratorCatalogSubchunk *)self initWithCatalog:catalog subchunk:subchunk range:range.location oldestTime:range.length endTime:var1, var2];
}

@end