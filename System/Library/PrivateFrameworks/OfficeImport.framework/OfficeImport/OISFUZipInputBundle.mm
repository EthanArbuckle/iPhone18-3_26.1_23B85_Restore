@interface OISFUZipInputBundle
- (OISFUZipInputBundle)initWithZipArchive:(id)archive;
- (id)bufferedInputStreamForEntry:(id)entry;
- (id)inputStreamForEntry:(id)entry;
- (int64_t)lengthOfEntry:(id)entry;
- (unsigned)crc32ForEntry:(id)entry;
- (void)copyEntry:(id)entry toFile:(id)file;
- (void)dealloc;
@end

@implementation OISFUZipInputBundle

- (OISFUZipInputBundle)initWithZipArchive:(id)archive
{
  v6.receiver = self;
  v6.super_class = OISFUZipInputBundle;
  v4 = [(OISFUZipInputBundle *)&v6 init];
  if (v4)
  {
    v4->_zipArchive = archive;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OISFUZipInputBundle;
  [(OISFUZipInputBundle *)&v3 dealloc];
}

- (id)inputStreamForEntry:(id)entry
{
  v3 = [(OISFUZipArchive *)self->_zipArchive entryWithName:entry];

  return [v3 inputStream];
}

- (id)bufferedInputStreamForEntry:(id)entry
{
  v3 = [(OISFUZipArchive *)self->_zipArchive entryWithName:entry];

  return [v3 bufferedInputStream];
}

- (int64_t)lengthOfEntry:(id)entry
{
  v3 = [(OISFUZipArchive *)self->_zipArchive entryWithName:entry];

  return [v3 dataLength];
}

- (unsigned)crc32ForEntry:(id)entry
{
  v3 = [(OISFUZipArchive *)self->_zipArchive entryWithName:entry];

  return [v3 crc];
}

- (void)copyEntry:(id)entry toFile:(id)file
{
  v6 = [(OISFUZipArchive *)self->_zipArchive entryWithName:?];
  if (!v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipInputBundle copyEntry:toFile:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUInputBundle.m"], 66, 0, "Asked to copy missing entry %@", entry);
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v8 = [[OISFUFileDataRepresentation alloc] initWithCopyOfData:v6 path:file];
}

@end