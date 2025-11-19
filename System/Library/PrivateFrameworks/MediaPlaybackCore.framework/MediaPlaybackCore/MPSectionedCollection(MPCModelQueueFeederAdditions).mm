@interface MPSectionedCollection(MPCModelQueueFeederAdditions)
- (id)mpc_indexPathForIdentifiers:()MPCModelQueueFeederAdditions;
@end

@implementation MPSectionedCollection(MPCModelQueueFeederAdditions)

- (id)mpc_indexPathForIdentifiers:()MPCModelQueueFeederAdditions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__13630;
    v16 = __Block_byref_object_dispose__13631;
    v17 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__MPSectionedCollection_MPCModelQueueFeederAdditions__mpc_indexPathForIdentifiers___block_invoke;
    v8[3] = &unk_1E8234B60;
    v10 = a1;
    v11 = &v12;
    v9 = v4;
    [a1 enumerateSectionIdentifiersUsingBlock:v8];
    v6 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end