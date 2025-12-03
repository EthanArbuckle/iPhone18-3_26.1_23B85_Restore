@interface DYCaptureFile
- (BOOL)acceptCaptureVisitor:(id)visitor;
- (BOOL)executable;
- (DYCaptureFile)init;
- (id)_initWithArchive:(id)archive hashPosition:(unsigned int)position name:(id)name;
- (id)copyData:(id *)data;
- (id)decodeArchivedObject;
- (id)decodeSerializedPropertyListWithOptions:(unint64_t)options error:(id *)error;
- (id)openFunctionStream:(id *)stream;
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

- (id)_initWithArchive:(id)archive hashPosition:(unsigned int)position name:(id)name
{
  v11.receiver = self;
  v11.super_class = DYCaptureFile;
  v8 = [(DYCaptureFile *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_archive = archive;
    [archive _fileObjectDidInitialize];
    v9->_file_pos = *([archive _hashTable] + 12 * position);
    v9->_alias = *([archive _hashTable] + 12 * position + 8) != -1;
    v9->_name = [name copy];
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

- (BOOL)acceptCaptureVisitor:(id)visitor
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
    [visitor visitInternalFile:self];
  }

  else if (kind_cache == 1)
  {
    [visitor visitFunctionStreamFile:self];
  }

  else
  {
    [visitor visitDataFile:self];
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

- (id)copyData:(id *)data
{
  file_pos = self->_file_pos;
  v9 = 0;
  v10 = 0;
  v5 = [(DYCaptureArchive *)self->_archive requestDataForFilePosition:file_pos buffer:&v10 size:&v9 error:data];
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

- (id)openFunctionStream:(id *)stream
{
  result = [(DYCaptureFile *)self copyMutableData:?];
  if (result)
  {
    v5 = result;
    v6 = [[DYDataFunctionStream alloc] initWithData:result error:stream];

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

- (id)decodeSerializedPropertyListWithOptions:(unint64_t)options error:(id *)error
{
  v6 = [(DYCaptureFile *)self copyMutableData:0];
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:options format:0 error:error];

  return v7;
}

@end