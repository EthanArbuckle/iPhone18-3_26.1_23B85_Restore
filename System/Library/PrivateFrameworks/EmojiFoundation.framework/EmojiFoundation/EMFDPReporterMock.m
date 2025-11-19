@interface EMFDPReporterMock
- (BOOL)record:(id)a3;
- (EMFDPReporterMock)init;
- (NSArray)recordsWritten;
@end

@implementation EMFDPReporterMock

- (EMFDPReporterMock)init
{
  v7.receiver = self;
  v7.super_class = EMFDPReporterMock;
  v2 = [(EMFDPReporterMock *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recordsWritten = v2->_recordsWritten;
    v2->_recordsWritten = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)record:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMutableArray *)self->_recordsWritten addObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return 1;
}

- (NSArray)recordsWritten
{
  v2 = [(NSMutableArray *)self->_recordsWritten copy];

  return v2;
}

@end