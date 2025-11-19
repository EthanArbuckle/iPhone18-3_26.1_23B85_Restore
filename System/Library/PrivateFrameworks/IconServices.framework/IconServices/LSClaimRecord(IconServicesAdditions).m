@interface LSClaimRecord(IconServicesAdditions)
- (id)_IS_iconProvideingRecord;
@end

@implementation LSClaimRecord(IconServicesAdditions)

- (id)_IS_iconProvideingRecord
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [a1 typeIdentifiers];
  v18 = [a1 claimingBundleRecord];
  v3 = [v18 exportedTypeRecords];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __64__LSClaimRecord_IconServicesAdditions___IS_iconProvideingRecord__block_invoke;
        v19[3] = &unk_1E77C6560;
        v19[4] = v9;
        v10 = [v3 objectsPassingTest:v19];
        v11 = [v10 anyObject];

        if (v11)
        {

          v14 = v11;
          v13 = v14;
          v12 = v18;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = v18;
  v13 = v18;
  v14 = 0;
LABEL_11:
  v15 = v13;

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

@end