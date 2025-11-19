@interface _OSLogEnumeratorCatalogSubchunk
- (_OSLogEnumeratorCatalogSubchunk)initWithCatalog:(id)a3 subchunk:(catalog_subchunk_s *)a4 range:(_NSRange)a5;
- (_OSLogEnumeratorCatalogSubchunk)initWithCatalog:(id)a3 subchunk:(catalog_subchunk_s *)a4 range:(_NSRange)a5 oldestTime:(unint64_t)a6 endTime:(unint64_t)a7;
- (id)decompressedBufferForChunk:(tracev3_chunk_s *)a3;
- (unint64_t)getBootUUIDIndex:(os_trace_uuid_map_s *)a3;
- (void)enumerateChunksUsingBlock:(id)a3;
@end

@implementation _OSLogEnumeratorCatalogSubchunk

- (unint64_t)getBootUUIDIndex:(os_trace_uuid_map_s *)a3
{
  v4 = [(_OSLogEnumeratorCatalog *)self->_catalog bootUUID];

  return _os_trace_uuid_map_lookup(a3, v4);
}

- (void)enumerateChunksUsingBlock:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61___OSLogEnumeratorCatalogSubchunk_enumerateChunksUsingBlock___block_invoke;
  v11 = &unk_2787AED60;
  v12 = self;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(&v8);
  v7 = [(_OSLogEnumeratorCatalog *)self->_catalog store:v8];
  [v7 enumerateChunksInRange:self->_range.location usingBlock:{self->_range.length, v6}];
}

- (id)decompressedBufferForChunk:(tracev3_chunk_s *)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
  v6 = [(NSMutableDictionary *)self->_decompressedChunks objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [[_OSLogChunkBuffer alloc] initWithChunk:a3 subchunk:self->_subchunk];
    [(NSMutableDictionary *)self->_decompressedChunks setObject:v6 forKeyedSubscript:v5];
  }

  v7 = v6;

  return v7;
}

- (_OSLogEnumeratorCatalogSubchunk)initWithCatalog:(id)a3 subchunk:(catalog_subchunk_s *)a4 range:(_NSRange)a5 oldestTime:(unint64_t)a6 endTime:(unint64_t)a7
{
  length = a5.length;
  location = a5.location;
  v14 = a3;
  v19.receiver = self;
  v19.super_class = _OSLogEnumeratorCatalogSubchunk;
  v15 = [(_OSLogEnumeratorCatalogSubchunk *)&v19 init];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
    decompressedChunks = v15->_decompressedChunks;
    v15->_decompressedChunks = v16;

    objc_storeStrong(&v15->_catalog, a3);
    v15->_range.location = location;
    v15->_range.length = length;
    v15->_subchunk = a4;
    v15->_ot = a6;
    v15->_et = a7;
  }

  return v15;
}

- (_OSLogEnumeratorCatalogSubchunk)initWithCatalog:(id)a3 subchunk:(catalog_subchunk_s *)a4 range:(_NSRange)a5
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

  return [(_OSLogEnumeratorCatalogSubchunk *)self initWithCatalog:a3 subchunk:a4 range:a5.location oldestTime:a5.length endTime:var1, var2];
}

@end