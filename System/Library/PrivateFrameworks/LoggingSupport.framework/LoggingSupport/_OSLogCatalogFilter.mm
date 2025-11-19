@interface _OSLogCatalogFilter
- (BOOL)containsProcessLookupSubstr:(id)a3;
- (BOOL)containsSenderLookupSubstr:(id)a3;
- (BOOL)containsSubsystemSubstr:(id)a3;
- (BOOL)isKeptCatalog:(catalog_s *)a3;
- (_OSLogCatalogFilter)initWithPredicate:(id)a3 collection:(id)a4;
- (void)dealloc;
- (void)generateUUIDSet;
- (void)handleDSOFile:(_ftsent *)a3;
- (void)processComparisonPredicate:(id)a3;
- (void)processLeftExpression:(id)a3 andRightExpression:(id)a4;
- (void)readDSCUUIDs;
- (void)readDSOUUIDs;
- (void)visitPredicate:(id)a3;
@end

@implementation _OSLogCatalogFilter

- (void)readDSOUUIDs
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = self->_uuidtext_path;
  v14[1] = 0;
  v3 = fts_open(v14, 2, 0);
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x277D85DE0];
LABEL_3:
    while (1)
    {
      v6 = fts_read(v4);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      fts_level = v6->fts_level;
      if (fts_level == 2)
      {
        if (v6->fts_info == 8 && strlen(v6->fts_name) == 30)
        {
          v11 = 104;
          while (1)
          {
            v12 = *(&v7->fts_cycle + v11);
            if (v12 < 0 || (*(v5 + 4 * v12 + 60) & 0x10000) == 0)
            {
              break;
            }

            if (++v11 == 134)
            {
              [(_OSLogCatalogFilter *)self handleDSOFile:v7];
              goto LABEL_3;
            }
          }
        }
      }

      else if (fts_level == 1)
      {
        if (v6->fts_info != 1 || strlen(v6->fts_name) != 2 || (v9 = v7->fts_name[0], v9 < 0) || (*(v5 + 4 * v9 + 60) & 0x10000) == 0 || (v10 = v7->fts_name[1], v10 < 0) || (*(v5 + 4 * v10 + 60) & 0x10000) == 0)
        {
          fts_set(v4, v7, 4);
        }
      }
    }

    fts_close(v4);
  }

  else
  {
    _os_assumes_log();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)generateUUIDSet
{
  if ([(NSMutableSet *)self->_processLookupSubstr count]|| [(NSMutableSet *)self->_senderLookupSubstr count])
  {
    [(_OSLogCatalogFilter *)self readDSOUUIDs];
  }

  if ([(NSMutableSet *)self->_senderLookupSubstr count])
  {

    [(_OSLogCatalogFilter *)self readDSCUUIDs];
  }
}

- (void)readDSCUUIDs
{
  v11 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x400uLL, "%s/dsc", self->_uuidtext_path);
  v3 = opendir(__str);
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      v5 = readdir(v4);
      if (!v5)
      {
        break;
      }

      if (v5->d_type == 8)
      {
        v9 = 0uLL;
        if (_convertUUIDStringToUUID(v5->d_name, &v9))
        {
          uuidtext_path = self->_uuidtext_path;
          v8[0] = MEMORY[0x277D85DD0];
          v8[1] = 3221225472;
          v8[2] = __35___OSLogCatalogFilter_readDSCUUIDs__block_invoke;
          v8[3] = &unk_2787AE458;
          v8[4] = self;
          _os_trace_uuiddb_dsc_run_block_on_map(uuidtext_path, &v9, v8);
        }
      }
    }

    closedir(v4);
  }

  else
  {
    _os_assumes_log();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)visitPredicate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_OSLogCatalogFilter *)self processComparisonPredicate:v4];
  }
}

- (void)processComparisonPredicate:(id)a3
{
  v4 = a3;
  v6 = [v4 leftExpression];
  v5 = [v4 rightExpression];

  [(_OSLogCatalogFilter *)self processLeftExpression:v6 andRightExpression:v5];
  [(_OSLogCatalogFilter *)self processLeftExpression:v5 andRightExpression:v6];
}

- (void)processLeftExpression:(id)a3 andRightExpression:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 expressionType] == 3)
  {
    v7 = [v9 keyPath];
    if (([v7 isEqualToString:@"processID"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"processIdentifier"))
    {
      v8 = [v6 constantValue];
      [(_OSLogCatalogFilter *)self addProcessID:v8];
    }

    else if (([v7 isEqualToString:@"process"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"processImagePath"))
    {
      v8 = [v6 constantValue];
      [(_OSLogCatalogFilter *)self addProcessLookupSubstr:v8];
    }

    else if (([v7 isEqualToString:@"sender"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"senderImagePath"))
    {
      v8 = [v6 constantValue];
      [(_OSLogCatalogFilter *)self addSenderLookupSubstr:v8];
    }

    else
    {
      if (![v7 isEqualToString:@"subsystem"])
      {
        goto LABEL_6;
      }

      v8 = [v6 constantValue];
      [(_OSLogCatalogFilter *)self addSubsystem:v8];
    }

LABEL_6:
  }
}

- (void)handleDSOFile:(_ftsent *)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = openat(-2, a3->fts_path, 0);
  if (v3 == -1)
  {
    v6 = *__error();
    goto LABEL_9;
  }

  v4 = v3;
  v5 = _os_trace_mmap();
  _os_assumes_log();
  if (v5)
  {
    munmap(v5, 0);
  }

  if (close(v4) != -1)
  {
    goto LABEL_7;
  }

  v8 = *__error();
  v9 = *__error();
  if (v8 != 9)
  {
LABEL_9:
    _os_assumes_log();
LABEL_7:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v9;
  __break(1u);
}

- (BOOL)containsSenderLookupSubstr:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_senderLookupSubstr;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([v4 localizedStandardContainsString:{*(*(&v11 + 1) + 8 * i), v11}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)containsProcessLookupSubstr:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_processLookupSubstr;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([v4 localizedStandardContainsString:{*(*(&v11 + 1) + 8 * i), v11}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)containsSubsystemSubstr:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_subsysSubstrAccept;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([v4 localizedStandardContainsString:{*(*(&v11 + 1) + 8 * i), v11}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isKeptCatalog:(catalog_s *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_hasItems && !self->_hasSharedCacheItems)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __37___OSLogCatalogFilter_isKeptCatalog___block_invoke;
    v16[3] = &unk_2787AE3B8;
    v16[4] = self;
    v16[5] = &v17;
    _catalog_for_each_uuid(a3, v16);
    if (v18[3])
    {
      goto LABEL_6;
    }

    var2 = a3->var2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __37___OSLogCatalogFilter_isKeptCatalog___block_invoke_2;
    v15[3] = &unk_2787AE3E0;
    v15[4] = self;
    v15[5] = &v17;
    _os_trace_str_map_for_each(var2, v15);
    if (v18[3])
    {
LABEL_6:
      LOBYTE(v4) = 1;
    }

    else
    {
      var4 = a3->var4;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v11 = __37___OSLogCatalogFilter_isKeptCatalog___block_invoke_3;
      v12 = &unk_2787AE408;
      v13 = self;
      v14 = &v17;
      if (var4)
      {
        v4 = *(var4 + 2);
        if (v4)
        {
          do
          {
            v11(v10, v4[4]);
            v4 = *v4;
          }

          while (v4);
          LOBYTE(v4) = *(v18 + 24);
        }
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

- (void)dealloc
{
  free(self->_uuidtext_path);
  v3.receiver = self;
  v3.super_class = _OSLogCatalogFilter;
  [(_OSLogCatalogFilter *)&v3 dealloc];
}

- (_OSLogCatalogFilter)initWithPredicate:(id)a3 collection:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = getenv("LOG_USE_CATALOGFILTER");
  if (v8 && *v8 == 48 && !v8[1])
  {
    goto LABEL_12;
  }

  v9 = [v7 UUIDTextReference];
  v10 = [v9 fileDescriptor];

  if (fcntl(v10, 50, __s1, 1024) == -1)
  {
    v29 = *__error();
    _os_assumes_log();
LABEL_12:
    v26 = 0;
    goto LABEL_10;
  }

  v11 = [MEMORY[0x277CBEB98] setWithArray:&unk_2841B9258];
  v12 = [MEMORY[0x277CBEB98] setWithArray:&unk_2841B9270];
  v13 = [MEMORY[0x277CBEB98] setWithArray:&unk_2841B9288];
  v30.receiver = self;
  v30.super_class = _OSLogCatalogFilter;
  v14 = [(_OSLogCatalogFilter *)&v30 init];
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pidAccept = v14->_pidAccept;
    v14->_pidAccept = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    processLookupSubstr = v14->_processLookupSubstr;
    v14->_processLookupSubstr = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    senderLookupSubstr = v14->_senderLookupSubstr;
    v14->_senderLookupSubstr = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    subsysSubstrAccept = v14->_subsysSubstrAccept;
    v14->_subsysSubstrAccept = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
    uuidAccept = v14->_uuidAccept;
    v14->_uuidAccept = v23;

    v14->_uuidtext_path = strdup(__s1);
    v25 = _OSLogGetSimplePredicate(v6, v11, v12, v13);
    [v25 acceptVisitor:v14 flags:0];
    if (v14->_hasItems)
    {
      [(_OSLogCatalogFilter *)v14 generateUUIDSet];
    }
  }

  self = v14;

  v26 = self;
LABEL_10:

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

@end