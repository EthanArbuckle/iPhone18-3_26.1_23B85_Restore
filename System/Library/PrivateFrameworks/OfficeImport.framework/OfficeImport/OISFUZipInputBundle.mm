@interface OISFUZipInputBundle
- (OISFUZipInputBundle)initWithZipArchive:(id)a3;
- (id)bufferedInputStreamForEntry:(id)a3;
- (id)inputStreamForEntry:(id)a3;
- (int64_t)lengthOfEntry:(id)a3;
- (unsigned)crc32ForEntry:(id)a3;
- (void)copyEntry:(id)a3 toFile:(id)a4;
- (void)dealloc;
@end

@implementation OISFUZipInputBundle

- (OISFUZipInputBundle)initWithZipArchive:(id)a3
{
  v6.receiver = self;
  v6.super_class = OISFUZipInputBundle;
  v4 = [(OISFUZipInputBundle *)&v6 init];
  if (v4)
  {
    v4->_zipArchive = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OISFUZipInputBundle;
  [(OISFUZipInputBundle *)&v3 dealloc];
}

- (id)inputStreamForEntry:(id)a3
{
  v3 = [(OISFUZipArchive *)self->_zipArchive entryWithName:a3];

  return [v3 inputStream];
}

- (id)bufferedInputStreamForEntry:(id)a3
{
  v3 = [(OISFUZipArchive *)self->_zipArchive entryWithName:a3];

  return [v3 bufferedInputStream];
}

- (int64_t)lengthOfEntry:(id)a3
{
  v3 = [(OISFUZipArchive *)self->_zipArchive entryWithName:a3];

  return [v3 dataLength];
}

- (unsigned)crc32ForEntry:(id)a3
{
  v3 = [(OISFUZipArchive *)self->_zipArchive entryWithName:a3];

  return [v3 crc];
}

- (void)copyEntry:(id)a3 toFile:(id)a4
{
  v6 = [(OISFUZipArchive *)self->_zipArchive entryWithName:?];
  if (!v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipInputBundle copyEntry:toFile:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUInputBundle.m"], 66, 0, "Asked to copy missing entry %@", a3);
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v8 = [[OISFUFileDataRepresentation alloc] initWithCopyOfData:v6 path:a4];
}

@end