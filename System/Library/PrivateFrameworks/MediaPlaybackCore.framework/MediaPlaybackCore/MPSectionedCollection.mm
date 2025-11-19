@interface MPSectionedCollection
@end

@implementation MPSectionedCollection

void __65__MPSectionedCollection_MQFDebugging__mpc_identifiersAsJsonValue__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = [a3 mpc_jsonValue];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "numberOfItemsInSection:", a2)}];
  v7 = *(a1 + 32);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __65__MPSectionedCollection_MQFDebugging__mpc_identifiersAsJsonValue__block_invoke_2;
  v14 = &unk_1E82348E0;
  v15 = v6;
  v8 = v6;
  [v7 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:&v11];
  v9 = *(a1 + 40);
  v16[0] = @"section";
  v16[1] = @"items";
  v17[0] = v5;
  v17[1] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:{2, v11, v12, v13, v14}];
  [v9 addObject:v10];
}

void __65__MPSectionedCollection_MQFDebugging__mpc_identifiersAsJsonValue__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 mpc_jsonValue];
  [*(a1 + 32) addObject:v4];
}

void __83__MPSectionedCollection_MPCModelQueueFeederAdditions__mpc_indexPathForIdentifiers___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) mpc_intersectsSet:a3 ignoringModelKind:1])
  {
    v7 = [MEMORY[0x1E696AC88] indexPathWithIndex:a2];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__MPSectionedCollection_MPCModelQueueFeederAdditions__mpc_indexPathForIdentifiers___block_invoke_2;
    v13[3] = &unk_1E8234B38;
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v14 = v11;
    v15 = v12;
    v16 = a2;
    v17 = a4;
    [v10 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v13];
  }
}

void __83__MPSectionedCollection_MPCModelQueueFeederAdditions__mpc_indexPathForIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) mpc_intersectsSet:a3 ignoringModelKind:1])
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:*(a1 + 48)];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    **(a1 + 56) = 1;
    *a4 = 1;
  }
}

@end