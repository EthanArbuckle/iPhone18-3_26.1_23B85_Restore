@interface MTIDConfig
- (MTIDConfig)initWithDictionary:(id)a3;
- (id)allKnownSchemes;
- (id)dictionaryRepresentation;
- (id)namespaceForTopic:(id)a3 idType:(int64_t)a4;
- (id)schemeForNamespace:(id)a3;
- (unint64_t)calculateCombinedHashForNamespaces:(id)a3;
@end

@implementation MTIDConfig

- (MTIDConfig)initWithDictionary:(id)a3
{
  v109 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v105.receiver = self;
  v105.super_class = MTIDConfig;
  v5 = [(MTIDConfig *)&v105 init];
  if (v5)
  {
    v6 = 0x277CBE000uLL;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v4 = MEMORY[0x277CBEC10];
    }

    v7 = [v4 objectForKeyedSubscript:@"performanceTopic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTIDConfig *)v5 setPerformanceTopic:v7];
    }

    v85 = v7;
    v8 = [v4 objectForKeyedSubscript:@"schemes"];
    v9 = 0x277CBE000uLL;
    objc_opt_class();
    v86 = v4;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v8 = MEMORY[0x277CBEBF8];
    }

    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
    [(MTIDConfig *)v5 setCache:v10];

    v11 = [MEMORY[0x277CBEB38] dictionary];
    [(MTIDConfig *)v5 setUserIdNamespacesByTopic:v11];

    v12 = [MEMORY[0x277CBEB38] dictionary];
    [(MTIDConfig *)v5 setClientIdNamespacesByTopic:v12];

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v101 objects:v108 count:16];
    v88 = v13;
    if (v14)
    {
      v15 = v14;
      v16 = *v102;
      v87 = *v102;
      do
      {
        v17 = 0;
        v90 = v15;
        do
        {
          if (*v102 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v101 + 1) + 8 * v17);
          v19 = *(v6 + 2752);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v18 objectForKeyedSubscript:@"namespace"];
            if (v20)
            {
              [(MTIDConfig *)v5 cache];
              v22 = v21 = v18;
              v23 = [[MTIDScheme alloc] initWithNamespace:v20 options:v21];
              v24 = v20;
              v25 = v23;
              v92 = v24;
              [v22 setObject:v23 forKeyedSubscript:?];

              v91 = v21;
              v26 = [v21 objectForKeyedSubscript:@"topics"];
              v27 = *(v9 + 2656);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(MTIDScheme *)v25 setTopics:v26];
                v99 = 0u;
                v100 = 0u;
                v97 = 0u;
                v98 = 0u;
                v89 = v26;
                v28 = v26;
                v29 = [v28 countByEnumeratingWithState:&v97 objects:v107 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v98;
                  do
                  {
                    for (i = 0; i != v30; ++i)
                    {
                      if (*v98 != v31)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v33 = *(*(&v97 + 1) + 8 * i);
                      v34 = [(MTIDScheme *)v25 idType];
                      v35 = [(MTIDScheme *)v25 idNamespace];
                      if (v34 == 2)
                      {
                        [(MTIDConfig *)v5 userIdNamespacesByTopic];
                      }

                      else
                      {
                        [(MTIDConfig *)v5 clientIdNamespacesByTopic];
                      }
                      v36 = ;
                      [v36 setObject:v35 forKeyedSubscript:v33];
                    }

                    v30 = [v28 countByEnumeratingWithState:&v97 objects:v107 count:16];
                  }

                  while (v30);
                }

                v16 = v87;
                v13 = v88;
                v6 = 0x277CBE000;
                v9 = 0x277CBE000;
                v26 = v89;
              }

              v37 = [v91 objectForKeyedSubscript:@"default"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v37 BOOLValue])
              {
                [(MTIDScheme *)v25 setIsDefault:1];
                v38 = [(MTIDConfig *)v5 defaultUserIdNamespace];
                if (v38)
                {

LABEL_33:
                  v39 = [(MTIDConfig *)v5 defaultClientIdNamespace];
                  if (v39)
                  {
                  }

                  else if ([(MTIDScheme *)v25 idType]== 1)
                  {
                    [(MTIDConfig *)v5 setDefaultClientIdNamespace:v92];
                  }
                }

                else
                {
                  if ([(MTIDScheme *)v25 idType]!= 2)
                  {
                    goto LABEL_33;
                  }

                  [(MTIDConfig *)v5 setDefaultUserIdNamespace:v92];
                }
              }

              v15 = v90;
              v20 = v92;
            }
          }

          ++v17;
        }

        while (v17 != v15);
        v15 = [v13 countByEnumeratingWithState:&v101 objects:v108 count:16];
      }

      while (v15);
    }

    v40 = [(MTIDConfig *)v5 defaultUserIdNamespace];

    if (!v40)
    {
      v41 = MEMORY[0x277CCACA8];
      v42 = +[MTFrameworkEnvironment sharedEnvironment];
      v43 = [v42 hostProcessBundleIdentifier];
      v44 = [v41 stringWithFormat:@"%@.user", v43];
      [(MTIDConfig *)v5 setDefaultUserIdNamespace:v44];

      v45 = [(MTIDConfig *)v5 cache];
      v46 = [(MTIDConfig *)v5 defaultUserIdNamespace];
      v47 = [v45 objectForKeyedSubscript:v46];

      if (!v47)
      {
        v48 = [MTIDScheme alloc];
        v49 = [(MTIDConfig *)v5 defaultUserIdNamespace];
        v50 = [(MTIDScheme *)v48 initWithNamespace:v49 type:2];
        v51 = [(MTIDConfig *)v5 cache];
        v52 = [(MTIDConfig *)v5 defaultUserIdNamespace];
        [v51 setObject:v50 forKeyedSubscript:v52];
      }

      v53 = [(MTIDConfig *)v5 cache];
      v54 = [(MTIDConfig *)v5 defaultUserIdNamespace];
      v55 = [v53 objectForKeyedSubscript:v54];
      [v55 setIsDefault:1];
    }

    v56 = [(MTIDConfig *)v5 defaultClientIdNamespace];

    if (!v56)
    {
      v57 = MEMORY[0x277CCACA8];
      v58 = +[MTFrameworkEnvironment sharedEnvironment];
      v59 = [v58 hostProcessBundleIdentifier];
      v60 = [v57 stringWithFormat:@"%@.client", v59];
      [(MTIDConfig *)v5 setDefaultClientIdNamespace:v60];

      v61 = [(MTIDConfig *)v5 cache];
      v62 = [(MTIDConfig *)v5 defaultClientIdNamespace];
      v63 = [v61 objectForKeyedSubscript:v62];

      if (!v63)
      {
        v64 = [MTIDScheme alloc];
        v65 = [(MTIDConfig *)v5 defaultClientIdNamespace];
        v66 = [(MTIDScheme *)v64 initWithNamespace:v65 type:1];
        v67 = [(MTIDConfig *)v5 cache];
        v68 = [(MTIDConfig *)v5 defaultClientIdNamespace];
        [v67 setObject:v66 forKeyedSubscript:v68];
      }

      v69 = [(MTIDConfig *)v5 cache];
      v70 = [(MTIDConfig *)v5 defaultClientIdNamespace];
      v71 = [v69 objectForKeyedSubscript:v70];
      [v71 setIsDefault:1];
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v72 = [(MTIDConfig *)v5 cache];
    v73 = [v72 countByEnumeratingWithState:&v93 objects:v106 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v94;
      do
      {
        for (j = 0; j != v74; ++j)
        {
          if (*v94 != v75)
          {
            objc_enumerationMutation(v72);
          }

          v77 = *(*(&v93 + 1) + 8 * j);
          v78 = [(MTIDConfig *)v5 cache];
          v79 = [v78 objectForKeyedSubscript:v77];

          v80 = [v79 correlations];
          v81 = [v80 count];

          if (v81)
          {
            v82 = [v79 correlations];
            [v79 setCorrelationHash:{-[MTIDConfig calculateCombinedHashForNamespaces:](v5, "calculateCombinedHashForNamespaces:", v82)}];
          }
        }

        v74 = [v72 countByEnumeratingWithState:&v93 objects:v106 count:16];
      }

      while (v74);
    }

    v4 = v86;
  }

  v83 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)schemeForNamespace:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTIDConfig *)v5 cache];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    v8 = v7;
    objc_sync_exit(v5);
  }

  else
  {
    v9 = [[MTIDScheme alloc] initWithNamespace:v4 options:0];
    v10 = [(MTIDConfig *)v5 cache];
    [v10 setObject:v9 forKeyedSubscript:v4];

    objc_sync_exit(v5);
    v8 = v9;
  }

  return v8;
}

- (id)namespaceForTopic:(id)a3 idType:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [(MTIDConfig *)self userIdNamespacesByTopic];
    v8 = [v7 objectForKeyedSubscript:v6];

    if (!v8)
    {
      v9 = [(MTIDConfig *)self defaultUserIdNamespace];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v7 = [(MTIDConfig *)self clientIdNamespacesByTopic];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
LABEL_5:
    v9 = v8;
    v8 = v9;
    goto LABEL_7;
  }

  v9 = [(MTIDConfig *)self defaultClientIdNamespace];
LABEL_7:
  v10 = v9;

  return v10;
}

- (unint64_t)calculateCombinedHashForNamespaces:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(MTIDConfig *)self cache];
        v12 = [v11 objectForKeyedSubscript:v10];
        v7 ^= [v12 hash];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)allKnownSchemes
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTIDConfig *)v2 cache];
  v4 = [v3 allValues];

  objc_sync_exit(v2);

  return v4;
}

- (id)dictionaryRepresentation
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"schemes";
  v2 = [(MTIDConfig *)self allKnownSchemes];
  v3 = [v2 mt_map:&__block_literal_global_10];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end