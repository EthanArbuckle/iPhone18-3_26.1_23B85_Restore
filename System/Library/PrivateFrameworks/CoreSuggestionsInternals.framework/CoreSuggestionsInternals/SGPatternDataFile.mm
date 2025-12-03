@interface SGPatternDataFile
- (SGPatternDataFile)initWithData:(id)data;
- (SGPatternDataFile)initWithPath:(id)path;
- (id)dataForOffset:(id)offset includeTerminator:(int)terminator;
@end

@implementation SGPatternDataFile

- (id)dataForOffset:(id)offset includeTerminator:(int)terminator
{
  offsetCopy = offset;
  longLongValue = [offsetCopy longLongValue];
  if ((longLongValue & 3) != 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPatterns.m" lineNumber:589 description:{@"Invalid parameter not satisfying: %@", @"(off & 0b11) == 0"}];
  }

  if (terminator)
  {
    v9 = HIDWORD(longLongValue);
  }

  else
  {
    v9 = HIDWORD(longLongValue) + 1;
  }

  v10 = longLongValue;
  if (v9 + longLongValue > [(NSData *)self->_fileData length])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGPatterns.m" lineNumber:592 description:{@"Invalid parameter not satisfying: %@", @"off + len <= _fileData.length"}];
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [(NSData *)self->_fileData subdataWithRange:v10, v9];
  objc_autoreleasePoolPop(v11);

  return v12;
}

- (SGPatternDataFile)initWithData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPatterns.m" lineNumber:575 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v11.receiver = self;
  v11.super_class = SGPatternDataFile;
  v7 = [(SGPatternDataFile *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_fileData, data);
  }

  return v8;
}

- (SGPatternDataFile)initWithPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPatterns.m" lineNumber:566 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v12 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:pathCopy options:1 error:&v12];
  v7 = v12;
  if (!v6)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGPatterns.m" lineNumber:569 description:{@"Error loading file %@: %@", pathCopy, v7}];
  }

  v8 = [(SGPatternDataFile *)self initWithData:v6];

  return v8;
}

@end