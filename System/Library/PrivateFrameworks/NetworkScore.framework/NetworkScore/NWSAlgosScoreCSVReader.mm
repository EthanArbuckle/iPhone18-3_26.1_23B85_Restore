@interface NWSAlgosScoreCSVReader
- (double)doubleAtRow:(id)a3 col:(id)a4 defaultValue:(double)a5;
- (double)doubleAtRow:(id)a3 colIndex:(int64_t)a4 defaultValue:(double)a5;
- (id)atRow:(id)a3 col:(id)a4;
- (id)atRowIndex:(int64_t)a3 col:(id)a4;
- (id)fixStrings:(id)a3;
- (id)parseFile:(id)a3 header:(BOOL)a4;
- (id)stripAndQuoteString:(id)a3;
- (int64_t)intAtRow:(id)a3 col:(id)a4 defaultValue:(int64_t)a5;
- (int64_t)intAtRow:(id)a3 colIndex:(int64_t)a4 defaultValue:(int64_t)a5;
- (void)debugPrint:(int)a3;
- (void)sortOnColumnIndex:(int64_t)a3 ascending:(BOOL)a4;
@end

@implementation NWSAlgosScoreCSVReader

- (id)stripAndQuoteString:(id)a3
{
  v3 = a3;
  v4 = &stru_286D2DF20;
  if (([v3 isEqualToString:&stru_286D2DF20] & 1) == 0)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\S+|.*" options:1 error:&v11];
    v4 = 0;
    if (!v11)
    {
      v6 = [v5 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 range];
        v4 = [v3 substringWithRange:{v8, v9}];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (id)fixStrings:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NWSAlgosScoreCSVReader *)self stripAndQuoteString:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)parseFile:(id)a3 header:(BOOL)a4
{
  v4 = a4;
  v45 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v6 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:a3 encoding:4 error:&v42];
  v7 = v42;
  v8 = [MEMORY[0x277CBEB18] array];
  if (!v7)
  {
    v27 = v6;
    v9 = [v6 componentsSeparatedByString:@"\n"];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v33)
    {
      v10 = *v39;
      v11 = 1;
      v32 = self;
      v31 = v4;
      v29 = v9;
      v30 = v8;
      v28 = *v39;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          if (([v13 isEqualToString:&stru_286D2DF20] & 1) == 0)
          {
            if ((v11 & v4) == 1)
            {
              v14 = [MEMORY[0x277CBEB38] dictionary];
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v15 = [v13 componentsSeparatedByString:{@", "}];
              v16 = [(NWSAlgosScoreCSVReader *)self fixStrings:v15];

              v17 = [v16 countByEnumeratingWithState:&v34 objects:v43 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = 0;
                v20 = *v35;
                do
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v35 != v20)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v22 = *(*(&v34 + 1) + 8 * j);
                    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
                    [v14 setObject:v23 forKey:v22];

                    ++v19;
                  }

                  v18 = [v16 countByEnumeratingWithState:&v34 objects:v43 count:16];
                }

                while (v18);
              }

              self = v32;
              [(NWSAlgosScoreCSVReader *)v32 setHeadings:v14];
              v4 = v31;
              v9 = v29;
              v8 = v30;
              v10 = v28;
            }

            else
            {
              v14 = [v13 componentsSeparatedByString:{@", "}];
              v24 = [(NWSAlgosScoreCSVReader *)self fixStrings:v14];
              [v8 addObject:v24];
            }

            v11 = 0;
          }
        }

        v33 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v33);
    }

    [(NWSAlgosScoreCSVReader *)self setRows:v8];

    v6 = v27;
    v7 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)atRow:(id)a3 col:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NWSAlgosScoreCSVReader *)self headings];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = [v6 objectAtIndexedSubscript:{objc_msgSend(v9, "integerValue")}];
  }

  else
  {
    v10 = &stru_286D2DF20;
  }

  return v10;
}

- (id)atRowIndex:(int64_t)a3 col:(id)a4
{
  v6 = a4;
  v7 = [(NWSAlgosScoreCSVReader *)self headings];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [v8 integerValue];
  v10 = [(NWSAlgosScoreCSVReader *)self rows];
  v11 = [v10 objectAtIndexedSubscript:a3];
  v12 = [v11 objectAtIndexedSubscript:v9];

  return v12;
}

- (double)doubleAtRow:(id)a3 col:(id)a4 defaultValue:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NWSAlgosScoreCSVReader *)self atRow:v8 col:v9];
  if (([v10 isEqualToString:&stru_286D2DF20] & 1) == 0)
  {
    [v10 doubleValue];
    a5 = v11;
  }

  return a5;
}

- (double)doubleAtRow:(id)a3 colIndex:(int64_t)a4 defaultValue:(double)a5
{
  v7 = a3;
  v8 = [v7 objectAtIndexedSubscript:a4];
  if (([v8 isEqualToString:&stru_286D2DF20] & 1) == 0)
  {
    [v8 doubleValue];
    a5 = v9;
  }

  return a5;
}

- (int64_t)intAtRow:(id)a3 col:(id)a4 defaultValue:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NWSAlgosScoreCSVReader *)self atRow:v8 col:v9];
  if (([v10 isEqualToString:&stru_286D2DF20] & 1) == 0)
  {
    a5 = [v10 longLongValue];
  }

  return a5;
}

- (int64_t)intAtRow:(id)a3 colIndex:(int64_t)a4 defaultValue:(int64_t)a5
{
  v7 = a3;
  v8 = [v7 objectAtIndexedSubscript:a4];
  if (([v8 isEqualToString:&stru_286D2DF20] & 1) == 0)
  {
    a5 = [v8 longLongValue];
  }

  return a5;
}

- (void)sortOnColumnIndex:(int64_t)a3 ascending:(BOOL)a4
{
  v6 = [(NWSAlgosScoreCSVReader *)self rows];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__NWSAlgosScoreCSVReader_sortOnColumnIndex_ascending___block_invoke;
  v7[3] = &__block_descriptor_41_e11_q24__0_8_16l;
  v8 = a4;
  v7[4] = a3;
  [v6 sortUsingComparator:v7];
}

BOOL __54__NWSAlgosScoreCSVReader_sortOnColumnIndex_ascending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 objectAtIndexedSubscript:v6];
  v9 = [v8 intValue];
  v10 = [v7 objectAtIndexedSubscript:*(a1 + 32)];

  v11 = [v10 intValue];
  if (v5)
  {
    return v9 > v11;
  }

  else
  {
    return v9 < v11;
  }
}

- (void)debugPrint:(int)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v3 = [(NWSAlgosScoreCSVReader *)self headings];
  v4 = [v3 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v50;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v50 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%-15s", objc_msgSend(*(*(&v49 + 1) + 8 * i), "cStringUsingEncoding:", 4)];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke;
        v47[3] = &unk_27996D048;
        v48 = v8;
        v9 = v8;
        __nws_log_run_with_lock(v47);
      }

      v5 = [v3 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v5);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"\n"];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke_2;
  v45[3] = &unk_27996D048;
  v46 = v10;
  v11 = v10;
  __nws_log_run_with_lock(v45);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(NWSAlgosScoreCSVReader *)self rows];
  v27 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
  v12 = a3;
  if (v27)
  {
    v26 = *v42;
LABEL_10:
    v13 = 0;
    v28 = v12 & ~(v12 >> 31);
    while (1)
    {
      if (*v42 != v26)
      {
        objc_enumerationMutation(obj);
      }

      if (v13 == v28)
      {
        break;
      }

      v32 = v12;
      v30 = v13;
      v14 = *(*(&v41 + 1) + 8 * v13);
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v37 objects:v53 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v38;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v38 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%-15s", objc_msgSend(*(*(&v37 + 1) + 8 * j), "cStringUsingEncoding:", 4)];
            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 3221225472;
            v35[2] = __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke_3;
            v35[3] = &unk_27996D048;
            v36 = v20;
            v21 = v20;
            __nws_log_run_with_lock(v35);
          }

          v17 = [v15 countByEnumeratingWithState:&v37 objects:v53 count:16];
        }

        while (v17);
      }

      v12 = v32 - 1;

      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"\n"];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke_4;
      v33[3] = &unk_27996D048;
      v34 = v22;
      v23 = v22;
      __nws_log_run_with_lock(v33);

      v13 = v30 + 1;
      if (v30 + 1 == v27)
      {
        v27 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
        if (v27)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke_3(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __37__NWSAlgosScoreCSVReader_debugPrint___block_invoke_4(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

@end