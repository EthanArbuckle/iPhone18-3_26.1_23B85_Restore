@interface BRContainersMonitor
+ (BOOL)isContainerIDForeground:(id)a3;
+ (id)bundleIDFromPrimaryIdentifier:(id)a3 secondaryIdentifier:(id)a4;
+ (id)containerIDFromPrimaryIdentifier:(id)a3 secondaryIdentifier:(id)a4;
- (BRContainersMonitor)init;
- (void)addObserver:(id)a3 forContainerID:(id)a4;
- (void)dealloc;
- (void)removeObserver:(id)a3 forContainerID:(id)a4;
@end

@implementation BRContainersMonitor

- (BRContainersMonitor)init
{
  v12.receiver = self;
  v12.super_class = BRContainersMonitor;
  v2 = [(BRContainersMonitor *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observersByContainerID = v2->_observersByContainerID;
    v2->_observersByContainerID = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    notifyTokenByContainerID = v2->_notifyTokenByContainerID;
    v2->_notifyTokenByContainerID = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.clouddocs.containers.monitor", v8);

    queue = v2->_queue;
    v2->_queue = v9;
  }

  return v2;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("[BRContainersMonitor dealloc]", 69);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v2, v3, "[CRIT] API MISUSE: There were observers remaining at dealloc time. Call -removeObserver:forContainerID: first.%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)containerIDFromPrimaryIdentifier:(id)a3 secondaryIdentifier:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  memset(v14, 0, sizeof(v14));
  __brc_create_section(0, "+[BRContainersMonitor containerIDFromPrimaryIdentifier:secondaryIdentifier:]", 81, 0, v14);
  v7 = brc_bread_crumbs("+[BRContainersMonitor containerIDFromPrimaryIdentifier:secondaryIdentifier:]", 81);
  v8 = brc_default_log(1, 0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v16 = v14[0];
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx asking container ID for %@, %@%@", buf, 0x2Au);
  }

  if ([v6 isEqualToString:@"com.apple.bird"])
  {
    v9 = [@"com.apple.clouddocs." stringByAppendingString:v5];
    v10 = brc_bread_crumbs("+[BRContainersMonitor containerIDFromPrimaryIdentifier:secondaryIdentifier:]", 87);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[BRContainersMonitor containerIDFromPrimaryIdentifier:secondaryIdentifier:];
    }
  }

  else
  {
    v9 = 0;
  }

  __brc_leave_section(v14);

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)bundleIDFromPrimaryIdentifier:(id)a3 secondaryIdentifier:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  memset(v16, 0, sizeof(v16));
  __brc_create_section(0, "+[BRContainersMonitor bundleIDFromPrimaryIdentifier:secondaryIdentifier:]", 94, 0, v16);
  v8 = brc_bread_crumbs("+[BRContainersMonitor bundleIDFromPrimaryIdentifier:secondaryIdentifier:]", 94);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v18 = v16[0];
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx asking bundle ID for %@, %@%@", buf, 0x2Au);
  }

  v10 = [a1 containerIDFromPrimaryIdentifier:v6 secondaryIdentifier:v7];
  if (v10)
  {
    v11 = @"com.apple.bird";
    v12 = brc_bread_crumbs("+[BRContainersMonitor bundleIDFromPrimaryIdentifier:secondaryIdentifier:]", 144);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      +[BRContainersMonitor containerIDFromPrimaryIdentifier:secondaryIdentifier:];
    }
  }

  else
  {
    v12 = brc_bread_crumbs("+[BRContainersMonitor bundleIDFromPrimaryIdentifier:secondaryIdentifier:]", 99);
    v13 = brc_default_log(0, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v12;
      _os_log_fault_impl(&dword_1AE2A9000, v13, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: not a CloudDocs identifier pair (%@, %@)%@", buf, 0x20u);
    }

    v11 = 0;
  }

  __brc_leave_section(v16);
  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)addObserver:(id)a3 forContainerID:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  memset(v38, 0, sizeof(v38));
  __brc_create_section(0, "[BRContainersMonitor addObserver:forContainerID:]", 151, 0, v38);
  v8 = brc_bread_crumbs("[BRContainersMonitor addObserver:forContainerID:]", 151);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *handler = 134218498;
    *&handler[4] = v38[0];
    *&handler[12] = 2112;
    *&handler[14] = v7;
    *&handler[22] = 2112;
    *&handler[24] = v8;
    _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx adding observer for %@%@", handler, 0x20u);
  }

  v10 = self;
  objc_sync_enter(v10);
  out_token = 0;
  v11 = [(NSMutableDictionary *)v10->_observersByContainerID objectForKey:v7];
  if (!v11)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [(NSMutableDictionary *)v10->_observersByContainerID setObject:v11 forKey:v7];
  }

  [v11 addObject:v6];
  v12 = notifyNameWithPrefixedContainerID(v7);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __50__BRContainersMonitor_addObserver_forContainerID___block_invoke;
  v34[3] = &unk_1E7A15540;
  v34[4] = v10;
  v13 = v7;
  v35 = v13;
  v14 = v12;
  v36 = v14;
  v15 = MEMORY[0x1B26FEA90](v34);
  v16 = v14;
  v17 = [v14 UTF8String];
  v18 = v10->_queue;
  v19 = v15;
  v20 = [MEMORY[0x1E69DF068] sharedManager];
  v21 = [v20 br_currentPersonaID];

  *handler = MEMORY[0x1E69E9820];
  *&handler[8] = 3221225472;
  *&handler[16] = __br_notify_register_dispatch_block_invoke_3;
  *&handler[24] = &unk_1E7A14940;
  v22 = v21;
  v40 = v22;
  v42 = v17;
  v23 = v19;
  v41 = v23;
  notify_register_dispatch(v17, &out_token, v18, handler);

  notifyTokenByContainerID = v10->_notifyTokenByContainerID;
  v25 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
  [(NSMutableDictionary *)notifyTokenByContainerID setObject:v25 forKey:v13];

  v26 = brc_bread_crumbs("[BRContainersMonitor addObserver:forContainerID:]", 193);
  v27 = brc_default_log(1, 0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *handler = 67109634;
    *&handler[4] = out_token;
    *&handler[8] = 2112;
    *&handler[10] = v14;
    *&handler[18] = 2112;
    *&handler[20] = v26;
    _os_log_debug_impl(&dword_1AE2A9000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] Registered token %d for %@%@", handler, 0x1Cu);
  }

  queue = v10->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__BRContainersMonitor_addObserver_forContainerID___block_invoke_15;
  block[3] = &unk_1E7A15568;
  v32 = v23;
  v33 = out_token;
  v29 = v23;
  dispatch_async(queue, block);

  objc_sync_exit(v10);
  __brc_leave_section(v38);

  v30 = *MEMORY[0x1E69E9840];
}

void __50__BRContainersMonitor_addObserver_forContainerID___block_invoke(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v6 = [v5 copy];

  objc_sync_exit(v4);
  brc_notify_get_state(a2, &v23, [*(a1 + 48) UTF8String]);
  v7 = v23;
  v8 = brc_bread_crumbs("[BRContainersMonitor addObserver:forContainerID:]_block_invoke", 181);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 40);
    *buf = 138413058;
    v26 = v17;
    if (v7)
    {
      v18 = "foreground";
    }

    else
    {
      v18 = "background";
    }

    v27 = 2080;
    v28 = v18;
    v29 = 1024;
    v30 = a2;
    v31 = 2112;
    v32 = v8;
    _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ is now %s for token %d%@", buf, 0x26u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v11)
  {
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = *(a1 + 40);
        if (v7)
        {
          [v14 containerDidEnterForeground:v15];
        }

        else
        {
          [v14 containerDidEnterBackground:{v15, v19}];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3 forContainerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)v8->_observersByContainerID objectForKey:v7];
  if (([v9 containsObject:v6] & 1) == 0)
  {
    v12 = brc_bread_crumbs("[BRContainersMonitor removeObserver:forContainerID:]", 205);
    v13 = brc_default_log(0, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [BRContainersMonitor removeObserver:v12 forContainerID:v13];
    }
  }

  [v9 removeObject:v6];
  if (![v9 count])
  {
    [(NSMutableDictionary *)v8->_observersByContainerID removeObjectForKey:v7];
    v10 = [(NSMutableDictionary *)v8->_notifyTokenByContainerID objectForKey:v7];
    v11 = [v10 intValue];

    notify_cancel(v11);
  }

  objc_sync_exit(v8);
}

+ (BOOL)isContainerIDForeground:(id)a3
{
  v3 = a3;
  if (![BRContainersMonitor isContainerID:v3])
  {
    +[BRContainersMonitor isContainerIDForeground:];
  }

  val = -1;
  v7 = 0;
  v4 = notifyNameWithPrefixedContainerID(v3);
  brc_notify_register_check([v4 UTF8String], &val);
  if (notify_is_valid_token(val))
  {
    brc_notify_get_state(val, &v7, [v4 UTF8String]);
    v5 = v7 != 0;
    notify_cancel(val);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)containerIDFromPrimaryIdentifier:secondaryIdentifier:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(uint64_t)a1 forContainerID:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] API MISUSE: removed non existing observer%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)isContainerIDForeground:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("+[BRContainersMonitor isContainerIDForeground:]", 218);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v2, v3, "[CRIT] Assertion failed: [BRContainersMonitor isContainerID:containerID]%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end