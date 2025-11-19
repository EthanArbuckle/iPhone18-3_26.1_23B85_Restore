@interface SGDeduperML
+ (id)bucketerWithEqualityTest:(id)a3;
+ (id)bucketerWithLabeledBuckets:(id)a3;
+ (id)bucketerWithMapping:(id)a3;
+ (id)dedupe:(id)a3 bucketer:(id)a4 resolver:(id)a5;
+ (id)resolveByPairs:(id)a3;
+ (id)resolveByScoreBreakTiesArbitrarily:(id)a3;
@end

@implementation SGDeduperML

+ (id)resolveByScoreBreakTiesArbitrarily:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SGDeduperML_resolveByScoreBreakTiesArbitrarily___block_invoke;
  v7[3] = &unk_278EB82B8;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x24C1B0A20](v7);

  return v5;
}

id __50__SGDeduperML_resolveByScoreBreakTiesArbitrarily___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v18;
  v8 = 0x80000000;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v17 + 1) + 8 * i);
      v11 = (*(*(a1 + 32) + 16))();
      if (v11 > v8)
      {
        v12 = v11;
        v13 = v10;

        v6 = v13;
        v8 = v12;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  }

  while (v5);
  if (v6)
  {
    v21 = v6;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  }

  else
  {
LABEL_12:
    v14 = MEMORY[0x277CBEBF8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)resolveByPairs:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__SGDeduperML_resolveByPairs___block_invoke;
  v7[3] = &unk_278EB82B8;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x24C1B0A20](v7);

  return v5;
}

id __30__SGDeduperML_resolveByPairs___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v14;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v3);
      }

      if (v6)
      {
        v9 = (*(*(a1 + 32) + 16))();

        v6 = v9;
      }

      else
      {
        v6 = *(*(&v13 + 1) + 8 * i);
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
  }

  while (v5);
  if (v6)
  {
    v17 = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  }

  else
  {
LABEL_13:
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)bucketerWithEqualityTest:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SGDeduperML_bucketerWithEqualityTest___block_invoke;
  v7[3] = &unk_278EB8290;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x24C1B0A20](v7);

  return v5;
}

id __40__SGDeduperML_bucketerWithEqualityTest___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v6 = v19;
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v22;
          while (2)
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v21 + 1) + 8 * j);
              v12 = *(a1 + 32);
              v13 = [v11 objectAtIndexedSubscript:0];
              LODWORD(v12) = (*(v12 + 16))(v12, v5, v13);

              if (v12)
              {
                [v11 addObject:v5];
                goto LABEL_16;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v5, 0}];
        [v6 addObject:v14];
        v6 = v14;
LABEL_16:
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)bucketerWithLabeledBuckets:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SGDeduperML_bucketerWithLabeledBuckets___block_invoke;
  v7[3] = &unk_278EB8268;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x24C1B0A20](v7);

  return v5;
}

id __42__SGDeduperML_bucketerWithLabeledBuckets___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = (*(*(a1 + 32) + 16))(*(a1 + 32));
        v12 = [v4 objectForKeyedSubscript:{v11, v15}];
        if (!v12)
        {
          v12 = objc_opt_new();
          [v4 setObject:v12 forKeyedSubscript:v11];
        }

        [v12 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)bucketerWithMapping:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SGDeduperML_bucketerWithMapping___block_invoke;
  v7[3] = &unk_278EB8240;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x24C1B0A20](v7);

  return v5;
}

id __35__SGDeduperML_bucketerWithMapping___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = (*(*(a1 + 32) + 16))(*(a1 + 32));
        objc_autoreleasePoolPop(v11);
        v13 = [v4 objectForKeyedSubscript:{v12, v18}];
        if (!v13)
        {
          v13 = objc_opt_new();
          [v4 setObject:v13 forKeyedSubscript:v12];
        }

        [v13 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [v4 allValues];
  objc_autoreleasePoolPop(v14);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)dedupe:(id)a3 bucketer:(id)a4 resolver:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v31 = a5;
  Mutable = CFSetCreateMutable(0, 16, 0);
  if (!Mutable)
  {
    v26 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v26);
  }

  v10 = Mutable;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v29 = v8;
  v30 = v7;
  v11 = (*(v8 + 2))(v8, v7);
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v12)
  {
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        if ([v15 count] < 2)
        {
          v16 = [v15 objectAtIndexedSubscript:0];
          CFSetAddValue(v10, v16);
        }

        else
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v16 = v31[2](v31, v15);
          v17 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v17)
          {
            v18 = *v37;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v37 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                CFSetAddValue(v10, *(*(&v36 + 1) + 8 * j));
              }

              v17 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v17);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v12);
  }

  v20 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v30;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v22)
  {
    v23 = *v33;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v32 + 1) + 8 * k);
        if (CFSetContainsValue(v10, v25))
        {
          [v20 addObject:v25];
          CFSetRemoveValue(v10, v25);
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v22);
  }

  CFRelease(v10);
  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

@end