@interface _GCDeviceOnDiskDB
- (_GCDeviceOnDiskDB)initWithBundles:(id)a3;
- (id)bestModelMatchingDevice:(id)a3;
@end

@implementation _GCDeviceOnDiskDB

- (_GCDeviceOnDiskDB)initWithBundles:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(_GCDeviceOnDiskDB *)a2 initWithBundles:?];
  }

  v12.receiver = self;
  v12.super_class = _GCDeviceOnDiskDB;
  v6 = [(_GCDeviceOnDiskDB *)&v12 init];
  v7 = [v5 copy];
  configurationBundles = v6->_configurationBundles;
  v6->_configurationBundles = v7;

  v9 = [v5 gc_arrayByTransformingElementsWithOptions:1 usingBlock:&__block_literal_global_8];
  bundles = v6->_bundles;
  v6->_bundles = v9;

  return v6;
}

- (id)bestModelMatchingDevice:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _gc_log_devicedb();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_GCDeviceOnDiskDB *)v4 bestModelMatchingDevice:v5];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = self->_bundles;
  v42 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v42)
  {
    v6 = *v62;
    v39 = *v62;
    do
    {
      v7 = 0;
      do
      {
        if (*v62 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v61 + 1) + 8 * v7);
        v8 = _gc_log_devicedb();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v67 = v41;
          _os_log_debug_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEBUG, "  > Searching bundle '%{public}@'...", buf, 0xCu);
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v44 = [v41 devices];
        v9 = [v44 countByEnumeratingWithState:&v57 objects:v69 count:16];
        if (v9)
        {
          v10 = *v58;
          v40 = *v58;
          do
          {
            v11 = 0;
            do
            {
              if (*v58 != v10)
              {
                objc_enumerationMutation(v44);
              }

              v12 = *(*(&v57 + 1) + 8 * v11);
              v13 = _gc_log_devicedb();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v67 = v12;
                _os_log_debug_impl(&dword_1D2C3B000, v13, OS_LOG_TYPE_DEBUG, "    > Trying '%{public}@'...", buf, 0xCu);
              }

              v14 = [v12 ioMatchingPredicates];
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v15 = v14;
              v16 = [v15 countByEnumeratingWithState:&v53 objects:v68 count:16];
              if (v16)
              {
                v17 = *v54;
                while (2)
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v54 != v17)
                    {
                      objc_enumerationMutation(v15);
                    }

                    if ([*(*(&v53 + 1) + 8 * i) evaluateWithObject:v4])
                    {

                      v24 = _gc_log_devicedb();
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                      {
                        [(_GCDeviceOnDiskDB *)v12 bestModelMatchingDevice:v24];
                      }

                      v51 = 0u;
                      v52 = 0u;
                      v49 = 0u;
                      v50 = 0u;
                      v25 = [v12 personalities];
                      v26 = [v25 countByEnumeratingWithState:&v49 objects:v65 count:16];
                      if (v26)
                      {
                        v27 = *v50;
                        while (2)
                        {
                          v28 = 0;
                          do
                          {
                            if (*v50 != v27)
                            {
                              objc_enumerationMutation(v25);
                            }

                            v29 = *(*(&v49 + 1) + 8 * v28);
                            v30 = _gc_log_devicedb();
                            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                            {
                              *buf = 138543362;
                              v67 = v29;
                              _os_log_debug_impl(&dword_1D2C3B000, v30, OS_LOG_TYPE_DEBUG, "      > Trying %{public}@...", buf, 0xCu);
                            }

                            v31 = [v29 ioMatchingPredicate];
                            if (!v31)
                            {
                              goto LABEL_51;
                            }

                            v32 = _gc_log_devicedb();
                            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                            {
                              [(_GCDeviceOnDiskDB *)&v47 bestModelMatchingDevice:v48, v32];
                            }

                            if ([v31 evaluateWithObject:v4])
                            {
LABEL_51:
                              v34 = _gc_log_devicedb();
                              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                              {
                                [(_GCDeviceOnDiskDB *)v34 bestModelMatchingDevice:v35, v36];
                              }

                              v23 = [v29 model];

                              goto LABEL_54;
                            }

                            v33 = _gc_log_devicedb();
                            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                            {
                              [(_GCDeviceOnDiskDB *)&v45 bestModelMatchingDevice:v46, v33];
                            }

                            ++v28;
                          }

                          while (v26 != v28);
                          v26 = [v25 countByEnumeratingWithState:&v49 objects:v65 count:16];
                          if (v26)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v25 = _gc_log_devicedb();
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
                      {
                        [_GCDeviceOnDiskDB bestModelMatchingDevice:];
                      }

                      v23 = 0;
LABEL_54:

                      v20 = obj;
                      goto LABEL_56;
                    }
                  }

                  v16 = [v15 countByEnumeratingWithState:&v53 objects:v68 count:16];
                  if (v16)
                  {
                    continue;
                  }

                  break;
                }
              }

              ++v11;
              v10 = v40;
            }

            while (v11 != v9);
            v9 = [v44 countByEnumeratingWithState:&v57 objects:v69 count:16];
            v10 = v40;
          }

          while (v9);
        }

        ++v7;
        v6 = v39;
      }

      while (v7 != v42);
      v42 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v70 count:16];
      v6 = v39;
    }

    while (v42);
  }

  v19 = _gc_log_devicedb();
  v20 = v19;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [(_GCDeviceOnDiskDB *)v19 bestModelMatchingDevice:v21, v22];
    v23 = 0;
    v20 = v19;
  }

  else
  {
    v23 = 0;
  }

LABEL_56:

  v37 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)initWithBundles:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDeviceOnDiskDB.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %s", "configurationBundles != nil"}];
}

- (void)bestModelMatchingDevice:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 debugDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_DEBUG, "Find model for device %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)bestModelMatchingDevice:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_DEBUG, "    > Matched %{public}@.  Checking personalities...", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)bestModelMatchingDevice:(NSObject *)a3 .cold.3(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_2_6(&dword_1D2C3B000, a3, a3, "        > Checking IO property requirements...", a1);
}

- (void)bestModelMatchingDevice:(NSObject *)a3 .cold.4(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_2_6(&dword_1D2C3B000, a3, a3, "        > Failed IO property requirements...", a1);
}

- (void)bestModelMatchingDevice:.cold.6()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_5(&dword_1D2C3B000, v0, v1, "📦 Found matching device definition %{public}@ in bundle '%{public}@', but did not find a compatible personality.");
  v2 = *MEMORY[0x1E69E9840];
}

@end