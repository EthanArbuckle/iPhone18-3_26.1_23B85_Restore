@interface FPFSChangeRecord
- (FPFSChangeRecord)initWithPath:(id)a3 fileID:(unint64_t)a4 docID:(unsigned int)a5 flags:(unsigned int)a6 eventID:(unint64_t)a7;
- (id)description;
- (unsigned)additionalDebugFlagsForHistoricalStream:(BOOL)a3;
- (unsigned)flags;
@end

@implementation FPFSChangeRecord

- (unsigned)flags
{
  v3 = [(FPFSChangeRecord *)self isBarrier];
  rawFlags = self->_rawFlags;
  if ((rawFlags & 0x9000) != 0 || v3)
  {
    return rawFlags & 0xFFF7FFFF;
  }

  else
  {
    return self->_rawFlags;
  }
}

- (FPFSChangeRecord)initWithPath:(id)a3 fileID:(unint64_t)a4 docID:(unsigned int)a5 flags:(unsigned int)a6 eventID:(unint64_t)a7
{
  v13 = a3;
  v22.receiver = self;
  v22.super_class = FPFSChangeRecord;
  v14 = [(FPFSChangeRecord *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_path, a3);
    v15->_fileID = a4;
    v15->_docID = a5;
    v15->_rawFlags = a6;
    v15->_eventID = a7;
    v16 = [v13 fpfs_extractFSEventsBarrierUUID];
    barrierUUID = v15->_barrierUUID;
    v15->_barrierUUID = v16;

    v18 = [v13 fpfs_extractFSEventsNotifyUUID];

    if (v18)
    {
      v15->_isNotification = 1;
      v19 = [v13 stringByDeletingLastPathComponent];
      path = v15->_path;
      v15->_path = v19;
    }
  }

  return v15;
}

- (unsigned)additionalDebugFlagsForHistoricalStream:(BOOL)a3
{
  v3 = a3;
  if (!os_variant_has_internal_content() || (self->_rawFlags & 0x80000) != 0 || ![(NSString *)self->_path hasSuffix:@"-fail-with-dropped"])
  {
    return 0;
  }

  v5 = [(NSString *)self->_path lastPathComponent];
  if ([v5 containsString:@"kernel"])
  {
    v6 = 4;
  }

  else
  {
    if (v3)
    {
      v8 = @"historical";
    }

    else
    {
      v8 = @"live";
    }

    if ([v5 containsString:v8])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  eventID = self->_eventID;
  fileID = self->_fileID;
  docID = self->_docID;
  v8 = [MEMORY[0x1E696AEC0] fpfs_initWithFSEventsFlags:self->_rawFlags];
  v9 = [(NSString *)self->_path fp_prettyPath];
  v10 = [v3 stringWithFormat:@"<%@ #%llu fileID:%llu docID:%u flags:%@ path:'%@'>", v4, eventID, fileID, docID, v8, v9];

  return v10;
}

@end