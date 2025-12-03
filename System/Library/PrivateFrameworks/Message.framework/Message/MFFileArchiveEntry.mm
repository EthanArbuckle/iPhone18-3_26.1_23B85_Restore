@interface MFFileArchiveEntry
+ (MFFileArchiveEntry)archiveEntryWithCentralHeader:(CentralHeader *)header archiveData:(id)data;
+ (id)archiveEntry;
- (MFFileArchiveEntry)initWithContents:(id)contents path:(id)path;
- (MFFileArchiveEntry)initWithDirectoryPath:(id)path;
- (_NSRange)compressedRange;
- (void)merge:(id)merge;
@end

@implementation MFFileArchiveEntry

+ (id)archiveEntry
{
  v2 = objc_alloc_init(MFFileArchiveEntry);

  return v2;
}

- (MFFileArchiveEntry)initWithContents:(id)contents path:(id)path
{
  contentsCopy = contents;
  pathCopy = path;
  v9 = [(MFFileArchiveEntry *)self init];
  if (v9)
  {
    v10 = [pathCopy copy];
    path = v9->_path;
    v9->_path = v10;

    objc_storeStrong(&v9->_contents, contents);
    v9->_uncompressedSize = [contentsCopy length];
  }

  return v9;
}

- (MFFileArchiveEntry)initWithDirectoryPath:(id)path
{
  pathCopy = path;
  v5 = [(MFFileArchiveEntry *)self init];
  if (v5)
  {
    v6 = [pathCopy copy];
    path = v5->_path;
    v5->_path = v6;

    contents = v5->_contents;
    v5->_contents = 0;

    v5->_uncompressedSize = 0;
    v5->_isDirectory = 1;
  }

  return v5;
}

+ (MFFileArchiveEntry)archiveEntryWithCentralHeader:(CentralHeader *)header archiveData:(id)data
{
  dataCopy = data;
  v6 = +[MFFileArchiveEntry archiveEntry];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&header->var17 + 2 length:header->var11 encoding:4];
    [v6 setPath:v7];

    [v6 setUncompressedSize:header->var10];
    if (header->var6 == 8)
    {
      [v6 setIsDeflated:1];
    }

    path = [v6 path];
    v9 = [path length];

    var12 = header->var12;
    if ([v6 uncompressedSize])
    {
      [v6 setCompressedRange:{v9 + var12 + *(&header->var16 + 2) + 34, header->var9}];
    }

    compressedRange = [v6 compressedRange];
    v13 = [dataCopy subdataWithRange:{compressedRange, v12}];
    [v6 setContents:v13];
  }

  return v6;
}

- (void)merge:(id)merge
{
  mergeCopy = merge;
  path = self->_path;
  v12 = mergeCopy;
  path = [mergeCopy path];
  LODWORD(path) = [(NSString *)path isEqualToString:path];

  if (path)
  {
    if ([v12 uncompressedSize])
    {
      uncompressedSize = [v12 uncompressedSize];
    }

    else
    {
      uncompressedSize = self->_uncompressedSize;
    }

    [(MFFileArchiveEntry *)self setUncompressedSize:uncompressedSize];
    if ([v12 compressedRange])
    {
      self->_compressedRange.location = [v12 compressedRange];
      self->_compressedRange.length = v8;
    }

    if ([v12 isDeflated])
    {
      isDeflated = [v12 isDeflated];
    }

    else
    {
      isDeflated = self->_isDeflated;
    }

    self->_isDeflated = isDeflated;
    contents = [v12 contents];
    if (contents)
    {
      contents = [v12 contents];
    }

    else
    {
      contents = self->_contents;
    }

    [(MFFileArchiveEntry *)self setContents:contents];
    if (contents)
    {
    }
  }
}

- (_NSRange)compressedRange
{
  objc_copyStruct(v4, &self->_compressedRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end