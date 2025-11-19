@interface CDPSerializedDataHarvester
@end

@implementation CDPSerializedDataHarvester

void __72___CDPSerializedDataHarvester_loadWithLimit_dataPointReader_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v25 = 0;
  v5 = [v2 stringWithContentsOfFile:v4 encoding:4 error:&v25];
  v6 = v25;

  if (v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __72___CDPSerializedDataHarvester_loadWithLimit_dataPointReader_completion___block_invoke_cold_1(v6);
  }

  v23 = v6;
  v7 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v24 = v5;
  v8 = [v5 componentsSeparatedByCharactersInSet:v7];

  v9 = objc_alloc_init(_CDPSimpleDataPoint);
  if ([v8 count] <= *(a1 + 56))
  {
    v10 = 0;
  }

  else
  {
    v10 = ([v8 count] - *(a1 + 56));
  }

  for (; [v8 count] > v10; ++v10)
  {
    v11 = [v8 objectAtIndexedSubscript:v10];
    v12 = [v11 componentsSeparatedByString:@" "];
    if ([v12 count] && objc_msgSend(v11, "length") >= 0xA)
    {
      v13 = [v12 firstObject];
      -[_CDPSimpleDataPoint setUserIsSender:](v9, "setUserIsSender:", [v13 isEqualToString:@"YES"]);

      v14 = [v12 objectAtIndexedSubscript:1];
      -[_CDPSimpleDataPoint setUserIsThreadInitiator:](v9, "setUserIsThreadInitiator:", [v14 isEqualToString:@"YES"]);

      v15 = MEMORY[0x1E695DF00];
      v16 = [v12 objectAtIndexedSubscript:2];
      [v16 doubleValue];
      v17 = [v15 dateWithTimeIntervalSince1970:?];
      [(_CDPSimpleDataPoint *)v9 setTimestamp:v17];

      v18 = [MEMORY[0x1E695DF70] array];
      if ([v12 count] >= 4)
      {
        v19 = 3;
        do
        {
          v20 = v19 + 1;
          v21 = [v12 objectAtIndexedSubscript:?];
          [v18 addObject:v21];

          v22 = [v12 count];
          v19 = v20;
        }

        while (v22 > v20);
      }

      [(_CDPSimpleDataPoint *)v9 setPeopleIdentifiers:v18];
      (*(*(a1 + 40) + 16))();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __72___CDPSerializedDataHarvester_loadWithLimit_dataPointReader_completion___block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end