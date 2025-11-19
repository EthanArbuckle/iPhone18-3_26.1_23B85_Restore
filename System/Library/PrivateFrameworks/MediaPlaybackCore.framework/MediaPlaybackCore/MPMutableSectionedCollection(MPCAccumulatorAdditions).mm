@interface MPMutableSectionedCollection(MPCAccumulatorAdditions)
- (id)mpc_indexPathForElement:()MPCAccumulatorAdditions;
@end

@implementation MPMutableSectionedCollection(MPCAccumulatorAdditions)

- (id)mpc_indexPathForElement:()MPCAccumulatorAdditions
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__11410;
  v19 = __Block_byref_object_dispose__11411;
  v20 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__MPMutableSectionedCollection_MPCAccumulatorAdditions__mpc_indexPathForElement___block_invoke;
  v12[3] = &unk_1E8233BE0;
  v5 = v4;
  v13 = v5;
  v14 = &v15;
  [a1 enumerateSectionsUsingBlock:v12];
  v6 = v16[5];
  if (!v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__MPMutableSectionedCollection_MPCAccumulatorAdditions__mpc_indexPathForElement___block_invoke_2;
    v9[3] = &unk_1E8233C08;
    v10 = v5;
    v11 = &v15;
    [a1 enumerateItemsUsingBlock:v9];

    v6 = v16[5];
  }

  v7 = v6;

  _Block_object_dispose(&v15, 8);

  return v7;
}

@end