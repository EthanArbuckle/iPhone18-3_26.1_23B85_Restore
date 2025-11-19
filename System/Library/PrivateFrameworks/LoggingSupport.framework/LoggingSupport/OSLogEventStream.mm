@interface OSLogEventStream
- (id)_initWithSource:(id)a3 flags:(unint64_t)a4;
- (void)_activateStreamFromDate:(id)a3 toDate:(id)a4 useMemEffic:(BOOL)a5 catalogCacheSize:(unsigned int)a6 dataCacheSize:(unsigned int)a7;
- (void)_activateStreamFromTimeIntervalSinceLastBoot:(double)a3;
- (void)_activateStreamInRange:(os_timesync_range_s *)a3 useMemEffic:(BOOL)a4 catalogCacheSize:(unsigned int)a5 dataCacheSize:(unsigned int)a6;
- (void)activateStreamFromDate:(id)a3;
- (void)activateStreamFromPosition:(id)a3;
- (void)dealloc;
- (void)setFilterPredicate:(id)a3;
@end

@implementation OSLogEventStream

- (void)activateStreamFromPosition:(id)a3
{
  v4 = a3;
  v5 = [(OSLogEventStreamBase *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__OSLogEventStream_activateStreamFromPosition___block_invoke;
  v7[3] = &unk_2787AE560;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__OSLogEventStream_activateStreamFromPosition___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 96) && *(v1 + 80))
  {
    v11 = 0;
    v12 = 0;
    v3 = [*(v1 + 88) uniqueIdentifier];
    [v3 getUUIDBytes:&v11];

    v4 = [*(a1 + 40) sourceUUID];
    if (v11 == *v4 && v12 == v4[1])
    {
      v5 = *(*(a1 + 32) + 96);
      _timesync_range_create_impl();
    }

    _invalidate(*(a1 + 32), 3, *(a1 + 40));
  }

  else
  {
    v11 = 0;
    v12 = 0;
    memset(uu, 0, sizeof(uu));
    v6 = v1;
    uuid_clear(uu);
    v7 = [v6[11] uniqueIdentifier];
    [v7 getUUIDBytes:&v11];

    v8 = [[OSLogEventStreamPosition alloc] initWithSource:&v11 bootUUID:uu time:0];
    _invalidate(v6, 9, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_activateStreamFromTimeIntervalSinceLastBoot:(double)a3
{
  v5 = [(OSLogEventStreamBase *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__OSLogEventStream__activateStreamFromTimeIntervalSinceLastBoot___block_invoke;
  v6[3] = &unk_2787AE538;
  v6[4] = self;
  *&v6[5] = a3;
  dispatch_async(v5, v6);
}

void __65__OSLogEventStream__activateStreamFromTimeIntervalSinceLastBoot___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1[12] && v1[10])
  {
    *(a1 + 40);
    _timesync_range_create_since_last_boot();
  }

  v7[0] = 0;
  v7[1] = 0;
  memset(uu, 0, sizeof(uu));
  v2 = v1;
  uuid_clear(uu);
  v3 = [v2[11] uniqueIdentifier];
  [v3 getUUIDBytes:v7];

  v4 = [[OSLogEventStreamPosition alloc] initWithSource:v7 bootUUID:uu time:0];
  _invalidate(v2, 9, v4);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)activateStreamFromDate:(id)a3
{
  source = self->_source;
  v5 = a3;
  v6 = [(OSLogEventSource *)source newestDate];
  [(OSLogEventStream *)self _activateStreamFromDate:v5 toDate:v6 useMemEffic:0 catalogCacheSize:0 dataCacheSize:0];
}

- (void)_activateStreamFromDate:(id)a3 toDate:(id)a4 useMemEffic:(BOOL)a5 catalogCacheSize:(unsigned int)a6 dataCacheSize:(unsigned int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [(OSLogEventStreamBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__OSLogEventStream__activateStreamFromDate_toDate_useMemEffic_catalogCacheSize_dataCacheSize___block_invoke;
  block[3] = &unk_2787AE510;
  block[4] = self;
  v18 = v12;
  v19 = v13;
  v22 = a5;
  v20 = a6;
  v21 = a7;
  v15 = v13;
  v16 = v12;
  dispatch_async(v14, block);
}

void __94__OSLogEventStream__activateStreamFromDate_toDate_useMemEffic_catalogCacheSize_dataCacheSize___block_invoke(id *a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  if (v1[12] && v1[10])
  {
    [a1[5] timeIntervalSince1970];
    if (v3 > 0.0)
    {
      [a1[5] timeIntervalSince1970];
    }

    if (([a1[4] flags] & 8) != 0)
    {
      v10 = *(a1[4] + 12);
    }

    else
    {
      [a1[6] timeIntervalSince1970];
      if (v8 > 0.0)
      {
        [a1[6] timeIntervalSince1970];
      }

      v9 = *(a1[4] + 12);
    }

    _timesync_range_create_impl();
  }

  v12[0] = 0;
  v12[1] = 0;
  memset(uu, 0, sizeof(uu));
  v4 = v1;
  uuid_clear(uu);
  v5 = [v4[11] uniqueIdentifier];
  [v5 getUUIDBytes:v12];

  v6 = [[OSLogEventStreamPosition alloc] initWithSource:v12 bootUUID:uu time:0];
  _invalidate(v4, 9, v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_activateStreamInRange:(os_timesync_range_s *)a3 useMemEffic:(BOOL)a4 catalogCacheSize:(unsigned int)a5 dataCacheSize:(unsigned int)a6
{
  v36 = a4;
  v56[2] = *MEMORY[0x277D85DE8];
  v9 = [(OSLogEventStreamBase *)self streamHandler];

  if (!v9)
  {
    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: OSLogEventStream activated without stream handler";
    __break(1u);
  }

  v35 = [(OSLogEventStreamBase *)self flags];
  v34 = [(OSLogEventStreamBase *)self flags];
  v32 = [(OSLogEventStreamBase *)self flags];
  v31 = [(OSLogEventStreamBase *)self flags];
  v10 = [(OSLogEventStreamBase *)self flags];
  v11 = [(OSLogEventStreamBase *)self flags];
  v12 = [(OSLogEventStreamBase *)self flags];
  v13 = [(OSLogEventStreamBase *)self flags];
  v14 = [(OSLogEventStreamBase *)self flags];
  v15 = [(OSLogEventStreamBase *)self flags];
  v16 = [(OSLogEventStreamBase *)self flags];
  v33 = [(OSLogEventStreamBase *)self compiledPredicate];
  v29 = a5;
  v30 = a6;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  index = self->_index;
  v18 = [(OSLogEventStream *)self catalogFilter];
  v19 = v34 & 0x40 | v35 & 0x20 | (4 * (v32 & 1)) | v31 & 2;
  if ((v10 & 4) == 0)
  {
    ++v19;
  }

  v20 = v19 | v11 & 8 | v12 & 0x10 | v13 & 0x80 | v14 & 0x100 | v15 & 0x200 | (2 * v16) & 0x800;
  if (v36)
  {
    v21 = v20 | 0x400;
  }

  else
  {
    v21 = v20;
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __86__OSLogEventStream__activateStreamInRange_useMemEffic_catalogCacheSize_dataCacheSize___block_invoke;
  v38[3] = &unk_2787AE4E8;
  v22 = v33;
  v39 = v22;
  v40 = self;
  v41 = &v44;
  v42 = &v52;
  v43 = &v48;
  [(_OSLogIndex *)index enumerateEntriesInRange:a3 options:v21 usingCatalogFilter:v18 catalogCacheSize:v29 dataCacheSize:v30 usingBlock:v38];

  v56[0] = 0;
  v56[1] = 0;
  v23 = v53[3];
  v24 = [(OSLogEventSource *)self->_source uniqueIdentifier];
  [v24 getUUIDBytes:v56];

  v25 = [OSLogEventStreamPosition alloc];
  v26 = [(OSLogEventStreamPosition *)v25 initWithSource:v56 bootUUID:a3->var3[v23] time:v49[3]];
  v27 = v45[3];
  if (!v27)
  {
    if ([(OSLogEventStreamBase *)self invalidated])
    {
      v27 = 4;
    }

    else
    {
      v27 = 5;
    }

    v45[3] = v27;
  }

  _invalidate(self, v27, v26);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);

  v28 = *MEMORY[0x277D85DE8];
}

BOOL __86__OSLogEventStream__activateStreamInRange_useMemEffic_catalogCacheSize_dataCacheSize___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4 || [v4 evaluateWithObject:v3])
  {
    *(*(*(a1 + 56) + 8) + 24) = [v3 _timesyncRangeUUIDIndex];
    *(*(*(a1 + 64) + 8) + 24) = [v3 machContinuousTimestamp];
    v5 = [*(a1 + 40) streamHandler];
    (v5)[2](v5, v3);
  }

  v6 = [*(a1 + 40) invalidated] == 0;

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setFilterPredicate:(id)a3
{
  v9.receiver = self;
  v9.super_class = OSLogEventStream;
  [(OSLogEventStreamBase *)&v9 setFilterPredicate:a3];
  v4 = [_OSLogCatalogFilter alloc];
  v5 = [(OSLogEventStreamBase *)self filterPredicate];
  v6 = [(OSLogEventSource *)self->_source lcr];
  v7 = [(_OSLogCatalogFilter *)v4 initWithPredicate:v5 collection:v6];
  catalogFilter = self->_catalogFilter;
  self->_catalogFilter = v7;
}

- (void)dealloc
{
  tsdb = self->_tsdb;
  if (tsdb)
  {
    _timesync_db_close(tsdb);
  }

  v4.receiver = self;
  v4.super_class = OSLogEventStream;
  [(OSLogEventStream *)&v4 dealloc];
}

- (id)_initWithSource:(id)a3 flags:(unint64_t)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(OSLogEventStreamBase *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_source, a3);
    v10 = _timesync_db_openat(*[v7 tsdb], ".");
    v9->_tsdb = v10;
    if (v10)
    {
      v11 = [v7 lcr];
      v12 = [v7 lesm];
      v13 = [[_OSLogIndex alloc] initWithCollection:v11 timesync:v9->_tsdb metadata:v12];
      index = v9->_index;
      v9->_index = v13;

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __42__OSLogEventStream__initWithSource_flags___block_invoke;
      v17[3] = &unk_2787AE4C0;
      v19 = v4 & 1;
      v18 = v9;
      [v7 _enumerateIndexFiles:v17];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __42__OSLogEventStream__initWithSource_flags___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (*(a1 + 40) != 1 || (v4 = [v3 path]) == 0 || (v5 = v4, (v6 = strchr(v4, 47)) == 0) || (v7 = strncmp(v5, "Signpost/", v6 - v5), v8 = v10, !v7))
  {
    v7 = [*(*(a1 + 32) + 80) insertIndexFile:v10];
    v8 = v10;
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

@end