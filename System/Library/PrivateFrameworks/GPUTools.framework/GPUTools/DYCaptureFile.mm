@interface DYCaptureFile
- (BOOL)acceptCaptureVisitor:(id)a3;
- (BOOL)executable;
- (DYCaptureFile)init;
- (id)_initWithArchive:(id)a3 hashPosition:(unsigned int)a4 name:(id)a5;
- (id)copyData:(id *)a3;
- (id)decodeArchivedObject;
- (id)decodeSerializedPropertyListWithOptions:(unint64_t)a3 error:(id *)a4;
- (id)openFunctionStream:(id *)a3;
- (int)kind;
- (void)_determineKind;
- (void)dealloc;
@end

@implementation DYCaptureFile

- (DYCaptureFile)init
{
  [(DYCaptureFile *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_initWithArchive:(id)a3 hashPosition:(unsigned int)a4 name:(id)a5
{
  v11.receiver = self;
  v11.super_class = DYCaptureFile;
  v8 = [(DYCaptureFile *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_archive = a3;
    [a3 _fileObjectDidInitialize];
    v9->_file_pos = *([a3 _hashTable] + 12 * a4);
    v9->_alias = *([a3 _hashTable] + 12 * a4 + 8) != -1;
    v9->_name = [a5 copy];
  }

  return v9;
}

- (void)dealloc
{
  [(DYCaptureArchive *)self->_archive _fileObjectDidDeallocate];

  v3.receiver = self;
  v3.super_class = DYCaptureFile;
  [(DYCaptureFile *)&v3 dealloc];
}

- (void)_determineKind
{
  if ([+[DYCaptureArchive standardFunctionStreamFilenamePredicate](DYCaptureArchive "standardFunctionStreamFilenamePredicate")])
  {
    v3 = 1;
  }

  else if ([+[DYCaptureArchive internalFilenamePredicate](DYCaptureArchive "internalFilenamePredicate")])
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  self->_kind_cache = v3;
}

- (int)kind
{
  result = self->_kind_cache;
  if (!result)
  {
    [(DYCaptureFile *)self _determineKind];
    return self->_kind_cache;
  }

  return result;
}

- (BOOL)executable
{
  kind_cache = self->_kind_cache;
  if (!kind_cache)
  {
    [(DYCaptureFile *)self _determineKind];
    kind_cache = self->_kind_cache;
  }

  return kind_cache == 1;
}

- (BOOL)acceptCaptureVisitor:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  kind_cache = self->_kind_cache;
  if (!kind_cache)
  {
    [(DYCaptureFile *)self _determineKind];
    kind_cache = self->_kind_cache;
  }

  if (kind_cache == 2)
  {
    [a3 visitInternalFile:self];
  }

  else if (kind_cache == 1)
  {
    [a3 visitFunctionStreamFile:self];
  }

  else
  {
    [a3 visitDataFile:self];
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

- (id)copyData:(id *)a3
{
  file_pos = self->_file_pos;
  v9 = 0;
  v10 = 0;
  v5 = [(DYCaptureArchive *)self->_archive requestDataForFilePosition:file_pos buffer:&v10 size:&v9 error:a3];
  result = 0;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x277CBEA90]);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __26__DYCaptureFile_copyData___block_invoke;
    v8[3] = &unk_279309B08;
    v8[4] = self;
    v8[5] = file_pos;
    return [v7 initWithBytesNoCopy:v10 length:v9 deallocator:v8];
  }

  return result;
}

- (id)openFunctionStream:(id *)a3
{
  result = [(DYCaptureFile *)self copyMutableData:?];
  if (result)
  {
    v5 = result;
    v6 = [[DYDataFunctionStream alloc] initWithData:result error:a3];

    return v6;
  }

  return result;
}

- (id)decodeArchivedObject
{
  v2 = [(DYCaptureFile *)self copyMutableData:0];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v6 = 0;
  v4 = [MEMORY[0x277D0AFD8] unarchivedObjectOfClasses:objc_msgSend(MEMORY[0x277D0AFD8] fromData:"captureArchiveClassSet") error:{v2, &v6}];

  return v4;
}

- (id)decodeSerializedPropertyListWithOptions:(unint64_t)a3 error:(id *)a4
{
  v6 = [(DYCaptureFile *)self copyMutableData:0];
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:a3 format:0 error:a4];

  return v7;
}

@end