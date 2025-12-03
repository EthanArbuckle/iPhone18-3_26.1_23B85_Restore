@interface _OSLogIndex
- (BOOL)_addFileToIndex:(const char *)index error:(id *)error;
- (BOOL)_buildFileIndex;
- (BOOL)_buildSingleFileIndex:(id *)index;
- (BOOL)_openTimesyncDatabase;
- (BOOL)_readArchiveMetadata:(id *)metadata;
- (BOOL)addReferenceToIndex:(id)index error:(id *)error;
- (_OSLogIndex)init;
- (_OSLogIndex)initWithCollection:(id)collection buildLocalIndex:(BOOL)index;
- (_OSLogIndex)initWithCollection:(id)collection timesync:(_os_timesync_db_s *)timesync metadata:(id)metadata;
- (unint64_t)endWalltime;
- (unint64_t)persistStartWalltime;
- (unint64_t)specialStartWalltime;
- (void)_foreachIndexFile:(id)file;
- (void)dealloc;
- (void)enumerateEntriesFrom:(unint64_t)from to:(unint64_t)to options:(unsigned int)options usingBlock:(id)block;
- (void)enumerateEntriesFromLastBootWithOptions:(unsigned int)options usingBlock:(id)block;
- (void)enumerateFilesUsingBlock:(id)block;
- (void)insertChunkStore:(id)store;
@end

@implementation _OSLogIndex

- (_OSLogIndex)init
{
  v6.receiver = self;
  v6.super_class = _OSLogIndex;
  v2 = [(_OSLogIndex *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fileq = v2->_fileq;
    v2->_fileq = v3;
  }

  return v2;
}

- (void)enumerateFilesUsingBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  uUIDTextReference = [(_OSLogCollectionReference *)self->_lcr UUIDTextReference];
  fileDescriptor = [uUIDTextReference fileDescriptor];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_fileq;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = [v12 copyMappedChunkStore:{0, v17}];
      v15 = (*(blockCopy + 2))(blockCopy, fileDescriptor, v14[1], v14[2]);

      objc_autoreleasePoolPop(v13);
      if (!v15)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)enumerateEntriesFromLastBootWithOptions:(unsigned int)options usingBlock:(id)block
{
  tsdb = self->_tsdb;
  blockCopy = block;
  _timesync_range_create_since_last_boot();
}

- (void)enumerateEntriesFrom:(unint64_t)from to:(unint64_t)to options:(unsigned int)options usingBlock:(id)block
{
  tsdb = self->_tsdb;
  blockCopy = block;
  _timesync_range_create_impl();
}

- (unint64_t)endWalltime
{
  if (self->_metadataValid)
  {
    return _timesync_continuous_to_wall_time(self->_tsdb, self->_metadata.olim_end.uuid, self->_metadata.olim_end.continuous, 0);
  }

  else
  {
    return -1;
  }
}

- (unint64_t)specialStartWalltime
{
  if (self->_metadataValid)
  {
    return _timesync_continuous_to_wall_time(self->_tsdb, self->_metadata.olim_oldestspecial.uuid, self->_metadata.olim_oldestspecial.continuous, 0);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)persistStartWalltime
{
  if (self->_metadataValid)
  {
    return _timesync_continuous_to_wall_time(self->_tsdb, self->_metadata.olim_oldestpersist.uuid, self->_metadata.olim_oldestpersist.continuous, 0);
  }

  else
  {
    return 0;
  }
}

- (BOOL)_buildSingleFileIndex:(id *)index
{
  v5 = [[_OSLogChunkFileReference alloc] initWithCollection:self->_lcr subpath:[(NSString *)self->_file fileSystemRepresentation]];
  v6 = [[_OSLogIndexFile alloc] initWithTraceFile:v5 error:index];
  if (v6)
  {
    [(NSMutableArray *)self->_fileq addObject:v6];
  }

  return v6 != 0;
}

- (BOOL)_buildFileIndex
{
  v19 = *MEMORY[0x277D85DE8];
  diagnosticsDirectoryReference = [(_OSLogCollectionReference *)self->_lcr diagnosticsDirectoryReference];
  fileDescriptor = [diagnosticsDirectoryReference fileDescriptor];

  if (fcntl(fileDescriptor, 50, __s, 1025) < 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v17[0] = __s;
    v17[1] = 0;
    v5 = fts_open(v17, 2132, 0);
    if (v5)
    {
      v6 = v5;
      v7 = strlen(__s);
      *&__s[v7] = 47;
      v8 = fts_read(v6);
      if (v8)
      {
        v9 = v8;
        v10 = v7 + 1;
        do
        {
          if (v9->fts_level)
          {
            fts_info = v9->fts_info;
            if (fts_info == 1)
            {
              if (v9->fts_level != 1 || strcmp(v9->fts_name, "Persist") && strcmp(v9->fts_name, "Special") && strcmp(v9->fts_name, "Signpost") && strcmp(v9->fts_name, "HighVolume"))
              {
                fts_set(v6, v9, 4);
              }
            }

            else if (fts_info == 8)
            {
              v12 = strrchr(v9->fts_name, 46);
              if (v12)
              {
                if (!strcmp(v12, ".tracev3"))
                {
                  fts_path = v9->fts_path;
                  if (!strncmp(fts_path, __s, v10))
                  {
                    v14 = v10;
                  }

                  else
                  {
                    v14 = 0;
                  }

                  [(_OSLogIndex *)self _addFileToIndex:&fts_path[v14] error:0];
                }
              }
            }
          }

          v9 = fts_read(v6);
        }

        while (v9);
      }

      fts_close(v6);
      LOBYTE(v5) = 1;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)insertChunkStore:(id)store
{
  storeCopy = store;
  v5 = [[_OSLogIndexFile alloc] initWithChunkStore:storeCopy error:0];

  [(NSMutableArray *)self->_fileq addObject:v5];
}

- (void)_foreachIndexFile:(id)file
{
  v16 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_fileq;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        fileCopy[2](fileCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_addFileToIndex:(const char *)index error:(id *)error
{
  v6 = [[_OSLogChunkFileReference alloc] initWithCollection:self->_lcr subpath:index];
  LOBYTE(error) = [(_OSLogIndex *)self addReferenceToIndex:v6 error:error];

  return error;
}

- (BOOL)addReferenceToIndex:(id)index error:(id *)error
{
  indexCopy = index;
  v7 = [[_OSLogIndexFile alloc] initWithTraceFile:indexCopy error:error];

  if (v7)
  {
    [(NSMutableArray *)self->_fileq addObject:v7];
  }

  return v7 != 0;
}

- (BOOL)_openTimesyncDatabase
{
  timesyncReference = [(_OSLogCollectionReference *)self->_lcr timesyncReference];
  fileDescriptor = [timesyncReference fileDescriptor];

  v5 = _timesync_db_openat(fileDescriptor, ".");
  if (v5)
  {
    self->_tsdb = v5;
  }

  return v5 != 0;
}

- (BOOL)_readArchiveMetadata:(id *)metadata
{
  diagnosticsDirectoryReference = [(_OSLogCollectionReference *)self->_lcr diagnosticsDirectoryReference];
  [diagnosticsDirectoryReference fileDescriptor];
  v6 = _os_trace_mmap_at();

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v6 length:0 deallocator:&__block_literal_global_590];
    v8 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:metadata];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"PersistMetadata"];
      v11 = [v10 objectForKeyedSubscript:@"OldestTimeRef"];

      if (v11)
      {
        v12 = v11;
        v13 = [v12 objectForKeyedSubscript:@"UUID"];
        v14 = 0x277CCA000uLL;
        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            uuid_parse([v13 UTF8String], self->_metadata.olim_oldestpersist.uuid);
            v15 = [v12 objectForKeyedSubscript:@"ContinuousTime"];
            if (v15)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                self->_metadata.olim_oldestpersist.continuous = [v15 unsignedLongLongValue];
              }
            }
          }
        }

        v16 = [v9 objectForKeyedSubscript:@"EndTimeRef"];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
          v19 = [v18 objectForKeyedSubscript:@"UUID"];
          if (v19)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              uuid_parse([v19 UTF8String], self->_metadata.olim_end.uuid);
              v20 = [v18 objectForKeyedSubscript:@"ContinuousTime"];
              if (v20)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  self->_metadata.olim_end.continuous = [v20 unsignedLongLongValue];
                }
              }
            }
          }

          v21 = [v9 objectForKeyedSubscript:@"LiveMetadata"];
          v22 = [v21 objectForKeyedSubscript:@"OldestTimeRef"];

          if (v22)
          {
            v23 = v22;
            v24 = [v23 objectForKeyedSubscript:@"UUID"];
            if (v24)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                uuid_parse([v24 UTF8String], self->_metadata.olim_oldestlive.uuid);
                v25 = [v23 objectForKeyedSubscript:@"ContinuousTime"];
                if (v25)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    self->_metadata.olim_oldestlive.continuous = [v25 unsignedLongLongValue];
                  }
                }
              }
            }

            v26 = [v9 objectForKeyedSubscript:@"SpecialMetadata"];
            v27 = v26;
            if (v26)
            {
              v28 = [v26 objectForKeyedSubscript:@"OldestTimeRef"];
              v29 = v28 != 0;
              if (v28)
              {
                v55 = v27;
                v30 = v28;
                v31 = [v30 objectForKeyedSubscript:@"UUID"];
                if (v31)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    uuid_parse([v31 UTF8String], self->_metadata.olim_oldestspecial.uuid);
                    v32 = [v30 objectForKeyedSubscript:@"ContinuousTime"];
                    if (v32)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        self->_metadata.olim_oldestspecial.continuous = [v32 unsignedLongLongValue];
                      }
                    }
                  }
                }

                v54 = [v9 objectForKeyedSubscript:@"SignpostMetadata"];
                if (v54)
                {
                  v33 = [v54 objectForKeyedSubscript:@"OldestTimeRef"];
                  v34 = [v33 objectForKeyedSubscript:@"UUID"];
                  if (v34)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      uuid_parse([v34 UTF8String], self->_metadata.olim_oldestsignpost.uuid);
                      v35 = [v33 objectForKeyedSubscript:@"ContinuousTime"];
                      if (v35)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          self->_metadata.olim_oldestsignpost.continuous = [v35 unsignedLongLongValue];
                        }
                      }
                    }
                  }
                }

                v36 = [v9 objectForKeyedSubscript:@"HighVolumeMetadata"];
                if (v36)
                {
                  v37 = [v36 objectForKeyedSubscript:@"OldestTimeRef"];
                  v38 = [v37 objectForKeyedSubscript:@"UUID"];
                  if (v38)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      uuid_parse([v38 UTF8String], self->_metadata.olim_oldesthighvol.uuid);
                      v39 = [v37 objectForKeyedSubscript:@"ContinuousTime"];
                      if (v39)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          self->_metadata.olim_oldesthighvol.continuous = [v39 unsignedLongLongValue];
                        }
                      }
                    }
                  }
                }

                v40 = [v55 objectForKeyedSubscript:@"TTL"];
                if (!v40)
                {
LABEL_58:
                  tsdb = self->_tsdb;
                  _os_log_index_metadata_determine_oldest();
                }

                v41 = 0;
                v42 = &byte_2787ADDC0;
                while (1)
                {
                  v43 = [*(v14 + 3240) stringWithUTF8String:*(v42 + 1)];
                  v44 = [v40 objectForKeyedSubscript:v43];

                  v45 = v14;
                  v46 = self + v41 * 32;
                  v47 = v44;
                  v48 = [v47 objectForKeyedSubscript:@"UUID"];
                  if (!v48)
                  {
                    goto LABEL_56;
                  }

                  v49 = *(v45 + 3240);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_56;
                  }

                  uuid_parse([v48 UTF8String], v46 + 184);
                  v50 = [v47 objectForKeyedSubscript:@"ContinuousTime"];
                  if (!v50)
                  {
                    break;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    break;
                  }

                  *(v46 + 25) = [v50 unsignedLongLongValue];

                  self->_metadata.olim_ttl[v41].ttl = *v42;
LABEL_57:

                  ++v41;
                  v42 += 16;
                  v14 = 0x277CCA000;
                  if (v41 == 5)
                  {
                    goto LABEL_58;
                  }
                }

LABEL_56:
                v46[208] = *v42;
                *(v46 + 184) = *self->_metadata.olim_oldestspecial.uuid;
                *(v46 + 25) = self->_metadata.olim_oldestspecial.continuous;
                goto LABEL_57;
              }
            }

            else
            {
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v52 = __error();
    _OSLogFailWithPOSIXError(*v52, metadata);
    return 0;
  }

  return v29;
}

- (void)dealloc
{
  tsdb = self->_tsdb;
  if (tsdb)
  {
    _timesync_db_close(tsdb);
  }

  v4.receiver = self;
  v4.super_class = _OSLogIndex;
  [(_OSLogIndex *)&v4 dealloc];
}

- (_OSLogIndex)initWithCollection:(id)collection timesync:(_os_timesync_db_s *)timesync metadata:(id)metadata
{
  collectionCopy = collection;
  metadataCopy = metadata;
  v11 = [(_OSLogIndex *)self init];
  v12 = v11;
  if (!v11)
  {
LABEL_37:
    v18 = v12;
    goto LABEL_38;
  }

  objc_storeStrong(&v11->_lcr, collection);
  v13 = _timesync_db_openat(*timesync, ".");
  v12->_tsdb = v13;
  if (v13)
  {
    objc_storeStrong(&v12->_metadata2, metadata);
    if (metadataCopy)
    {
      v14 = metadataCopy;
      oldestLive = [v14 oldestLive];
      v16 = oldestLive;
      if (oldestLive)
      {
        *v12->_metadata.olim_oldestlive.uuid = *[oldestLive UUID];
        continuousTime = [v16 continuousTime];
      }

      else
      {
        uuid_clear(v12->_metadata.olim_oldestlive.uuid);
        continuousTime = 0;
      }

      v12->_metadata.olim_oldestlive.continuous = continuousTime;

      oldestPersist = [v14 oldestPersist];
      v20 = oldestPersist;
      if (oldestPersist)
      {
        *v12->_metadata.olim_oldestpersist.uuid = *[oldestPersist UUID];
        continuousTime2 = [v20 continuousTime];
      }

      else
      {
        uuid_clear(v12->_metadata.olim_oldestpersist.uuid);
        continuousTime2 = 0;
      }

      v12->_metadata.olim_oldestpersist.continuous = continuousTime2;

      oldestSpecial = [v14 oldestSpecial];
      v23 = oldestSpecial;
      if (oldestSpecial)
      {
        *v12->_metadata.olim_oldestspecial.uuid = *[oldestSpecial UUID];
        continuousTime3 = [v23 continuousTime];
      }

      else
      {
        uuid_clear(v12->_metadata.olim_oldestspecial.uuid);
        continuousTime3 = 0;
      }

      v12->_metadata.olim_oldestspecial.continuous = continuousTime3;

      oldestSignpost = [v14 oldestSignpost];
      v26 = oldestSignpost;
      if (oldestSignpost)
      {
        *v12->_metadata.olim_oldestsignpost.uuid = *[oldestSignpost UUID];
        continuousTime4 = [v26 continuousTime];
      }

      else
      {
        uuid_clear(v12->_metadata.olim_oldestsignpost.uuid);
        continuousTime4 = 0;
      }

      v12->_metadata.olim_oldestsignpost.continuous = continuousTime4;

      oldestHighVolume = [v14 oldestHighVolume];
      v29 = oldestHighVolume;
      if (oldestHighVolume)
      {
        *v12->_metadata.olim_oldesthighvol.uuid = *[oldestHighVolume UUID];
        continuousTime5 = [v29 continuousTime];
      }

      else
      {
        uuid_clear(v12->_metadata.olim_oldesthighvol.uuid);
        continuousTime5 = 0;
      }

      v12->_metadata.olim_oldesthighvol.continuous = continuousTime5;

      v31 = [v14 end];
      v32 = v31;
      if (v31)
      {
        *v12->_metadata.olim_end.uuid = *[v31 UUID];
        continuousTime6 = [v32 continuousTime];
      }

      else
      {
        uuid_clear(v12->_metadata.olim_end.uuid);
        continuousTime6 = 0;
      }

      v12->_metadata.olim_end.continuous = continuousTime6;

      v34 = 0;
      for (i = v12->_metadata.olim_ttl; ; ++i)
      {
        v36 = [v14 timeRefForTTLClass:v34];
        v37 = v36;
        if (v36)
        {
          *i->timeref.uuid = *[v36 UUID];
          continuousTime7 = [v37 continuousTime];
        }

        else
        {
          uuid_clear(i->timeref.uuid);
          continuousTime7 = 0;
        }

        i->timeref.continuous = continuousTime7;

        if (v34 <= 1)
        {
          if (v34)
          {
            v39 = 3;
          }

          else
          {
            v39 = 1;
          }
        }

        else if (v34 == 2)
        {
          v39 = 7;
        }

        else
        {
          if (v34 != 3)
          {
            i->ttl = 30;

            _os_log_index_metadata_determine_oldest();
          }

          v39 = 14;
        }

        i->ttl = v39;
        ++v34;
      }
    }

    goto LABEL_37;
  }

  v18 = 0;
LABEL_38:

  return v18;
}

- (_OSLogIndex)initWithCollection:(id)collection buildLocalIndex:(BOOL)index
{
  indexCopy = index;
  collectionCopy = collection;
  v8 = [(_OSLogIndex *)self init];
  v9 = v8;
  if (v8 && ((objc_storeStrong(&v8->_lcr, collection), ![(_OSLogIndex *)v9 _openTimesyncDatabase]) || ([(_OSLogIndex *)v9 _readArchiveMetadata:0], indexCopy) && ![(_OSLogIndex *)v9 _buildFileIndex]))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

@end