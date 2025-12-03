@interface MCMContainerSchema
+ (BOOL)schemaIsUpToDateForIdentifier:(id)identifier containerClass:(unint64_t)class currentSchemaVersion:(id)version latestSchemaVersion:(id *)schemaVersion;
- (BOOL)_executeActions:(id)actions error:(id *)error;
- (BOOL)writeSchemaFromVersion:(id)version toTargetVersion:(id)targetVersion error:(id *)error;
- (BOOL)writeSchemaToTargetVersion:(id)version error:(id *)error;
- (MCMContainerSchema)initWithMetadata:(id)metadata finalContainerPath:(id)path dataProtectionClass:(int)class libraryRepair:(id)repair;
- (MCMContainerSchemaContext)context;
- (MCMMetadataMinimal)metadata;
- (NSNumber)latestSchemaVersion;
- (id)_actionArgsAfterInterpolationOnActionArgs:(id)args replacements:(id)replacements;
- (id)_actionsFromVersion:(id)version toTargetVersion:(id)targetVersion context:(id)context error:(id *)error;
- (id)_interpolationReplacementsWithError:(id *)error;
@end

@implementation MCMContainerSchema

- (NSNumber)latestSchemaVersion
{
  result = self->_latestSchemaVersion;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerSchemaContext)context
{
  result = self->_context;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMMetadataMinimal)metadata
{
  result = self->_metadata;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_executeActions:(id)actions error:(id *)error
{
  v58 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v7 = objc_autoreleasePoolPush();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v8 = actionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v54 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    errorCopy = error;
    selfCopy = self;
    v12 = 0;
    v13 = *v55;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v55 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v54 + 1) + 8 * v14);
        v38 = v15;
        v17 = [v16 performWithError:&v38];
        v12 = v38;

        if ((v17 & 1) == 0)
        {
          v18 = container_log_handle_for_category();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            fsNode = selfCopy;
            metadata = [(MCMContainerSchema *)selfCopy metadata];
            uuid = [metadata uuid];
            metadata2 = [fsNode metadata];
            containerPath = [metadata2 containerPath];
            containerPathIdentifier = [containerPath containerPathIdentifier];
            metadata3 = [fsNode metadata];
            identifier = [metadata3 identifier];
            metadata4 = [fsNode metadata];
            containerClass = [metadata4 containerClass];
            metadata5 = [fsNode metadata];
            v27 = [metadata5 conformsToProtocol:&unk_1F5A81C70];
            if (v27)
            {
              metadata6 = [fsNode metadata];
              fsNode = [metadata6 fsNode];
              inode = [fsNode inode];
            }

            else
            {
              inode = 0;
            }

            *buf = 138544898;
            v40 = uuid;
            v41 = 2114;
            v42 = containerPathIdentifier;
            v43 = 2112;
            v44 = identifier;
            v45 = 2050;
            v46 = containerClass;
            v47 = 2048;
            v48 = inode;
            v49 = 2112;
            v50 = v16;
            v51 = 2112;
            v52 = v12;
            _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Action [%@] failed; error = %@", buf, 0x48u);
            if (v27)
            {
            }
          }

          objc_autoreleasePoolPop(v7);
          if (errorCopy)
          {
            v19 = v12;
            v20 = 0;
            *errorCopy = v12;
          }

          else
          {
            v20 = 0;
          }

          goto LABEL_16;
        }

        ++v14;
        v15 = v12;
      }

      while (v10 != v14);
      v10 = [v8 countByEnumeratingWithState:&v54 objects:v53 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v7);
  v20 = 1;
LABEL_16:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)_actionsFromVersion:(id)version toTargetVersion:(id)targetVersion context:(id)context error:(id *)error
{
  v106 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  targetVersionCopy = targetVersion;
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v81 = contextCopy;
  v12 = MCMContainerSchemaDefinitionForClass([contextCopy containerClass]);
  unsignedIntegerValue = [targetVersionCopy unsignedIntegerValue];
  selfCopy = self;
  v67 = v12;
  if (unsignedIntegerValue > [v12 count])
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v55 = targetVersionCopy;
      obja = [(MCMContainerSchema *)self metadata];
      uuid = [obja uuid];
      metadata = [(MCMContainerSchema *)self metadata];
      containerPath = [metadata containerPath];
      containerPathIdentifier = [containerPath containerPathIdentifier];
      metadata2 = [(MCMContainerSchema *)self metadata];
      [metadata2 identifier];
      v45 = v44 = self;
      metadata3 = [(MCMContainerSchema *)v44 metadata];
      containerClass = [metadata3 containerClass];
      metadata4 = [(MCMContainerSchema *)v44 metadata];
      v49 = [metadata4 conformsToProtocol:&unk_1F5A81C70];
      if (v49)
      {
        metadata5 = [(MCMContainerSchema *)v44 metadata];
        fsNode = [metadata5 fsNode];
        inode = [fsNode inode];
      }

      else
      {
        inode = 0;
      }

      *buf = 138544898;
      v86 = uuid;
      v87 = 2114;
      v88 = containerPathIdentifier;
      v89 = 2112;
      v90 = v45;
      v91 = 2050;
      v92 = containerClass;
      v93 = 2048;
      v94 = inode;
      v95 = 2112;
      v96 = v55;
      v97 = 2048;
      v98 = [v67 count];
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Trying to target a version [%@] higher than available [%lu], capping to max", buf, 0x48u);
      if (v49)
      {
      }

      targetVersionCopy = v55;
      self = selfCopy;
      v12 = v67;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];

    targetVersionCopy = v15;
  }

  v84 = 0;
  v16 = [(MCMContainerSchema *)self _interpolationReplacementsWithError:&v84];
  v17 = v84;
  v79 = v16;
  if (v16)
  {
    unsignedIntegerValue2 = [versionCopy unsignedIntegerValue];
    if (unsignedIntegerValue2 < [targetVersionCopy unsignedIntegerValue])
    {
      unsignedIntegerValue3 = [versionCopy unsignedIntegerValue];
      if (unsignedIntegerValue3 < [targetVersionCopy unsignedIntegerValue])
      {
        v53 = versionCopy;
        v54 = targetVersionCopy;
        do
        {
          v20 = [v12 objectAtIndexedSubscript:unsignedIntegerValue3];
          v21 = [v20 objectForKeyedSubscript:@"script"];
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          obj = v21;
          v22 = [obj countByEnumeratingWithState:&v102 objects:v101 count:16];
          if (v22)
          {
            v23 = v22;
            v69 = v20;
            v71 = unsignedIntegerValue3;
            v24 = *v103;
LABEL_10:
            v25 = 0;
            v26 = v17;
            while (1)
            {
              if (*v103 != v24)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v102 + 1) + 8 * v25);
              v28 = [v27 objectAtIndexedSubscript:0];
              string = [v28 string];

              v30 = [v27 subarrayWithRange:{1, objc_msgSend(v27, "count") - 1}];
              v31 = [(MCMContainerSchema *)self _actionArgsAfterInterpolationOnActionArgs:v30 replacements:v79];

              v83 = 0;
              v32 = [MCMContainerSchemaActionBase actionWithName:string arguments:v31 context:v81 error:&v83];
              v33 = v83;
              if (v32)
              {
                [array addObject:v32];
                v34 = 0;
                v17 = v26;
              }

              else
              {
                v17 = [[MCMError alloc] initWithNSError:v33 url:0 defaultErrorType:127];

                v35 = container_log_handle_for_category();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
                {
                  metadata6 = [(MCMContainerSchema *)self metadata];
                  uuid2 = [metadata6 uuid];
                  metadata7 = [(MCMContainerSchema *)self metadata];
                  containerPath2 = [metadata7 containerPath];
                  containerPathIdentifier2 = [containerPath2 containerPathIdentifier];
                  metadata8 = [(MCMContainerSchema *)self metadata];
                  identifier = [metadata8 identifier];
                  metadata9 = [(MCMContainerSchema *)self metadata];
                  containerClass2 = [metadata9 containerClass];
                  metadata10 = [(MCMContainerSchema *)self metadata];
                  v59 = [metadata10 conformsToProtocol:&unk_1F5A81C70];
                  if (v59)
                  {
                    metadata11 = [(MCMContainerSchema *)self metadata];
                    fsNode2 = [metadata11 fsNode];
                    inode2 = [fsNode2 inode];
                  }

                  else
                  {
                    inode2 = 0;
                  }

                  *buf = 138545154;
                  v86 = uuid2;
                  v87 = 2114;
                  v88 = containerPathIdentifier2;
                  v89 = 2112;
                  v90 = identifier;
                  v91 = 2050;
                  v92 = containerClass2;
                  v93 = 2048;
                  v94 = inode2;
                  v95 = 2112;
                  v96 = string;
                  v97 = 2112;
                  v98 = v31;
                  v99 = 2112;
                  v100 = v17;
                  _os_log_fault_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_FAULT, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Could not form action [%@] with args: %@, error = %@", buf, 0x52u);
                  if (v59)
                  {
                  }
                }

                array = 0;
                v34 = 2;
              }

              if (!v32)
              {
                break;
              }

              ++v25;
              v26 = v17;
              self = selfCopy;
              if (v23 == v25)
              {
                v37 = [obj countByEnumeratingWithState:&v102 objects:v101 count:16];
                v23 = v37;
                if (!v37)
                {
                  v34 = 0;
                  break;
                }

                goto LABEL_10;
              }
            }

            versionCopy = v53;
            targetVersionCopy = v54;
            v12 = v67;
            v20 = v69;
            unsignedIntegerValue3 = v71;
          }

          else
          {
            v34 = 0;
          }

          if (v34)
          {
            break;
          }

          ++unsignedIntegerValue3;
          self = selfCopy;
        }

        while (unsignedIntegerValue3 < [targetVersionCopy unsignedIntegerValue]);
      }
    }
  }

  else
  {

    array = 0;
  }

  objc_autoreleasePoolPop(context);
  if (error && !array)
  {
    v38 = v17;
    *error = v17;
  }

  v39 = [array copy];

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)_interpolationReplacementsWithError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  metadata = [(MCMContainerSchema *)self metadata];
  containerPath = [metadata containerPath];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    destinationContainerPath = [containerPath destinationContainerPath];

    containerPath = destinationContainerPath;
  }

  containerPathIdentifier = [containerPath containerPathIdentifier];
  v8 = +[MCMFileManager defaultManager];
  identifier = [metadata identifier];
  v10 = [v8 fsMinimallySanitizedStringFromString:identifier];

  if (v10)
  {
    v11 = +[MCMPOSIXUser currentPOSIXUser];
    homeDirectoryURL = [v11 homeDirectoryURL];
    path = [homeDirectoryURL path];
    v22[0] = path;
    v22[1] = v10;
    v21[1] = @"${BundleId}";
    v21[2] = @"${SigningId}";
    v21[3] = @"${ContainerId}";
    v22[2] = v10;
    v22[3] = containerPathIdentifier;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];

    v15 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    identifier2 = [metadata identifier];
    *buf = 138412290;
    v24 = identifier2;
    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Codesign identifier [%@] has invalid characters", buf, 0xCu);
  }

  v15 = [[MCMError alloc] initWithErrorType:97 category:3];
  v14 = 0;
  if (error)
  {
LABEL_9:
    if (!v14)
    {
      v17 = v15;
      *error = v15;
    }
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_actionArgsAfterInterpolationOnActionArgs:(id)args replacements:(id)replacements
{
  v42 = *MEMORY[0x1E69E9840];
  argsCopy = args;
  replacementsCopy = replacements;
  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(argsCopy, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = argsCopy;
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    v28 = *v39;
    v29 = v6;
    do
    {
      v10 = 0;
      v31 = v8;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        string = [v11 string];
        pathComponents = [string pathComponents];

        if ([pathComponents count] && (objc_msgSend(pathComponents, "containsObject:", @"..") & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            string2 = [v11 string];
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v15 = replacementsCopy;
            v16 = [v15 countByEnumeratingWithState:&v33 objects:v32 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v34;
              do
              {
                v19 = 0;
                v20 = string2;
                do
                {
                  if (*v34 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v21 = *(*(&v33 + 1) + 8 * v19);
                  v22 = [v15 objectForKeyedSubscript:v21];
                  string2 = [v20 stringByReplacingOccurrencesOfString:v21 withString:v22 options:1 range:{0, objc_msgSend(v20, "length")}];

                  ++v19;
                  v20 = string2;
                }

                while (v17 != v19);
                v17 = [v15 countByEnumeratingWithState:&v33 objects:v32 count:16];
              }

              while (v17);
            }

            v23 = [objc_alloc(objc_opt_class()) initWithString:string2];
            if (v23)
            {
              [v27 addObject:v23];
            }

            v9 = v28;
            v6 = v29;
            v8 = v31;
          }

          else
          {
            [v27 addObject:v11];
          }
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v38 objects:v37 count:16];
    }

    while (v8);
  }

  v24 = [v27 copy];
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (BOOL)writeSchemaToTargetVersion:(id)version error:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  metadata = [(MCMContainerSchema *)self metadata];
  schemaVersion = [metadata schemaVersion];
  LOBYTE(error) = [(MCMContainerSchema *)self writeSchemaFromVersion:schemaVersion toTargetVersion:versionCopy error:error];

  v9 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)writeSchemaFromVersion:(id)version toTargetVersion:(id)targetVersion error:(id *)error
{
  v81 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  targetVersionCopy = targetVersion;
  metadata = [(MCMContainerSchema *)self metadata];
  context = [(MCMContainerSchema *)self context];
  v62 = 0;
  v12 = [(MCMContainerSchema *)self _actionsFromVersion:versionCopy toTargetVersion:targetVersionCopy context:context error:&v62];
  v13 = v62;

  v14 = container_log_handle_for_category();
  v15 = v14;
  if (!v12)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v23 = 0;
      LOBYTE(v22) = 0;
      goto LABEL_29;
    }

    errorCopy2 = error;
    v31 = versionCopy;
    spida = [metadata uuid];
    containerPath = [metadata containerPath];
    containerPathIdentifier = [containerPath containerPathIdentifier];
    identifier = [metadata identifier];
    containerClass = [metadata containerClass];
    v35 = [metadata conformsToProtocol:&unk_1F5A81C70];
    if (v35)
    {
      fsNode = [metadata fsNode];
      inode = [fsNode inode];
    }

    else
    {
      inode = 0;
    }

    *buf = 138544898;
    v64 = spida;
    v65 = 2114;
    v66 = containerPathIdentifier;
    v67 = 2112;
    v68 = identifier;
    v69 = 2050;
    v70 = containerClass;
    v71 = 2048;
    v72 = inode;
    v73 = 2114;
    versionCopy = v31;
    v74 = v31;
    v75 = 2114;
    v76 = targetVersionCopy;
    _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Could not update schema from (%{public}@) → (%{public}@), no actions available", buf, 0x48u);
    if (v35)
    {
    }

    v23 = 0;
    LOBYTE(v22) = 0;
LABEL_28:
    error = errorCopy2;
    goto LABEL_29;
  }

  errorCopy2 = error;
  v16 = os_signpost_id_make_with_pointer(v14, self);

  v17 = container_log_handle_for_category();
  v18 = v17;
  spid = v16;
  v19 = v16 - 1;
  if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    [metadata identifier];
    v21 = v20 = versionCopy;
    *buf = 138477827;
    v64 = v21;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v18, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SchemaUpdate", " identifier=%{private, signpost.description:attribute}@ ", buf, 0xCu);

    versionCopy = v20;
  }

  v61 = 0;
  v22 = [(MCMContainerSchema *)self _executeActions:v12 error:&v61];
  v23 = v61;
  v24 = container_log_handle_for_category();
  p_super = v24;
  if (v22)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v55 = versionCopy;
      uuid = [metadata uuid];
      containerPath2 = [metadata containerPath];
      containerPathIdentifier2 = [containerPath2 containerPathIdentifier];
      identifier2 = [metadata identifier];
      containerClass2 = [metadata containerClass];
      v26 = [metadata conformsToProtocol:&unk_1F5A81C70];
      if (v26)
      {
        fsNode2 = [metadata fsNode];
        inode2 = [fsNode2 inode];
      }

      else
      {
        inode2 = 0;
      }

      v28 = [v12 count];
      *buf = 138545154;
      v64 = uuid;
      v65 = 2114;
      v66 = containerPathIdentifier2;
      v67 = 2112;
      v68 = identifier2;
      v69 = 2050;
      v70 = containerClass2;
      v71 = 2048;
      v72 = inode2;
      v73 = 2114;
      v74 = v55;
      v75 = 2114;
      v76 = targetVersionCopy;
      v77 = 2050;
      v78 = v28;
      _os_log_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_DEFAULT, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Successfully updated schema from (%{public}@) → (%{public}@), actions count = %{public}lu", buf, 0x52u);
      if (v26)
      {
      }

      versionCopy = v55;
    }
  }

  else
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v57 = versionCopy;
      uuid2 = [metadata uuid];
      containerPath3 = [metadata containerPath];
      containerPathIdentifier3 = [containerPath3 containerPathIdentifier];
      identifier3 = [metadata identifier];
      containerClass3 = [metadata containerClass];
      v37 = [metadata conformsToProtocol:&unk_1F5A81C70];
      if (v37)
      {
        fsNode2 = [metadata fsNode];
        inode3 = [fsNode2 inode];
      }

      else
      {
        inode3 = 0;
      }

      v42 = [v12 count];
      *buf = 138545410;
      v64 = uuid2;
      v65 = 2114;
      v66 = containerPathIdentifier3;
      v67 = 2112;
      v68 = identifier3;
      v69 = 2050;
      v70 = containerClass3;
      v71 = 2048;
      v72 = inode3;
      v73 = 2114;
      versionCopy = v57;
      v74 = v57;
      v75 = 2114;
      v76 = targetVersionCopy;
      v77 = 2050;
      v78 = v42;
      v79 = 2114;
      v80 = v23;
      _os_log_error_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_ERROR, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Could not update schema from (%{public}@) → (%{public}@), actions count = %{public}lu, error = %{public}@", buf, 0x5Cu);
      if (v37)
      {
      }
    }

    p_super = &v13->super;
    v13 = [[MCMError alloc] initWithNSError:v23 url:0 defaultErrorType:104];
  }

  v29 = container_log_handle_for_category();
  v15 = v29;
  if (v19 > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_28;
  }

  error = errorCopy2;
  if (os_signpost_enabled(v29))
  {
    identifier4 = [metadata identifier];
    *buf = 138477827;
    v64 = identifier4;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v15, OS_SIGNPOST_INTERVAL_END, spid, "SchemaUpdate", " identifier=%{private, signpost.description:attribute}@ ", buf, 0xCu);
  }

LABEL_29:

  if (error && !v22)
  {
    v39 = v13;
    *error = v13;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v22;
}

- (MCMContainerSchema)initWithMetadata:(id)metadata finalContainerPath:(id)path dataProtectionClass:(int)class libraryRepair:(id)repair
{
  v32 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  pathCopy = path;
  repairCopy = repair;
  v31.receiver = self;
  v31.super_class = MCMContainerSchema;
  v14 = [(MCMContainerSchema *)&v31 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_metadata, metadata);
    containerPath = [metadataCopy containerPath];
    containerClass = [metadataCopy containerClass];
    containerPath2 = [metadataCopy containerPath];
    schemaPOSIXMode = [containerPath2 schemaPOSIXMode];

    containerPath3 = [metadataCopy containerPath];
    schemaPOSIXOwner = [containerPath3 schemaPOSIXOwner];

    identifier = [metadataCopy identifier];
    v19 = containermanager_copy_global_configuration();
    defaultUser = [v19 defaultUser];
    homeDirectoryURL = [defaultUser homeDirectoryURL];
    LODWORD(v26) = class;
    v22 = [MCMContainerSchemaContext contextWithHomeDirectoryURL:homeDirectoryURL containerPath:containerPath finalContainerPath:pathCopy POSIXMode:schemaPOSIXMode POSIXOwner:schemaPOSIXOwner containerClass:containerClass dataProtectionClass:v26 libraryRepair:repairCopy identifier:identifier];
    context = v15->_context;
    v15->_context = v22;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (BOOL)schemaIsUpToDateForIdentifier:(id)identifier containerClass:(unint64_t)class currentSchemaVersion:(id)version latestSchemaVersion:(id *)schemaVersion
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  versionCopy = version;
  v11 = MCMContainerSchemaDefinitionForClass(class);
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];

  if ([versionCopy compare:v12])
  {
    if ([versionCopy compare:v12] != 1)
    {
      v14 = 0;
      if (!schemaVersion)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 138413058;
      v19 = identifierCopy;
      v20 = 2048;
      classCopy = class;
      v22 = 2112;
      v23 = versionCopy;
      v24 = 2112;
      v25 = v12;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "[%@(%llu)] Current schema version (%@) is newer than the latest (%@), ignoring.", &v18, 0x2Au);
    }
  }

  v14 = 1;
  if (schemaVersion)
  {
LABEL_7:
    v15 = v12;
    *schemaVersion = v12;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

@end