@interface JPFileEntry
- (BOOL)writeStream:(id)a3 toDirectory:(id)a4 error:(id *)a5;
- (JPFileEntry)initWithBacking:(void *)a3 releaseOnDealloc:(BOOL)a4;
- (NSString)pathname;
@end

@implementation JPFileEntry

- (NSString)pathname
{
  v2 = [(JPFileEntry *)self backing];
  Pathname = JetPackFileEntryGetPathname(v2, v3, v4);
  if (Pathname)
  {
    Pathname = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:Pathname];
  }

  return Pathname;
}

- (JPFileEntry)initWithBacking:(void *)a3 releaseOnDealloc:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = JPFileEntry;
  result = [(JPFileEntry *)&v7 init];
  if (result)
  {
    result->_backing = a3;
    result->_releaseBackingOnDealloc = a4;
  }

  return result;
}

- (BOOL)writeStream:(id)a3 toDirectory:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(JPFileEntry *)self backing];
  v11 = [v9 backing];

  v12 = v8;
  v13 = [v8 cStringUsingEncoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];

  v14 = JetPackFileEntryWriteToDirectory(v10, v11, v13);
  v15 = v14;
  if (a5 && (v14 & 1) == 0)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"JPErrorDomain" code:0 userInfo:0];
  }

  return v15;
}

@end