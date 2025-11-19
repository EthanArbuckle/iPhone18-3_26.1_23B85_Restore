@interface MCMContainerSchema
+ (BOOL)schemaIsUpToDateForIdentifier:(id)a3 containerClass:(unint64_t)a4 currentSchemaVersion:(id)a5 latestSchemaVersion:(id *)a6;
- (BOOL)_executeActions:(id)a3 error:(id *)a4;
- (BOOL)writeSchemaFromVersion:(id)a3 toTargetVersion:(id)a4 error:(id *)a5;
- (BOOL)writeSchemaToTargetVersion:(id)a3 error:(id *)a4;
- (MCMContainerSchema)initWithMetadata:(id)a3 finalContainerPath:(id)a4 dataProtectionClass:(int)a5 libraryRepair:(id)a6;
- (MCMContainerSchemaContext)context;
- (MCMMetadataMinimal)metadata;
- (NSNumber)latestSchemaVersion;
- (id)_actionArgsAfterInterpolationOnActionArgs:(id)a3 replacements:(id)a4;
- (id)_actionsFromVersion:(id)a3 toTargetVersion:(id)a4 context:(id)a5 error:(id *)a6;
- (id)_interpolationReplacementsWithError:(id *)a3;
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

- (BOOL)_executeActions:(id)a3 error:(id *)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v54 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v37 = a4;
    v11 = self;
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
            v23 = v11;
            v24 = [(MCMContainerSchema *)v11 metadata];
            v36 = [v24 uuid];
            v33 = [v23 metadata];
            v32 = [v33 containerPath];
            v35 = [v32 containerPathIdentifier];
            v31 = [v23 metadata];
            v34 = [v31 identifier];
            v25 = [v23 metadata];
            v30 = [v25 containerClass];
            v26 = [v23 metadata];
            v27 = [v26 conformsToProtocol:&unk_1F5A81C70];
            if (v27)
            {
              v29 = [v23 metadata];
              v23 = [v29 fsNode];
              v28 = [v23 inode];
            }

            else
            {
              v28 = 0;
            }

            *buf = 138544898;
            v40 = v36;
            v41 = 2114;
            v42 = v35;
            v43 = 2112;
            v44 = v34;
            v45 = 2050;
            v46 = v30;
            v47 = 2048;
            v48 = v28;
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
          if (v37)
          {
            v19 = v12;
            v20 = 0;
            *v37 = v12;
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

- (id)_actionsFromVersion:(id)a3 toTargetVersion:(id)a4 context:(id)a5 error:(id *)a6
{
  v106 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v82 = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v81 = v11;
  v12 = MCMContainerSchemaDefinitionForClass([v11 containerClass]);
  v13 = [v10 unsignedIntegerValue];
  v78 = self;
  v67 = v12;
  if (v13 > [v12 count])
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v55 = v10;
      obja = [(MCMContainerSchema *)self metadata];
      v80 = [obja uuid];
      v75 = [(MCMContainerSchema *)self metadata];
      v73 = [v75 containerPath];
      v42 = [v73 containerPathIdentifier];
      v43 = [(MCMContainerSchema *)self metadata];
      [v43 identifier];
      v45 = v44 = self;
      v46 = [(MCMContainerSchema *)v44 metadata];
      v47 = [v46 containerClass];
      v48 = [(MCMContainerSchema *)v44 metadata];
      v49 = [v48 conformsToProtocol:&unk_1F5A81C70];
      if (v49)
      {
        v70 = [(MCMContainerSchema *)v44 metadata];
        v68 = [v70 fsNode];
        v50 = [v68 inode];
      }

      else
      {
        v50 = 0;
      }

      *buf = 138544898;
      v86 = v80;
      v87 = 2114;
      v88 = v42;
      v89 = 2112;
      v90 = v45;
      v91 = 2050;
      v92 = v47;
      v93 = 2048;
      v94 = v50;
      v95 = 2112;
      v96 = v55;
      v97 = 2048;
      v98 = [v67 count];
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Trying to target a version [%@] higher than available [%lu], capping to max", buf, 0x48u);
      if (v49)
      {
      }

      v10 = v55;
      self = v78;
      v12 = v67;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];

    v10 = v15;
  }

  v84 = 0;
  v16 = [(MCMContainerSchema *)self _interpolationReplacementsWithError:&v84];
  v17 = v84;
  v79 = v16;
  if (v16)
  {
    v18 = [v9 unsignedIntegerValue];
    if (v18 < [v10 unsignedIntegerValue])
    {
      v19 = [v9 unsignedIntegerValue];
      if (v19 < [v10 unsignedIntegerValue])
      {
        v53 = v9;
        v54 = v10;
        do
        {
          v20 = [v12 objectAtIndexedSubscript:v19];
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
            v71 = v19;
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
              v29 = [v28 string];

              v30 = [v27 subarrayWithRange:{1, objc_msgSend(v27, "count") - 1}];
              v31 = [(MCMContainerSchema *)self _actionArgsAfterInterpolationOnActionArgs:v30 replacements:v79];

              v83 = 0;
              v32 = [MCMContainerSchemaActionBase actionWithName:v29 arguments:v31 context:v81 error:&v83];
              v33 = v83;
              if (v32)
              {
                [v82 addObject:v32];
                v34 = 0;
                v17 = v26;
              }

              else
              {
                v17 = [[MCMError alloc] initWithNSError:v33 url:0 defaultErrorType:127];

                v35 = container_log_handle_for_category();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
                {
                  v66 = [(MCMContainerSchema *)self metadata];
                  v65 = [v66 uuid];
                  v64 = [(MCMContainerSchema *)self metadata];
                  v63 = [v64 containerPath];
                  v74 = [v63 containerPathIdentifier];
                  v62 = [(MCMContainerSchema *)self metadata];
                  v72 = [v62 identifier];
                  v61 = [(MCMContainerSchema *)self metadata];
                  v58 = [v61 containerClass];
                  v60 = [(MCMContainerSchema *)self metadata];
                  v59 = [v60 conformsToProtocol:&unk_1F5A81C70];
                  if (v59)
                  {
                    v52 = [(MCMContainerSchema *)self metadata];
                    v51 = [v52 fsNode];
                    v36 = [v51 inode];
                  }

                  else
                  {
                    v36 = 0;
                  }

                  *buf = 138545154;
                  v86 = v65;
                  v87 = 2114;
                  v88 = v74;
                  v89 = 2112;
                  v90 = v72;
                  v91 = 2050;
                  v92 = v58;
                  v93 = 2048;
                  v94 = v36;
                  v95 = 2112;
                  v96 = v29;
                  v97 = 2112;
                  v98 = v31;
                  v99 = 2112;
                  v100 = v17;
                  _os_log_fault_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_FAULT, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Could not form action [%@] with args: %@, error = %@", buf, 0x52u);
                  if (v59)
                  {
                  }
                }

                v82 = 0;
                v34 = 2;
              }

              if (!v32)
              {
                break;
              }

              ++v25;
              v26 = v17;
              self = v78;
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

            v9 = v53;
            v10 = v54;
            v12 = v67;
            v20 = v69;
            v19 = v71;
          }

          else
          {
            v34 = 0;
          }

          if (v34)
          {
            break;
          }

          ++v19;
          self = v78;
        }

        while (v19 < [v10 unsignedIntegerValue]);
      }
    }
  }

  else
  {

    v82 = 0;
  }

  objc_autoreleasePoolPop(context);
  if (a6 && !v82)
  {
    v38 = v17;
    *a6 = v17;
  }

  v39 = [v82 copy];

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)_interpolationReplacementsWithError:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [(MCMContainerSchema *)self metadata];
  v5 = [v4 containerPath];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 destinationContainerPath];

    v5 = v6;
  }

  v7 = [v5 containerPathIdentifier];
  v8 = +[MCMFileManager defaultManager];
  v9 = [v4 identifier];
  v10 = [v8 fsMinimallySanitizedStringFromString:v9];

  if (v10)
  {
    v11 = +[MCMPOSIXUser currentPOSIXUser];
    v12 = [v11 homeDirectoryURL];
    v13 = [v12 path];
    v22[0] = v13;
    v22[1] = v10;
    v21[1] = @"${BundleId}";
    v21[2] = @"${SigningId}";
    v21[3] = @"${ContainerId}";
    v22[2] = v10;
    v22[3] = v7;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];

    v15 = 0;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v20 = [v4 identifier];
    *buf = 138412290;
    v24 = v20;
    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Codesign identifier [%@] has invalid characters", buf, 0xCu);
  }

  v15 = [[MCMError alloc] initWithErrorType:97 category:3];
  v14 = 0;
  if (a3)
  {
LABEL_9:
    if (!v14)
    {
      v17 = v15;
      *a3 = v15;
    }
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_actionArgsAfterInterpolationOnActionArgs:(id)a3 replacements:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v30 = a4;
  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = v5;
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
        v12 = [v11 string];
        v13 = [v12 pathComponents];

        if ([v13 count] && (objc_msgSend(v13, "containsObject:", @"..") & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v14 = [v11 string];
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v15 = v30;
            v16 = [v15 countByEnumeratingWithState:&v33 objects:v32 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v34;
              do
              {
                v19 = 0;
                v20 = v14;
                do
                {
                  if (*v34 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v21 = *(*(&v33 + 1) + 8 * v19);
                  v22 = [v15 objectForKeyedSubscript:v21];
                  v14 = [v20 stringByReplacingOccurrencesOfString:v21 withString:v22 options:1 range:{0, objc_msgSend(v20, "length")}];

                  ++v19;
                  v20 = v14;
                }

                while (v17 != v19);
                v17 = [v15 countByEnumeratingWithState:&v33 objects:v32 count:16];
              }

              while (v17);
            }

            v23 = [objc_alloc(objc_opt_class()) initWithString:v14];
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

- (BOOL)writeSchemaToTargetVersion:(id)a3 error:(id *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MCMContainerSchema *)self metadata];
  v8 = [v7 schemaVersion];
  LOBYTE(a4) = [(MCMContainerSchema *)self writeSchemaFromVersion:v8 toTargetVersion:v6 error:a4];

  v9 = *MEMORY[0x1E69E9840];
  return a4;
}

- (BOOL)writeSchemaFromVersion:(id)a3 toTargetVersion:(id)a4 error:(id *)a5
{
  v81 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(MCMContainerSchema *)self metadata];
  v11 = [(MCMContainerSchema *)self context];
  v62 = 0;
  v12 = [(MCMContainerSchema *)self _actionsFromVersion:v8 toTargetVersion:v9 context:v11 error:&v62];
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

    v60 = a5;
    v31 = v8;
    spida = [v10 uuid];
    v56 = [v10 containerPath];
    v32 = [v56 containerPathIdentifier];
    v33 = [v10 identifier];
    v34 = [v10 containerClass];
    v35 = [v10 conformsToProtocol:&unk_1F5A81C70];
    if (v35)
    {
      v52 = [v10 fsNode];
      v36 = [v52 inode];
    }

    else
    {
      v36 = 0;
    }

    *buf = 138544898;
    v64 = spida;
    v65 = 2114;
    v66 = v32;
    v67 = 2112;
    v68 = v33;
    v69 = 2050;
    v70 = v34;
    v71 = 2048;
    v72 = v36;
    v73 = 2114;
    v8 = v31;
    v74 = v31;
    v75 = 2114;
    v76 = v9;
    _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Could not update schema from (%{public}@) → (%{public}@), no actions available", buf, 0x48u);
    if (v35)
    {
    }

    v23 = 0;
    LOBYTE(v22) = 0;
LABEL_28:
    a5 = v60;
    goto LABEL_29;
  }

  v60 = a5;
  v16 = os_signpost_id_make_with_pointer(v14, self);

  v17 = container_log_handle_for_category();
  v18 = v17;
  spid = v16;
  v19 = v16 - 1;
  if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    [v10 identifier];
    v21 = v20 = v8;
    *buf = 138477827;
    v64 = v21;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v18, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SchemaUpdate", " identifier=%{private, signpost.description:attribute}@ ", buf, 0xCu);

    v8 = v20;
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
      v55 = v8;
      v53 = [v10 uuid];
      v46 = [v10 containerPath];
      v50 = [v46 containerPathIdentifier];
      v48 = [v10 identifier];
      v44 = [v10 containerClass];
      v26 = [v10 conformsToProtocol:&unk_1F5A81C70];
      if (v26)
      {
        v43 = [v10 fsNode];
        v27 = [v43 inode];
      }

      else
      {
        v27 = 0;
      }

      v28 = [v12 count];
      *buf = 138545154;
      v64 = v53;
      v65 = 2114;
      v66 = v50;
      v67 = 2112;
      v68 = v48;
      v69 = 2050;
      v70 = v44;
      v71 = 2048;
      v72 = v27;
      v73 = 2114;
      v74 = v55;
      v75 = 2114;
      v76 = v9;
      v77 = 2050;
      v78 = v28;
      _os_log_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_DEFAULT, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Successfully updated schema from (%{public}@) → (%{public}@), actions count = %{public}lu", buf, 0x52u);
      if (v26)
      {
      }

      v8 = v55;
    }
  }

  else
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v57 = v8;
      v54 = [v10 uuid];
      v47 = [v10 containerPath];
      v51 = [v47 containerPathIdentifier];
      v49 = [v10 identifier];
      v45 = [v10 containerClass];
      v37 = [v10 conformsToProtocol:&unk_1F5A81C70];
      if (v37)
      {
        v43 = [v10 fsNode];
        v38 = [v43 inode];
      }

      else
      {
        v38 = 0;
      }

      v42 = [v12 count];
      *buf = 138545410;
      v64 = v54;
      v65 = 2114;
      v66 = v51;
      v67 = 2112;
      v68 = v49;
      v69 = 2050;
      v70 = v45;
      v71 = 2048;
      v72 = v38;
      v73 = 2114;
      v8 = v57;
      v74 = v57;
      v75 = 2114;
      v76 = v9;
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

  a5 = v60;
  if (os_signpost_enabled(v29))
  {
    v30 = [v10 identifier];
    *buf = 138477827;
    v64 = v30;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v15, OS_SIGNPOST_INTERVAL_END, spid, "SchemaUpdate", " identifier=%{private, signpost.description:attribute}@ ", buf, 0xCu);
  }

LABEL_29:

  if (a5 && !v22)
  {
    v39 = v13;
    *a5 = v13;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v22;
}

- (MCMContainerSchema)initWithMetadata:(id)a3 finalContainerPath:(id)a4 dataProtectionClass:(int)a5 libraryRepair:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v31.receiver = self;
  v31.super_class = MCMContainerSchema;
  v14 = [(MCMContainerSchema *)&v31 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_metadata, a3);
    v30 = [v11 containerPath];
    v29 = [v11 containerClass];
    v16 = [v11 containerPath];
    v28 = [v16 schemaPOSIXMode];

    v17 = [v11 containerPath];
    v27 = [v17 schemaPOSIXOwner];

    v18 = [v11 identifier];
    v19 = containermanager_copy_global_configuration();
    v20 = [v19 defaultUser];
    v21 = [v20 homeDirectoryURL];
    LODWORD(v26) = a5;
    v22 = [MCMContainerSchemaContext contextWithHomeDirectoryURL:v21 containerPath:v30 finalContainerPath:v12 POSIXMode:v28 POSIXOwner:v27 containerClass:v29 dataProtectionClass:v26 libraryRepair:v13 identifier:v18];
    context = v15->_context;
    v15->_context = v22;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (BOOL)schemaIsUpToDateForIdentifier:(id)a3 containerClass:(unint64_t)a4 currentSchemaVersion:(id)a5 latestSchemaVersion:(id *)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = MCMContainerSchemaDefinitionForClass(a4);
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];

  if ([v10 compare:v12])
  {
    if ([v10 compare:v12] != 1)
    {
      v14 = 0;
      if (!a6)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 138413058;
      v19 = v9;
      v20 = 2048;
      v21 = a4;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v12;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "[%@(%llu)] Current schema version (%@) is newer than the latest (%@), ignoring.", &v18, 0x2Au);
    }
  }

  v14 = 1;
  if (a6)
  {
LABEL_7:
    v15 = v12;
    *a6 = v12;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

@end