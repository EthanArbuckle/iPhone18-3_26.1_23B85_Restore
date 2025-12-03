@interface FBWorkspaceConnectionsState
+ (id)deserializeLength:(unint64_t *)length fromReader:(id)reader;
- (BOOL)isEqual:(id)equal;
- (NSSet)processIdentifiers;
- (id)_initWithIndexSet:(id)set;
- (id)copy;
- (id)description;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)serializeToWriter:(id)writer;
@end

@implementation FBWorkspaceConnectionsState

- (id)copy
{
  v3.receiver = self;
  v3.super_class = FBWorkspaceConnectionsState;
  return [(FBWorkspaceConnectionsState *)&v3 copy];
}

- (NSSet)processIdentifiers
{
  if ([(NSMutableIndexSet *)self->_pidSet count])
  {
    v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSMutableIndexSet count](self->_pidSet, "count")}];
    pidSet = self->_pidSet;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__FBWorkspaceConnectionsState_processIdentifiers__block_invoke;
    v7[3] = &unk_1E783C858;
    v5 = v3;
    v8 = v5;
    [(NSMutableIndexSet *)pidSet enumerateIndexesUsingBlock:v7];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  return v5;
}

- (id)_initWithIndexSet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = FBWorkspaceConnectionsState;
  v5 = [(FBWorkspaceConnectionsState *)&v9 init];
  if (v5)
  {
    if (setCopy)
    {
      indexSet = [setCopy mutableCopy];
    }

    else
    {
      indexSet = [MEMORY[0x1E696AD50] indexSet];
    }

    pidSet = v5->_pidSet;
    v5->_pidSet = indexSet;
  }

  return v5;
}

void __49__FBWorkspaceConnectionsState_processIdentifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [v2 addObject:v3];
}

- (id)mutableCopy
{
  v3.receiver = self;
  v3.super_class = FBWorkspaceConnectionsState;
  return [(FBWorkspaceConnectionsState *)&v3 mutableCopy];
}

- (int64_t)serializeToWriter:(id)writer
{
  v31 = *MEMORY[0x1E69E9840];
  writerCopy = writer;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if ([(NSMutableIndexSet *)self->_pidSet count]>> 31)
  {
    v8 = FBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspaceConnectionsState serializeToWriter:v8];
    }

    v9 = -1;
    v21[3] = -1;
  }

  else
  {
    v19 = [(NSMutableIndexSet *)self->_pidSet count];
    v5 = writerCopy[2](writerCopy, &v19, 4);
    if (v5 < 0)
    {
      v10 = __error();
      strerror_r(*v10, __strerrbuf, 0x100uLL);
      v11 = FBLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = v19;
        v15 = *__error();
        *buf = 67109634;
        v25 = v14;
        v26 = 1024;
        v27 = v15;
        v28 = 2080;
        v29 = __strerrbuf;
        _os_log_error_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_ERROR, "failed to write count (%i) : errno=%i (%s)", buf, 0x18u);
      }

      v7 = v21;
      v21[3] = -1;
    }

    else
    {
      v21[3] += v5;
      pidSet = self->_pidSet;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __49__FBWorkspaceConnectionsState_serializeToWriter___block_invoke;
      v16[3] = &unk_1E783C880;
      v17 = writerCopy;
      v18 = &v20;
      [(NSMutableIndexSet *)pidSet enumerateIndexesUsingBlock:v16];

      v7 = v21;
    }

    v9 = v7[3];
  }

  _Block_object_dispose(&v20, 8);

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

void __49__FBWorkspaceConnectionsState_serializeToWriter___block_invoke(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v5 = (*(*(a1 + 32) + 16))();
  if (v5 < 0)
  {
    v6 = __error();
    strerror_r(*v6, __strerrbuf, 0x100uLL);
    v7 = FBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__FBWorkspaceConnectionsState_serializeToWriter___block_invoke_cold_1(&v9);
    }

    *(*(*(a1 + 40) + 8) + 24) = -1;
    *a3 = 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) += v5;
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)deserializeLength:(unint64_t *)length fromReader:(id)reader
{
  v21 = *MEMORY[0x1E69E9840];
  readerCopy = reader;
  v6 = objc_opt_new();
  v19 = 0;
  v7 = readerCopy[2](readerCopy, &v19, 4);
  if (v7 < 0)
  {
    v12 = __error();
    strerror_r(*v12, __strerrbuf, 0x100uLL);
    v13 = FBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[FBWorkspaceConnectionsState deserializeLength:fromReader:];
    }
  }

  else
  {
    v8 = v7;
    if (v19 < 1)
    {
LABEL_8:
      if (length)
      {
        *length = v8;
      }

      v11 = v6;
      goto LABEL_22;
    }

    v9 = 0;
    while ((v8 + 4) >= 0)
    {
      v18 = -1;
      v10 = readerCopy[2](readerCopy, &v18, 4);
      if (v10 < 0)
      {
        v14 = __error();
        strerror_r(*v14, __strerrbuf, 0x100uLL);
        v15 = FBLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          +[FBWorkspaceConnectionsState deserializeLength:fromReader:];
        }

        goto LABEL_20;
      }

      if (v18 <= 0)
      {
        v15 = FBLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(FBWorkspaceConnectionsState *)v9 deserializeLength:v15 fromReader:?];
        }

LABEL_20:

        goto LABEL_21;
      }

      v8 += v10;
      [v6[1] addIndex:?];
      if (++v9 >= v19)
      {
        goto LABEL_8;
      }
    }

    v13 = FBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspaceConnectionsState serializeToWriter:v13];
    }
  }

LABEL_21:
  v11 = 0;
LABEL_22:

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class()))
    {
      v7 = [(NSMutableIndexSet *)self->_pidSet isEqualToIndexSet:equalCopy->_pidSet];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  pidSet = self->_pidSet;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __42__FBWorkspaceConnectionsState_description__block_invoke;
  v11 = &unk_1E783C8A8;
  v12 = string;
  v5 = string;
  [(NSMutableIndexSet *)pidSet enumerateRangesUsingBlock:&v8];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p pids=%@>", objc_opt_class(), self, v5, v8, v9, v10, v11];

  return v6;
}

void __42__FBWorkspaceConnectionsState_description__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v8 = [v7 stringValue];
  [v6 appendString:v8];

  if (a3 >= 2)
  {
    [*(a1 + 32) appendString:@"-"];
    v9 = *(a1 + 32);
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2 + a3];
    v10 = [v11 stringValue];
    [v9 appendString:v10];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [FBMutableWorkspaceConnectionsState alloc];
  pidSet = self->_pidSet;

  return [(FBWorkspaceConnectionsState *)v4 _initWithIndexSet:pidSet];
}

void __49__FBWorkspaceConnectionsState_serializeToWriter___block_invoke_cold_1(unsigned int *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = *__error();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x18u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)deserializeLength:fromReader:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)deserializeLength:fromReader:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)deserializeLength:(os_log_t)log fromReader:.cold.4(int a1, int *a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5[0] = 67109376;
  v5[1] = a1 + 1;
  v6 = 1024;
  v7 = v3;
  _os_log_error_impl(&dword_1A89DD000, log, OS_LOG_TYPE_ERROR, "pid %i is invalid (%i)", v5, 0xEu);
  v4 = *MEMORY[0x1E69E9840];
}

@end