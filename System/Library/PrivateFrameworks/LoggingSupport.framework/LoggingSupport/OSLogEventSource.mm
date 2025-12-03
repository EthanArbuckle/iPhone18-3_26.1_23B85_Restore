@interface OSLogEventSource
- (NSDate)newestDate;
- (NSDate)oldestDate;
- (OSLogEventSource)initWithCollection:(id)collection metadata:(id)metadata timesync:(_os_timesync_db_s *)timesync;
- (void)_enumerateIndexFiles:(id)files;
- (void)dealloc;
@end

@implementation OSLogEventSource

- (NSDate)newestDate
{
  lesm = self->_lesm;
  if (lesm)
  {
    tsdb = self->_tsdb;
    v5 = [(_OSLogEventStoreMetadata *)lesm end];
    uUID = [v5 UUID];
    v7 = [(_OSLogEventStoreMetadata *)self->_lesm end];
    v8 = _timesync_continuous_to_wall_time(tsdb, uUID, [v7 continuousTime], 0);

    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v8 / 1000000000.0];
  }

  else
  {
    [MEMORY[0x277CBEAA8] date];
  }
  v9 = ;

  return v9;
}

- (NSDate)oldestDate
{
  oldestTimeRef = self->_oldestTimeRef;
  if (oldestTimeRef)
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{_timesync_continuous_to_wall_time(self->_tsdb, -[_OSLogEventStoreTimeRef UUID](oldestTimeRef, "UUID"), -[_OSLogEventStoreTimeRef continuousTime](self->_oldestTimeRef, "continuousTime"), 0) / 1000000000.0}];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v4 = ;

  return v4;
}

- (void)_enumerateIndexFiles:(id)files
{
  v16 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_fileRefs;
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

        filesCopy[2](filesCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  _timesync_db_close(self->_tsdb);
  [(_OSLogCollectionReference *)self->_lcr close];
  v3.receiver = self;
  v3.super_class = OSLogEventSource;
  [(OSLogEventSource *)&v3 dealloc];
}

- (OSLogEventSource)initWithCollection:(id)collection metadata:(id)metadata timesync:(_os_timesync_db_s *)timesync
{
  v19 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  metadataCopy = metadata;
  v18.receiver = self;
  v18.super_class = OSLogEventSource;
  v11 = [(OSLogEventSource *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_lcr, collection);
    objc_storeStrong(&v12->_lesm, metadata);
    v12->_tsdb = timesync;
    array = [MEMORY[0x277CBEB18] array];
    fileRefs = v12->_fileRefs;
    v12->_fileRefs = array;

    if (metadataCopy)
    {
      v15 = metadataCopy;
      _timesync_range_create_impl();
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

@end