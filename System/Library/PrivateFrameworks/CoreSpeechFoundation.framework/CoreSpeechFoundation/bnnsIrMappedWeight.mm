@interface bnnsIrMappedWeight
- (bnnsIrMappedWeight)initWithWeightFile:(id)a3 errOut:(id *)a4;
- (void)dealloc;
- (void)ummapForWeight;
@end

@implementation bnnsIrMappedWeight

- (void)ummapForWeight
{
  weightData = self->_weightData;
  if (weightData != -1)
  {
    munmap(weightData, self->_weightSize);
    self->_weightData = -1;
    self->_weightSize = 0;
  }
}

- (void)dealloc
{
  [(bnnsIrMappedWeight *)self ummapForWeight];
  v3.receiver = self;
  v3.super_class = bnnsIrMappedWeight;
  [(bnnsIrMappedWeight *)&v3 dealloc];
}

- (bnnsIrMappedWeight)initWithWeightFile:(id)a3 errOut:(id *)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24.receiver = self;
  v24.super_class = bnnsIrMappedWeight;
  v7 = [(bnnsIrMappedWeight *)&v24 init];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v6;
  v9 = open([v6 UTF8String], 0);
  fstat(v9, &v23);
  st_size = v23.st_size;
  v7->_weightSize = v23.st_size;
  if (v9 == -1)
  {
    if (a4)
    {
      v12 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v13 = MEMORY[0x1E696AEC0];
      v14 = __error();
      v15 = [v13 stringWithFormat:@"Could not OPEN() weights: %s", strerror(*v14)];
      v28[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v17 = [v12 errorWithDomain:@"com.apple.corespeech" code:2454 userInfo:v16];
LABEL_9:
      *a4 = v17;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v7->_weightData = mmap(0, st_size, 1, 2, v9, 0);
  close(v9);
  if (v7->_weightData == -1)
  {
    if (a4)
    {
      v18 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v19 = MEMORY[0x1E696AEC0];
      v20 = __error();
      v15 = [v19 stringWithFormat:@"Could not MMAP() weights: %s", strerror(*v20)];
      v26 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v17 = [v18 errorWithDomain:@"com.apple.corespeech" code:2454 userInfo:v16];
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_4:
  v11 = v7;
LABEL_11:

  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

@end