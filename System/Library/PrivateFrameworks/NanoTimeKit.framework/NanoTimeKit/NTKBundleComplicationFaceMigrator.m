@interface NTKBundleComplicationFaceMigrator
+ (id)sharedInstance;
- (NTKBundleComplicationFaceMigrator)init;
- (NTKBundleComplicationFaceMigrator)initWithMigrationProvider:(id)a3;
- (void)_enumerateMigratableComplicationsOnFace:(id)a3 withBlock:(id)a4;
- (void)_migrateFace:(id)a3 slot:(id)a4 complication:(id)a5 completion:(id)a6;
- (void)migrateFace:(id)a3 completion:(id)a4;
- (void)migrateFaces:(id)a3 completion:(id)a4;
@end

@implementation NTKBundleComplicationFaceMigrator

- (NTKBundleComplicationFaceMigrator)initWithMigrationProvider:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = NTKBundleComplicationFaceMigrator;
  v6 = [(NTKBundleComplicationFaceMigrator *)&v10 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.NanoTimeKit.NTKBundleComplicationFaceMigrator", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_migrationProvider, a3);
  }

  return v6;
}

- (NTKBundleComplicationFaceMigrator)init
{
  v3 = +[NTKBundleComplicationMigrationProvider cachedInstance];
  v4 = [(NTKBundleComplicationFaceMigrator *)self initWithMigrationProvider:v3];

  return v4;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NTKBundleComplicationFaceMigrator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_8 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_8, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

void __51__NTKBundleComplicationFaceMigrator_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_instance;
  sharedInstance_instance = v1;
}

- (void)migrateFace:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  v9 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationFaceMigrator: Migrating face %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x2810000000;
  v30 = &unk_22DD390E3;
  v31 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__NTKBundleComplicationFaceMigrator_migrateFace_completion___block_invoke;
  v20[3] = &unk_278780E68;
  v10 = v8;
  v21 = v10;
  v22 = self;
  v11 = v6;
  v23 = v11;
  p_buf = &buf;
  v25 = v26;
  [(NTKBundleComplicationFaceMigrator *)self _enumerateMigratableComplicationsOnFace:v11 withBlock:v20];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NTKBundleComplicationFaceMigrator_migrateFace_completion___block_invoke_3;
  block[3] = &unk_278780E90;
  v18 = &buf;
  v19 = v26;
  v16 = v11;
  v17 = v7;
  v13 = v7;
  v14 = v11;
  dispatch_group_notify(v10, queue, block);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&buf, 8);
}

void __60__NTKBundleComplicationFaceMigrator_migrateFace_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  dispatch_group_enter(v5);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__NTKBundleComplicationFaceMigrator_migrateFace_completion___block_invoke_2;
  v10[3] = &unk_278780E40;
  v12 = *(a1 + 56);
  v11 = *(a1 + 32);
  [v8 _migrateFace:v9 slot:v7 complication:v6 completion:v10];
}

void __60__NTKBundleComplicationFaceMigrator_migrateFace_completion___block_invoke_2(void *a1, int a2)
{
  os_unfair_lock_lock((*(a1[5] + 8) + 32));
  if (a2)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  os_unfair_lock_unlock((*(a1[5] + 8) + 32));
  v4 = a1[4];

  dispatch_group_leave(v4);
}

uint64_t __60__NTKBundleComplicationFaceMigrator_migrateFace_completion___block_invoke_3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1[6] + 8) + 32));
  v2 = *(*(a1[7] + 8) + 24);
  os_unfair_lock_unlock((*(a1[6] + 8) + 32));
  v3 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v6 = 138412546;
    v7 = v4;
    v8 = 1024;
    v9 = v2;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationFaceMigrator: Finished migrating face %@, madeChanges=%d", &v6, 0x12u);
  }

  return (*(a1[5] + 16))();
}

- (void)migrateFaces:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 UUIDString];
    *buf = 138412546;
    v22 = v10;
    v23 = 2048;
    v24 = [v6 count];
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationFaceMigrator: Starting face batch migration %@ with %lu faces", buf, 0x16u);
  }

  v11 = dispatch_group_create();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__NTKBundleComplicationFaceMigrator_migrateFaces_completion___block_invoke;
  v17[3] = &unk_278780EE0;
  v18 = v11;
  v19 = self;
  v20 = v8;
  v12 = v8;
  v13 = v11;
  [v6 enumerateObjectsUsingBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__NTKBundleComplicationFaceMigrator_migrateFaces_completion___block_invoke_8;
  v15[3] = &unk_27877E960;
  v16 = v7;
  v14 = v7;
  dispatch_group_notify(v13, MEMORY[0x277D85CD0], v15);
}

void __61__NTKBundleComplicationFaceMigrator_migrateFaces_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__NTKBundleComplicationFaceMigrator_migrateFaces_completion___block_invoke_2;
  v6[3] = &unk_278780EB8;
  v7 = v3;
  v4 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v5 = v3;
  [v4 migrateFace:v5 completion:v6];
}

void __61__NTKBundleComplicationFaceMigrator_migrateFaces_completion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationFaceMigrator: Finished face %@ in batch %@", &v5, 0x16u);
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)_enumerateMigratableComplicationsOnFace:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__NTKBundleComplicationFaceMigrator__enumerateMigratableComplicationsOnFace_withBlock___block_invoke;
  v10[3] = &unk_278780F08;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [v9 enumerateComplicationSlotsWithBlock:v10];
}

void __87__NTKBundleComplicationFaceMigrator__enumerateMigratableComplicationsOnFace_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) complicationForSlot:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 complication];

    v3 = v4;
  }

  if ([*(a1 + 40) _shouldAttemptToMigrateComplicationType:{objc_msgSend(v3, "complicationType")}])
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_migrateFace:(id)a3 slot:(id)a4 complication:(id)a5 completion:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 device];
  v15 = [v14 supportsWidgetMigration];

  if (v15)
  {
    v16 = [v10 rankedComplicationFamiliesForSlot:v11];
    v17 = [v12 complicationType];
    v18 = [v10 device];
    v19 = [NTKWidgetComplicationMigrationDefines hasMigratedComplicationType:v17 forDevice:v18];

    if (v19)
    {
      v31 = self;
      v32 = v16;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v20 = v16;
      v21 = [v20 countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v40;
        while (2)
        {
          v24 = 0;
          do
          {
            if (*v40 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = +[NTKWidgetComplicationMigrationDefines migrateComplication:forFamily:](NTKWidgetComplicationMigrationDefines, "migrateComplication:forFamily:", v12, [*(*(&v39 + 1) + 8 * v24) integerValue]);
            if (v25)
            {
              v29 = v25;
              [v10 setComplication:v25 forSlot:v11];
              v30 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413058;
                v44 = v10;
                v45 = 2112;
                v46 = v11;
                v47 = 2112;
                v48 = v12;
                v49 = 2112;
                v50 = v29;
                _os_log_impl(&dword_22D9C5000, v30, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationFaceMigrator: Performed defined migration on face %@ slot %@ of %@ to %@", buf, 0x2Au);
              }

              v13[2](v13, 1, 0);
              v16 = v32;
              goto LABEL_17;
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v39 objects:v51 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      self = v31;
      v16 = v32;
    }

    v26 = [v10 device];
    v27 = [NTKBundleComplicationMigrationFallbackRequest requestWithComplication:v12 families:v16 device:v26];

    migrationProvider = self->_migrationProvider;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __79__NTKBundleComplicationFaceMigrator__migrateFace_slot_complication_completion___block_invoke;
    v33[3] = &unk_278780F58;
    v34 = v27;
    v38 = v13;
    v35 = v10;
    v36 = v11;
    v37 = v12;
    v20 = v27;
    [(NTKBundleComplicationMigrationProvider *)migrationProvider serviceRequest:v20 completion:v33];

    v29 = v34;
LABEL_17:
  }

  else
  {
    v13[2](v13, 0, 0);
  }
}

void __79__NTKBundleComplicationFaceMigrator__migrateFace_slot_complication_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__NTKBundleComplicationFaceMigrator__migrateFace_slot_complication_completion___block_invoke_2;
  block[3] = &unk_278780F30;
  v16 = v5;
  v17 = v6;
  v7 = a1[4];
  v20 = a1[8];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v18 = v12;
  v19 = v11;
  v13 = v6;
  v14 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __79__NTKBundleComplicationFaceMigrator__migrateFace_slot_complication_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [NTKWidgetComplication complicationWithDescriptor:?];
    [*(a1 + 56) setComplication:v2 forSlot:*(a1 + 64)];
    v3 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 56);
      v5 = *(a1 + 64);
      v6 = *(a1 + 72);
      v8 = 138413058;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v2;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationFaceMigrator: Performed remote migration on face %@ slot %@ of %@ to %@", &v8, 0x2Au);
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    if (*(a1 + 40))
    {
      v7 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __79__NTKBundleComplicationFaceMigrator__migrateFace_slot_complication_completion___block_invoke_2_cold_1(a1, (a1 + 40), v7);
      }
    }

    (*(*(a1 + 80) + 16))();
  }
}

void __79__NTKBundleComplicationFaceMigrator__migrateFace_slot_complication_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "NTKBundleComplicationFaceMigrator: Request %@ completed with error %@", &v5, 0x16u);
}

@end