@interface FSDirectoryEntryPacker
- (BOOL)packEntryWithName:(id)name itemType:(int64_t)type itemID:(unint64_t)d nextCookie:(unint64_t)cookie attributes:(id)attributes;
- (FSDirectoryEntryPacker)initWithBuffer:(id)buffer withAttributes:(BOOL)attributes;
- (void)setLastEntryAsEOF;
@end

@implementation FSDirectoryEntryPacker

- (BOOL)packEntryWithName:(id)name itemType:(int64_t)type itemID:(unint64_t)d nextCookie:(unint64_t)cookie attributes:(id)attributes
{
  typeCopy = type;
  v44 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  attributesCopy = attributes;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  data = [nameCopy data];
  v16 = [data length];

  if (v16)
  {
    v17 = 0;
    while (1)
    {
      data2 = [nameCopy data];
      v19 = *([data2 bytes] + v17);

      if (v19 == 47)
      {
        break;
      }

      if (v16 == ++v17)
      {
        goto LABEL_5;
      }
    }

    string = [nameCopy string];
    if (string)
    {
      v30 = fskit_std_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [FSDirectoryEntryPacker packEntryWithName:string itemType:v30 itemID:? nextCookie:? attributes:?];
      }
    }

    else
    {
      v30 = fskit_std_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [FSDirectoryEntryPacker packEntryWithName:v30 itemType:? itemID:? nextCookie:? attributes:?];
      }
    }

    goto LABEL_30;
  }

LABEL_5:
  if (selfCopy->_withAttributes)
  {
    if (attributesCopy)
    {
      bytesPacked = selfCopy->_bytesPacked;
      v21 = (v16 + 208) & 0xFFFFFFF8;
      if (bytesPacked + v21 > [(FSMutableFileDataBuffer *)selfCopy->_buffer length])
      {
        lastEntry = selfCopy->_lastEntry;
        if (lastEntry)
        {
          lastEntry[4] = 0;
        }

        v23 = fskit_std_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v43 = "[FSDirectoryEntryPacker packEntryWithName:itemType:itemID:nextCookie:attributes:]";
          _os_log_impl(&dword_24A929000, v23, OS_LOG_TYPE_INFO, "%s: Packer out of space", buf, 0xCu);
        }

        goto LABEL_18;
      }

      cookieCopy = cookie;
      v37 = ([(FSMutableFileDataBuffer *)selfCopy->_buffer mutableBytes]+ selfCopy->_bytesPacked);
      [attributesCopy getLIAttributes:v37 + 16];
      data3 = [nameCopy data];
      memcpy((v37 + 200), [data3 bytes], v16);

      *(v37 + 200 + v16) = 0;
      *(v37 + 10) = 200;
      *(v37 + 12) = v16;
      *(v37 + 8) = (v16 + 208) & 0xFFF8;
      *v37 = cookieCopy;
      selfCopy->_bytesPacked += v21;
      selfCopy->_lastEntry = v37;
    }

    else
    {
      v35 = fskit_std_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [FSDirectoryEntryPacker packEntryWithName:v35 itemType:? itemID:? nextCookie:? attributes:?];
      }
    }

LABEL_30:
    v28 = 1;
    goto LABEL_31;
  }

  v24 = selfCopy->_bytesPacked;
  cookieCopy2 = cookie;
  v25 = attributesCopy;
  v26 = (v16 + 29) & 0xFFFFFFFFFFFFFFF8;
  if (v24 + v26 <= [(FSMutableFileDataBuffer *)selfCopy->_buffer length])
  {
    mutableBytes = [(FSMutableFileDataBuffer *)selfCopy->_buffer mutableBytes];
    v32 = selfCopy->_bytesPacked;
    data4 = [nameCopy data];
    v34 = (mutableBytes + v32);
    memcpy(v34 + 21, [data4 bytes], v16);

    v34[v16 + 21] = 0;
    *(v34 + 9) = v16;
    v34[20] = typeCopy;
    *(v34 + 8) = v26;
    *v34 = d;
    *(v34 + 1) = cookieCopy2;
    selfCopy->_bytesPacked += v26;
    selfCopy->_lastEntry = v34;
    v28 = 1;
    attributesCopy = v25;
    goto LABEL_31;
  }

  v27 = selfCopy->_lastEntry;
  if (v27)
  {
    v27[8] = 0;
  }

  v23 = fskit_std_log();
  attributesCopy = v25;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v43 = "[FSDirectoryEntryPacker packEntryWithName:itemType:itemID:nextCookie:attributes:]";
    _os_log_impl(&dword_24A929000, v23, OS_LOG_TYPE_INFO, "%s: Packer out of space", buf, 0xCu);
  }

LABEL_18:

  v28 = 0;
  selfCopy->_outOfSpace = 1;
LABEL_31:
  objc_sync_exit(selfCopy);

  v39 = *MEMORY[0x277D85DE8];
  return v28;
}

- (FSDirectoryEntryPacker)initWithBuffer:(id)buffer withAttributes:(BOOL)attributes
{
  bufferCopy = buffer;
  v11.receiver = self;
  v11.super_class = FSDirectoryEntryPacker;
  v8 = [(FSDirectoryEntryPacker *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_buffer, buffer);
    v9->_lastEntry = [bufferCopy mutableBytes];
    v9->_bytesPacked = 0;
    v9->_withAttributes = attributes;
    v9->_outOfSpace = 0;
  }

  return v9;
}

- (void)setLastEntryAsEOF
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_outOfSpace)
  {
    lastEntry = obj->_lastEntry;
    if (obj->_withAttributes)
    {
      lastEntry[4] = 0;
    }

    else
    {
      lastEntry[8] = 0;
      lastEntry += 4;
    }

    *lastEntry = -1;
  }

  objc_sync_exit(obj);
}

- (void)packEntryWithName:(uint64_t)a1 itemType:(NSObject *)a2 itemID:nextCookie:attributes:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[FSDirectoryEntryPacker packEntryWithName:itemType:itemID:nextCookie:attributes:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_24A929000, a2, OS_LOG_TYPE_ERROR, "%s:error: Invalid entry name (%@)", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)packEntryWithName:(os_log_t)log itemType:itemID:nextCookie:attributes:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[FSDirectoryEntryPacker packEntryWithName:itemType:itemID:nextCookie:attributes:]";
  _os_log_error_impl(&dword_24A929000, log, OS_LOG_TYPE_ERROR, "%s:error: Invalid entry name", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)packEntryWithName:(os_log_t)log itemType:itemID:nextCookie:attributes:.cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[FSDirectoryEntryPacker packEntryWithName:itemType:itemID:nextCookie:attributes:]";
  _os_log_error_impl(&dword_24A929000, log, OS_LOG_TYPE_ERROR, "%s:error: No attributes found, while we were requeste to pack with attributes", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end