@interface _OSLogEventStoreMetadata
- (_OSLogEventStoreMetadata)initWithDictionary:(id)a3;
@end

@implementation _OSLogEventStoreMetadata

- (_OSLogEventStoreMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(_OSLogEventStoreMetadata *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"PersistMetadata"];
    v7 = [v6 objectForKeyedSubscript:@"OldestTimeRef"];

    v8 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v7];
    oldestPersist = v5->_oldestPersist;
    v5->_oldestPersist = v8;

    v10 = [v4 objectForKeyedSubscript:@"SpecialMetadata"];
    v11 = [v10 objectForKeyedSubscript:@"OldestTimeRef"];

    v12 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v11];
    oldestSpecial = v5->_oldestSpecial;
    v5->_oldestSpecial = v12;

    v14 = [v4 objectForKeyedSubscript:@"SignpostMetadata"];
    v15 = [v14 objectForKeyedSubscript:@"OldestTimeRef"];

    v16 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v15];
    oldestSignpost = v5->_oldestSignpost;
    v5->_oldestSignpost = v16;

    v18 = [v4 objectForKeyedSubscript:@"HighVolumeMetadata"];
    v19 = [v18 objectForKeyedSubscript:@"OldestTimeRef"];

    v20 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v19];
    oldestHighVolume = v5->_oldestHighVolume;
    v5->_oldestHighVolume = v20;

    v22 = [v4 objectForKeyedSubscript:@"LiveMetadata"];
    v23 = [v22 objectForKeyedSubscript:@"OldestTimeRef"];

    v24 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v23];
    oldestLive = v5->_oldestLive;
    v5->_oldestLive = v24;

    v47 = [v4 objectForKeyedSubscript:@"EndTimeRef"];
    v26 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v47];
    end = v5->_end;
    v5->_end = v26;

    v46 = [v4 objectForKeyedSubscript:@"ArchiveIdentifier"];
    v28 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v46];
    archiveUUID = v5->_archiveUUID;
    v5->_archiveUUID = v28;

    v30 = [v4 objectForKeyedSubscript:@"SourceIdentifier"];
    v31 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v30];
    sourceUUID = v5->_sourceUUID;
    v5->_sourceUUID = v31;

    if (!v5->_oldestPersist || !v5->_oldestSpecial || !v5->_oldestLive || !v5->_end)
    {

      v41 = 0;
      goto LABEL_15;
    }

    v43 = v23;
    v44 = v11;
    v45 = v7;
    v33 = [v4 objectForKeyedSubscript:@"SpecialMetadata"];
    v34 = [v33 objectForKeyedSubscript:@"TTL"];

    ttls = v5->_ttls;
    v36 = 8u;
    do
    {
      if (v34)
      {
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(&_OSLogTTLTable + v36)];
        v38 = [v34 objectForKeyedSubscript:v37];

        v39 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v38];
        v40 = *ttls;
        *ttls = v39;
      }

      if (!*ttls)
      {
        objc_storeStrong(ttls, v5->_oldestSpecial);
      }

      v36 += 16;
      ++ttls;
    }

    while (v36 != 88);
  }

  v41 = v5;
LABEL_15:

  return v41;
}

@end