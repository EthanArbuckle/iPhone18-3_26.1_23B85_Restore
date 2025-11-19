@interface NATreeNode(HFAccessorySettingsAdditions)
- (id)hf_nodeWithKeyPath:()HFAccessorySettingsAdditions;
- (id)hf_sortedAccessorySettingsChildren;
@end

@implementation NATreeNode(HFAccessorySettingsAdditions)

- (id)hf_sortedAccessorySettingsChildren
{
  v1 = [a1 childNodes];
  v2 = [v1 allObjects];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_284];

  return v3;
}

- (id)hf_nodeWithKeyPath:()HFAccessorySettingsAdditions
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"HFAccessorySettingsEntity.m" lineNumber:424 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
  }

  v6 = [a1 representedObject];
  v7 = [v6 keyPath];
  v8 = [v7 isEqualToString:v5];

  if (v8)
  {
    v9 = a1;
  }

  else
  {
    v26 = v6;
    v10 = [v5 componentsSeparatedByString:@"."];
    v9 = a1;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v30;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v11);
          }

          if (!v9)
          {

            goto LABEL_20;
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          if ([v17 isEqualToString:@"root"])
          {
            v18 = @"root";
            v19 = v14;
            v14 = v18;
          }

          else
          {
            v20 = [(__CFString *)v14 stringByAppendingFormat:@".%@", v17];

            v21 = [v9 childNodes];
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __63__NATreeNode_HFAccessorySettingsAdditions__hf_nodeWithKeyPath___block_invoke;
            v27[3] = &unk_277E01D68;
            v14 = v20;
            v28 = v14;
            v22 = [v21 na_firstObjectPassingTest:v27];

            v19 = v28;
            v9 = v22;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 0;
    }

    v9 = v9;
LABEL_20:

    v6 = v26;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

@end