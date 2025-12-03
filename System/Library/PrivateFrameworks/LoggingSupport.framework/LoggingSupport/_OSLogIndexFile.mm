@interface _OSLogIndexFile
- (BOOL)_determineTimespan;
- (BOOL)_loadCatalogMetadataForTimespan;
- (BOOL)_loadHeaderMetadata:(id)metadata;
- (_OSLogIndexFile)initWithChunkStore:(id)store error:(id *)error;
- (_OSLogIndexFile)initWithTraceFile:(id)file error:(id *)error;
- (id)copyMappedChunkStore:(id *)store;
- (void)dealloc;
@end

@implementation _OSLogIndexFile

- (BOOL)_determineTimespan
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = _index_log();
  if (os_signpost_enabled(v3))
  {
    path = self->_path;
    v12 = 136315138;
    v13 = path;
    _os_signpost_emit_with_name_impl(&dword_22E01A000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Determine Timespan", "for %s", &v12, 0xCu);
  }

  if (self->_timespanDetermined)
  {
    goto LABEL_13;
  }

  cfr = self->_cfr;
  if (cfr)
  {
    if ([(_OSLogChunkFileReference *)cfr readXattrForTimespan:0])
    {
      v6 = getenv("LOG_USE_XATTRTIMESPAN");
      if (!v6 || *v6 != 48 || v6[1])
      {
        self->_ot = [(_OSLogChunkFileReference *)self->_cfr xattrOldestTime];
        cet = [(_OSLogChunkFileReference *)self->_cfr xattrEndTime];
LABEL_12:
        self->_et = cet;
LABEL_13:
        v8 = 1;
        self->_timespanDetermined = 1;
        goto LABEL_14;
      }
    }
  }

  if ([(_OSLogIndexFile *)self _loadCatalogMetadataForTimespan])
  {
    cet = self->_cet;
    self->_ot = self->_cot;
    goto LABEL_12;
  }

  v8 = 0;
LABEL_14:
  v9 = _index_log();
  if (os_signpost_enabled(v9))
  {
    v12 = 67109120;
    LODWORD(v13) = v8;
    _os_signpost_emit_with_name_impl(&dword_22E01A000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Determine Timespan", "success: %{BOOL}d", &v12, 8u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_loadCatalogMetadataForTimespan
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _index_log();
  if (os_signpost_enabled(v3))
  {
    path = self->_path;
    *buf = 136315138;
    v14 = path;
    _os_signpost_emit_with_name_impl(&dword_22E01A000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Read Catalogs", "for %s", buf, 0xCu);
  }

  v5 = self->_cs;
  if (self->_cs || (cfr = self->_cfr) == 0 || (v11 = [(_OSLogChunkFileReference *)cfr copyMappedChunkFile:0], v5, (v5 = v11) != 0))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50___OSLogIndexFile__loadCatalogMetadataForTimespan__block_invoke;
    v12[3] = &unk_2787ADD28;
    v12[4] = self;
    [(_OSLogChunkStore *)v5 enumerateChunksUsingBlock:v12];
    if (!self->_cet)
    {
      self->_cet = -1;
    }

    v6 = _index_log();
    if (os_signpost_enabled(v6))
    {
      *buf = 67109120;
      LODWORD(v14) = 1;
      _os_signpost_emit_with_name_impl(&dword_22E01A000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Read Catalogs", "success: %{BOOL}d", buf, 8u);
    }

    v7 = 1;
  }

  else
  {
    v5 = _index_log();
    if (os_signpost_enabled(&v5->super))
    {
      *buf = 67109120;
      LODWORD(v14) = 0;
      _os_signpost_emit_with_name_impl(&dword_22E01A000, &v5->super, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Read Catalogs", "success: %{BOOL}d", buf, 8u);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)copyMappedChunkStore:(id *)store
{
  cs = self->_cs;
  if (cs)
  {
    return cs;
  }

  result = self->_cfr;
  if (result)
  {
    return [result copyMappedChunkFile:store];
  }

  qword_27DA52778 = "BUG IN LIBTRACE: _OSLogIndexFile had no backing store or file reference";
  __break(1u);
  return result;
}

- (BOOL)_loadHeaderMetadata:(id)metadata
{
  metadataCopy = metadata;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39___OSLogIndexFile__loadHeaderMetadata___block_invoke;
  v6[3] = &unk_2787ADD00;
  v6[4] = self;
  v6[5] = &v7;
  [metadataCopy enumerateChunksUsingBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

- (void)dealloc
{
  free(self->_path);
  v3.receiver = self;
  v3.super_class = _OSLogIndexFile;
  [(_OSLogIndexFile *)&v3 dealloc];
}

- (_OSLogIndexFile)initWithChunkStore:(id)store error:(id *)error
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = _OSLogIndexFile;
  v7 = [(_OSLogIndexFile *)&v11 init];
  v8 = v7;
  if (!v7 || (objc_storeStrong(&v7->_cs, store), v8->_cot_header = -1, v8->_cot = -1, v8->_timespanDetermined = 0, v8->_ot = -1, v8->_path = 0, v9 = 0, [(_OSLogIndexFile *)v8 _loadHeaderMetadata:storeCopy]))
  {
    v9 = v8;
  }

  return v9;
}

- (_OSLogIndexFile)initWithTraceFile:(id)file error:(id *)error
{
  fileCopy = file;
  v13.receiver = self;
  v13.super_class = _OSLogIndexFile;
  v8 = [(_OSLogIndexFile *)&v13 init];
  v9 = v8;
  if (!v8)
  {
LABEL_4:
    v10 = v9;
    goto LABEL_6;
  }

  objc_storeStrong(&v8->_cfr, file);
  v9->_ot = -1;
  v9->_cot_header = -1;
  v9->_cot = -1;
  v9->_timespanDetermined = 0;
  [(_OSLogChunkFileReference *)v9->_cfr path];
  strlen([(_OSLogChunkFileReference *)v9->_cfr path]);
  v9->_path = _os_trace_memdup();
  v10 = [(_OSLogChunkFileReference *)v9->_cfr copyMappedChunkFile:error];
  if (v10)
  {
    v11 = [(_OSLogIndexFile *)v9 _loadHeaderMetadata:v10];

    if (!v11)
    {
      v10 = 0;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:

  return v10;
}

@end