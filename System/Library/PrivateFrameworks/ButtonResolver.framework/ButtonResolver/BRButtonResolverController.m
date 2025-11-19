@interface BRButtonResolverController
+ (id)sharedInstance;
+ (void)sharedInstance;
- (BOOL)enableStates:(id)a3 error:(id *)a4;
- (BOOL)isReady;
- (BOOL)playState:(unint64_t)a3 forSpeed:(unint64_t)a4 error:(id *)a5;
- (BOOL)setConfigs:(id)a3 withAssets:(id)a4 forStates:(id)a5 error:(id *)a6;
- (BOOL)setGlobalConfigs:(id)a3 error:(id *)a4;
- (BRButtonResolverController)init;
- (id)description;
- (id)propertyList;
- (unint64_t)maxAssetSlots;
- (unint64_t)unusedAssetSlots;
- (void)dealloc;
- (void)init;
- (void)propertyList;
- (void)scheduleReadyNotificationOnDispatchQueue:(id)a3 withBlock:(id)a4;
@end

@implementation BRButtonResolverController

+ (id)sharedInstance
{
  v3 = _BRLog_log;
  if (!_BRLog_log)
  {
    v3 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)v3 sharedInstance:v4];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__BRButtonResolverController_sharedInstance__block_invoke;
  block[3] = &unk_278D3F310;
  block[4] = a1;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  return sharedInstance_inst;
}

id __44__BRButtonResolverController_sharedInstance__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  sharedInstance_inst = result;
  return result;
}

- (BRButtonResolverController)init
{
  v6.receiver = self;
  v6.super_class = BRButtonResolverController;
  v2 = [(BRButtonResolverController *)&v6 init];
  if (v2)
  {
    v3 = +[BRInterface interfaces];
    v2->_interfaces = v3;
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      [(BRButtonResolverController *)v2 init];
      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BRButtonResolverController;
  [(BRButtonResolverController *)&v3 dealloc];
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = BRButtonResolverController;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[BRButtonResolverController description](&v5, sel_description)}];
  [v3 appendFormat:@"Interfaces: %@;\n", self->_interfaces];
  return v3;
}

- (id)propertyList
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  interfaces = self->_interfaces;
  v5 = [(NSSet *)interfaces countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(interfaces);
        }

        [v3 setObject:objc_msgSend(*(*(&v12 + 1) + 8 * v8++) forKeyedSubscript:{"propertyList"), objc_msgSend(objc_opt_class(), "description")}];
      }

      while (v6 != v8);
      v6 = [(NSSet *)interfaces countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = _BRLog_log;
  if (!_BRLog_log)
  {
    v9 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)v3 propertyList];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isReady
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  interfaces = self->_interfaces;
  v3 = [(NSSet *)interfaces countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(interfaces);
      }

      v7 = [*(*(&v10 + 1) + 8 * v6) isReady];
      if (!v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSSet *)interfaces countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v7) = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unint64_t)maxAssetSlots
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  interfaces = self->_interfaces;
  v3 = [(NSSet *)interfaces countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = -1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(interfaces);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 maxAssetSlots] < v6)
        {
          v6 = [v8 maxAssetSlots];
        }
      }

      v4 = [(NSSet *)interfaces countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = -1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)unusedAssetSlots
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  interfaces = self->_interfaces;
  v3 = [(NSSet *)interfaces countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = -1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(interfaces);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 maxAssetSlots] < v6)
        {
          v6 = [v8 unusedAssetSlots];
        }
      }

      v4 = [(NSSet *)interfaces countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = -1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)setGlobalConfigs:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v7 = _BRLog_log;
  if (!_BRLog_log)
  {
    v7 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)v7 setGlobalConfigs:v8 error:v9, v10, v11, v12, v13, v14];
  }

  if ([(BRButtonResolverController *)self isReady])
  {
    if (a3)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      interfaces = self->_interfaces;
      v16 = [(NSSet *)interfaces countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (!v16)
      {
        v20 = 0;
        goto LABEL_21;
      }

      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(interfaces);
          }

          [*(*(&v27 + 1) + 8 * i) setGlobalConfigs:a3 error:&v31];
        }

        v17 = [(NSSet *)interfaces countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v17);
      v20 = v31;
      if (!v31)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    }

    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA590];
    v26 = -536870206;
  }

  else
  {
    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA590];
    v26 = -536870184;
  }

  v20 = [v24 errorWithDomain:v25 code:v26 userInfo:0];
  v31 = v20;
  if (!v20)
  {
    goto LABEL_21;
  }

LABEL_15:
  v21 = _BRLog_log;
  if (!_BRLog_log)
  {
    v21 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v21;
    v20 = v31;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v33 = "[BRButtonResolverController setGlobalConfigs:error:]";
    v34 = 2112;
    v35 = v20;
    _os_log_error_impl(&dword_242149000, v21, OS_LOG_TYPE_ERROR, "%s error: %@", buf, 0x16u);
    v20 = v31;
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (a4)
  {
LABEL_19:
    *a4 = v20;
  }

LABEL_21:
  result = v20 == 0;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setConfigs:(id)a3 withAssets:(id)a4 forStates:(id)a5 error:(id *)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v11 = _BRLog_log;
  if (!_BRLog_log)
  {
    v11 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)v11 setConfigs:v12 withAssets:v13 forStates:v14 error:v15, v16, v17, v18];
  }

  if ([(BRButtonResolverController *)self isReady])
  {
    if (a5)
    {
      if ([a5 count])
      {
        if (!a3 || (v19 = [a3 count], v19 == objc_msgSend(a5, "count")))
        {
          if (!a4 || (v20 = [a4 count], v20 == objc_msgSend(a5, "count")))
          {
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            interfaces = self->_interfaces;
            v22 = [(NSSet *)interfaces countByEnumeratingWithState:&v33 objects:v42 count:16];
            if (!v22)
            {
              v26 = 0;
              goto LABEL_26;
            }

            v23 = v22;
            v24 = *v34;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v34 != v24)
                {
                  objc_enumerationMutation(interfaces);
                }

                [*(*(&v33 + 1) + 8 * i) setConfigs:a3 withAssets:a4 forStates:a5 error:&v37];
              }

              v23 = [(NSSet *)interfaces countByEnumeratingWithState:&v33 objects:v42 count:16];
            }

            while (v23);
            v26 = v37;
            if (!v37)
            {
              goto LABEL_26;
            }

            goto LABEL_20;
          }
        }
      }
    }

    v30 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA590];
    v32 = -536870206;
  }

  else
  {
    v30 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA590];
    v32 = -536870184;
  }

  v26 = [v30 errorWithDomain:v31 code:v32 userInfo:0];
  v37 = v26;
  if (!v26)
  {
    goto LABEL_26;
  }

LABEL_20:
  v27 = _BRLog_log;
  if (!_BRLog_log)
  {
    v27 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v27;
    v26 = v37;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v39 = "[BRButtonResolverController setConfigs:withAssets:forStates:error:]";
    v40 = 2112;
    v41 = v26;
    _os_log_error_impl(&dword_242149000, v27, OS_LOG_TYPE_ERROR, "%s error: %@", buf, 0x16u);
    v26 = v37;
    if (!a6)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (a6)
  {
LABEL_24:
    *a6 = v26;
  }

LABEL_26:
  result = v26 == 0;
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)enableStates:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v7 = _BRLog_log;
  if (!_BRLog_log)
  {
    v7 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)v7 enableStates:v8 error:v9, v10, v11, v12, v13, v14];
  }

  if ([(BRButtonResolverController *)self isReady])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    interfaces = self->_interfaces;
    v16 = [(NSSet *)interfaces countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (!v16)
    {
      v20 = 0;
      goto LABEL_20;
    }

    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(interfaces);
        }

        [*(*(&v24 + 1) + 8 * i) enableStates:a3 error:&v28];
      }

      v17 = [(NSSet *)interfaces countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v17);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870184 userInfo:0];
    v28 = v20;
    if (!v20)
    {
      goto LABEL_20;
    }
  }

  v21 = _BRLog_log;
  if (!_BRLog_log)
  {
    v21 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v21;
    v20 = v28;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v30 = "[BRButtonResolverController enableStates:error:]";
    v31 = 2112;
    v32 = v20;
    _os_log_error_impl(&dword_242149000, v21, OS_LOG_TYPE_ERROR, "%s error: %@", buf, 0x16u);
    v20 = v28;
    if (!a4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (a4)
  {
LABEL_18:
    *a4 = v20;
  }

LABEL_20:
  result = v20 == 0;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)playState:(unint64_t)a3 forSpeed:(unint64_t)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v9 = _BRLog_log;
  if (!_BRLog_log)
  {
    v9 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)v9 playState:v10 forSpeed:v11 error:v12, v13, v14, v15, v16];
  }

  if ([(BRButtonResolverController *)self isReady])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    interfaces = self->_interfaces;
    v18 = [(NSSet *)interfaces countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (!v18)
    {
      v22 = 0;
      goto LABEL_20;
    }

    v19 = v18;
    v20 = *v27;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(interfaces);
        }

        [*(*(&v26 + 1) + 8 * i) playState:a3 forSpeed:a4 error:&v30];
      }

      v19 = [(NSSet *)interfaces countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v19);
    v22 = v30;
    if (!v30)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870184 userInfo:0];
    v30 = v22;
    if (!v22)
    {
      goto LABEL_20;
    }
  }

  v23 = _BRLog_log;
  if (!_BRLog_log)
  {
    v23 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v23;
    v22 = v30;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v32 = "[BRButtonResolverController playState:forSpeed:error:]";
    v33 = 2112;
    v34 = v22;
    _os_log_error_impl(&dword_242149000, v23, OS_LOG_TYPE_ERROR, "%s error: %@", buf, 0x16u);
    v22 = v30;
    if (!a5)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (a5)
  {
LABEL_18:
    *a5 = v22;
  }

LABEL_20:
  result = v22 == 0;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)scheduleReadyNotificationOnDispatchQueue:(id)a3 withBlock:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = [(NSSet *)self->_interfaces count];
  v7 = _BRLog_log;
  if (!_BRLog_log)
  {
    v7 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)buf scheduleReadyNotificationOnDispatchQueue:v7 withBlock:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  interfaces = self->_interfaces;
  v9 = [(NSSet *)interfaces countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(interfaces);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __81__BRButtonResolverController_scheduleReadyNotificationOnDispatchQueue_withBlock___block_invoke;
        v14[3] = &unk_278D3F338;
        v14[6] = a4;
        v14[7] = v19;
        v14[4] = a3;
        v14[5] = v12;
        [v12 scheduleReadyNotificationWithBlock:v14];
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSSet *)interfaces countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(v19, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __81__BRButtonResolverController_scheduleReadyNotificationOnDispatchQueue_withBlock___block_invoke(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 24) - 1;
  *(v3 + 24) = v4;
  if (!v4)
  {
    dispatch_async(*(a1 + 32), *(a1 + 48));
  }

  v5 = _BRLog_log;
  if (!_BRLog_log)
  {
    v5 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __81__BRButtonResolverController_scheduleReadyNotificationOnDispatchQueue_withBlock___block_invoke_cold_1(a1, v2, v5);
  }
}

+ (void)sharedInstance
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_242149000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _BRLog_log;
  if (!_BRLog_log)
  {
    v2 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[BRButtonResolverController init]";
    _os_log_error_impl(&dword_242149000, v2, OS_LOG_TYPE_ERROR, "%s failed!", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)propertyList
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[BRButtonResolverController propertyList]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_242149000, a2, OS_LOG_TYPE_DEBUG, "%s %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setGlobalConfigs:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_242149000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setConfigs:(uint64_t)a3 withAssets:(uint64_t)a4 forStates:(uint64_t)a5 error:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_242149000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)enableStates:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_242149000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)disableStates:(uint64_t)a3 clearAsset:(uint64_t)a4 error:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_242149000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)playState:(uint64_t)a3 forSpeed:(uint64_t)a4 error:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_242149000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)scheduleReadyNotificationOnDispatchQueue:(os_log_t)log withBlock:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "[BRButtonResolverController scheduleReadyNotificationOnDispatchQueue:withBlock:]";
  *(buf + 6) = 2048;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_242149000, log, OS_LOG_TYPE_DEBUG, "%s interface count: %lu", buf, 0x16u);
}

void __81__BRButtonResolverController_scheduleReadyNotificationOnDispatchQueue_withBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  v6 = objc_opt_class();
  v7 = *(*(*a2 + 8) + 24);
  v9 = 136315650;
  v10 = "[BRButtonResolverController scheduleReadyNotificationOnDispatchQueue:withBlock:]_block_invoke";
  v11 = 2112;
  v12 = v6;
  v13 = 2048;
  v14 = v7;
  _os_log_debug_impl(&dword_242149000, a3, OS_LOG_TYPE_DEBUG, "%s interface is ready: %@, unready interfaces: %lu", &v9, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

@end