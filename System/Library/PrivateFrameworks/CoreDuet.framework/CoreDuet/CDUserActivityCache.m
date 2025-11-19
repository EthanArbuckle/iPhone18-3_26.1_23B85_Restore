@interface CDUserActivityCache
@end

@implementation CDUserActivityCache

void __61___CDUserActivityCache_hashArrayForSourceID_bundleID_itemID___block_invoke(void *a1, void *a2)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 computeHashesForString:a1[4] reuse:*(*(a1[7] + 8) + 40)];
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = a1[5];
  v22[0] = a1[4];
  v22[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v9 = [v8 componentsJoinedByString:@":"];
  v10 = [v3 computeHashesForString:v9 reuse:*(*(a1[7] + 8) + 40)];
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = a1[6];
  if (v13)
  {
    v14 = a1[5];
    v21[0] = a1[4];
    v21[1] = v14;
    v21[2] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    v16 = [v15 componentsJoinedByString:@":"];
    v17 = [v3 computeHashesForString:v16 reuse:*(*(a1[7] + 8) + 40)];
    v18 = *(a1[7] + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __52___CDUserActivityCache_addSourceID_bundleID_itemID___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 setWithHashes:*(a1 + 32)];
  ++*(*(a1 + 40) + 24);
  return result;
}

uint64_t __66___CDUserActivityCache_containsObjectForSourceID_bundleID_itemID___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 getWithHashes:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __58___CDUserActivityCache__populateAppLocationActivityStream__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v9 = [v3 source];
  v4 = [v9 sourceID];
  v5 = [v3 source];
  v6 = [v5 bundleID];
  v7 = [v3 source];

  v8 = [v7 itemID];
  [v2 addSourceID:v4 bundleID:v6 itemID:v8];
}

@end