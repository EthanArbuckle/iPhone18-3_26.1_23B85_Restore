@interface MFFileArchiveEntry
+ (MFFileArchiveEntry)archiveEntryWithCentralHeader:(CentralHeader *)a3 archiveData:(id)a4;
+ (id)archiveEntry;
- (MFFileArchiveEntry)initWithContents:(id)a3 path:(id)a4;
- (MFFileArchiveEntry)initWithDirectoryPath:(id)a3;
- (_NSRange)compressedRange;
- (void)merge:(id)a3;
@end

@implementation MFFileArchiveEntry

+ (id)archiveEntry
{
  v2 = objc_alloc_init(MFFileArchiveEntry);

  return v2;
}

- (MFFileArchiveEntry)initWithContents:(id)a3 path:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(MFFileArchiveEntry *)self init];
  if (v9)
  {
    v10 = [v8 copy];
    path = v9->_path;
    v9->_path = v10;

    objc_storeStrong(&v9->_contents, a3);
    v9->_uncompressedSize = [v7 length];
  }

  return v9;
}

- (MFFileArchiveEntry)initWithDirectoryPath:(id)a3
{
  v4 = a3;
  v5 = [(MFFileArchiveEntry *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    path = v5->_path;
    v5->_path = v6;

    contents = v5->_contents;
    v5->_contents = 0;

    v5->_uncompressedSize = 0;
    v5->_isDirectory = 1;
  }

  return v5;
}

+ (MFFileArchiveEntry)archiveEntryWithCentralHeader:(CentralHeader *)a3 archiveData:(id)a4
{
  v5 = a4;
  v6 = +[MFFileArchiveEntry archiveEntry];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&a3->var17 + 2 length:a3->var11 encoding:4];
    [v6 setPath:v7];

    [v6 setUncompressedSize:a3->var10];
    if (a3->var6 == 8)
    {
      [v6 setIsDeflated:1];
    }

    v8 = [v6 path];
    v9 = [v8 length];

    var12 = a3->var12;
    if ([v6 uncompressedSize])
    {
      [v6 setCompressedRange:{v9 + var12 + *(&a3->var16 + 2) + 34, a3->var9}];
    }

    v11 = [v6 compressedRange];
    v13 = [v5 subdataWithRange:{v11, v12}];
    [v6 setContents:v13];
  }

  return v6;
}

- (void)merge:(id)a3
{
  v4 = a3;
  path = self->_path;
  v12 = v4;
  v6 = [v4 path];
  LODWORD(path) = [(NSString *)path isEqualToString:v6];

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
    v10 = [v12 contents];
    if (v10)
    {
      contents = [v12 contents];
    }

    else
    {
      contents = self->_contents;
    }

    [(MFFileArchiveEntry *)self setContents:contents];
    if (v10)
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