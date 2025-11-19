@interface SGPatternDataFile
- (SGPatternDataFile)initWithData:(id)a3;
- (SGPatternDataFile)initWithPath:(id)a3;
- (id)dataForOffset:(id)a3 includeTerminator:(int)a4;
@end

@implementation SGPatternDataFile

- (id)dataForOffset:(id)a3 includeTerminator:(int)a4
{
  v7 = a3;
  v8 = [v7 longLongValue];
  if ((v8 & 3) != 0)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGPatterns.m" lineNumber:589 description:{@"Invalid parameter not satisfying: %@", @"(off & 0b11) == 0"}];
  }

  if (a4)
  {
    v9 = HIDWORD(v8);
  }

  else
  {
    v9 = HIDWORD(v8) + 1;
  }

  v10 = v8;
  if (v9 + v8 > [(NSData *)self->_fileData length])
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGPatterns.m" lineNumber:592 description:{@"Invalid parameter not satisfying: %@", @"off + len <= _fileData.length"}];
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [(NSData *)self->_fileData subdataWithRange:v10, v9];
  objc_autoreleasePoolPop(v11);

  return v12;
}

- (SGPatternDataFile)initWithData:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SGPatterns.m" lineNumber:575 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v11.receiver = self;
  v11.super_class = SGPatternDataFile;
  v7 = [(SGPatternDataFile *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_fileData, a3);
  }

  return v8;
}

- (SGPatternDataFile)initWithPath:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SGPatterns.m" lineNumber:566 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v12 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5 options:1 error:&v12];
  v7 = v12;
  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGPatterns.m" lineNumber:569 description:{@"Error loading file %@: %@", v5, v7}];
  }

  v8 = [(SGPatternDataFile *)self initWithData:v6];

  return v8;
}

@end