@interface JPFileEntry
- (BOOL)writeStream:(id)stream toDirectory:(id)directory error:(id *)error;
- (JPFileEntry)initWithBacking:(void *)backing releaseOnDealloc:(BOOL)dealloc;
- (NSString)pathname;
@end

@implementation JPFileEntry

- (NSString)pathname
{
  backing = [(JPFileEntry *)self backing];
  Pathname = JetPackFileEntryGetPathname(backing, v3, v4);
  if (Pathname)
  {
    Pathname = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:Pathname];
  }

  return Pathname;
}

- (JPFileEntry)initWithBacking:(void *)backing releaseOnDealloc:(BOOL)dealloc
{
  v7.receiver = self;
  v7.super_class = JPFileEntry;
  result = [(JPFileEntry *)&v7 init];
  if (result)
  {
    result->_backing = backing;
    result->_releaseBackingOnDealloc = dealloc;
  }

  return result;
}

- (BOOL)writeStream:(id)stream toDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  streamCopy = stream;
  backing = [(JPFileEntry *)self backing];
  backing2 = [streamCopy backing];

  v12 = directoryCopy;
  v13 = [directoryCopy cStringUsingEncoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];

  v14 = JetPackFileEntryWriteToDirectory(backing, backing2, v13);
  v15 = v14;
  if (error && (v14 & 1) == 0)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"JPErrorDomain" code:0 userInfo:0];
  }

  return v15;
}

@end