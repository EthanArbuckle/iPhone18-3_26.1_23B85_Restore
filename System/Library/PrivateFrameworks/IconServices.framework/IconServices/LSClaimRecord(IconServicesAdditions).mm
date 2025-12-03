@interface LSClaimRecord(IconServicesAdditions)
- (id)_IS_iconProvideingRecord;
@end

@implementation LSClaimRecord(IconServicesAdditions)

- (id)_IS_iconProvideingRecord
{
  v25 = *MEMORY[0x1E69E9840];
  typeIdentifiers = [self typeIdentifiers];
  claimingBundleRecord = [self claimingBundleRecord];
  exportedTypeRecords = [claimingBundleRecord exportedTypeRecords];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = typeIdentifiers;
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
        v10 = [exportedTypeRecords objectsPassingTest:v19];
        anyObject = [v10 anyObject];

        if (anyObject)
        {

          v14 = anyObject;
          v13 = v14;
          v12 = claimingBundleRecord;
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

  v12 = claimingBundleRecord;
  v13 = claimingBundleRecord;
  v14 = 0;
LABEL_11:
  v15 = v13;

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

@end