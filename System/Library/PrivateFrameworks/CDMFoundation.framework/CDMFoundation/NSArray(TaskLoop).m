@interface NSArray(TaskLoop)
- (void)enumerateTaskParallelly:()TaskLoop blockCompleteAllTask:;
@end

@implementation NSArray(TaskLoop)

- (void)enumerateTaskParallelly:()TaskLoop blockCompleteAllTask:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __66__NSArray_TaskLoop__enumerateTaskParallelly_blockCompleteAllTask___block_invoke;
  v25[3] = &unk_1E862F540;
  v13 = v6;
  v27 = v13;
  v9 = v8;
  v26 = v9;
  [a1 enumerateObjectsUsingBlock:v25];
  v10 = objc_opt_new();
  if (v9 && [v9 count])
  {
    if ([v9 count])
    {
      v11 = 0;
      do
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x3032000000;
        v22 = __Block_byref_object_copy__7031;
        v23 = __Block_byref_object_dispose__7032;
        v24 = [v9 objectAtIndexedSubscript:v11];
        v12 = v20[5];
        if (v12)
        {
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __66__NSArray_TaskLoop__enumerateTaskParallelly_blockCompleteAllTask___block_invoke_2;
          v14[3] = &unk_1E862F568;
          v15 = v10;
          v18 = &v19;
          v16 = v9;
          v17 = v7;
          (*(v12 + 16))(v12, 0, v14);
        }

        _Block_object_dispose(&v19, 8);

        ++v11;
      }

      while ([v9 count] > v11);
    }
  }

  else if (v7)
  {
    v7[2](v7);
  }
}

@end