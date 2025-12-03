@interface FPFSChangeRecord
- (FPFSChangeRecord)initWithPath:(id)path fileID:(unint64_t)d docID:(unsigned int)iD flags:(unsigned int)flags eventID:(unint64_t)eventID;
- (id)description;
- (unsigned)additionalDebugFlagsForHistoricalStream:(BOOL)stream;
- (unsigned)flags;
@end

@implementation FPFSChangeRecord

- (unsigned)flags
{
  isBarrier = [(FPFSChangeRecord *)self isBarrier];
  rawFlags = self->_rawFlags;
  if ((rawFlags & 0x9000) != 0 || isBarrier)
  {
    return rawFlags & 0xFFF7FFFF;
  }

  else
  {
    return self->_rawFlags;
  }
}

- (FPFSChangeRecord)initWithPath:(id)path fileID:(unint64_t)d docID:(unsigned int)iD flags:(unsigned int)flags eventID:(unint64_t)eventID
{
  pathCopy = path;
  v22.receiver = self;
  v22.super_class = FPFSChangeRecord;
  v14 = [(FPFSChangeRecord *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_path, path);
    v15->_fileID = d;
    v15->_docID = iD;
    v15->_rawFlags = flags;
    v15->_eventID = eventID;
    fpfs_extractFSEventsBarrierUUID = [pathCopy fpfs_extractFSEventsBarrierUUID];
    barrierUUID = v15->_barrierUUID;
    v15->_barrierUUID = fpfs_extractFSEventsBarrierUUID;

    fpfs_extractFSEventsNotifyUUID = [pathCopy fpfs_extractFSEventsNotifyUUID];

    if (fpfs_extractFSEventsNotifyUUID)
    {
      v15->_isNotification = 1;
      stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
      path = v15->_path;
      v15->_path = stringByDeletingLastPathComponent;
    }
  }

  return v15;
}

- (unsigned)additionalDebugFlagsForHistoricalStream:(BOOL)stream
{
  streamCopy = stream;
  if (!os_variant_has_internal_content() || (self->_rawFlags & 0x80000) != 0 || ![(NSString *)self->_path hasSuffix:@"-fail-with-dropped"])
  {
    return 0;
  }

  lastPathComponent = [(NSString *)self->_path lastPathComponent];
  if ([lastPathComponent containsString:@"kernel"])
  {
    v6 = 4;
  }

  else
  {
    if (streamCopy)
    {
      v8 = @"historical";
    }

    else
    {
      v8 = @"live";
    }

    if ([lastPathComponent containsString:v8])
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
  fp_prettyPath = [(NSString *)self->_path fp_prettyPath];
  v10 = [v3 stringWithFormat:@"<%@ #%llu fileID:%llu docID:%u flags:%@ path:'%@'>", v4, eventID, fileID, docID, v8, fp_prettyPath];

  return v10;
}

@end