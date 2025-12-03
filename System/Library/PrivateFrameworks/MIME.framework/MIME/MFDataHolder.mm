@interface MFDataHolder
+ (id)dataHolder;
+ (id)dataHolderWithData:(id)data;
- (MFDataHolder)init;
- (MFDataHolder)initWithData:(id)data;
- (id)data;
- (unint64_t)numberOfNewlinesNeedingConversion:(BOOL)conversion;
- (void)addData:(id)data;
- (void)enumerateByteRangesUsingBlock:(id)block;
- (void)enumerateConvertingNewlinesUsingBlock:(id)block;
@end

@implementation MFDataHolder

- (MFDataHolder)init
{
  v7.receiver = self;
  v7.super_class = MFDataHolder;
  v2 = [(MFDataHolder *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    datas = v2->_datas;
    v2->_datas = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)dataHolder
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)dataHolderWithData:(id)data
{
  dataCopy = data;
  v5 = [[self alloc] initWithData:dataCopy];

  return v5;
}

- (MFDataHolder)initWithData:(id)data
{
  dataCopy = data;
  v5 = [(MFDataHolder *)self init];
  v6 = v5;
  if (v5)
  {
    [(MFDataHolder *)v5 addData:dataCopy];
  }

  return v6;
}

- (void)addData:(id)data
{
  dataCopy = data;
  [(NSMutableArray *)self->_datas addObject:?];
  self->_length += [dataCopy length];
}

- (id)data
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_datas count]== 1)
  {
    v3 = [(NSMutableArray *)self->_datas objectAtIndexedSubscript:0];
    goto LABEL_19;
  }

  if ([(MFDataHolder *)self length]<= 0x20000)
  {
    v3 = [MEMORY[0x1E695DF88] dataWithCapacity:{-[MFDataHolder length](self, "length")}];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_datas;
    v9 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v24 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v6);
          }

          [v3 appendData:*(*(&v14 + 1) + 8 * i)];
        }

        v9 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v24 count:16];
      }

      while (v9);
    }

    goto LABEL_18;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = MFDataGetDataPath();
  v6 = [defaultManager mf_makeUniqueFileInDirectory:v5];

  v7 = open([(NSMutableArray *)v6 fileSystemRepresentation], 1537, 438);
  v8 = v7;
  if (v7 == -1)
  {
    goto LABEL_17;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  MFProtectFileDescriptor(v7, 3);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __20__MFDataHolder_data__block_invoke;
  v18[3] = &unk_1E8454EE8;
  v18[4] = &v20;
  v19 = v8;
  [(MFDataHolder *)self enumerateByteRangesUsingBlock:v18];
  close(v8);
  if ((v21[3] & 1) == 0)
  {
    _Block_object_dispose(&v20, 8);
LABEL_17:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Could not create cache file at %@ (%d).", v6, *__error()}];
    v3 = 0;
    goto LABEL_18;
  }

  v3 = [MFData dataWithContentsOfFile:v6];
  _Block_object_dispose(&v20, 8);
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

ssize_t __20__MFDataHolder_data__block_invoke(uint64_t a1, const void *a2, int a3, size_t __nbyte, _BYTE *a5)
{
  result = write(*(a1 + 40), a2, __nbyte);
  *(*(*(a1 + 32) + 8) + 24) = result == __nbyte;
  *a5 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

- (void)enumerateByteRangesUsingBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_datas;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v8++) enumerateByteRangesUsingBlock:{blockCopy, v10}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (unint64_t)numberOfNewlinesNeedingConversion:(BOOL)conversion
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MFDataHolder_numberOfNewlinesNeedingConversion___block_invoke;
  v5[3] = &unk_1E8454F10;
  v5[4] = &v7;
  v5[5] = v11;
  conversionCopy = conversion;
  [(MFDataHolder *)self enumerateConvertingNewlinesUsingBlock:v5];
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v11, 8);
  return v3;
}

uint64_t __50__MFDataHolder_numberOfNewlinesNeedingConversion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    if (*(*(*(a1 + 40) + 8) + 24) == 1 && (*(a1 + 48) & 1) != 0)
    {
      return 0;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a3 == 0;
  return 1;
}

- (void)enumerateConvertingNewlinesUsingBlock:(id)block
{
  blockCopy = block;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = -86;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__MFDataHolder_enumerateConvertingNewlinesUsingBlock___block_invoke;
  v6[3] = &unk_1E8454F60;
  v8 = v13;
  v9 = v14;
  v10 = v11;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MFDataHolder *)self enumerateDatasUsingBlock:v6];

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v14, 8);
}

void __54__MFDataHolder_enumerateConvertingNewlinesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__MFDataHolder_enumerateConvertingNewlinesUsingBlock___block_invoke_2;
  v9[3] = &unk_1E8454F38;
  v9[4] = *(a1 + 32);
  v11 = *(a1 + 56);
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  [a2 enumerateByteRangesUsingBlock:v9];
  *a4 = *(*(*(a1 + 64) + 8) + 24) ^ 1;
}

uint64_t __54__MFDataHolder_enumerateConvertingNewlinesUsingBlock___block_invoke_2(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v8 = *(*(*(a1 + 48) + 8) + 24) + a4;
  result = [*(a1 + 32) length];
  v10 = result;
  v11 = a2;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v11 = a2;
    if (*a2 == 10)
    {
      result = (*(*(a1 + 40) + 16))(*(a1 + 40), &CRLF, 2, 0, a4 < 2);
      *(*(*(a1 + 64) + 8) + 24) = result;
      v11 = a2 + 1;
    }
  }

  v12 = &a2[a4];
  v13 = v8 != v10 && *(v12 - 1) == 13;
  *(*(*(a1 + 56) + 8) + 24) = v13;
  if (*(*(*(a1 + 64) + 8) + 24) == 1 && v11 < v12)
  {
    while (1)
    {
      v15 = memchr(v11, 10, v12 - v11);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      if (v11 < v15 && *(v15 - 1) == 13 || (v17 = (*(*(a1 + 40) + 16))(), result = 0, v17))
      {
        result = (*(*(a1 + 40) + 16))();
      }

      *(*(*(a1 + 64) + 8) + 24) = result;
      v11 = v16 + 1;
      if (*(*(*(a1 + 64) + 8) + 24) != 1 || v11 >= v12)
      {
        goto LABEL_23;
      }
    }

    result = (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 64) + 8) + 24) = result;
  }

LABEL_23:
  *(*(*(a1 + 48) + 8) + 24) += a4;
  *a5 = *(*(*(a1 + 64) + 8) + 24) ^ 1;
  return result;
}

@end