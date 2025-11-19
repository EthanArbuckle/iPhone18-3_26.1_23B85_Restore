@interface SUUITrendingSearchPageConsumer
- (id)_pageWithDictionary:(id)a3;
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SUUITrendingSearchPageConsumer

- (id)_pageWithDictionary:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(SUUITrendingSearchPage);
  v5 = [v3 objectForKey:@"header"];
  v6 = 0x277CBE000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectForKey:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUUITrendingSearchPage *)v4 setTitle:v7];
    }
  }

  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [v3 objectForKey:@"trendingSearches"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v5;
    v27 = v3;
    v28 = v4;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v9;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      v14 = @"label";
      v15 = @"url";
      v29 = v10;
LABEL_8:
      v16 = 0;
      while (1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v30 + 1) + 8 * v16);
        if ([v8 count] > 9)
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v17 objectForKey:v14];
          v19 = [v17 objectForKey:v15];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v15;
              v21 = v6;
              v22 = v14;
              v23 = objc_alloc_init(SUUITrendingSearch);
              [(SUUITrendingSearch *)v23 setTerm:v18];
              [(SUUITrendingSearch *)v23 setURLString:v19];
              [v8 addObject:v23];

              v14 = v22;
              v6 = v21;
              v15 = v20;
              v10 = v29;
            }
          }
        }

        if (v12 == ++v16)
        {
          v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v12)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v3 = v27;
    v4 = v28;
    v9 = v25;
    v5 = v26;
  }

  [(SUUITrendingSearchPage *)v4 setSearches:v8];

  return v4;
}

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v12 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v12];
  v8 = v12;
  objc_opt_class();
  v9 = 0;
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SUUITrendingSearchPageConsumer *)self _pageWithDictionary:v7];
  }

  if (a5 && !v9)
  {
    v10 = v8;
    *a5 = v8;
  }

  return v9;
}

@end