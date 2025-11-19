@interface DIShadowChain
- (BOOL)addShadowNodes:(id)a3 wrapReadOnly:(BOOL)a4 error:(id *)a5;
- (BOOL)addShadowURLs:(id)a3 error:(id *)a4;
- (BOOL)hasBaseImageCache;
- (BOOL)isEmpty;
- (BOOL)verifyNodes:(id)a3 error:(id *)a4;
- (DIShadowChain)init;
- (DIShadowChain)initWithCoder:(id)a3;
- (NSArray)mountPoints;
- (NSArray)nonCacheNodes;
- (NSURL)activeShadowURL;
- (id)description;
- (id)statWithError:(id *)a3;
- (int64_t)topDiskImageNumBlocks;
- (void)encodeWithCoder:(id)a3;
- (void)openWritable:(BOOL)a3 createNonExisting:(BOOL)a4;
@end

@implementation DIShadowChain

- (DIShadowChain)init
{
  v8.receiver = self;
  v8.super_class = DIShadowChain;
  v2 = [(DIShadowChain *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    nodes = v2->_nodes;
    v2->_nodes = v3;

    v5 = [MEMORY[0x277CBEA60] array];
    shadowStats = v2->_shadowStats;
    v2->_shadowStats = v5;

    v2->_shouldValidate = 1;
  }

  return v2;
}

- (BOOL)addShadowURLs:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = [DIShadowNode alloc];
        v14 = [(DIShadowNode *)v13 initWithURL:v12 isCache:0, v18];
        [v7 addObject:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [(DIShadowChain *)self addShadowNodes:v7 error:a4];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)verifyNodes:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v7)
  {
    v15 = 1;
    goto LABEL_15;
  }

  v8 = *v21;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v20 + 1) + 8 * i);
      v11 = [v10 URL];
      v12 = [v11 isFileURL];

      if ((v12 & 1) == 0)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shadow path %@ is not a valid file", v10];
        v17 = [DIError failWithPOSIXCode:22 verboseInfo:v16 error:a4];
LABEL_14:
        v15 = v17;

        goto LABEL_15;
      }

      v13 = [(DIShadowChain *)self nodes];
      v14 = [v13 containsObject:v10];

      if (v14)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Duplicate shadow values for: %@", v10];
        v17 = [DIError failWithPOSIXCode:22 verboseInfo:v16 error:a4];
        goto LABEL_14;
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    v15 = 1;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)addShadowNodes:(id)a3 wrapReadOnly:(BOOL)a4 error:(id *)a5
{
  v5 = a4;
  v37 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v26 = [DIShadowChain verifyNodes:"verifyNodes:error:" error:?];
  if (v26)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v27;
    v7 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v7)
    {
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          if (v5)
          {
            v11 = [*(*(&v29 + 1) + 8 * i) fileBackend];
            v12 = v11;
            if (v11)
            {
              [v11 backend];
              v13 = *buf;
            }

            else
            {
              v13 = 0;
              *buf = 0;
              *&buf[8] = 0;
            }

            v14 = (*(*v13 + 48))(v13);
            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
            }

            if (v14)
            {
              v15 = *__error();
              if (DIForwardLogs())
              {
                v16 = getDIOSLog();
                os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
                v17 = [v10 URL];
                *buf = 68158211;
                *&buf[4] = 51;
                *&buf[8] = 2080;
                *&buf[10] = "[DIShadowChain addShadowNodes:wrapReadOnly:error:]";
                v34 = 2113;
                v35 = v17;
                v18 = _os_log_send_and_compose_impl();

                if (v18)
                {
                  fprintf(*MEMORY[0x277D85DF8], "%s\n", v18);
                  free(v18);
                }
              }

              else
              {
                v19 = getDIOSLog();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = [v10 URL];
                  *buf = 0x3304100303;
                  *&buf[8] = 2080;
                  *&buf[10] = "[DIShadowChain addShadowNodes:wrapReadOnly:error:]";
                  v34 = 2113;
                  v35 = v20;
                  _os_log_impl(&dword_248DE0000, v19, OS_LOG_TYPE_DEFAULT, "%.*s: Using %{private}@ as read-only", buf, 0x1Cu);
                }
              }

              *__error() = v15;
              v21 = [FileLocalXPC alloc];
              v22 = [v10 fileBackend];
              if (v22)
              {
                [v22 backend];
              }

              std::allocate_shared[abi:ne200100]<ReadOnlyBackend,std::allocator<ReadOnlyBackend>,std::shared_ptr<Backend>,0>();
            }
          }

          v23 = [(DIShadowChain *)self nodes];
          [v23 addObject:v10];
        }

        v7 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v7);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)openWritable:(BOOL)a3 createNonExisting:(BOOL)a4
{
  v7 = [(DIShadowChain *)self nodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__DIShadowChain_openWritable_createNonExisting___block_invoke;
  v8[3] = &unk_278F80AC8;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  [v7 enumerateObjectsUsingBlock:v8];
}

void __48__DIShadowChain_openWritable_createNonExisting___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  v7 = 514;
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 41))
    {
      v7 = 514;
    }

    else
    {
      v7 = 2562;
    }
  }

  if ([v5 isCache])
  {
    [v6 createBackendWithFlags:v7];
    v8 = *__error();
    if (DIForwardLogs())
    {
      v9 = getDIOSLog();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      v10 = [v6 URL];
      [v10 path];
      *buf = 68158211;
      v30 = 61;
      v31 = 2080;
      v32 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v34 = v33 = 2113;
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v17 = getDIOSLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v6 URL];
        v19 = [v18 path];
        *buf = 68158211;
        v30 = 61;
        v31 = 2080;
        v32 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
        v33 = 2113;
        v34 = v19;
        _os_log_impl(&dword_248DE0000, v17, OS_LOG_TYPE_DEFAULT, "%.*s: Cache file %{private}@ opened with RW access", buf, 0x1Cu);
      }
    }

    goto LABEL_33;
  }

  if (*(a1 + 40) == 1)
  {
    v12 = [*(a1 + 32) nodes];
    if ([v12 count] - 1 == a3)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  [v6 createBackendWithFlags:v13];
  if ((v13 & 3) != 0)
  {
    v8 = *__error();
    if (DIForwardLogs())
    {
      v14 = getDIOSLog();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      v15 = [v6 URL];
      [v15 path];
      *buf = 68158211;
      v30 = 61;
      v31 = 2080;
      v32 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v34 = v33 = 2113;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    v22 = getDIOSLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v6 URL];
      v24 = [v23 path];
      *buf = 68158211;
      v30 = 61;
      v31 = 2080;
      v32 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v33 = 2113;
      v34 = v24;
      _os_log_impl(&dword_248DE0000, v22, OS_LOG_TYPE_DEFAULT, "%.*s: Shadow file %{private}@ opened with RW access", buf, 0x1Cu);
    }
  }

  else
  {
    v8 = *__error();
    if (DIForwardLogs())
    {
      v20 = getDIOSLog();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      v21 = [v6 URL];
      [v21 path];
      *buf = 68158211;
      v30 = 61;
      v31 = 2080;
      v32 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v34 = v33 = 2113;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
        goto LABEL_33;
      }

LABEL_25:
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v16);
      free(v16);
      goto LABEL_33;
    }

    v25 = getDIOSLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v6 URL];
      v27 = [v26 path];
      *buf = 68158211;
      v30 = 61;
      v31 = 2080;
      v32 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v33 = 2113;
      v34 = v27;
      _os_log_impl(&dword_248DE0000, v25, OS_LOG_TYPE_DEFAULT, "%.*s: Using an existing shadow file: %{private}@", buf, 0x1Cu);
    }
  }

LABEL_33:
  *__error() = v8;

  v28 = *MEMORY[0x277D85DE8];
}

- (id)statWithError:(id *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  shadowStats = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(DIShadowChain *)self nodes];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = *v26;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v25 + 1) + 8 * v8);
      v10 = [v9 fileBackend];
      v11 = v10 == 0;

      if (v11)
      {
        break;
      }

      v12 = [v9 fileBackend];
      v13 = v12;
      if (v12)
      {
        [v12 backend];
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      get_sink_backend(&v21, &v23);
      fd_from_backend = get_fd_from_backend(&v23);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if ((fd_from_backend & 0x80000000) != 0)
      {
        [DIError failWithEnumValue:150 verboseInfo:@"Unexpected backend type for shadow file" error:a3];
        goto LABEL_22;
      }

      v15 = [[DIStatFS alloc] initWithFileDescriptor:fd_from_backend error:a3];
      v16 = v15;
      if (!v15)
      {
        [DIError failWithEnumValue:150 verboseInfo:@"Could not stat shadow file" error:a3];
        goto LABEL_22;
      }

      [(DIStatFS *)v15 logWithHeader:@"Shadow underlying FS"];
      [shadowStats addObject:v16];

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    [DIError failWithEnumValue:150 verboseInfo:@"Bakcend not initialized for file" error:a3];
LABEL_22:

    v17 = 0;
    goto LABEL_23;
  }

LABEL_18:

  v17 = shadowStats;
  shadowStats = self->_shadowStats;
  self->_shadowStats = v17;
LABEL_23:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSArray)mountPoints
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(DIShadowChain *)self shadowStats];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) mountedOnURL];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isEmpty
{
  v2 = [(DIShadowChain *)self nodes];
  v3 = [v2 count] == 0;

  return v3;
}

- (NSURL)activeShadowURL
{
  if (-[DIShadowChain isEmpty](self, "isEmpty") || (-[DIShadowChain nodes](self, "nodes"), v3 = objc_claimAutoreleasedReturnValue(), [v3 lastObject], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isCache"), v4, v3, (v5 & 1) != 0))
  {
    v6 = 0;
  }

  else
  {
    v7 = [(DIShadowChain *)self nodes];
    v8 = [v7 lastObject];
    v6 = [v8 URL];
  }

  return v6;
}

- (BOOL)hasBaseImageCache
{
  if ([(DIShadowChain *)self isEmpty])
  {
    return 0;
  }

  v4 = [(DIShadowChain *)self nodes];
  v5 = [v4 firstObject];
  v3 = [v5 isCache];

  return v3;
}

- (NSArray)nonCacheNodes
{
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1];
  v4 = [(DIShadowChain *)self nodes];
  v5 = [v4 filteredArrayUsingPredicate:v3];

  return v5;
}

- (int64_t)topDiskImageNumBlocks
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(DIShadowChain *)self isEmpty])
  {
    v6 = [(DIShadowChain *)self nodes];
    v7 = [v6 lastObject];

    v8 = [v7 fileBackend];
    v9 = v8;
    if (v8)
    {
      [v8 backend];
      v10 = *buf;
    }

    else
    {
      v10 = 0;
    }

    *buf = 0;
    *v16 = 0;

    v12 = (*(*v10 + 192))(v10);
    dup(v12);
    diskimage_uio::diskimage_open_params::create();
  }

  v3 = *__error();
  if (DIForwardLogs())
  {
    v4 = getDIOSLog();
    os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    *&buf[4] = 38;
    *v16 = 2080;
    *&v16[2] = "[DIShadowChain topDiskImageNumBlocks]";
    v5 = _os_log_send_and_compose_impl();

    if (v5)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v5);
      free(v5);
    }
  }

  else
  {
    v11 = getDIOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      *&buf[4] = 38;
      *v16 = 2080;
      *&v16[2] = "[DIShadowChain topDiskImageNumBlocks]";
      _os_log_impl(&dword_248DE0000, v11, OS_LOG_TYPE_ERROR, "%.*s: numBlocks queried for an empty shadowChain.", buf, 0x12u);
    }
  }

  *__error() = v3;
  v13 = *MEMORY[0x277D85DE8];
  return -22;
}

- (DIShadowChain)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = DIShadowChain;
  v5 = [(DIShadowChain *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"nodes"];
    nodes = v5->_nodes;
    v5->_nodes = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"shadowStats"];
    shadowStats = v5->_shadowStats;
    v5->_shadowStats = v14;

    v5->_shouldValidate = [v4 decodeBoolForKey:@"shouldValidate"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(DIShadowChain *)self nodes];
  [v6 encodeObject:v4 forKey:@"nodes"];

  v5 = [(DIShadowChain *)self shadowStats];
  [v6 encodeObject:v5 forKey:@"shadowStats"];

  [v6 encodeBool:-[DIShadowChain shouldValidate](self forKey:{"shouldValidate"), @"shouldValidate"}];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(DIShadowChain *)self nodes];
  v4 = [v2 stringWithFormat:@"ShadowChain: %@", v3];

  return v4;
}

@end