@interface HFLogStateDumpNode
@end

@implementation HFLogStateDumpNode

void ___HFLogStateDumpNode_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = HFLogForCategory(0x45uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v16 = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "%@%@", &v16, 0x16u);
  }

  v12 = [*(a1 + 40) stringByAppendingString:@"  "];
  v9[2](v9, v12);

  v13 = HFLogForCategory(0x45uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    v16 = 138412546;
    v17 = v14;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "%@%@", &v16, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void ___HFLogStateDumpNode_block_invoke_87(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        _HFLogStateDumpNode(*(*(&v10 + 1) + 8 * v8++), v3, 0);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void ___HFLogStateDumpNode_block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 allKeys];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_98];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v4 objectForKeyedSubscript:v12];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: ", v12];
        _HFLogStateDumpNode(v13, v3, v14);
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t ___HFLogStateDumpNode_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [v4 caseInsensitiveCompare:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void ___HFLogStateDumpNode_block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = HFLogForCategory(0x45uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 40;
    if (!a3)
    {
      v7 = 32;
    }

    v8 = *(a1 + v7);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@%@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end