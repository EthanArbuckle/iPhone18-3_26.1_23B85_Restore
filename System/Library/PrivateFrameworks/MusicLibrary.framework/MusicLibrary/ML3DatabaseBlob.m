@interface ML3DatabaseBlob
- (ML3DatabaseBlob)init;
- (ML3DatabaseBlob)initWithSQLiteHandle:(sqlite3_blob *)a3;
- (id)data;
- (int)readData:(id)a3 numberOfBytes:(unint64_t)a4 offset:(unint64_t)a5;
- (int)writeData:(id)a3 numberOfBytes:(unint64_t)a4 offset:(unint64_t)a5;
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

- (int)writeData:(id)a3 numberOfBytes:(unint64_t)a4 offset:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  sqliteHandle = self->_sqliteHandle;
  v9 = a3;
  v10 = [a3 bytes];

  return sqlite3_blob_write(sqliteHandle, v10, v6, v5);
}

- (int)readData:(id)a3 numberOfBytes:(unint64_t)a4 offset:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  [v8 setLength:a4];
  sqliteHandle = self->_sqliteHandle;
  v10 = [v8 mutableBytes];

  return sqlite3_blob_read(sqliteHandle, v10, a4, v5);
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

- (ML3DatabaseBlob)initWithSQLiteHandle:(sqlite3_blob *)a3
{
  v5.receiver = self;
  v5.super_class = ML3DatabaseBlob;
  result = [(ML3DatabaseBlob *)&v5 init];
  if (result)
  {
    result->_sqliteHandle = a3;
  }

  return result;
}

- (ML3DatabaseBlob)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"-init is unsupported. Use -initWithSQLiteHandle: instead."];

  return 0;
}

@end