@interface FSExtentPacker
- (BOOL)packExtentWithResource:(id)a3 type:(int64_t)a4 logicalOffset:(int64_t)a5 physicalOffset:(int64_t)a6 length:(unint64_t)a7;
- (FSExtentPacker)initWithLength:(unint64_t)a3;
- (id)extentDataByExtentsPacked;
@end

@implementation FSExtentPacker

- (BOOL)packExtentWithResource:(id)a3 type:(int64_t)a4 logicalOffset:(int64_t)a5 physicalOffset:(int64_t)a6 length:(unint64_t)a7
{
  v7 = a7;
  v27 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = self;
  objc_sync_enter(v13);
  bytesPacked = v13->_bytesPacked;
  v15 = [(NSMutableData *)v13->_buffer length];
  v16 = bytesPacked + 24;
  if (bytesPacked + 24 > v15)
  {
    v13->_outOfSpace = 1;
    v22 = fskit_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = 136315138;
      v26 = "[FSExtentPacker packExtentWithResource:type:logicalOffset:physicalOffset:length:]";
      _os_log_impl(&dword_24A929000, v22, OS_LOG_TYPE_INFO, "%s: Packer out of space", &v25, 0xCu);
    }
  }

  else
  {
    v17 = [(NSMutableData *)v13->_buffer mutableBytes];
    extentsPacked = v13->_extentsPacked;
    v19 = [v12 fileDescriptor];
    v20 = v17 + 24 * extentsPacked;
    if (a4)
    {
      v21 = 0x2000000;
    }

    else
    {
      v21 = 0x1000000;
    }

    *v20 = v21 & 0xFF000000 | v19 & 0xFFFFFF;
    *(v20 + 4) = v7;
    *(v20 + 8) = a6;
    *(v20 + 16) = a5;
    ++v13->_extentsPacked;
    v13->_bytesPacked += 24;
  }

  objc_sync_exit(v13);

  v23 = *MEMORY[0x277D85DE8];
  return v16 <= v15;
}

- (FSExtentPacker)initWithLength:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = FSExtentPacker;
  v4 = [(FSExtentPacker *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:a3];
    buffer = v4->_buffer;
    v4->_buffer = v5;

    v4->_bytesPacked = 0;
    v4->_extentsPacked = 0;
  }

  return v4;
}

- (id)extentDataByExtentsPacked
{
  v2 = 24 * self->_extentsPacked;
  v3 = [(FSExtentPacker *)self extentData];
  v4 = [v3 subdataWithRange:{0, v2}];

  return v4;
}

@end