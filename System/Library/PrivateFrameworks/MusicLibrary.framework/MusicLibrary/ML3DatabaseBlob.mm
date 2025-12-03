@interface ML3DatabaseBlob
- (ML3DatabaseBlob)init;
- (ML3DatabaseBlob)initWithSQLiteHandle:(sqlite3_blob *)handle;
- (id)data;
- (int)readData:(id)data numberOfBytes:(unint64_t)bytes offset:(unint64_t)offset;
- (int)writeData:(id)data numberOfBytes:(unint64_t)bytes offset:(unint64_t)offset;
- (unint64_t)length;
- (void)dealloc;
@end

@implementation ML3DatabaseBlob

- (id)data
{
  v3 = [(ML3DatabaseBlob *)self length];
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:v3];
  v5 = [(ML3DatabaseBlob *)self readData:v4 numberOfBytes:v3 offset:0];
  v6 = 0;
  if (!v5)
  {
    v6 = v4;
  }

  return v6;
}

- (int)writeData:(id)data numberOfBytes:(unint64_t)bytes offset:(unint64_t)offset
{
  offsetCopy = offset;
  bytesCopy = bytes;
  sqliteHandle = self->_sqliteHandle;
  dataCopy = data;
  bytes = [data bytes];

  return sqlite3_blob_write(sqliteHandle, bytes, bytesCopy, offsetCopy);
}

- (int)readData:(id)data numberOfBytes:(unint64_t)bytes offset:(unint64_t)offset
{
  offsetCopy = offset;
  dataCopy = data;
  [dataCopy setLength:bytes];
  sqliteHandle = self->_sqliteHandle;
  mutableBytes = [dataCopy mutableBytes];

  return sqlite3_blob_read(sqliteHandle, mutableBytes, bytes, offsetCopy);
}

- (unint64_t)length
{
  result = self->_sqliteHandle;
  if (result)
  {
    return sqlite3_blob_bytes(result);
  }

  return result;
}

- (void)dealloc
{
  sqliteHandle = self->_sqliteHandle;
  if (sqliteHandle)
  {
    sqlite3_blob_close(sqliteHandle);
  }

  v4.receiver = self;
  v4.super_class = ML3DatabaseBlob;
  [(ML3DatabaseBlob *)&v4 dealloc];
}

- (ML3DatabaseBlob)initWithSQLiteHandle:(sqlite3_blob *)handle
{
  v5.receiver = self;
  v5.super_class = ML3DatabaseBlob;
  result = [(ML3DatabaseBlob *)&v5 init];
  if (result)
  {
    result->_sqliteHandle = handle;
  }

  return result;
}

- (ML3DatabaseBlob)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"-init is unsupported. Use -initWithSQLiteHandle: instead."];

  return 0;
}

@end