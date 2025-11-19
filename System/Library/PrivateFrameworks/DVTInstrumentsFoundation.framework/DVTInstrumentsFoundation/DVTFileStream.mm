@interface DVTFileStream
- (DVTFileStream)initWithURL:(id)a3;
- (id)read:(unint64_t)a3 error:(id *)a4;
- (void)_updateFileSize;
@end

@implementation DVTFileStream

- (DVTFileStream)initWithURL:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DVTFileStream;
  v6 = [(DVTFileStream *)&v12 init];
  if (v6)
  {
    v7 = MEMORY[0x277CCA9F8];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v5, "fileSystemRepresentation")}];
    v9 = [v7 fileHandleForReadingAtPath:v8];
    fileHandle = v6->_fileHandle;
    v6->_fileHandle = v9;

    objc_storeStrong(&v6->_fileURL, a3);
    v6->_currentRead = 0;
    [(DVTFileStream *)v6 _updateFileSize];
  }

  return v6;
}

- (void)_updateFileSize
{
  v3 = lseek([(NSFileHandle *)self->_fileHandle fileDescriptor], 0, 1);
  self->_fileSize = lseek([(NSFileHandle *)self->_fileHandle fileDescriptor], 0, 2);
  if (lseek([(NSFileHandle *)self->_fileHandle fileDescriptor], v3, 0) != v3)
  {
    sub_24802BD48();
  }
}

- (id)read:(unint64_t)a3 error:(id *)a4
{
  fileSize = self->_fileSize;
  currentRead = self->_currentRead;
  v7 = currentRead + a3;
  fileHandle = self->_fileHandle;
  v9 = fileSize - currentRead;
  if (v7 <= fileSize)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:mmap(0 length:v10 deallocator:{1, 2, -[NSFileHandle fileDescriptor](fileHandle, "fileDescriptor"), self->_currentRead), v10, &unk_285A17EC8}];
  self->_currentRead += [v11 length];

  return v11;
}

@end