@interface _OSLogEnumeratorCatalog
- (_NSRange)chunkRange;
- (_OSLogEnumeratorCatalog)initWithStore:(id)a3 index:(id)a4 fileHeader:(tracev3_chunk_s *)a5 range:(_NSRange)a6 chunk:(tracev3_chunk_s *)a7 storeCatalogsAndSubchunks:(BOOL)a8;
- (_OSLogIndex)index;
- (catalog_s)catalog;
- (void)dealloc;
- (void)enumerateSubchunksUsingBlock:(id)a3;
@end

@implementation _OSLogEnumeratorCatalog

- (catalog_s)catalog
{
  result = self->_catalog;
  if (!result)
  {
    result = _catalog_create_with_chunk(&self->_chunk->var0.var0, 0);
    self->_catalog = result;
  }

  return result;
}

- (void)dealloc
{
  catalog = self->_catalog;
  if (catalog)
  {
    _catalog_destroy(catalog);
  }

  v4.receiver = self;
  v4.super_class = _OSLogEnumeratorCatalog;
  [(_OSLogEnumeratorCatalog *)&v4 dealloc];
}

- (_NSRange)chunkRange
{
  length = self->_chunkRange.length;
  location = self->_chunkRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_OSLogIndex)index
{
  WeakRetained = objc_loadWeakRetained(&self->_index);

  return WeakRetained;
}

- (void)enumerateSubchunksUsingBlock:(id)a3
{
  v4 = a3;
  catalog = self->_catalog;
  if (catalog || (catalog = _catalog_create_with_chunk(&self->_chunk->var0.var0, 0), (self->_catalog = catalog) != 0))
  {
    if (catalog->var0.var0 < 0x11u)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x3010000000;
      var0 = &unk_22E08C481;
      v25 = xmmword_22E0816C0;
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = -1;
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      store = self->_store;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __56___OSLogEnumeratorCatalog_enumerateSubchunksUsingBlock___block_invoke_2;
      v12[3] = &unk_2787ADD78;
      v12[4] = &v21;
      v12[5] = &v17;
      v12[6] = &v13;
      [(_OSLogChunkStore *)store enumerateChunksInRange:self->_chunkRange.location usingBlock:self->_chunkRange.length, v12];
      p_var7 = &self->_catalog->var7;
      do
      {
        p_var7 = p_var7->var0;
      }

      while (p_var7 && !p_var7[1].var1);
      v9 = off_2787AD4A8;
      if (!self->_storeCatalogsAndSubchunks)
      {
        v9 = off_2787AD4A0;
      }

      v10 = objc_alloc(*v9);
      v11 = [v10 initWithCatalog:self subchunk:p_var7 range:v22[4] oldestTime:v22[5] endTime:{v18[3], v14[3]}];
      v4[2](v4, v11);

      _Block_object_dispose(&v13, 8);
      _Block_object_dispose(&v17, 8);
    }

    else
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      var0 = catalog->var7.var0;
      v6 = self->_store;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __56___OSLogEnumeratorCatalog_enumerateSubchunksUsingBlock___block_invoke;
      v26[3] = &unk_2787ADD50;
      v28 = &v21;
      v26[4] = self;
      v27 = v4;
      [(_OSLogChunkStore *)v6 enumerateChunksInRange:self->_chunkRange.location usingBlock:self->_chunkRange.length, v26];
    }

    _Block_object_dispose(&v21, 8);
  }
}

- (_OSLogEnumeratorCatalog)initWithStore:(id)a3 index:(id)a4 fileHeader:(tracev3_chunk_s *)a5 range:(_NSRange)a6 chunk:(tracev3_chunk_s *)a7 storeCatalogsAndSubchunks:(BOOL)a8
{
  length = a6.length;
  location = a6.location;
  v15 = a3;
  v16 = a4;
  v21.receiver = self;
  v21.super_class = _OSLogEnumeratorCatalog;
  v17 = [(_OSLogEnumeratorCatalog *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_index, v16);
    objc_storeStrong(&v18->_store, a3);
    *&v18->_ot = xmmword_22E0816D0;
    p_ot = &v18->_ot;
    v18->_chunkRange.location = location;
    v18->_chunkRange.length = length;
    v18->_chunk = a7;
    v18->_fileHeader = a5;
    v18->_storeCatalogsAndSubchunks = a8;
    if (a7->var0.var1 == 17)
    {
      if (a7->var1.var2.var4)
      {
        *p_ot = xmmword_22E081670;
        _catalog_lite_read_limits(a7, p_ot, &v18->_et);
      }
    }
  }

  return v18;
}

@end