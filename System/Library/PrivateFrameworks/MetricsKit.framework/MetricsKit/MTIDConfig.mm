@interface MTIDConfig
- (MTIDConfig)initWithDictionary:(id)dictionary;
- (id)allKnownSchemes;
- (id)dictionaryRepresentation;
- (id)namespaceForTopic:(id)topic idType:(int64_t)type;
- (id)schemeForNamespace:(id)namespace;
- (unint64_t)calculateCombinedHashForNamespaces:(id)namespaces;
@end

@implementation MTIDConfig

- (MTIDConfig)initWithDictionary:(id)dictionary
{
  v109 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v105.receiver = self;
  v105.super_class = MTIDConfig;
  v5 = [(MTIDConfig *)&v105 init];
  if (v5)
  {
    v6 = 0x277CBE000uLL;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      dictionaryCopy = MEMORY[0x277CBEC10];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"performanceTopic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTIDConfig *)v5 setPerformanceTopic:v7];
    }

    v85 = v7;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"schemes"];
    v9 = 0x277CBE000uLL;
    objc_opt_class();
    v86 = dictionaryCopy;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v8 = MEMORY[0x277CBEBF8];
    }

    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
    [(MTIDConfig *)v5 setCache:v10];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(MTIDConfig *)v5 setUserIdNamespacesByTopic:dictionary];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(MTIDConfig *)v5 setClientIdNamespacesByTopic:dictionary2];

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
                      idType = [(MTIDScheme *)v25 idType];
                      idNamespace = [(MTIDScheme *)v25 idNamespace];
                      if (idType == 2)
                      {
                        [(MTIDConfig *)v5 userIdNamespacesByTopic];
                      }

                      else
                      {
                        [(MTIDConfig *)v5 clientIdNamespacesByTopic];
                      }
                      v36 = ;
                      [v36 setObject:idNamespace forKeyedSubscript:v33];
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
                defaultUserIdNamespace = [(MTIDConfig *)v5 defaultUserIdNamespace];
                if (defaultUserIdNamespace)
                {

LABEL_33:
                  defaultClientIdNamespace = [(MTIDConfig *)v5 defaultClientIdNamespace];
                  if (defaultClientIdNamespace)
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

    defaultUserIdNamespace2 = [(MTIDConfig *)v5 defaultUserIdNamespace];

    if (!defaultUserIdNamespace2)
    {
      v41 = MEMORY[0x277CCACA8];
      v42 = +[MTFrameworkEnvironment sharedEnvironment];
      hostProcessBundleIdentifier = [v42 hostProcessBundleIdentifier];
      v44 = [v41 stringWithFormat:@"%@.user", hostProcessBundleIdentifier];
      [(MTIDConfig *)v5 setDefaultUserIdNamespace:v44];

      cache = [(MTIDConfig *)v5 cache];
      defaultUserIdNamespace3 = [(MTIDConfig *)v5 defaultUserIdNamespace];
      v47 = [cache objectForKeyedSubscript:defaultUserIdNamespace3];

      if (!v47)
      {
        v48 = [MTIDScheme alloc];
        defaultUserIdNamespace4 = [(MTIDConfig *)v5 defaultUserIdNamespace];
        v50 = [(MTIDScheme *)v48 initWithNamespace:defaultUserIdNamespace4 type:2];
        cache2 = [(MTIDConfig *)v5 cache];
        defaultUserIdNamespace5 = [(MTIDConfig *)v5 defaultUserIdNamespace];
        [cache2 setObject:v50 forKeyedSubscript:defaultUserIdNamespace5];
      }

      cache3 = [(MTIDConfig *)v5 cache];
      defaultUserIdNamespace6 = [(MTIDConfig *)v5 defaultUserIdNamespace];
      v55 = [cache3 objectForKeyedSubscript:defaultUserIdNamespace6];
      [v55 setIsDefault:1];
    }

    defaultClientIdNamespace2 = [(MTIDConfig *)v5 defaultClientIdNamespace];

    if (!defaultClientIdNamespace2)
    {
      v57 = MEMORY[0x277CCACA8];
      v58 = +[MTFrameworkEnvironment sharedEnvironment];
      hostProcessBundleIdentifier2 = [v58 hostProcessBundleIdentifier];
      v60 = [v57 stringWithFormat:@"%@.client", hostProcessBundleIdentifier2];
      [(MTIDConfig *)v5 setDefaultClientIdNamespace:v60];

      cache4 = [(MTIDConfig *)v5 cache];
      defaultClientIdNamespace3 = [(MTIDConfig *)v5 defaultClientIdNamespace];
      v63 = [cache4 objectForKeyedSubscript:defaultClientIdNamespace3];

      if (!v63)
      {
        v64 = [MTIDScheme alloc];
        defaultClientIdNamespace4 = [(MTIDConfig *)v5 defaultClientIdNamespace];
        v66 = [(MTIDScheme *)v64 initWithNamespace:defaultClientIdNamespace4 type:1];
        cache5 = [(MTIDConfig *)v5 cache];
        defaultClientIdNamespace5 = [(MTIDConfig *)v5 defaultClientIdNamespace];
        [cache5 setObject:v66 forKeyedSubscript:defaultClientIdNamespace5];
      }

      cache6 = [(MTIDConfig *)v5 cache];
      defaultClientIdNamespace6 = [(MTIDConfig *)v5 defaultClientIdNamespace];
      v71 = [cache6 objectForKeyedSubscript:defaultClientIdNamespace6];
      [v71 setIsDefault:1];
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    cache7 = [(MTIDConfig *)v5 cache];
    v73 = [cache7 countByEnumeratingWithState:&v93 objects:v106 count:16];
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
            objc_enumerationMutation(cache7);
          }

          v77 = *(*(&v93 + 1) + 8 * j);
          cache8 = [(MTIDConfig *)v5 cache];
          v79 = [cache8 objectForKeyedSubscript:v77];

          correlations = [v79 correlations];
          v81 = [correlations count];

          if (v81)
          {
            correlations2 = [v79 correlations];
            [v79 setCorrelationHash:{-[MTIDConfig calculateCombinedHashForNamespaces:](v5, "calculateCombinedHashForNamespaces:", correlations2)}];
          }
        }

        v74 = [cache7 countByEnumeratingWithState:&v93 objects:v106 count:16];
      }

      while (v74);
    }

    dictionaryCopy = v86;
  }

  v83 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)schemeForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(MTIDConfig *)selfCopy cache];
  v7 = [cache objectForKeyedSubscript:namespaceCopy];

  if (v7)
  {
    v8 = v7;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = [[MTIDScheme alloc] initWithNamespace:namespaceCopy options:0];
    cache2 = [(MTIDConfig *)selfCopy cache];
    [cache2 setObject:v9 forKeyedSubscript:namespaceCopy];

    objc_sync_exit(selfCopy);
    v8 = v9;
  }

  return v8;
}

- (id)namespaceForTopic:(id)topic idType:(int64_t)type
{
  topicCopy = topic;
  if (type == 2)
  {
    userIdNamespacesByTopic = [(MTIDConfig *)self userIdNamespacesByTopic];
    v8 = [userIdNamespacesByTopic objectForKeyedSubscript:topicCopy];

    if (!v8)
    {
      defaultUserIdNamespace = [(MTIDConfig *)self defaultUserIdNamespace];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  userIdNamespacesByTopic = [(MTIDConfig *)self clientIdNamespacesByTopic];
  v8 = [userIdNamespacesByTopic objectForKeyedSubscript:topicCopy];

  if (v8)
  {
LABEL_5:
    defaultUserIdNamespace = v8;
    v8 = defaultUserIdNamespace;
    goto LABEL_7;
  }

  defaultUserIdNamespace = [(MTIDConfig *)self defaultClientIdNamespace];
LABEL_7:
  v10 = defaultUserIdNamespace;

  return v10;
}

- (unint64_t)calculateCombinedHashForNamespaces:(id)namespaces
{
  v20 = *MEMORY[0x277D85DE8];
  namespacesCopy = namespaces;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [namespacesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(namespacesCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        cache = [(MTIDConfig *)self cache];
        v12 = [cache objectForKeyedSubscript:v10];
        v7 ^= [v12 hash];
      }

      v6 = [namespacesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(MTIDConfig *)selfCopy cache];
  allValues = [cache allValues];

  objc_sync_exit(selfCopy);

  return allValues;
}

- (id)dictionaryRepresentation
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"schemes";
  allKnownSchemes = [(MTIDConfig *)self allKnownSchemes];
  v3 = [allKnownSchemes mt_map:&__block_literal_global_10];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end