@interface CalDatabaseRequestApplicationSnapshotUpdate
@end

@implementation CalDatabaseRequestApplicationSnapshotUpdate

void ___CalDatabaseRequestApplicationSnapshotUpdate_block_invoke()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
  v1 = _CalDatabaseRequestApplicationSnapshotUpdate_systemService;
  _CalDatabaseRequestApplicationSnapshotUpdate_systemService = v0;

  v9 = *MEMORY[0x1E699F8E0];
  v7 = *MEMORY[0x1E699F818];
  v8 = MEMORY[0x1E695E0F8];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v4 = [MEMORY[0x1E699FB70] optionsWithDictionary:v3];
  v5 = _CalDatabaseRequestApplicationSnapshotUpdate_options;
  _CalDatabaseRequestApplicationSnapshotUpdate_options = v4;

  v6 = *MEMORY[0x1E69E9840];
}

void ___CalDatabaseRequestApplicationSnapshotUpdate_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    [a3 code];
    CFLog();
  }
}

@end