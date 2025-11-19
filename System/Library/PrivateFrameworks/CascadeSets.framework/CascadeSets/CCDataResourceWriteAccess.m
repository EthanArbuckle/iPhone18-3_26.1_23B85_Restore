@interface CCDataResourceWriteAccess
+ (id)defaultInstance;
- (BOOL)_removeContainerOverriddenResource:(id)a3;
- (BOOL)performMaintenanceActivity:(id)a3 accessAssertion:(id)a4;
- (BOOL)purgeTombstonedResources:(id)a3;
- (CCDataResourceWriteAccess)initWithAssertionOverride:(id)a3;
- (id)_resolveContainer:(id)a3;
- (id)requestAccessToResource:(id)a3 withMode:(unint64_t)a4 useCase:(id)a5 error:(id *)a6;
- (id)setWriterForSet:(id)a3 accessAssertion:(id)a4;
@end

@implementation CCDataResourceWriteAccess

+ (id)defaultInstance
{
  v2 = [objc_alloc(objc_opt_class()) initWithAssertionOverride:0];

  return v2;
}

- (CCDataResourceWriteAccess)initWithAssertionOverride:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CCDataResourceWriteAccess;
  v6 = [(CCDataResourceWriteAccess *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assertionOverride, a3);
  }

  return v7;
}

- (id)requestAccessToResource:(id)a3 withMode:(unint64_t)a4 useCase:(id)a5 error:(id *)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  if (self->_assertionOverride)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      assertionOverride = self->_assertionOverride;
      v18 = 138412290;
      v19 = assertionOverride;
      _os_log_impl(&dword_1B6DB2000, v12, OS_LOG_TYPE_DEFAULT, "Skipping access request with assertion override: %@", &v18, 0xCu);
    }

    v14 = self->_assertionOverride;
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E698E968]) initWithUseCase:v11];
    v14 = [v15 requestAccessToResource:v10 mode:a4 error:a6];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_resolveContainer:(id)a3
{
  p_assertionOverride = &self->_assertionOverride;
  if (self->_assertionOverride)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(CCDataResourceWriteAccess *)p_assertionOverride _resolveContainer:v4];
    }

    a3 = *p_assertionOverride;
  }

  v5 = [a3 container];

  return v5;
}

- (id)setWriterForSet:(id)a3 accessAssertion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CCDataResourceWriteAccess *)self _resolveContainer:v6];
  v9 = [CCDataResource dataResourceForSet:v7 inContainer:v8];

  v10 = [[CCDataResourceWriter alloc] initWithDataResource:v9 accessAssertion:v6];

  return v10;
}

- (BOOL)performMaintenanceActivity:(id)a3 accessAssertion:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CCDataResourceWriteAccess *)self _resolveContainer:v7];
  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B6DB2000, v9, OS_LOG_TYPE_DEFAULT, "Starting maintenance at container: %@", &buf, 0xCu);
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__10;
  v49 = __Block_byref_object_dispose__10;
  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__10;
  v34 = __Block_byref_object_dispose__10;
  v35 = objc_opt_new();
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__CCDataResourceWriteAccess_performMaintenanceActivity_accessAssertion___block_invoke;
  v23[3] = &unk_1E7C8BCC0;
  v26 = &v30;
  v10 = v7;
  v24 = v10;
  v11 = v6;
  v25 = v11;
  v27 = &v36;
  p_buf = &buf;
  LOBYTE(v22) = 0;
  v12 = [CCDataResource enumerateDataResources:&v29 setIdentifier:0 descriptors:0 container:v8 includingTombstoned:1 startAfterSet:0 sorted:v22 usingBlock:v23];
  v13 = v29;
  v14 = v12 && *(v37 + 24) == 0;
  v15 = [(CCDataResourceWriteAccess *)self purgeTombstonedResources:v31[5]];
  v16 = __biome_log_for_category();
  v17 = v14 && v15;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"Aborted";
    if (v17)
    {
      v18 = @"Completed";
    }

    *v40 = 138412802;
    v41 = v18;
    v19 = &stru_1F2EBB700;
    v42 = 2112;
    v43 = v8;
    if (!v17)
    {
      v19 = v13;
    }

    v44 = 2112;
    v45 = v19;
    _os_log_impl(&dword_1B6DB2000, v16, OS_LOG_TYPE_DEFAULT, "%@ maintenance at container: %@ %@", v40, 0x20u);
  }

  if (v17)
  {
    [CCSetMetrics computeAndReportMetricsForAllSets:*(*(&buf + 1) + 40) shouldDefer:v11];
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v36, 8);
  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

void __72__CCDataResourceWriteAccess_performMaintenanceActivity_accessAssertion___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [(CCDataResourceWriter *)v5 resourceStatus];
  v7 = v6;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = [[CCDataResourceWriter alloc] initWithDataResource:v5 accessAssertion:a1[4]];
        v15 = 0;
        v9 = [(CCDataResourceWriter *)v8 performMaintenance:&v15 shouldDefer:a1[5]];
        v10 = v15;
        v11 = __biome_log_for_category();
        v12 = v11;
        if (v9)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v17 = v8;
            _os_log_impl(&dword_1B6DB2000, v12, OS_LOG_TYPE_DEFAULT, "Completed maintenance for resource (%@)", buf, 0xCu);
          }

          if (v10)
          {
            [*(*(a1[8] + 8) + 40) addObject:v10];
          }
        }

        else
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            __72__CCDataResourceWriteAccess_performMaintenanceActivity_accessAssertion___block_invoke_cold_1(v8, v12);
          }

          *(*(a1[7] + 8) + 24) = 1;
          *a3 = 1;
        }

        goto LABEL_19;
      }

      goto LABEL_20;
    }

LABEL_13:
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
    {
      v13 = CCDataResourceStatusToString(v7);
      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1B6DB2000, &v8->super, OS_LOG_TYPE_DEFAULT, "Skipping maintenance for resource: %@ with status: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if ((v6 - 2) < 2)
  {
    goto LABEL_13;
  }

  if (v6 == 4)
  {
    [*(*(a1[6] + 8) + 40) addObject:v5];
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1B6DB2000, &v8->super, OS_LOG_TYPE_DEFAULT, "Resource: %@ is in state deleting, will purge", buf, 0xCu);
    }

LABEL_19:
  }

LABEL_20:

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)purgeTombstonedResources:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v35;
    v31 = *MEMORY[0x1E698E940];
    v9 = &dword_1B6DB2000;
    *&v6 = 138412802;
    v30 = v6;
    v32 = v4;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v11 resourceStatus];
        if (v12 == 4)
        {
          if (self->_assertionOverride)
          {
            v13 = __biome_log_for_category();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              assertionOverride = self->_assertionOverride;
              *buf = 138412546;
              v39 = v11;
              v40 = 2112;
              v41 = assertionOverride;
              _os_log_impl(v9, v13, OS_LOG_TYPE_DEFAULT, "Skipping access request to remove resource: %@ with container override: %@", buf, 0x16u);
            }

            if (![(CCDataResourceWriteAccess *)self _removeContainerOverriddenResource:v11])
            {
              goto LABEL_28;
            }
          }

          else
          {
            v19 = v9;
            v20 = [objc_alloc(MEMORY[0x1E698E968]) initWithUseCase:v31];
            v21 = [v11 specifier];
            v33 = 0;
            v22 = [v20 removeResource:v21 error:&v33];
            v23 = v33;

            if (v22)
            {
              v24 = v23 == 0;
            }

            else
            {
              v24 = 0;
            }

            if (!v24)
            {
              v26 = __biome_log_for_category();
              v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
              v4 = v32;
              if (v27)
              {
                [(CCDataResourceWriteAccess *)v11 purgeTombstonedResources:v23, v26];
              }

LABEL_28:
              v25 = 0;
              goto LABEL_29;
            }

            v9 = v19;
            v4 = v32;
          }

          v16 = __biome_log_for_category();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v39 = v11;
            _os_log_impl(v9, v16, OS_LOG_TYPE_DEFAULT, "Successfully purged tombstoned resource: %@", buf, 0xCu);
          }
        }

        else
        {
          v15 = v12;
          v16 = __biome_log_for_category();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = CCDataResourceStatusToString(v15);
            v18 = CCDataResourceStatusToString(4u);
            *buf = v30;
            v39 = v11;
            v40 = 2112;
            v41 = v17;
            v42 = 2112;
            v43 = v18;
            _os_log_error_impl(v9, v16, OS_LOG_TYPE_ERROR, "Not purging resource: %@ - status %@ is not %@", buf, 0x20u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v25 = 1;
LABEL_29:

  v28 = *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)_removeContainerOverriddenResource:(id)a3
{
  v3 = a3;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CCDataResourceWriteAccess *)v3 _removeContainerOverriddenResource:v4];
  }

  return 0;
}

- (void)_resolveContainer:(id *)a1 .cold.1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*a1 container];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "Using overridden container: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __72__CCDataResourceWriteAccess_performMaintenanceActivity_accessAssertion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Aborted maintenance for resource: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)purgeTombstonedResources:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_ERROR, "Could not purge resource: %@ - access client returned error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_removeContainerOverriddenResource:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[CCDataResourceWriteAccess _removeContainerOverriddenResource:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "%s expected method override: %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end