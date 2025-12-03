@interface _GCDeviceConfigurationEvaluator
- (unint64_t)viableConfigurations:(id *)configurations deviceOwners:(id *)owners;
- (void)evaluate;
@end

@implementation _GCDeviceConfigurationEvaluator

- (unint64_t)viableConfigurations:(id *)configurations deviceOwners:(id *)owners
{
  v108 = *MEMORY[0x1E69E9840];
  configurationsIN = [(_GCDeviceConfigurationEvaluator *)self configurationsIN];
  allObjects = [configurationsIN allObjects];

  selfCopy = self;
  physicalDevicesIN = [(_GCDeviceConfigurationEvaluator *)self physicalDevicesIN];
  v7 = _gc_log_device_configuration();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:];
  }

  v8 = _gc_log_device_configuration();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:physicalDevicesIN deviceOwners:?];
  }

  v77 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allObjects, "count")}];
  v9 = _gc_log_device_configuration();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:];
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = allObjects;
  v10 = [obj countByEnumeratingWithState:&v96 objects:v107 count:16];
  if (v10)
  {
    v11 = v10;
    v79 = *v97;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v97 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v96 + 1) + 8 * i);
        deviceManagersIN = [(_GCDeviceConfigurationEvaluator *)selfCopy deviceManagersIN];
        deviceBuilderIdentifier = [v13 deviceBuilderIdentifier];
        v16 = [deviceManagersIN objectForKey:deviceBuilderIdentifier];

        if (v16)
        {
          deviceDependencies = [v13 deviceDependencies];
          v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(deviceDependencies, "count")}];
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v19 = deviceDependencies;
          v20 = [v19 countByEnumeratingWithState:&v92 objects:v106 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v93;
LABEL_15:
            v23 = 0;
            while (1)
            {
              if (*v93 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = [physicalDevicesIN objectForKey:*(*(&v92 + 1) + 8 * v23)];
              if (!v24)
              {
                break;
              }

              v25 = v24;
              [v18 addObject:v24];

              if (v21 == ++v23)
              {
                v21 = [v19 countByEnumeratingWithState:&v92 objects:v106 count:16];
                if (v21)
                {
                  goto LABEL_15;
                }

                break;
              }
            }
          }

          v26 = [v19 count];
          if (v26 == [v18 count])
          {
            [v77 addObject:v13];
          }

          else
          {
            v27 = _gc_log_device_configuration();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v101 = v13;
              _os_log_debug_impl(&dword_1D2C3B000, v27, OS_LOG_TYPE_DEBUG, "Eliminating configuration because a dependency is missing: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v19 = _gc_log_device_configuration();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v101 = v13;
            _os_log_debug_impl(&dword_1D2C3B000, v19, OS_LOG_TYPE_DEBUG, "Eliminating configuration because its manager is not registered: %@", buf, 0xCu);
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v96 objects:v107 count:16];
    }

    while (v11);
  }

  [v77 sortUsingComparator:&__block_literal_global_0];
  v28 = _gc_log_device_configuration();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:];
  }

  v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v77, "count")}];
  v30 = _gc_log_device_configuration();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:];
  }

  v31 = [v77 count];
  if (!v31)
  {
    goto LABEL_74;
  }

  *&v32 = 138412290;
  v70 = v32;
  do
  {
    v74 = v31;
    [v29 removeAllObjects];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    allKeys = [physicalDevicesIN allKeys];
    v34 = [allKeys countByEnumeratingWithState:&v88 objects:v105 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v89;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v89 != v36)
          {
            objc_enumerationMutation(allKeys);
          }

          v38 = *(*(&v88 + 1) + 8 * j);
          null = [MEMORY[0x1E695DFB0] null];
          [v29 setObject:null forKey:v38];
        }

        v35 = [allKeys countByEnumeratingWithState:&v88 objects:v105 count:16];
      }

      while (v35);
    }

    v40 = v77;
    if (![v77 count])
    {
      goto LABEL_73;
    }

    v41 = 0;
    while (1)
    {
      v42 = [v40 objectAtIndexedSubscript:v41];
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v80 = v42;
      deviceDependencies2 = [v42 deviceDependencies];
      v44 = [deviceDependencies2 countByEnumeratingWithState:&v84 objects:v104 count:16];
      if (v44)
      {
        v45 = v44;
        v75 = v41;
        v46 = *v85;
        while (2)
        {
          for (k = 0; k != v45; ++k)
          {
            if (*v85 != v46)
            {
              objc_enumerationMutation(deviceDependencies2);
            }

            v48 = *(*(&v84 + 1) + 8 * k);
            v49 = [v29 objectForKey:v48];
            null2 = [MEMORY[0x1E695DFB0] null];
            v51 = [v49 isEqual:null2];

            if ((v51 & 1) == 0)
            {
              v53 = _gc_log_device_configuration();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v101 = v48;
                v102 = 2112;
                v103 = v80;
                _os_log_debug_impl(&dword_1D2C3B000, v53, OS_LOG_TYPE_DEBUG, "Eliminating configuration because device dependency with identifier '%@' has already been claimed: %@", buf, 0x16u);
              }

              v52 = 0;
              goto LABEL_58;
            }

            [v29 setObject:v80 forKey:v48];
          }

          v45 = [deviceDependencies2 countByEnumeratingWithState:&v84 objects:v104 count:16];
          if (v45)
          {
            continue;
          }

          break;
        }

        v52 = 1;
LABEL_58:
        v41 = v75;
      }

      else
      {
        v52 = 1;
      }

      deviceManagersIN2 = [(_GCDeviceConfigurationEvaluator *)selfCopy deviceManagersIN];
      deviceBuilderIdentifier2 = [v80 deviceBuilderIdentifier];
      v56 = [deviceManagersIN2 objectForKey:deviceBuilderIdentifier2];

      if (v56)
      {
        if (!v52)
        {
          goto LABEL_72;
        }
      }

      else
      {
        [_GCDeviceConfigurationEvaluator viableConfigurations:a2 deviceOwners:selfCopy];
        if (!v52)
        {
          goto LABEL_72;
        }
      }

      v40 = v77;
      if (objc_opt_respondsToSelector())
      {
        break;
      }

LABEL_65:

      if (++v41 >= [v77 count])
      {
        goto LABEL_73;
      }
    }

    deviceDependencies3 = [v80 deviceDependencies];
    null3 = [MEMORY[0x1E695DFB0] null];
    v59 = [physicalDevicesIN objectsForKeys:deviceDependencies3 notFoundMarker:null3];

    v60 = [MEMORY[0x1E695DFD8] setWithArray:v59];
    LODWORD(null3) = [v56 canMakeDeviceWithConfiguration:v80 dependencies:v60];

    if (null3)
    {

      goto LABEL_65;
    }

    v61 = _gc_log_device_configuration();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      *buf = v70;
      v101 = v80;
      _os_log_debug_impl(&dword_1D2C3B000, v61, OS_LOG_TYPE_DEBUG, "Eliminating configuration because its manager can not make the device: %@", buf, 0xCu);
    }

LABEL_72:
    [v77 removeObjectAtIndex:v41];

LABEL_73:
    v31 = v74 - 1;
  }

  while (v74 != 1);
LABEL_74:
  v62 = _gc_log_device_configuration();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:];
  }

  v63 = _gc_log_device_configuration();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:v77 deviceOwners:?];
  }

  [v77 enumerateObjectsUsingBlock:&__block_literal_global_13];
  v64 = _gc_log_device_configuration();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:];
  }

  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __69___GCDeviceConfigurationEvaluator_viableConfigurations_deviceOwners___block_invoke_14;
  v82[3] = &unk_1E8413CC0;
  v83 = physicalDevicesIN;
  v65 = physicalDevicesIN;
  [v29 enumerateKeysAndObjectsUsingBlock:v82];
  if (configurations)
  {
    *configurations = v77;
  }

  if (owners)
  {
    v66 = v29;
    *owners = v29;
  }

  v67 = [v77 count];

  v68 = *MEMORY[0x1E69E9840];
  return v67;
}

- (void)evaluate
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)viableConfigurations:deviceOwners:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)viableConfigurations:(void *)a1 deviceOwners:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 allValues];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0(&dword_1D2C3B000, v2, v3, "Devices: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)viableConfigurations:deviceOwners:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)viableConfigurations:deviceOwners:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)viableConfigurations:deviceOwners:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)viableConfigurations:(uint64_t)a1 deviceOwners:(uint64_t)a2 .cold.6(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDeviceConfigurationEvaluator.m" lineNumber:128 description:{@"Bug in %s", "-[_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:]"}];
}

- (void)viableConfigurations:deviceOwners:.cold.7()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)viableConfigurations:(void *)a1 deviceOwners:.cold.8(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0(&dword_1D2C3B000, v1, v2, "Viable Configurations (%llu):", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)viableConfigurations:deviceOwners:.cold.9()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end