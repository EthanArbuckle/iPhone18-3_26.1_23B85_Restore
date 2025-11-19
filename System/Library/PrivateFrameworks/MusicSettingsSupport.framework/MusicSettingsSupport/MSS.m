@interface MSS
@end

@implementation MSS

void ___MSS_resolvedSpecifiers_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v5 = a3;
  objc_opt_class();
  v14 = v5;
  if (objc_opt_isKindOfClass())
  {
    v30[0] = v5;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = ___MSS_resolvedSpecifiers_block_invoke_3;
        v15[3] = &unk_2799262E0;
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v18 = &v23;
        [v10 enumerateKeysAndObjectsUsingBlock:v15];
      }

      v7 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v7);
  }

  v11 = v24[5];
  if (v11)
  {
    _MSS_setValue_forSpecifier_key(*(a1 + 32), v11, *(a1 + 40), v13);
  }

  _Block_object_dispose(&v23, 8);

  v12 = *MEMORY[0x277D85DE8];
}

void ___MSS_resolvedSpecifiers_block_invoke_3(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a3;
  hasMusicRequiredCapabilities_specifier = _MSS_hasMusicRequiredCapabilities_specifier(v8, v10, v9);
  v12 = [v10 objectForKey:*MEMORY[0x277D400A0]];

  if (!v12)
  {
    if (!hasMusicRequiredCapabilities_specifier)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (hasMusicRequiredCapabilities_specifier && (SystemHasCapabilities() & 1) != 0)
  {
LABEL_6:
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a4 = 1;
  }

LABEL_7:
}

void ___MSS__hasMusicRequiredCapabilities_specifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = _MSS_valueForRequirementKey_specifier(*(a1 + 32), a2, *(a1 + 40));
  v6 = v5;
  v7 = *(*(a1 + 48) + 8);
  if (*(v7 + 24) == 1)
  {
    v8 = [v5 isEqual:v9];
    v7 = *(*(a1 + 48) + 8);
  }

  else
  {
    v8 = 0;
  }

  *(v7 + 24) = v8;
}

@end