uint64_t MCDestinationPathIsSafeFromSymlinkAttacks(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = MCPathWithoutPrivatePathComponent(a1);
  v2 = [v1 stringByResolvingSymlinksInPath];
  v3 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = v1;
    v9 = 2114;
    v10 = v2;
    _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_DEFAULT, "MCDestinationPathIsSafeFromSymlinkAttacks path:\n\t%{public}@\nresolved:\n\t%{public}@", &v7, 0x16u);
  }

  v4 = [v1 isEqualToString:v2];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t MCSetSkipBackupAttributeToItemAtPath(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  if (v4 && ([MEMORY[0x1E696AC08] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "path"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "fileExistsAtPath:", v6), v6, v5, (v7 & 1) != 0))
  {
    v22 = 0;
    v8 = *MEMORY[0x1E695DB80];
    v9 = [v4 getResourceValue:&v22 forKey:*MEMORY[0x1E695DB80] error:0];
    v10 = v22;
    v11 = v10;
    if (v9 && [v10 BOOLValue] == a2)
    {
      v14 = 0;
    }

    else
    {
      v12 = [MEMORY[0x1E696AD98] numberWithBool:a2];
      v21 = 0;
      v13 = [v4 setResourceValue:v12 forKey:v8 error:&v21];
      v14 = v21;

      if (!v13 || v14)
      {
        v15 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          v16 = v15;
          v17 = [v4 path];
          *buf = 138543618;
          v24 = v17;
          v25 = 2114;
          v26 = v14;
          _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_ERROR, "Error excluding %{public}@ from backup %{public}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v18 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v3;
      _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_ERROR, "Error excluding %{public}@ from backup. Path does not exist.", buf, 0xCu);
    }

    v9 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

void MCFixHostileSymlinks()
{
  v35[7] = *MEMORY[0x1E69E9840];
  v0 = MCConfigurationProfilesSystemGroupContainer();
  v35[0] = v0;
  v1 = MCSystemProfileLibraryDirectory();
  v35[1] = v1;
  v2 = MCSystemProfileStorageDirectory();
  v35[2] = v2;
  v3 = MCSystemPublicInfoDirectory();
  v35[3] = v3;
  v4 = MCUserProfileLibraryDirectory();
  v35[4] = v4;
  v5 = MCUserProfileStorageDirectory();
  v35[5] = v5;
  v6 = MCUserPublicInfoDirectory();
  v35[6] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:7];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        MCReplaceSymlinkWithDirectory(*(*(&v28 + 1) + 8 * v12++));
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v10);
  }

  v13 = MCCloudConfigurationDetailsFilePath();
  v33[0] = v13;
  v14 = MCCloudConfigurationSetAsideDetailsFilePath();
  v33[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        MCRemoveFileIfSymlink(*(*(&v24 + 1) + 8 * v20++));
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  v21 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_1A795B000, v21, OS_LOG_TYPE_DEFAULT, "Finished check for symbolic links in user and system group folder", v23, 2u);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void MCReplaceSymlinkWithDirectory(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v30 = 0;
  v3 = [v2 attributesOfItemAtPath:v1 error:&v30];
  v4 = v30;
  v5 = v4;
  if (v3)
  {
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696A3D8]];
    v7 = *MEMORY[0x1E696A3F0];

    if (v6 == v7)
    {
      v29 = v5;
      v8 = MCMakePathDeletableBySettingACL(v1, &v29);
      v9 = v29;

      if (!v8)
      {
        v10 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v32 = v1;
          v33 = 2114;
          v34 = v9;
          _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_ERROR, "Error setting ACL on symbolic link before removal for %{public}@: %{public}@", buf, 0x16u);
        }
      }

      v28 = v9;
      v11 = [v2 removeItemAtPath:v1 error:&v28];
      v5 = v28;

      if (v11)
      {
        v27 = v5;
        v12 = [v2 createDirectoryAtPath:v1 withIntermediateDirectories:0 attributes:0 error:&v27];
        v13 = v27;

        v14 = _MCLogObjects;
        v15 = os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR);
        if (v12)
        {
          if (v15)
          {
            *buf = 138543362;
            v32 = v1;
            v16 = "Symbolic link removed from %{public}@";
            v17 = v14;
            v18 = 12;
LABEL_21:
            _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
          }
        }

        else if (v15)
        {
          *buf = 138543618;
          v32 = v1;
          v33 = 2114;
          v34 = v13;
          v16 = "Error creating directory %{public}@: %{public}@";
          v17 = v14;
          v18 = 22;
          goto LABEL_21;
        }

        v5 = v13;
        goto LABEL_23;
      }

      v25 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        v32 = v1;
        v33 = 2114;
        v34 = v5;
        v22 = "Error removing symbolic link for %{public}@: %{public}@";
        v23 = v25;
        v24 = OS_LOG_TYPE_FAULT;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v19 = [v4 domain];
    if ([v19 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v20 = [v5 code];

      if (v20 == 4)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v21 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v32 = v1;
      v33 = 2114;
      v34 = v5;
      v22 = "Error reading attributes for %{public}@: %{public}@";
      v23 = v21;
      v24 = OS_LOG_TYPE_ERROR;
LABEL_18:
      _os_log_impl(&dword_1A795B000, v23, v24, v22, buf, 0x16u);
    }
  }

LABEL_23:

  v26 = *MEMORY[0x1E69E9840];
}

void MCRemoveFileIfSymlink(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if ((MCDestinationPathIsSafeFromSymlinkAttacks(v1) & 1) == 0)
  {
    v11 = 0;
    v3 = [v2 removeItemAtPath:v1 error:&v11];
    v4 = v11;
    v5 = _MCLogObjects;
    if (v3)
    {
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v1;
        v6 = "Removing symbolic link for %{public}@";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
        v9 = 12;
LABEL_7:
        _os_log_impl(&dword_1A795B000, v7, v8, v6, buf, v9);
      }
    }

    else if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v13 = v1;
      v14 = 2114;
      v15 = v4;
      v6 = "Error removing symbolic link for %{public}@: %{public}@";
      v7 = v5;
      v8 = OS_LOG_TYPE_FAULT;
      v9 = 22;
      goto LABEL_7;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

BOOL MCMakePathDeletableBySettingACL(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  permset_d = 0;
  entry_p = 0;
  memset(uu, 0, sizeof(uu));
  acl_p = acl_init(1);
  if (!acl_p || acl_create_entry(&acl_p, &entry_p) || acl_get_permset(entry_p, &permset_d) || acl_clear_perms(permset_d) || acl_add_perm(permset_d, ACL_DELETE) || acl_set_permset(entry_p, permset_d) || acl_set_tag_type(entry_p, ACL_EXTENDED_ALLOW) || (v4 = strlen(kSystemUsersGroupName), mbr_identifier_to_uuid(5, kSystemUsersGroupName, v4, uu)) || acl_set_qualifier(entry_p, uu) || (v10 = open([v3 fileSystemRepresentation], 2097153), v10 == -1))
  {
    v5 = 0;
    v6 = *__error();
  }

  else
  {
    v11 = v10;
    v5 = acl_set_fd_np(v10, acl_p, ACL_TYPE_EXTENDED) == 0;
    v6 = *__error();
    close(v11);
  }

  if (acl_p)
  {
    acl_free(acl_p);
  }

  if (a2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    *a2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v6 userInfo:0];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

id MCPathWithoutPrivatePathComponent(void *a1)
{
  v1 = a1;
  v2 = [v1 pathComponents];
  if ([v2 count] > 1)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    if ([v3 isEqualToString:@"/"])
    {
      v4 = [v2 objectAtIndexedSubscript:1];
      v5 = [v4 isEqualToString:@"private"];

      if (v5)
      {
        v6 = [v2 mutableCopy];
        [v6 removeObjectAtIndex:1];
        v7 = [MEMORY[0x1E696AEC0] pathWithComponents:v6];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v7 = v1;
LABEL_7:

  return v7;
}

uint64_t MCRemoveFileIfExists(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 fileExistsAtPath:v6])
  {
    v7 = [v5 removeItemAtPath:v6 error:a3];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t DeserializeVerifyAclConstraint(int a1, uint64_t a2, unsigned int a3, _OWORD *a4, void *a5, _DWORD *a6, void *a7, unsigned int *a8, BOOL *a9, _DWORD *a10, void *a11, _DWORD *a12)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v12 = 4294967293;
  if (a2 && a4 && a5 && a6 && a9 && a10 && a11 && a12 && a3 >= 0x10)
  {
    v16 = a3;
    *a4 = *a2;
    v37 = 16;
    if ((a3 & 0xFFFFFFFC) == 0x10)
    {
      v12 = 4294967293;
    }

    else
    {
      v20 = *(a2 + 16);
      v37 = 20;
      v21 = acm_mem_alloc_data(v20);
      acm_mem_alloc_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 534, "DeserializeVerifyAclConstraint");
      if (v21)
      {
        if (v16 - 20 < v20)
        {
          goto LABEL_24;
        }

        memcpy(v21, (a2 + 20), v20);
        v22 = v20 + 20;
        v37 = v20 + 20;
        v33 = a5;
        if (a1 != 32)
        {
          v26 = 0;
          v34 = 0;
          goto LABEL_19;
        }

        if (v16 - v22 < 4)
        {
LABEL_24:
          v26 = 0;
          v34 = 0;
        }

        else
        {
          v31 = a7;
          v23 = a8;
          v24 = *(a2 + v22);
          v25 = v20 + 24;
          v37 = v20 + 24;
          v26 = acm_mem_alloc_data(v24);
          acm_mem_alloc_info("<data>", v26, v24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 546, "DeserializeVerifyAclConstraint");
          v34 = v24;
          if (!v26)
          {
            v12 = 4294967292;
LABEL_26:
            acm_mem_free_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 582, "DeserializeVerifyAclConstraint");
            acm_mem_free_data(v21, v20);
            if (v26)
            {
              acm_mem_free_info("<data>", v26, v34, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 585, "DeserializeVerifyAclConstraint");
              acm_mem_free_data(v26, v34);
            }

            goto LABEL_30;
          }

          if (v16 - v25 >= v24)
          {
            memcpy(v26, (a2 + v25), v24);
            v22 = v25 + v24;
            v37 = v25 + v24;
            a8 = v23;
            a7 = v31;
LABEL_19:
            if (v22 != v16)
            {
              v27 = *(a2 + v22) != 0;
              v37 = v22 + 1;
              if (v16 - (v22 + 1) >= 4)
              {
                v32 = v20;
                v28 = v26;
                v29 = *(a2 + v22 + 1);
                v37 = v22 + 5;
                v12 = deserializeParameters(a2, v16, &v37, &v36, &v35);
                if (!v12)
                {
                  *v33 = v21;
                  *a7 = v28;
                  *a8 = v34;
                  *a6 = v32;
                  *a9 = v27;
                  *a10 = v29;
                  *a11 = v36;
                  *a12 = v35;
                  return v12;
                }

                v26 = v28;
                v20 = v32;
                goto LABEL_26;
              }
            }
          }
        }

        v12 = 4294967293;
        goto LABEL_26;
      }

      v12 = 4294967292;
    }
  }

LABEL_30:
  if (v36)
  {
    Util_SafeDeallocParameters(v36, v35);
  }

  return v12;
}

uint64_t DeserializeProcessAcl(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4, _DWORD *a5, void *a6, unsigned int *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v10 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      v11 = a4;
      if (a4)
      {
        if (a5)
        {
          v13 = a6;
          if (a6)
          {
            v14 = a7;
            if (a7)
            {
              v15 = a8;
              if (a8)
              {
                if (a9 && a10 && a2 >= 0x10)
                {
                  v17 = a2;
                  *a3 = *a1;
                  v40 = 16;
                  if ((a2 & 0xFFFFFFFC) == 0x10)
                  {
                    v10 = 4294967293;
                  }

                  else
                  {
                    v18 = *(a1 + 16);
                    v40 = 20;
                    v19 = acm_mem_alloc_data(v18);
                    acm_mem_alloc_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 724, "DeserializeProcessAcl");
                    if (v19)
                    {
                      if (v17 - 20 < v18 || (memcpy(v19, (a1 + 20), v18), v40 = v18 + 20, v17 - (v18 + 20) < 4))
                      {
                        v32 = 0;
                        v37 = 0;
                        v10 = 4294967293;
                      }

                      else
                      {
                        v36 = a5;
                        v20 = *(a1 + v18 + 20);
                        v21 = v18 + 24;
                        v40 = v18 + 24;
                        v37 = v20;
                        if (!v20)
                        {
                          v35 = 0;
                          goto LABEL_20;
                        }

                        v33 = v11;
                        v22 = v13;
                        v23 = v14;
                        v24 = v15;
                        v25 = v20;
                        v26 = acm_mem_alloc_data(v20);
                        acm_mem_alloc_info("<data>", v26, v25, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 736, "DeserializeProcessAcl");
                        if (v26)
                        {
                          v27 = v26;
                          if (v17 - v21 >= v25)
                          {
                            v13 = v22;
                            v35 = v27;
                            memcpy(v27, (a1 + v21), v25);
                            v21 += v25;
                            v40 = v21;
                            v15 = v24;
                            v14 = v23;
                            v11 = v33;
LABEL_20:
                            if (v17 - v21 < 4)
                            {
                              v10 = 4294967293;
                            }

                            else
                            {
                              v34 = v18;
                              v28 = v19;
                              v29 = v15;
                              v30 = *(a1 + v21);
                              v40 = v21 + 4;
                              v10 = deserializeParameters(a1, v17, &v40, &v39, &v38);
                              if (!v10)
                              {
                                *v11 = v28;
                                *v36 = v34;
                                *v13 = v35;
                                *v14 = v37;
                                *v29 = v30;
                                *a9 = v39;
                                *a10 = v38;
                                return v10;
                              }

                              v19 = v28;
                              v18 = v34;
                            }

                            v32 = v35;
                            goto LABEL_32;
                          }

                          v10 = 4294967293;
                          v32 = v26;
                        }

                        else
                        {
                          v32 = 0;
                          v10 = 4294967292;
                        }
                      }

LABEL_32:
                      acm_mem_free_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 765, "DeserializeProcessAcl");
                      acm_mem_free_data(v19, v18);
                      if (v32)
                      {
                        acm_mem_free_info("<data>", v32, v37, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 768, "DeserializeProcessAcl");
                        acm_mem_free_data(v32, v37);
                      }

                      goto LABEL_34;
                    }

                    v10 = 4294967292;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  if (v39)
  {
    Util_SafeDeallocParameters(v39, v38);
  }

  return v10;
}

uint64_t getRequirementDataSizeForVersion(unsigned int a1, _DWORD *a2)
{
  if (!a2)
  {
    getRequirementDataSizeForVersion_cold_2();
  }

  if (a1 > 1)
  {
    return a2[3];
  }

  v2 = *a2 - 1;
  if (v2 >= 0x1C || ((0xFFE7FE7u >> v2) & 1) == 0)
  {
    getRequirementDataSizeForVersion_cold_1();
  }

  return qword_1A7A621F8[v2];
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return memcmp(v1, v0, 0x20uLL);
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 0;
  *a4 = 24;
  return result;
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1, void *a2)
{
  result = 0;
  *a2 = 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return getLengthOfParameters(a2, a3, &a11);
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a10 = 0;
  a11 = 0;

  return DeserializeRequirement(v22 + v24, v23 - v24, &a11, &a10, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

__n128 OUTLINED_FUNCTION_12(__n128 *a1, uint64_t a2, __n128 *a3, _DWORD *a4)
{
  result = *a1;
  *a3 = *a1;
  *a4 = a1[1].n128_u32[0];
  return result;
}

__n128 OUTLINED_FUNCTION_17@<Q0>(unsigned __int32 a1@<W1>, unsigned __int32 a2@<W2>, __n128 *a3@<X3>, void *a4@<X4>, __n128 *a5@<X8>)
{
  result = *a5;
  *a3 = *a5;
  a3[1].n128_u32[0] = a1;
  a3[1].n128_u32[1] = a2;
  *a4 = 24;
  return result;
}

uint64_t serializeParameters(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  LODWORD(v6) = a2;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "serializeParameters");
  }

  v8 = 70;
  v9 = 4294967293;
  if (a3 && a4)
  {
    v10 = *a4;
    *(a3 + v10) = v6;
    v11 = v10 + 4;
    if (v6)
    {
      v6 = v6;
      while (1)
      {
        *__src = *a1;
        __n = *(a1 + 16);
        v12 = checkParameter(__src);
        if (v12)
        {
          break;
        }

        v13 = (a3 + v11);
        v14 = __n;
        *v13 = __src[0];
        v13[1] = v14;
        v11 += 8;
        if (v14)
        {
          memcpy((a3 + v11), __src[1], v14);
          v11 += v14;
        }

        a1 += 24;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      v9 = v12;
      v8 = 70;
    }

    else
    {
LABEL_11:
      v9 = 0;
      *a4 = v11;
      v8 = 10;
    }
  }

  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "serializeParameters", v9);
  }

  return v9;
}

uint64_t deserializeParameters(uint64_t a1, unint64_t a2, unint64_t *a3, void *size, _DWORD *a5)
{
  v10 = &OBJC_IVAR___MCCardDAVAccountPayload__useSSLNum;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "deserializeParameters");
  }

  v11 = 70;
  v12 = 4294967293;
  if (!a1 || !a3 || !size || !a5)
  {
    goto LABEL_24;
  }

  v13 = *a3;
  if (a2 <= *a3)
  {
    goto LABEL_22;
  }

  if (a2 - *a3 < 4 || (v14 = *(a1 + v13), v14 > 0xA))
  {
    v11 = 70;
    v12 = 4294967293;
    goto LABEL_24;
  }

  v13 += 4;
  if (!v14)
  {
LABEL_22:
    v20 = 0;
    v21 = 0;
LABEL_23:
    v12 = 0;
    *size = v21;
    *a5 = v20;
    v11 = 10;
    *a3 = v13;
    goto LABEL_24;
  }

  v15 = acm_mem_alloc_typed(24 * v14, 0x1080040388D5D28uLL);
  acm_mem_alloc_info("array of ACMParameter", v15, 24 * v14, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 196, "deserializeParameters");
  if (!v15)
  {
    v11 = 70;
    v12 = 4294967292;
    goto LABEL_24;
  }

  v25 = a5;
  v23 = v15;
  v24 = v14;
  v16 = v14;
  while (1)
  {
    *(v15 + 1) = 0;
    if (a2 - v13 < 8 || (*v15 = *(a1 + v13), a2 - (v13 + 4) < 4) || (v17 = *(a1 + v13 + 4), v15[4] = v17, v13 += 8, a2 - v13 < v17))
    {
      v11 = 70;
      v12 = 4294967293;
      goto LABEL_30;
    }

    v18 = checkParameter(v15);
    if (v18)
    {
      v12 = v18;
      v11 = 70;
      goto LABEL_30;
    }

    if (v17)
    {
      break;
    }

LABEL_20:
    v15 += 6;
    if (!--v16)
    {
      v10 = &OBJC_IVAR___MCCardDAVAccountPayload__useSSLNum;
      a5 = v25;
      v21 = v23;
      v20 = v24;
      goto LABEL_23;
    }
  }

  v19 = acm_mem_alloc_data(v17);
  acm_mem_alloc_info("<data>", v19, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 214, "deserializeParameters");
  *(v15 + 1) = v19;
  if (v19)
  {
    memcpy(v19, (a1 + v13), v15[4]);
    v13 += v15[4];
    goto LABEL_20;
  }

  v11 = 70;
  v12 = 4294967292;
LABEL_30:
  v10 = &OBJC_IVAR___MCCardDAVAccountPayload__useSSLNum;
LABEL_24:
  if (v11 >= *(v10 + 1960))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "deserializeParameters", v12);
  }

  return v12;
}

uint64_t checkParameter(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  switch(*a1)
  {
    case 0:
    case 0xC:
      if (a1[4])
      {
        return 4294967293;
      }

      break;
    case 1:
    case 4:
    case 5:
    case 0xA:
      if (a1[4] != 4)
      {
        return 4294967293;
      }

      break;
    case 2:
    case 6:
    case 7:
      if (a1[4] != 16)
      {
        return 4294967293;
      }

      break;
    case 3:
      if ((a1[4] - 1001) < 0xFFFFFC18)
      {
        return 4294967293;
      }

      break;
    case 8:
    case 9:
    case 0xD:
    case 0xE:
      if (a1[4] != 1)
      {
        return 4294967293;
      }

      break;
    case 0xB:
      if (a1[4] > 0x400u)
      {
        return 4294967293;
      }

      break;
    default:
      return 4294967293;
  }

  return 0;
}

uint64_t crypto_encryptedTextLength(int a1, uint64_t a2)
{
  v2 = a2 + 32;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return a2 + 33;
  }

  else
  {
    return v2;
  }
}

unint64_t crypto_plainTextLength(int a1, unint64_t a2)
{
  v2 = a2 - 33;
  v3 = a2 - 32;
  if (a2 <= 0x20)
  {
    v2 = 0;
  }

  if (a2 <= 0x1F)
  {
    v3 = 0;
  }

  if (a1 != 1)
  {
    v3 = 0;
  }

  if (a1 == 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t checkCCError(int a1, const char *a2)
{
  if (a1)
  {
    if (gACMLoggingLevel <= 0x46u)
    {
      printf("%s: %s: CoreCrypto - %s() failed, ccErr: %d.\n", "ACM", "checkCCError", a2, a1);
    }

    return 4294967264;
  }

  else
  {
    if (gACMLoggingLevel <= 0x1Eu)
    {
      printf("%s: %s: CoreCrypto - %s() succeeded, ccErr: %d.\n", "ACM", "checkCCError", a2, 0);
    }

    return 0;
  }
}

void OUTLINED_FUNCTION_3_0(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - a2, a2);
}

uint64_t generateRandom(uint64_t a1, uint64_t a2)
{
  v2 = 70;
  v3 = 4294967293;
  if (!a1 || !a2)
  {
    goto LABEL_14;
  }

  v6 = platform_rng_state;
  if (platform_rng_state)
  {
    v3 = 0;
  }

  else
  {
    platform_rng_state = ccrng();
    v3 = checkCCError(-1, "ccrng");
    if (v3)
    {
      v6 = 0;
      v7 = 70;
      goto LABEL_8;
    }

    v6 = platform_rng_state;
  }

  v7 = 10;
LABEL_8:
  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "platform_rng", v3);
  }

  v2 = 70;
  if (!v3)
  {
    v8 = (*v6)(v6, a2, a1);
    checkCCError(v8, "platform_rng");
    OUTLINED_FUNCTION_11_0();
    if (v9)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

LABEL_14:
  if (v2 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "generateRandom", v3);
  }

  return v3;
}

void crypto_encryptText_version1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  v23 = *MEMORY[0x1E69E9840];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10, v11, v12, v13, v21);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 32;
            if (v1 != -32)
            {
              if (v14 > *v0)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_2_1();
              v15 = ccgcm_init();
              if (!checkCCError(v15, "ccgcm_init") && !generateRandom(v3, 16))
              {
                OUTLINED_FUNCTION_0_2();
                v16 = ccgcm_set_iv();
                if (!checkCCError(v16, "ccgcm_set_iv"))
                {
                  OUTLINED_FUNCTION_2_1();
                  v17 = ccgcm_update();
                  if (!checkCCError(v17, "ccgcm_update"))
                  {
                    OUTLINED_FUNCTION_0_2();
                    v18 = ccgcm_finalize();
                    if (!checkCCError(v18, "ccgcm_finalize"))
                    {
LABEL_13:
                      *v0 = v14;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_12_0();
    printf("%s: %s: returning, err = %ld.\n", v22, v23, v24);
  }

  v20 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();
}

void crypto_encryptText_version2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  v27 = *MEMORY[0x1E69E9840];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10, v11, v12, v13, v25);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 33;
            if (v1 != -33)
            {
              if (v14 > *v0)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_2_1();
              v15 = ccgcm_init();
              if (!checkCCError(v15, "ccgcm_init"))
              {
                *v3 = 2;
                v16 = (v3 + 1);
                OUTLINED_FUNCTION_13_0();
                if (!v17 && !generateRandom(v16, 16))
                {
                  OUTLINED_FUNCTION_0_2();
                  v18 = ccgcm_set_iv();
                  if (!checkCCError(v18, "ccgcm_set_iv"))
                  {
                    v19 = v16 + 16;
                    OUTLINED_FUNCTION_13_0();
                    if (!v20)
                    {
                      OUTLINED_FUNCTION_2_1();
                      v21 = ccgcm_update();
                      if (!checkCCError(v21, "ccgcm_update") && !__CFADD__(v19, v1))
                      {
                        OUTLINED_FUNCTION_0_2();
                        v22 = ccgcm_finalize();
                        if (!checkCCError(v22, "ccgcm_finalize"))
                        {
LABEL_16:
                          *v0 = v14;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v23)
  {
    OUTLINED_FUNCTION_12_0();
    printf("%s: %s: returning, err = %ld.\n", v26, v27, v28);
  }

  v24 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();
}

void crypto_decryptText_version1()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v28 = *MEMORY[0x1E69E9840];
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_0(v11, v12, v13, v14, v15, v16, v17, v18, v26);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            v19 = v5 >= 0x20;
            v20 = v5 - 32;
            if (v19)
            {
              if (*v1 < v20)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_2_1();
              v21 = ccgcm_init();
              if (!checkCCError(v21, "ccgcm_init"))
              {
                OUTLINED_FUNCTION_0_2();
                v22 = ccgcm_set_iv();
                if (!checkCCError(v22, "ccgcm_set_iv"))
                {
                  OUTLINED_FUNCTION_2_1();
                  v23 = ccgcm_update();
                  if (!checkCCError(v23, "ccgcm_update"))
                  {
                    OUTLINED_FUNCTION_0_2();
                    ccgcm_finalize();
                    v24 = cc_cmp_safe();
                    if (!checkCCError(v24, "cc_cmp_safe"))
                    {
LABEL_13:
                      *v1 = v20;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_12_0();
    printf("%s: %s: returning, err = %ld.\n", v27, 0, 0);
  }

  v25 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();
}

void crypto_decryptText_version2()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v30 = *MEMORY[0x1E69E9840];
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_0(v11, v12, v13, v14, v15, v16, v17, v18, v28);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            if (v5 >= 0x22)
            {
              v19 = v5 - 33;
              if (*v1 < v19)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_13_0();
              if (!v20 && *v7 == 2)
              {
                OUTLINED_FUNCTION_2_1();
                v21 = ccgcm_init();
                if (!checkCCError(v21, "ccgcm_init"))
                {
                  OUTLINED_FUNCTION_0_2();
                  v22 = ccgcm_set_iv();
                  if (!checkCCError(v22, "ccgcm_set_iv"))
                  {
                    OUTLINED_FUNCTION_13_0();
                    if (!v23)
                    {
                      OUTLINED_FUNCTION_2_1();
                      v24 = ccgcm_update();
                      if (!checkCCError(v24, "ccgcm_update") && !__CFADD__(v7 + 17, v19))
                      {
                        OUTLINED_FUNCTION_0_2();
                        ccgcm_finalize();
                        v25 = cc_cmp_safe();
                        if (!checkCCError(v25, "cc_cmp_safe"))
                        {
LABEL_16:
                          *v1 = v19;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v26)
  {
    OUTLINED_FUNCTION_12_0();
    printf("%s: %s: returning, err = %ld.\n", v29, 0, 0);
  }

  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();
}

uint64_t LibCall_ACMSEPControl_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25[128] = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSEPControl_Block");
  }

  bzero(v25, 0x400uLL);
  LibCall_ACMSEPControl(a1, a2, a3, a4, a5, a6, a7, v25, &v24, v22, v23, 1024, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8]);
  v17 = v16;
  if (a8)
  {
    if (v24)
    {
      v18 = v25;
    }

    else
    {
      v18 = 0;
    }

    (*(a8 + 16))(a8, v18);
  }

  if (v17)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSEPControl_Block", v17);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t LibCall_ACMGlobalContextVerifyPolicy_Block(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  v15 = 0;
  result = LibCall_ACMContextCreate(a1, a2, &v15, 0, 0, 1);
  if (result)
  {
    if (a7)
    {
      result = (*(a7 + 16))(a7, result, 0, 0);
    }
  }

  else
  {
    result = LibCall_ACMContextVerifyPolicyEx_Block(a1, a2, v15, a3, a4, a5, a6, 0xFFFFFFFFLL, a7);
  }

  if (v15)
  {
    result = LibCall_ACMContextDelete(a1, a2, v15, 1);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  return result;
}

uint64_t LibCall_ACMGetAclAuthMethod_Block(uint64_t result, uint64_t a2, __n128 *a3, uint64_t a4)
{
  v7 = result;
  v15 = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  memset(v14, 0, sizeof(v14));
  v12 = 256;
  if (v7 && a3 && a4)
  {
    v13 = 0uLL;
    v11 = 16;
    AclAuthMethod_Serialize = LibSer_GetAclAuthMethod_Serialize(a3, &v13, &v11);
    if (!v9 && v11 == 16)
    {
      v7(a2, 31, 0, &v13, 16, v14, &v12, AclAuthMethod_Serialize);
    }

    goto LABEL_9;
  }

  if (a4)
  {
LABEL_9:
    result = (*(a4 + 16))(a4);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

rsize_t verifyAclConstraintForOperationCommandInternal(rsize_t result, int a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, char a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13)
{
  v20 = result;
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  v25 = 0;
  v24 = 0;
  if (a4 && a5 && a6 && a13)
  {
    v21 = verifyAclConstraintInternal(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, &v24, &v25);
    v22 = v25;
    v23 = v24;
  }

  else
  {
    if (!a13)
    {
      goto LABEL_10;
    }

    v22 = 0;
    v23 = 0;
    v21 = 4294967293;
  }

  (*(a13 + 16))(a13, v21, v23, v22);
  result = v25;
  if (v25)
  {
    result = Util_DeallocRequirement(v25);
  }

LABEL_10:
  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  return result;
}

uint64_t Util_GetBitCount(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

BOOL Util_isNullOrZeroMemory(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1)
  {
    return 0;
  }

  return memcmp(a1, a1 + 1, a2 - 1) == 0;
}

BOOL Util_isNonNullEqualMemory(void *__s1, size_t __n, void *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  result = 0;
  if (__s1)
  {
    if (__s2)
    {
      return memcmp(__s1, __s2, __n) == 0;
    }
  }

  return result;
}

char *Util_hexDumpToStrHelper(char *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result && a2)
  {
    Util_hexDumpToStrHelper_cold_2();
  }

  if (!a3 && a4)
  {
    Util_hexDumpToStrHelper_cold_1();
  }

  if (a2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a2;
  }

  if (v4)
  {
    v5 = (a3 + 1);
    do
    {
      *(v5 - 1) = a0123456789abcd[*result >> 4];
      v6 = *result++;
      *v5 = a0123456789abcd[v6 & 0xF];
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t Util_KeybagLockStateToEnvVar(unsigned int a1)
{
  v1 = 0x2010103020201uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 3;
}

void Util_SafeDeallocParameters(unsigned int *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1 + 4;
      v5 = a2;
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          v7 = *v4;
          acm_mem_free_info("<data>", *(v4 - 1), v7, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 118, "Util_SafeDeallocParameters");
          acm_mem_free_data(v6, v7);
        }

        v4 += 6;
        --v5;
      }

      while (v5);
    }

    acm_mem_free_info("array of ACMParameter", a1, 24 * v3, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 121, "Util_SafeDeallocParameters");

    acm_mem_free(a1, 24 * v3);
  }
}

uint64_t ACMContextCreateWithFlags(uint64_t *a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextCreateWithFlags";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = 0;
  v4 = LibCall_ACMContextCreate(ioKitTransport, &v9, a1, a2, &_logLevel, 1);
  if (v4)
  {
    updateLogLevelFromKext();
    v5 = 70;
  }

  else
  {
    v5 = 10;
    if (a1 && _logLevel <= 0x28u)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        if (*a1)
        {
          LODWORD(v6) = *(v6 + 16);
        }

        *buf = 136315906;
        v11 = "ACMLib";
        v12 = 2080;
        v13 = "ACMContextCreateWithFlags";
        v14 = 1024;
        LODWORD(v15[0]) = v6;
        WORD2(v15[0]) = 1024;
        *(v15 + 6) = a2;
        _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] created (flags=0x%x).\n", buf, 0x22u);
      }

      v5 = 10;
    }
  }

  if (v5 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextCreateWithFlags";
    v14 = 2048;
    v15[0] = v4;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t ACMContextCreateWithExternalForm(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextCreateWithExternalForm";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = 0;
  v4 = LibCall_ACMContextCreateWithExternalForm(ioKitTransport, &v9, a1, a2, &_logLevel, 1);
  if (v4)
  {
    if (_logLevel <= 0x28u && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v5 = *(v4 + 16);
      *buf = 136315650;
      v11 = "ACMLib";
      v12 = 2080;
      v13 = "ACMContextCreateWithExternalForm";
      v14 = 1024;
      LODWORD(v15) = v5;
      _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] acquired.\n", buf, 0x1Cu);
    }

    v6 = 30;
  }

  else
  {
    updateLogLevelFromKext();
    v6 = 70;
  }

  if (v6 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextCreateWithExternalForm";
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, -> ctx = %p.\n", buf, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t ACMContextDelete(_DWORD *a1, int a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = _logLevel;
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextDelete";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
    v4 = _logLevel;
  }

  if (a1 && v4 <= 0x28 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = "NO";
    *buf = 136315906;
    v13 = "ACMLib";
    v15 = "ACMContextDelete";
    v14 = 2080;
    if (a2)
    {
      v6 = "YES";
    }

    v16 = 1024;
    LODWORD(v17[0]) = v5;
    WORD2(v17[0]) = 2080;
    *(v17 + 6) = v6;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] deleted (contextDestroyed=%s).\n", buf, 0x26u);
  }

  v11 = a1;
  v7 = LibCall_ACMContextDelete(ioKitTransport, &v11, a1, a2);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextDelete";
    v16 = 2048;
    v17[0] = v7;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

void ACMContextGetExternalForm(const void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextGetExternalForm";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  if (!a1 || !a2)
  {
    if (!a2)
    {
      goto LABEL_9;
    }

LABEL_14:
    ACMContextGetExternalForm_cold_1(a2);
    goto LABEL_9;
  }

  if (init() || performCommand(a1, 19, 0, a1, 0x10uLL, 0, 0))
  {
    goto LABEL_14;
  }

  (*(a2 + 16))(a2, a1, 16);
LABEL_9:
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextGetExternalForm";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t ACMContextRemoveCredentialsByType(_OWORD *a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMContextRemoveCredentialsByType";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v6, 0x16u);
  }

  result = ACMContextRemoveCredentialsByTypeAndScope(a1, a2, 1);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ACMContextContainsCredentialType(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMContextContainsCredentialType";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v6, 0x16u);
  }

  result = ACMContextContainsCredentialTypeEx(a1, a2, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ACMContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextVerifyPolicy";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v10 = a1;
  v6 = LibCall_ACMContextVerifyPolicy_Block(ioKitTransport, &v10, a1, a2, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextVerifyPolicy";
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t ACMContextVerifyPolicyWithPreflight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "ACMLib";
    v15 = 2080;
    v16 = "ACMContextVerifyPolicyWithPreflight";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = a1;
  v8 = LibCall_ACMContextVerifyPolicyWithPreflight_Block(ioKitTransport, &v12, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v14 = "ACMLib";
    v15 = 2080;
    v16 = "ACMContextVerifyPolicyWithPreflight";
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

void ACMContextVerifyPolicyEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "ACMLib";
    v18 = 2080;
    v19 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v15 = a1;
  LibCall_ACMContextVerifyPolicyEx_Block(ioKitTransport, &v15, a1, a2, a3, a4, a5, a6, a7);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "ACMLib";
    v18 = 2080;
    v19 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void ACMGlobalContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "ACMLib";
    v15 = 2080;
    v16 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = 0;
  v10 = ACMContextCreateWithFlags(&v12, 0);
  if (v10)
  {
    if (a5)
    {
      (*(a5 + 16))(a5, v10, 0, 0);
    }
  }

  else
  {
    ACMContextVerifyPolicyEx(v12, a1, a2, a3, a4, 0xFFFFFFFFLL, a5);
  }

  if (v12)
  {
    ACMContextDelete(v12, 1);
  }

  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "ACMLib";
    v15 = 2080;
    v16 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t ACMContextGetTrackingNumber(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t ACMParseAclAndCopyConstraintCharacteristics(const void *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  __n = 4096;
  size = 0;
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "ACMLib";
    v24 = 2080;
    v25 = "ACMParseAclAndCopyConstraintCharacteristics";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 4294967293;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_28;
  }

  SerializedProcessAclSize = init();
  if (SerializedProcessAclSize || (SerializedProcessAclSize = GetSerializedProcessAclSize(0, a1, a2, 0, 0, 0, 0, 0, &size), SerializedProcessAclSize))
  {
    v6 = SerializedProcessAclSize;
LABEL_28:
    (*(a3 + 16))(a3, v6, 0, 4096);
    goto LABEL_19;
  }

  v8 = size;
  v9 = acm_mem_alloc_data(size);
  acm_mem_alloc_info("<data>", v9, v8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 727, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v9)
  {
    v6 = 4294967292;
    goto LABEL_28;
  }

  v10 = SerializeProcessAcl(0, a1, a2, 0, 0, 0, 0, 0, v9, &size);
  if (v10)
  {
    v6 = v10;
    v12 = 0;
    v14 = 0;
    v11 = 4096;
    goto LABEL_15;
  }

  v11 = 4096;
  v12 = acm_mem_alloc_data(0x1000uLL);
  acm_mem_alloc_info("<data>", v12, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 733, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v12)
  {
    v14 = 0;
LABEL_31:
    v6 = 4294967292;
    goto LABEL_15;
  }

  v13 = performCommand(0, 20, 0, v9, size, v12, &__n);
  v11 = __n;
  if (v13)
  {
    v6 = v13;
    v14 = 0;
    goto LABEL_15;
  }

  v14 = acm_mem_alloc_data(__n);
  acm_mem_alloc_info("<data>", v14, v11, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 739, "ACMParseAclAndCopyConstraintCharacteristics");
  v11 = __n;
  if (!v14)
  {
    goto LABEL_31;
  }

  memcpy(v14, v12, __n);
  v6 = 0;
  v11 = __n;
LABEL_15:
  (*(a3 + 16))(a3, v6, v14, v11);
  v15 = size;
  acm_mem_free_info("<data>", v9, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 750, "ACMParseAclAndCopyConstraintCharacteristics");
  acm_mem_free_data(v9, v15);
  if (v12)
  {
    acm_mem_free_info("<data>", v12, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 753, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v12, 0x1000uLL);
  }

  if (v14)
  {
    v16 = __n;
    acm_mem_free_info("<data>", v14, __n, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 756, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v14, v16);
  }

LABEL_19:
  if (v6)
  {
    v17 = 70;
  }

  else
  {
    v17 = 10;
  }

  if (v17 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "ACMLib";
    v24 = 2080;
    v25 = "ACMParseAclAndCopyConstraintCharacteristics";
    v26 = 2048;
    v27 = v6;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

void ACMGetAclAuthMethod(__n128 *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMGetAclAuthMethod";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v5 = a1;
  LibCall_ACMGetAclAuthMethod_Block(ioKitTransport, &v5, a1, a2);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMGetAclAuthMethod";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t ACMSetEnvironmentVariable(int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMSetEnvironmentVariable";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v3 = v2;
  if (v2)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMSetEnvironmentVariable";
    v11 = 2048;
    v12 = v3;
    v13 = 1024;
    v14 = a1;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ACMSetEnvironmentVariableWithAccessPolicy(int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMSetEnvironmentVariableWithAccessPolicy";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v3 = v2;
  if (v2)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMSetEnvironmentVariableWithAccessPolicy";
    v11 = 2048;
    v12 = v3;
    v13 = 1024;
    v14 = a1;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ACMGetEnvironmentVariable(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMGetEnvironmentVariable";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMGetEnvironmentVariable_Block(ioKitTransport, &v8, a1, a2);
  if (v4)
  {
    v5 = 70;
  }

  else
  {
    v5 = 10;
  }

  if (v5 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMGetEnvironmentVariable";
    v13 = 2048;
    v14 = v4;
    v15 = 1024;
    v16 = a1;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

void ACMGlobalContextCredentialGetProperty(int a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v7 = 0;
  LibCall_ACMGlobalContextCredentialGetProperty_Block(ioKitTransport, &v7, a1, a2, a3);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ACMContextCredentialGetProperty(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextCredentialGetProperty";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(buf, 0, sizeof(buf));
  v11 = 256;
  if (a4)
  {
    v10 = a1;
    v8 = LibCall_ACMContextCredentialGetProperty(ioKitTransport, &v10, a1, a2, a3, buf, &v11);
    (*(a4 + 16))(a4, v8, buf, v11);
  }

  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v12 = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextCredentialGetProperty";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", v12, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t ACMContextSetData(uint64_t a1, int a2, int a3, int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextSetData";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v12, 0x16u);
  }

  v8 = ACMContextSetDataEx(a1, a2, 0, 0, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextSetData";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v12, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t ACMContextSetDataEx(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = LibCall_ACMContextSetData(ioKitTransport, &v17, a1, a2, a3, a4, a5, a6, v16, a1, *buf, *&buf[8], *&buf[16], v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  if (v12)
  {
    v13 = 70;
  }

  else
  {
    v13 = 10;
  }

  if (v13 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    *&buf[22] = 2048;
    v19 = v12;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t ACMContextGetData(uint64_t a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetData";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v10, 0x16u);
  }

  Data = ACMContextGetDataEx(a1, a2, 0, 0, a3);
  if (Data)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetData";
    v14 = 2048;
    v15 = Data;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v10, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return Data;
}

uint64_t ACMContextGetDataProperty(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextGetDataProperty";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v12, 0x16u);
  }

  Data = ACMContextGetData(a1, a2 | (a3 << 16), a4);
  if (Data)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextGetDataProperty";
    v16 = 2048;
    v17 = Data;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v12, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return Data;
}

uint64_t ACMContextCopyData(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "ACMLib";
    v15 = 2080;
    v16 = "ACMContextCopyData";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = 0;
  v8 = LibCall_ACMContextCopyData(ioKitTransport, &v12, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v14 = "ACMLib";
    v15 = 2080;
    v16 = "ACMContextCopyData";
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t ACMContextGetInfo(__int128 *a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetInfo";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v10 = a1;
  v6 = LibCall_ACMContextGetInfo(ioKitTransport, &v10, a1, a2, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetInfo";
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

void updateLogLevelFromKext()
{
  v8 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "updateLogLevelFromKext";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(dword_1EB2AF11C, 2u, 0, 0, &output, &outputCnt))
  {
    goto LABEL_12;
  }

  v0 = output;
  _logLevel = output;
  if (output <= 0x1EuLL && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    updateLogLevelFromKext_cold_1();
LABEL_12:
    v0 = _logLevel;
  }

  if (v0 <= 0xA && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "updateLogLevelFromKext";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, size_t a5)
{

  return performCommand(a1, a2, 0, v5, a5, 0, 0);
}

uint64_t OUTLINED_FUNCTION_20()
{
  v3 = *(v2 + 8 * v1);
  v4 = *(v0 + 16);
  return v0;
}

void updateLogLevelFromKext_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_8_1();
  _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t LibCall_ACMContextDelete(void (*a1)(uint64_t, uint64_t, void, void *, uint64_t, void, void), uint64_t a2, void *a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextDelete");
  }

  if (a1 && a3)
  {
    if (a4)
    {
      a1(a2, 2, 0, a3, 16, 0, 0);
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    acm_mem_free_info("ACMHandleWithPayload", a3, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 172, "LibCall_ACMContextDelete");
    acm_mem_free(a3, 0x14uLL);
    v8 = 0;
    v9 = 10;
    goto LABEL_8;
  }

  v9 = 70;
  v8 = 4294967293;
LABEL_8:
  if (v9 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextDelete", v8);
  }

  return v8;
}

void *OUTLINED_FUNCTION_9_2()
{

  return acm_mem_alloc_typed(0x14uLL, 0x1000040A86A77D5uLL);
}

uint64_t OUTLINED_FUNCTION_29_0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = 0;
  v4 = *a3;
  return result;
}

void OUTLINED_FUNCTION_37()
{

  LibCall_ACMSetEnvironmentVariable();
}

uint64_t processAclCommandInternal(uint64_t (*a1)(uint64_t, void, void, void *, size_t, _DWORD *, unint64_t *), uint64_t a2, int a3, _OWORD *a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, const void *a9, unsigned int a10, unsigned int a11, _DWORD *a12, BOOL *a13, void *a14, unint64_t *a15)
{
  v19 = gACMLoggingLevel;
  v20 = "processAclCommandInternal";
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "processAclCommandInternal");
    v19 = gACMLoggingLevel;
  }

  if (v19 <= 0x14)
  {
    printf("%s: %s: command = %u.\n", "ACM", "processAclCommandInternal", a3);
    OUTLINED_FUNCTION_10_2();
    if (!(!v28 & v21))
    {
      printf("%s: %s: context = %p.\n", "ACM", "processAclCommandInternal", a4);
      OUTLINED_FUNCTION_10_2();
      if (!(!v28 & v21))
      {
        printf("%s: %s: acl = %p, aclLength = %zu.\n", "ACM", "processAclCommandInternal", a5, a6);
        OUTLINED_FUNCTION_10_2();
        if (!(!v28 & v21))
        {
          printf("%s: %s (len=%u): acl:", "ACM", "processAclCommandInternal", a6);
          v19 = gACMLoggingLevel;
        }
      }
    }
  }

  if (a6)
  {
    v22 = a6;
    v23 = a5;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v23);
        v19 = gACMLoggingLevel;
      }

      ++v23;
      --v22;
    }

    while (v22);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    OUTLINED_FUNCTION_10_2();
    if (!(!v28 & v21))
    {
      printf("%s: %s: operation = %p, operationLength = %zu.\n", "ACM", "processAclCommandInternal", a7, a8);
      OUTLINED_FUNCTION_10_2();
      if (!(!v28 & v21))
      {
        printf("%s: %s (len=%u): operation:", "ACM", "processAclCommandInternal", a8);
        v19 = gACMLoggingLevel;
      }
    }
  }

  v42 = a3;
  if (a8)
  {
    v24 = a8;
    v25 = a7;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v25);
        v19 = gACMLoggingLevel;
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    OUTLINED_FUNCTION_10_2();
    if (!(!v28 & v21))
    {
      printf("%s: %s: parameters = %p, parameterCount = %u.\n", "ACM", "processAclCommandInternal", a9, a10);
      OUTLINED_FUNCTION_10_2();
      if (!(!v28 & v21))
      {
        printf("%s: %s: maxGlobalCredentialAge = %u.\n", "ACM", "processAclCommandInternal", a11);
        OUTLINED_FUNCTION_10_2();
        if (!(!v28 & v21))
        {
          printf("%s: %s: constraintState = %p.\n", "ACM", "processAclCommandInternal", a12);
          OUTLINED_FUNCTION_10_2();
          if (!(!v28 & v21))
          {
            printf("%s: %s: requirePasscode = %p.\n", "ACM", "processAclCommandInternal", a13);
          }
        }
      }
    }
  }

  if (a7 || a9 || a12)
  {
    if (a5)
    {
      v28 = a6 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = v28;
    OUTLINED_FUNCTION_31_0();
    if (!a7)
    {
      goto LABEL_79;
    }

    if (!a8)
    {
      goto LABEL_79;
    }

    if (v29)
    {
      goto LABEL_79;
    }

    v20 = 4294967293;
    if ((a9 != 0) == (a10 == 0) || !a12)
    {
      goto LABEL_79;
    }

    v48 = 0;
    v47 = 4096;
    if (gACMLoggingLevel <= 0xAu)
    {
      printf("%s: %s: called.\n", "ACM", "processAclInternal");
    }

    SerializedProcessAclSize = GetSerializedProcessAclSize(a4, a5, a6, a7, a8, a11, a9, a10, &v48);
    if (SerializedProcessAclSize)
    {
      v20 = SerializedProcessAclSize;
      v40 = 70;
      goto LABEL_74;
    }

    v31 = v48;
    v32 = acm_mem_alloc_data(v48);
    acm_mem_alloc_info("<data>", v32, v31, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1841, "processAclInternal");
    if (!v32)
    {
      v40 = 70;
      v20 = 4294967292;
      goto LABEL_74;
    }

    v47 = 4096;
    v33 = acm_mem_alloc_data(0x1000uLL);
    acm_mem_alloc_info("<data>", v33, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1845, "processAclInternal");
    if (!v33)
    {
      v37 = 0;
      v36 = 0;
      v20 = 4294967292;
      goto LABEL_68;
    }

    v34 = SerializeProcessAcl(a4, a5, a6, a7, a8, a11, a9, a10, v32, &v48);
    if (v34 || (v34 = a1(a2, v42, 0, v32, v48, v33, &v47), v34))
    {
      v20 = v34;
      v36 = 0;
      v37 = 0;
      goto LABEL_67;
    }

    v35 = v47;
    if (v47 >= 8)
    {
      *a12 = *v33;
      if (a13)
      {
        *a13 = v33[1] != 0;
      }

      v20 = 0;
      v36 = 0;
      if (v42 != 30 || !a14)
      {
        v37 = 0;
        goto LABEL_67;
      }

      v37 = 0;
      if (!a15)
      {
LABEL_67:
        acm_mem_free_info("<data>", v33, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1882, "processAclInternal");
        acm_mem_free_data(v33, 0x1000uLL);
LABEL_68:
        acm_mem_free_info("<data>", v32, v48, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1886, "processAclInternal");
        v38 = OUTLINED_FUNCTION_18_1();
        acm_mem_free_data(v38, v39);
        if (v20 && v37)
        {
          acm_mem_free_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1890, "processAclInternal");
          acm_mem_free_data(v37, v36);
          v40 = 70;
        }

        else if (v20)
        {
          v40 = 70;
        }

        else
        {
          v40 = 10;
        }

LABEL_74:
        if (v40 >= gACMLoggingLevel)
        {
          printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclInternal", v20);
        }

        goto LABEL_76;
      }

      if (v35 >= 0xC)
      {
        v36 = v33[2];
        if (v36)
        {
          if (v35 >= v36 + 12)
          {
            v37 = acm_mem_alloc_data(v33[2]);
            acm_mem_alloc_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1870, "processAclInternal");
            if (v37)
            {
              memcpy(v37, v33 + 3, v36);
              v20 = 0;
              *a14 = v37;
              *a15 = v36;
            }

            else
            {
              v20 = 4294967292;
            }

            goto LABEL_67;
          }

          goto LABEL_84;
        }

        v36 = 0;
        v37 = 0;
        v20 = 0;
        goto LABEL_67;
      }
    }

    v36 = 0;
LABEL_84:
    v37 = 0;
    v20 = 4294967291;
    goto LABEL_67;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_31_0();
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_31_0();
  if (a5 && a13 && a6)
  {
    aclRequiresPasscodeInternal();
    v20 = v27;
LABEL_76:
    if (v20)
    {
      v26 = 70;
    }

    else
    {
      v26 = 10;
    }
  }

LABEL_79:
  if (v26 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclCommandInternal", v20);
  }

  return v20;
}

void aclRequiresPasscodeInternal()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v17 = 4;
  v10 = v2;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v16 - ((v10 + 19) & 0x1FFFFFFF0));
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "aclRequiresPasscodeInternal");
  }

  bzero(&v16 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4);
  v12 = -3;
  if (v5 && v1)
  {
    *v11 = v3;
    memcpy(v11 + 1, v5, v10);
    v13 = v9(v7, 17, 0, &v16 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4, &v18, &v17);
    if (v13)
    {
      v12 = v13;
    }

    else if (v17 == 4)
    {
      v12 = 0;
      *v1 = 1;
    }

    else
    {
      v12 = -5;
    }
  }

  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "aclRequiresPasscodeInternal", v12);
  }

  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();
}

uint64_t lib_platform_rng()
{
  v0 = ccrng();
  REQUIRE_func(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  REQUIRE_func(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t lib_platform_read_random(uint64_t a1, unsigned int a2)
{
  v4 = platform_rng();
  v5 = (*v4)(v4, a2, a1) == 0;

  return REQUIRE_func(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

uint64_t rfc3394_wrap(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v48 = a1;
  v49 = a3;
  v52 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  v15 = *v14 + 15;
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v41 - v16;
  bzero(&v41 - v16, v16);
  v17 = v14[1] + 15;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  bzero(&v41 - v19, v19);
  v21 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v43 = &v41;
  v44 = a8;
  v45 = a6;
  v42 = a7;
  if (!a4)
  {
    v22 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v22 || !a8 || *a8 < a6 + 8)
    {
      rfc3394_wrap_cold_1(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v44 >= v45 + 8)
  {
LABEL_15:
    v23 = v45 >> 3;
    if (v45 >> 3 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v25 = 8;
    v26 = v24;
    do
    {
      v27 = *a5++;
      *(__s + v25) = v27;
      v25 += 16;
      --v26;
    }

    while (v26);
    v28 = 0;
    *&__s[0] = v49;
    v29 = 1;
    v46 = v23;
    v47 = v24;
    do
    {
      v48 = v29;
      v49 = v28;
      v30 = __s;
      v31 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &firebloom_null_iv, v30, v30, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v32 = v14[1];
          cccbc_clear_iv();
          firebloom_cbc_update_f(v14, v50, v20, 0x10uLL);
        }

        v33 = *v30;
        v30 += 2;
        *&__s[v31 % v23] = v33 ^ bswap64(v29++);
        ++v31;
        --v24;
      }

      while (v24);
      v28 = v49 + 1;
      v24 = v47;
      v29 = v48 + v46;
    }

    while (v49 != 5);
    v34 = v42;
    *v42 = *&__s[0];
    v35 = v34 + 1;
    v36 = __s + 1;
    do
    {
      v37 = *v36;
      v36 += 2;
      *v35++ = v37;
      --v24;
    }

    while (v24);
    v21 = 0;
    *v44 = (v45 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      goto LABEL_33;
    }

LABEL_32:
    v38 = *v14;
    cc_clear();
    goto LABEL_33;
  }

LABEL_6:
  rfc3394_wrap_cold_1(__s);
  v21 = 0xFFFFFFFFLL;
LABEL_33:
  v39 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t rfc3394_wrap_legacy(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = rfc3394_wrap(a1, a2, a3, a4, a5, a6, a7, &v11);
  REQUIRE_func(HIDWORD(v11) == 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

uint64_t rfc3394_unwrap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unint64_t a6, void *a7, void *a8)
{
  v45 = a3;
  v51 = a1;
  v54 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_decrypt_mode();
  v15 = *v14 + 15;
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v43 - v16;
  bzero(&v43 - v16, v16);
  v17 = v14[1] + 15;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  bzero(&v43 - v19, v19);
  v21 = 0xFFFFFFFFLL;
  if (HIDWORD(a6))
  {
    goto LABEL_33;
  }

  v50 = a6;
  v22 = a6 >> 3;
  if (v22 - 6 < 0xFFFFFFFC)
  {
    goto LABEL_33;
  }

  v46 = &v43;
  v47 = a8;
  v44 = a7;
  if (!a4)
  {
    v23 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v23 || !a8 || *a8 < v50 - 8)
    {
      rfc3394_wrap_cold_1(__s);
      goto LABEL_34;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v47 >= v50 - 8)
  {
LABEL_15:
    *&__s[0] = *a5;
    v24 = v22 - 1;
    if (v22 != 1)
    {
      v25 = __s + 1;
      v26 = a5 + 1;
      v27 = v22 - 1;
      do
      {
        v28 = *v26++;
        *v25 = v28;
        v25 += 2;
        --v27;
      }

      while (v27);
    }

    v29 = 6 * v22 - 6;
    v49 = 1 - v22;
    v30 = 5;
    v48 = &__s[v22 - 2];
    do
    {
      LODWORD(v51) = v30;
      if (v50 >= 0x10)
      {
        v31 = v48;
        v32 = v22 - 1;
        v33 = v29;
        do
        {
          *v31 = *&__s[v32 % v24] ^ bswap64(v33);
          if (a4)
          {
            if ((a4(0, &firebloom_null_iv, v31, v31, 16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v34 = v14[1];
            cccbc_clear_iv();
            firebloom_cbc_update_f(v14, v52, v20, 0x10uLL);
          }

          --v33;
          v31 -= 2;
          v35 = __OFSUB__(v32--, 1);
        }

        while (!((v32 < 0) ^ v35 | (v32 == 0)));
      }

      v30 = v51 - 1;
      v29 += v49;
    }

    while (v51);
    if (*&__s[0] == v45)
    {
      v36 = v44;
      if (v22 != 1)
      {
        v37 = __s + 1;
        v38 = v22 - 1;
        do
        {
          v39 = *v37;
          v37 += 2;
          *v36++ = v39;
          --v38;
        }

        while (v38);
      }

      v21 = 0;
      *v47 = 8 * v24;
    }

    else
    {
      v21 = 0xFFFFFFFFLL;
    }

LABEL_33:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      goto LABEL_35;
    }

LABEL_34:
    v40 = *v14;
    cc_clear();
    goto LABEL_35;
  }

LABEL_6:
  rfc3394_wrap_cold_1(__s);
  v21 = 0xFFFFFFFFLL;
LABEL_35:
  v41 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t rfc3394_unwrap_legacy(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = rfc3394_unwrap(a1, a2, a3, a4, a5, a6, a7, &v11);
  REQUIRE_func(HIDWORD(v11) == 0, 261, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

BOOL rfc3394_unwrapped_size_legacy(unsigned int a1, unsigned int *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

BOOL rfc3394_unwrapped_size(unint64_t a1, unint64_t *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153);
  return get_aks_client_connection_connection;
}

uint64_t aks_delete_xart_leak(unsigned int a1, const void *a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x6Cu, input, 1u, a2, 0x10uLL, 0, 0, 0, 0);
  }

  else
  {
    aks_delete_xart_leak_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

char *_iterate_path(char *result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6[0] = result;
    v6[1] = 0;
    result = fts_open(v6, 84, 0);
    if (result)
    {
      result = _iterate_path_cold_1(result, a2, a3);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

char *aks_dump_path(char *result, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    bzero(v9, 0x400uLL);
    result = realpath_DARWIN_EXTSN(v3, v9);
    if (result)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = __aks_dump_path_block_invoke;
      v7[3] = &__block_descriptor_tmp;
      v8 = a2;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v5[2] = __aks_dump_path_block_invoke_2;
      v5[3] = &__block_descriptor_tmp_128;
      v6 = a2;
      result = _iterate_path(v9, v7, v5);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __aks_dump_path_block_invoke(uint64_t a1, uint64_t a2)
{
  path_class = _get_path_class(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || path_class == v5)
  {
    printf(" dir: %s %i\n", *(a2 + 48), path_class);
  }

  return 1;
}

uint64_t aks_fs_supports_enhanced_apfs()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = IORegistryEntryFromPath(*MEMORY[0x1E696CD68], "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", *MEMORY[0x1E695E480], 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  __len = 1023;
  bzero(__big, 0x400uLL);
  if ((_aks_check_apfs_shared_datavolume_bootarg_init & 1) == 0)
  {
    if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
    {
      _aks_check_apfs_shared_datavolume_bootarg_value = 1;
    }

    _aks_check_apfs_shared_datavolume_bootarg_init = 1;
  }

  v4 = _aks_check_apfs_shared_datavolume_bootarg_value;
  fprintf(*MEMORY[0x1E69E9858], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s ioreg: %d, boot_arg: %d%s\n", "aks", "", -1, "", "", "", "", "aks_fs_supports_enhanced_apfs", ":", 438, "", v3, _aks_check_apfs_shared_datavolume_bootarg_value, "");
  v5 = *MEMORY[0x1E69E9840];
  return v3 | v4;
}

void aks_fs_status_with_map(const char *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  memset(&v8, 0, sizeof(v8));
  if (a3)
  {
    v6 = (a2 + 16);
    do
    {
      snprintf(__str, 0x400uLL, "%s%s", a1, *(v6 - 2));
      if (stat(__str, &v8))
      {
        printf("stat failed: %s\n");
      }

      else
      {
        _get_path_class(__str);
        *v6;
        printf("%s: mode=%o, u/g=%i:%i class=%i%s\n");
      }

      v6 += 6;
      --a3;
    }

    while (a3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t aks_show_allowlist()
{
  puts("shared allow list:");
  v0 = &byte_1E77D3608;
  v1 = 36;
  do
  {
    if (*v0)
    {
      printf("%s%s\n", "<var>", *(v0 - 2));
    }

    v0 += 48;
    --v1;
  }

  while (v1);
  result = puts("user allow list:");
  v3 = &byte_1E77D3CC8;
  v4 = 72;
  do
  {
    if (*v3)
    {
      result = printf("%s%s\n", "<user>", *(v3 - 2));
    }

    v3 += 48;
    --v4;
  }

  while (v4);
  return result;
}

void aks_gather_stats(const char *a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(&v14, 0x878uLL);
    bzero(v13, 0x400uLL);
    if (realpath_DARWIN_EXTSN(a1, v13))
    {
      v4 = malloc(0x818uLL);
      memset_s(v4, 0x818uLL, 0, 0x818uLL);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __aks_gather_stats_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_141;
      v12[4] = v4;
      _iterate_path(v13, &__block_literal_global_53, v12);
      if (!statfs(v13, &v14))
      {
        if (a2)
        {
          printf("Free Blocks:%lld blocks of size:%d\n");
        }

        else
        {
          printf("%lld,%d\n");
        }
      }

      v5 = v4 + 340;
      for (i = 1; i != 5; ++i)
      {
        if (a2)
        {
          v9 = &v4[296 * i];
          printf("%s:\n\tNum files:\t%u,\n\tNum hardlinks:\t%u,\n\tNum compressed:\t%u,\n\tTotal Size:\t%lld,\n\tMin File Size:\t%lld,\n\tMax File Size:\t%lld,\n", class_names[i], *v9, *(v9 + 2), *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4));
          printf("\tSize Distribution:");
          printf("%i", *(v9 + 10));
          for (j = 0; j != 252; j += 4)
          {
            putchar(44);
            printf("%i", *&v5[j]);
          }
        }

        else
        {
          v7 = &v4[296 * i];
          printf("%i,%u,%u,%u,%lld,%lld,%lld,", i, *v7, *(v7 + 2), *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4));
          printf("%i", *(v7 + 10));
          for (k = 0; k != 252; k += 4)
          {
            putchar(44);
            printf("%i", *&v5[k]);
          }
        }

        putchar(10);
        v5 += 296;
      }

      free(v4);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t aks_kext_set_options(unsigned int a1, uint64_t a2)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = 1;
  input[1] = a1;
  input[2] = a2;
  output = 0;
  outputCnt = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
  }

  else
  {
    aks_kext_set_options_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_internal_state()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x10u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_internal_state_cold_1();
  return 3758097084;
}

uint64_t aks_run_internal_test(unsigned int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x86u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_run_internal_test_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __get_aks_client_connection_block_invoke()
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t get_akstest_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_156);
  return get_akstest_client_connection_connection;
}

void __get_akstest_client_connection_block_invoke()
{
  if (!get_akstest_client_connection_connection)
  {
    get_akstest_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStoreTest", "AppleKeyStoreTest");
  }
}

uint64_t akstest_new_ek(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, size_t *a8)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a3;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 2, a4, a5, a6, a7, a8, a2);
  v11 = IOConnectCallMethod(a1, 0x14u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, a7, a8);
  free(*&inputStructCnt[1]);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t akstest_check_class(mach_port_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a3;
  result = IOConnectCallMethod(a1, 0x11u, input, 1u, inputStruct, 0x10uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t akstest_last_user(mach_port_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 1, a4, a5, a6, a7, a8, a3);
  v9 = IOConnectCallMethod(a1, 0x12u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

dispatch_queue_t __get_aks_client_dispatch_queue_block_invoke()
{
  result = dispatch_queue_create("aks-client-queue", 0);
  get_aks_client_dispatch_queue_connection_queue = result;
  return result;
}

uint64_t _copy_aks_client_connection(char *path, const char *a2)
{
  connect = 0;
  v3 = *MEMORY[0x1E696CD68];
  v4 = IORegistryEntryFromPath(*MEMORY[0x1E696CD68], path);
  v5 = MEMORY[0x1E69E9A60];
  if (!v4 || (v6 = v4, v7 = IOServiceOpen(v4, *MEMORY[0x1E69E9A60], 0, &connect), IOObjectRelease(v6), v7))
  {
    v8 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(v3, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      IOServiceOpen(MatchingService, *v5, 0, &connect);
      IOObjectRelease(v10);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t OUTLINED_FUNCTION_1_5(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_3_4(void *a1)
{

  return memset_s(a1, 0x1000uLL, 0, 0x1000uLL);
}

uint64_t OUTLINED_FUNCTION_7_3(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

uint64_t sizeof_backup_bag(uint64_t *a1)
{
  v2 = a1[10];
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_raw_octet_string();
  ccder_sizeof_raw_octet_string();
  v3 = *a1;
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t aks_stash_verify(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  if (!a2)
  {
    return _aks_stash_load(a1, 1, &v4);
  }

  *a2 = 0;
  result = _aks_stash_load(a1, 1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t aks_stash_destroy()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x25u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_stash_destroy_cold_1();
  return 3758097084;
}

uint64_t aks_stash_commit(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x24u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_commit_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_stash_enable(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x33u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_enable_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_stash_persist(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x35u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_persist_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_invalidate_sync_bags()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x42u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_invalidate_sync_bags_cold_1();
  return 3758097084;
}

uint64_t aks_unload_bag(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 4u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unload_bag_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_unload_session_bags(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x37u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unload_session_bags_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_change_secret_with_kek(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, unsigned __int8 a10, unsigned int a11, int a12, _DWORD *a13, void **a14)
{
  input[12] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a11;
    input[2] = a10;
    input[3] = a2;
    input[4] = a3;
    input[5] = a4;
    input[6] = a5;
    input[7] = a6;
    input[8] = a7;
    input[9] = a8;
    input[10] = a9;
    input[11] = a12 & 0xFFFFFFF7 | (8 * (a14 != 0));
    output = 0;
    outputCnt = 1;
    if (a14)
    {
      outputStruct = *a14;
    }

    else
    {
      outputStruct = 0;
    }

    if (a14)
    {
      v24 = (a14 + 1);
    }

    else
    {
      v24 = 0;
    }

    result = IOConnectCallMethod(aks_client_connection, 0xFu, input, 0xCu, 0, 0, &output, &outputCnt, outputStruct, v24);
    if (a13 && !result)
    {
      *a13 = output;
    }
  }

  else
  {
    aks_change_secret_with_kek_cold_1();
    result = 3758097084;
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_lock_bag(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0xDu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_bag_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _aks_unlock_bag(int a1, uint64_t a2, int a3, unsigned int a4)
{
  input[4] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    result = IOConnectCallMethod(aks_client_connection, 0xCu, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_unlock_bag_cold_1();
    result = 3758097084;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _aks_set_system_with_passcode(int a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  input[5] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    input[4] = a5;
    result = IOConnectCallMethod(aks_client_connection, 5u, input, 5u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_set_system_with_passcode_cold_1();
    result = 3758097084;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_backup_unwrap_key(_OWORD *a1, void *a2, unsigned int a3, void *a4, void *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(&v13[16], 0, 112);
  *v13 = 0u;
  v6 = a1[1];
  *&v13[4] = *a1;
  *&v13[20] = v6;
  v7 = a1[3];
  *&v13[36] = a1[2];
  v14 = 0;
  *&v13[52] = v7;
  v11 = *a5;
  __s = 1;
  v8 = unwrap_data(&__s, 0, 0, a2, a3, a4, &v11);
  *a5 = v11;
  memset_s(&__s, 0x88uLL, 0, 0x88uLL);
  result = err_sks_to_aks(v8);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void _set_cf_key(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (CFNumberGetTypeID() == a3)
    {
      valuePtr = der_get_number();
      v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      if (!v7)
      {
        return;
      }

      v8 = v7;
      CFDictionaryAddValue(a1, a2, v7);
      goto LABEL_5;
    }

    if (CFBooleanGetTypeID() == a3)
    {
      v9 = der_get_BOOL();
      v10 = MEMORY[0x1E695E4D0];
      if (!v9)
      {
        v10 = MEMORY[0x1E695E4C0];
      }

      v11 = *v10;

      CFDictionaryAddValue(a1, a2, v11);
    }

    else if (CFDataGetTypeID() == a3)
    {
      valuePtr = 0;
      v12 = ccder_decode_tl();
      if (v12)
      {
        v8 = CFDataCreate(*MEMORY[0x1E695E480], v12, valuePtr);
        CFDictionaryAddValue(a1, a2, v8);
        if (v8)
        {
LABEL_5:
          CFRelease(v8);
        }
      }
    }
  }
}

uint64_t aks_assert_hold(int a1, unsigned int a2, uint64_t a3)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  input[2] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x1Au, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_hold_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_assert_drop(int a1, unsigned int a2)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x1Bu, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_drop_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_assert_promote(int a1, unsigned int a2)
{
  input[2] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a2;
    input[1] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x64u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_promote_cold_1();
    result = 3758097084;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_oneness_heartbeat(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x91u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_oneness_heartbeat_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_assert_consume(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x65u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_consume_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _aks_recover_with_escrow_bag(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  input[4] = *MEMORY[0x1E69E9840];
  v23 = 0;
  v22 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v17 = aks_client_connection;
    aks_pack_data(&v23, &v22, 3, v12, v13, v14, v15, v16, a2);
    input[0] = a1;
    input[1] = v23;
    input[2] = v22;
    input[3] = a8;
    v18 = IOConnectCallMethod(v17, 0x12u, input, 4u, 0, 0, 0, 0, 0, 0);
    v19 = v23;
  }

  else
  {
    _aks_recover_with_escrow_bag_cold_1();
    v19 = 0;
    v18 = 3758097084;
  }

  free(v19);
  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t aks_generation(int a1, unsigned int a2, _DWORD *a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    output = 0;
    outputCnt = 1;
    result = IOConnectCallMethod(aks_client_connection, 0x28u, input, 2u, 0, 0, &output, &outputCnt, 0, 0);
    if (a3 && !result)
    {
      *a3 = output;
    }
  }

  else
  {
    aks_generation_cold_1();
    result = 3758097084;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_verify_password_with_opts(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a1)
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 1;
  }

  else
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 0;
  }

  return _aks_verify_password(v41, v42, v43, v44, v45, v46, v47, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t aks_register_for_notifications()
{
  if (get_aks_client_connection())
  {

    JUMPOUT(0x1AC55E9B0);
  }

  aks_register_for_notifications_cold_1();
  return 3758097084;
}

uint64_t aks_clear_backup_bag(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x16u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_clear_backup_bag_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_remote_reset_all_peers(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0xA2u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_remote_reset_all_peers_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_remote_peer_drop(int a1, const void *a2, size_t a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x3Au, input, 1u, a2, a3, 0, 0, 0, 0);
  }

  else
  {
    aks_remote_peer_drop_cold_1();
    result = 3758097084;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_lock_device(int a1, int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 8;
    }

    result = IOConnectCallMethod(aks_client_connection, v4, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_device_cold_1();
    result = 3758097084;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_lock_cx(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x8Du, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_cx_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_unlock_device(int a1, uint64_t a2, int a3)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unlock_device_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_unlock_device_with_acm(int a1, uint64_t a2, int a3)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unlock_device_with_acm_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_unlock_device_with_opts(int a1, int a2, uint64_t a3, int a4)
{
  if (a1)
  {
    return aks_unlock_device_with_acm(a2, a3, a4);
  }

  else
  {
    return aks_unlock_device(a2, a3, a4);
  }
}

uint64_t aks_obliterate_class_d()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x13u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_obliterate_class_d_cold_1();
  return 3758097084;
}

uint64_t aks_migrate_s_key(int a1, unsigned int a2, uint64_t a3, unsigned int a4, const void *a5, int a6)
{
  input[4] = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    result = IOConnectCallMethod(aks_client_connection, 0x3Fu, input, 4u, a5, a6, 0, 0, 0, 0);
  }

  else
  {
    aks_migrate_s_key_cold_1();
    result = 3758097084;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_smartcard_unregister(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x3Cu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_smartcard_unregister_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_fail(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x47u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_fail_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_set_healthy(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x49u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_set_healthy_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __aks_se_set_secret(int a1, uint64_t a2, uint64_t a3, uint32_t a4)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, a4, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    __aks_se_set_secret_cold_1();
    result = 3758097084;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_recover(int a1, uint64_t a2, uint64_t a3)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_recover_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_recover_with_acm(int a1, uint64_t a2, uint64_t a3)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_recover_with_acm_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_recover_with_opts(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return aks_se_recover_with_acm(a2, a3, a4);
  }

  else
  {
    return aks_se_recover(a2, a3, a4);
  }
}

uint64_t _aks_change_secret_epilogue(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = a4;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x69u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_change_secret_epilogue_cold_1();
    result = 3758097084;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_set_nonce(int a1, const void *a2, size_t a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a2)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    result = IOConnectCallMethod(aks_client_connection, 0x58u, input, 1u, a2, v6, 0, 0, 0, 0);
  }

  else
  {
    aks_se_set_nonce_cold_1();
    result = 3758097084;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_delete_reset_token(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x5Bu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_delete_reset_token_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_support_in_rm(unsigned int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x5Eu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_support_in_rm_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_support_in_rm_is_set(BOOL *a1)
{
  output[1] = *MEMORY[0x1E69E9840];
  output[0] = 0;
  outputCnt = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x6Bu, 0, 0, 0, 0, output, &outputCnt, 0, 0);
    if (a1 && !result)
    {
      *a1 = output[0] != 0;
    }
  }

  else
  {
    aks_se_support_in_rm_is_set_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_stage_stash()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Fu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_se_stage_stash_cold_1();
  return 3758097084;
}

uint64_t aks_enable_cache_flow(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0xA0u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_enable_cache_flow_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_fv_stash_kek_with_secret(int a1)
{
  v1 = 8;
  if (a1)
  {
    v1 = 12;
  }

  v5 = v1;
  aks_fv_set_protection();
  v3 = v2;
  syslog(6, "aks_fv_prot_cmd_stash_kek(%llu) = %d", v5, v2);
  return v3;
}

uint64_t aks_fv_commit_stashed_kek()
{
  aks_fv_set_protection();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_commit = %d", v0);
  return v1;
}

uint64_t aks_fv_destroy_stashed_kek()
{
  aks_fv_set_protection();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_destroy = %d", v0);
  return v1;
}

uint64_t aks_drop_auxiliary_auth_by_uid(unsigned int a1)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = 0;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_drop_auxiliary_auth_by_uid_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_drop_auxiliary_auth_by_handle(int a1)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = 1;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_drop_auxiliary_auth_by_handle_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_lower_iteration_count()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_lower_iteration_count_cold_1();
  return 3758097084;
}

uint64_t aks_reset_iteration_count()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_reset_iteration_count_cold_1();
  return 3758097084;
}

uint64_t aks_se_secret_drop(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x6Au, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_secret_drop_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_se_memento_secret_drop(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x9Cu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_memento_secret_drop_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_prewarm_sps()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x73u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_prewarm_sps_cold_1();
  return 3758097084;
}

uint64_t aks_measure_and_seal_cryptex_manifest(const void *a1, size_t a2)
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x90u, 0, 0, a1, a2, 0, 0, 0, 0);
  }

  aks_measure_and_seal_cryptex_manifest_cold_1();
  return 3758097084;
}

uint64_t aks_seal_cryptex_manifest_lock()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x95u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_seal_cryptex_manifest_lock_cold_1();
  return 3758097084;
}

uint64_t aks_lkgp_recover(int a1, uint64_t a2, uint64_t a3)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x85u, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lkgp_recover_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_memento_efface_blob(int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x8Au, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_memento_efface_blob_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_set_jcop_supports_updated_kud_policy()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x89u, &input, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_set_jcop_supports_updated_kud_policy_cold_1();
  return 3758097084;
}

uint64_t aks_set_cx_window(uint64_t a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x97u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_set_cx_window_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_5(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

void OUTLINED_FUNCTION_8_4()
{
  *(v1 - 56) = 0;
  *(v1 - 48) = v0;
  *(v1 - 60) = 1;
}

uint64_t OUTLINED_FUNCTION_16_3(mach_port_t a1, uint32_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, 0, 0, a5, a6, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_18_3(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_19_2(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_23_1(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

void OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  bzero(va, 0x8000uLL);
}

uint64_t OUTLINED_FUNCTION_35_0(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

uint64_t OUTLINED_FUNCTION_37_0(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void OUTLINED_FUNCTION_39(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 - 104);
  *(v16 - 96) = a1;
  *(v16 - 88) = v17;
  *(v16 - 80) = a16;
}

uint64_t OUTLINED_FUNCTION_52(void *a1)
{

  return memset_s(a1, 0x4000uLL, 0, 0x4000uLL);
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memset_s(&a9, 0x58uLL, 0, 0x58uLL);
}

void *OUTLINED_FUNCTION_71(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t __n, uint64_t a22, uint64_t a23, char __src)
{

  return memcpy(a1, &__src, __n);
}

void OUTLINED_FUNCTION_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  bzero(va, 0x1000uLL);
}

const char *set_akslog_context(const char *__format, ...)
{
  va_start(va, __format);
  if (__format)
  {
    return vsnprintf(&_akslog_context, 0x20uLL, __format, va);
  }

  _akslog_context = 0;
  return __format;
}

uint64_t compress_uuid()
{
  v2 = *MEMORY[0x1E69E9840];
  ccsha256_di();
  ccdigest();
  result = 0;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t time_seconds_to_abs_interval(unsigned int a1)
{
  info = 0;
  mach_timebase_info(&info);
  return 1000000000 * info.denom * a1 / info.numer;
}

unint64_t time_absolute_to_nanoseconds(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return info.numer * a1 / info.denom;
}

uint64_t get_usec_time()
{
  info = 0;
  mach_timebase_info(&info);
  return mach_continuous_time() * info.numer / info.denom / 0x3E8;
}

__darwin_time_t get_clock_time()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec;
}

void *circular_queue_init(unsigned int a1, unsigned int a2)
{
  v2 = a1 + 1;
  if (v2 == v2 << 31 >> 31)
  {
    v4 = calloc(0x20uLL, 1uLL);
    v5 = v4;
    if (v4)
    {
      v4[1] = 0;
      *v4 = a2;
      *(v4 + 1) = v2;
      v6 = calloc(v2 * a2, 1uLL);
      v5[2] = v2 * a2;
      v5[3] = v6;
    }
  }

  else
  {
    circular_queue_init_cold_1();
    return 0;
  }

  return v5;
}

uint64_t circular_queue_size(_DWORD *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  result = v2 - v3;
  if (v2 < v3)
  {
    return (result + a1[1]);
  }

  return result;
}

uint64_t circular_queue_enqueue(unsigned int *a1, const void *a2)
{
  v3 = a1[3];
  v4 = (v3 + 1) % a1[1];
  memcpy((*(a1 + 3) + *a1 * v3), a2, *a1);
  a1[3] = v4;
  if (v4 == a1[2])
  {
    a1[2] = (v4 + 1) % a1[1];
  }

  return 0;
}

uint64_t circular_queue_dequeue(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  if (__dst)
  {
    memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
    v2 = a1[2];
  }

  memset_s((*(a1 + 3) + *a1 * v2), *a1, 0, *a1);
  result = 0;
  a1[2] = (a1[2] + 1) % a1[1];
  return result;
}

uint64_t circular_queue_peek(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
  return 0;
}

uint64_t circular_queue_dequeue_all(int *a1, void *a2, unsigned int *a3)
{
  v7 = a1[2];
  v6 = a1[3];
  v8 = v6 - v7;
  if (v6 < v7)
  {
    v8 += a1[1];
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *a1 * v8;
  v10 = calloc(v9, 1uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v12 = a1[2];
  v13 = a1[3];
  if (v13 <= v12)
  {
    if (v12 <= v13)
    {
      goto LABEL_13;
    }

    v17 = a1[1] - v12;
    memcpy(v10, (*(a1 + 3) + *a1 * v12), *a1 * v17);
    if (v8 <= v17)
    {
      goto LABEL_13;
    }

    v15 = *(a1 + 3);
    v14 = *a1 * (v8 - v17);
    v10 = &v11[*a1 * v17];
  }

  else
  {
    v14 = *a1 * v8;
    v15 = (*(a1 + 3) + *a1 * v12);
  }

  memcpy(v10, v15, v14);
LABEL_13:
  v18 = a1[1];
  v19 = *a1;
  a1[2] = (a1[2] + v8) % v18;
  memset_s(*(a1 + 3), v19 * v18, 0, v19 * v18);
  result = 0;
  *a2 = v11;
  *a3 = v9;
  return result;
}

uint64_t circular_queue_clear(uint64_t a1)
{
  *(a1 + 8) = 0;
  v1 = (*a1 * *(a1 + 4));
  return memset_s(*(a1 + 24), v1, 0, v1);
}

void circular_queue_free(void *a1)
{
  *(a1 + 1) = 0;
  v2 = (*a1 * *(a1 + 1));
  memset_s(*(a1 + 3), v2, 0, v2);
  memset_s(*(a1 + 3), *(a1 + 2), 0, *(a1 + 2));
  free(*(a1 + 3));
  memset_s(a1, 0x20uLL, 0, 0x20uLL);

  free(a1);
}

BOOL persona_uuid_is_valid(uint8x16_t *a1)
{
  v1 = vmovl_high_u8(*a1);
  v2 = vmovl_u8(*a1->i8);
  v3 = vmovl_u16(vorr_s8(vorr_s8(*v2.i8, *v1.i8), vorr_s8(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v1, v1, 8uLL))));
  return vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) != 0;
}

BOOL is_non_zero(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1++;
    v2 |= v3;
    --a2;
  }

  while (a2);
  return v2 != 0;
}

_DWORD *pfk_params_is_valid(_DWORD *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t class_id_get(char a1)
{
  if ((a1 & 0x1Fu) > 0x14)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 & 0x1F;
  }
}

uint64_t dump_bytes_internal(const char *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v26 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__str = 0u;
  v18 = 0u;
  v5 = MEMORY[0x1E69E9858];
  if (a3 >= 0x41)
  {
    fprintf(*MEMORY[0x1E69E9858], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sdump %s (len = %zd)%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 844, "", "", a1, a3, "", "");
    v4 = "";
  }

  else if (!a3)
  {
    goto LABEL_16;
  }

  v6 = 0;
  v16 = v3;
  do
  {
    v7 = v5;
    if (v3 - v6 >= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v3 - v6;
    }

    if (v3 != v6)
    {
      v9 = (a2 + v6);
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = __str;
      do
      {
        v12 = *v9++;
        snprintf(v11, 3uLL, "%02x", v12);
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    v5 = v7;
    fprintf(*v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s%s%s[%04zu,%04zu): %s%s%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 854, "", "", v4, "", v6, v8 + v6, "", __str, "", "");
    v6 += v8;
    v3 = v16;
  }

  while (v6 < v16);
LABEL_16:
  result = memset_s(__str, 0x81uLL, 0, 0x81uLL);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *bytes_to_str_hint(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v4 = bytes_to_str_hint_buf;
    v5 = v2;
    do
    {
      v6 = *a1++;
      snprintf(v4, 3uLL, "%02x", v6);
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  bytes_to_str_hint_buf[2 * v2] = 0;
  return bytes_to_str_hint_buf;
}

char *byte_swap_val(char *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = a2 >> 1;
    v3 = &result[a2 - 1];
    do
    {
      v4 = *result;
      *result++ = *v3;
      *v3-- = v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t err_sks_to_aks(uint64_t result)
{
  if (result == 0 || result >= 0xFFFFFFDA)
  {
    return dword_1A7A63320[(result + 38)];
  }

  return result;
}

uint64_t REQUIRE_func(uint64_t result, int a2, const char *a3)
{
  if ((result & 1) == 0)
  {
    fprintf(*MEMORY[0x1E69E9858], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", "aks", "", -1, "", "", "", "", "REQUIRE_func", ":", 1134, "", a3, a2, "");
    abort();
  }

  return result;
}

uint64_t generate_wrapping_key_curve25519(__int128 *a1, __int128 *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, sizeof(v16));
  platform_read_random(v16, 0x20u);
  v4 = cccurve25519_make_pub() == 0;
  REQUIRE_func(v4, 58, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
  v10 = 0u;
  v11 = 0u;
  __s = 0x1000000;
  v5 = a2[1];
  v12 = *a2;
  v13 = v5;
  v6 = a1[1];
  v14 = *a1;
  v15 = v6;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  memset_s(v16, 0x20uLL, 0, 0x20uLL);
  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t generate_unwrap_shared_key_curve25519(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v8 = 0u;
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v4 = a3[1];
  v12 = *a3;
  __s = 0x1000000;
  v13 = v4;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t firebloom_ec_export(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = &a2[3 * **a2];
  ccn_write_uint_padded();
  return 1;
}

uint64_t dict_find_params_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) >= *a5)
  {
    v13 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = der_equal(*(*(a5 + 24) + v9), *(*(a5 + 24) + v9) + *(*(*(a5 + 24) + v9) + 1) + 2, a1);
      if (v11)
      {
        break;
      }

      ++v10;
      v9 += 40;
      if (v10 >= *a5)
      {
        goto LABEL_10;
      }
    }

    v14 = (*(a5 + 24) + v9);
    if (v14[1])
    {
      v12 = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      ++*(a5 + 8);
      v14[1] = a3;
      v14[2] = a3 + a4;
      v14[3] = a3;
      v14[4] = a3 + a4;
      v12 = 1;
    }

LABEL_10:
    v13 = v12 | !v11;
  }

  return v13 & 1;
}

BOOL _dict_find_value_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = der_equal(*a5, *a5 + *(*a5 + 1) + 2, a1);
  if (v8)
  {
    *(a5 + 24) = 1;
    *(a5 + 8) = a3;
    *(a5 + 16) = a3 + a4;
  }

  return !v8;
}

uint64_t encode_list_free(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t encode_list_remove_key(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = _encode_list_find_key(a1, a2);
  if (result)
  {
    v4 = result;
    for (i = *v2; i != result; i = *i)
    {
      v2 = i;
    }

    *v2 = *i;
    v6 = *(result + 8);
    if (v6)
    {
      memset_s(v6, *(v4 + 16), 0, *(v4 + 16));
      free(*(v4 + 8));
    }

    memset_s(v4, 0x18uLL, 0, 0x18uLL);
    free(v4);
    return 0;
  }

  return result;
}

void *_encode_list_find_key(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = a2 + 2;
    do
    {
      v6 = v2[1];
      if (ccder_blob_decode_sequence_tl() && der_equal(a2, &v4[a2[1]], v6))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t encode_list_get_data(void *a1, unsigned __int8 *a2, int a3, void *a4, void *a5)
{
  key = _encode_list_find_key(a1, a2);
  if (!key)
  {
    return 0;
  }

  v9 = 1;
  if (a4)
  {
    if (a5)
    {
      v10 = key[1] + key[2];
      v15[0] = key[1];
      v15[1] = v10;
      v9 = ccder_blob_decode_sequence_tl();
      if (v9)
      {
        if (der_utils_decode_implicit_raw_octet_string_copy(v15, 12, 0, 0))
        {
          v11 = v15[0];
          if (ccder_blob_decode_tag())
          {
            if (ccder_blob_decode_len())
            {
              v13 = 0;
              v12 = v15[0];
              if (a3)
              {
                v13 = (LODWORD(v15[0]) - v11);
                v12 = v11;
              }

              *a4 = v12;
              *a5 = v13;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t encode_list_get_number(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  data = encode_list_get_data(a1, a2, 1, &v7, &v8);
  v5 = data;
  if (a3 && data)
  {
    *a3 = der_get_number();
  }

  return v5;
}

uint64_t encode_list_get_BOOL(void *a1, unsigned __int8 *a2, BOOL *a3)
{
  v7 = 0;
  v8 = 0;
  data = encode_list_get_data(a1, a2, 1, &v7, &v8);
  v5 = data;
  if (a3 && data)
  {
    *a3 = der_get_BOOL();
  }

  return v5;
}

uint64_t _merge_dict_cb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((ccder_blob_decode_tl() & 1) == 0)
  {
    _merge_dict_cb_cold_1();
LABEL_7:
    _merge_dict_cb_cold_2();
    result = 0;
    goto LABEL_5;
  }

  v9 = 0;
  v10 = 0;
  v8[0] = 12;
  v8[1] = 0;
  __memcpy_chk();
  if (encode_list_remove_key(a5, v8) || encode_list_add_der())
  {
    goto LABEL_7;
  }

  result = 1;
LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ccder_sizeof_fv_data(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  return ccder_sizeof();
}

uint64_t ccder_sizeof_fv_key(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  v2 = ccder_sizeof();
  return ccder_sizeof() + v2;
}

uint64_t der_utils_decode_fv_data(__int128 *a1, int a2, uint64_t a3)
{
  v6 = *a3;
  v5 = *(a3 + 8);
  v9 = *a1;
  if (a2)
  {
    v12 = *a1;
    v10 = 0;
    v11 = 0;
    result = ccder_blob_decode_range();
    if (!result)
    {
      return result;
    }

    v6 = v10;
    v8 = (v11 - v10);
    v9 = v12;
    goto LABEL_4;
  }

  LODWORD(v12) = v5;
  result = der_utils_decode_implicit_raw_octet_string_copy_len(&v9, 4, v6, &v12);
  if (result)
  {
    v8 = v12;
LABEL_4:
    *a3 = v6;
    *(a3 + 8) = v8;
    *a1 = v9;
    return 1;
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy_partial(__int128 *a1)
{
  v4 = *a1;
  v2 = ccder_blob_decode_range();
  if (v2)
  {
    *a1 = v4;
  }

  return v2;
}

uint64_t se_derivation_request_serialization_len()
{
  ccder_sizeof();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t OUTLINED_FUNCTION_3_7(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_5()
{
  v3 = v1 + *(v0 + 1) - v0;

  return ccder_blob_encode_body();
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return ccder_blob_encode_tl();
}

uint64_t OUTLINED_FUNCTION_19_3(uint64_t a1, ...)
{
  va_start(va2, a1);
  va_start(va1, a1);
  va_start(va, a1);
  va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  v3 = 0;
  v5 = 0;

  return encode_list_dict(va2, va, va1);
}

uint64_t OUTLINED_FUNCTION_20_2(void *a1)
{

  return memset_s(a1, 0x10uLL, 0, 0x10uLL);
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return ccder_sizeof();
}

void *OUTLINED_FUNCTION_26_1()
{

  return calloc(0x18uLL, 1uLL);
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return ccder_blob_decode_range();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return der_dict_iterate();
}

uint64_t platform_get_measurement(uint64_t a1, int a2, void *a3, size_t *a4)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 36, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  if (!lib_platform_callbacks)
  {
    return 4294967284;
  }

  if (a1 >= 7)
  {
    abort();
  }

  v8 = &pm_id_table + 72 * a1;
  if ((v8[4] & 1) == 0)
  {
    result = (lib_platform_callbacks)(a1, v8 + 5, v8 + 64);
    if (result)
    {
      return result;
    }

    v8[4] = 1;
  }

  if (*a4 < *(v8 + 8))
  {
    return 4294967285;
  }

  memcpy(a3, v8 + 5, *a4);
  v10 = *(v8 + 8);
  *a4 = v10;
  if (a2)
  {
    byte_swap_val(a3, v10);
  }

  return 0;
}

uint64_t platform_rng()
{
  REQUIRE_func(&lib_platform_callbacks != 0, 62, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(off_1F1A7E9E8[0] != 0, 63, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v0 = off_1F1A7E9E8[0];

  return v0();
}

uint64_t platform_read_random(uint64_t a1, unsigned int a2)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 70, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(off_1F1A7E9F0 != 0, 71, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v4 = off_1F1A7E9F0;

  return v4(a1, a2);
}

uint64_t platform_pka_get_pub_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 78, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7E9F8 != 0, 79, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v16 = unk_1F1A7E9F8;

  return v16(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t platform_pka_ecdh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 86, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA00 != 0, 87, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_1F1A7EA00;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t platform_pka_sign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 94, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA08 != 0, 95, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_1F1A7EA08;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t platform_pka_sika_attest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 106, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA10 != 0, 107, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v17 = unk_1F1A7EA10;

  return v17(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t platform_pka_shared_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 115, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA18 != 0, 116, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_1F1A7EA18;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t platform_ref_key_hw_crypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 123, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA20 != 0, 124, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v10 = unk_1F1A7EA20;

  return v10(a1, a2, a3, a4, a5);
}

uint64_t platform_ref_key_hw_crypt_clear_cache()
{
  REQUIRE_func(&lib_platform_callbacks != 0, 131, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA28 != 0, 132, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v0 = unk_1F1A7EA28;

  return v0();
}

uint64_t platform_get_device_id(uint64_t a1, uint64_t a2)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 139, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA30 != 0, 140, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v4 = unk_1F1A7EA30;

  return v4(a1, a2);
}

uint64_t platform_get_aon_security(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 147, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA38 != 0, 148, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F1A7EA38;

  return v2(a1);
}

uint64_t platform_get_att_sep_chip_rev(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 155, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA40 != 0, 156, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F1A7EA40;

  return v2(a1);
}

uint64_t platform_get_chip_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 163, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA48 != 0, 164, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F1A7EA48;

  return v2(a1);
}

uint64_t platform_get_ecid(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA50 != 0, 172, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F1A7EA50;

  return v2(a1);
}

uint64_t platform_get_board_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 179, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA58 != 0, 180, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F1A7EA58;

  return v2(a1);
}

uint64_t platform_get_fuse_bits(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 187, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA60 != 0, 188, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F1A7EA60;

  return v2(a1);
}

uint64_t platform_get_att_board_and_chip_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 195, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_1F1A7EA68 != 0, 196, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_1F1A7EA68;

  return v2(a1);
}

char *aks_copy_packed_data(_DWORD *a1, const void *a2, int a3)
{
  v3 = (a1 + 1);
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 += a3;
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      v3 += v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *aks_pack_data(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = aks_copy_packed_data(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

void getkCRKEDUDeviceGroupNameKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCRKEDUDeviceGroupNameKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCRKEDUUserIdentifierKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCRKEDUUserIdentifierKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

void getCRKEDUProfileErrorDomain_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCRKEDUProfileErrorDomain(void)"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

void getCRKEDUProfileErrorFieldKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCRKEDUProfileErrorFieldKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

void getCRKEDUProfileErrorValueKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCRKEDUProfileErrorValueKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCRKEDUGroupBeaconIDKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCRKEDUGroupBeaconIDKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:25 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCRKEDUPayloadLeaderCertificateAnchorUUIDKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCRKEDUPayloadLeaderCertificateAnchorUUIDKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCRKEDUPayloadMemberCertificateAnchorUUIDKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCRKEDUPayloadMemberCertificateAnchorUUIDKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkCRKEDUSingleUserIdentifierKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCRKEDUSingleUserIdentifierKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

void getCRKEDUProfileErrorTopLevelUserIdentifierKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCRKEDUProfileErrorTopLevelUserIdentifierKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:32 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getCRKEDUPayloadClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCRKEDUPayloadClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:19 description:{@"Unable to find class %s", "CRKEDUPayload"}];

  __break(1u);
}

void ClassroomKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ClassroomKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MCEDUClassroomPayload.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void *acm_mem_alloc_typed(size_t size, malloc_type_id_t type_id)
{
  result = malloc_type_calloc(1uLL, size, type_id);
  if (result)
  {
    _allocatedMem_3 += size;
  }

  return result;
}

void acm_mem_free(void *a1, rsize_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_0(a1, a2);
    free(v3);
    v4 = _allocatedMem_3 - v2;
    if (_allocatedMem_3 < v2)
    {
      v4 = 0;
    }

    _allocatedMem_3 = v4;
  }
}

uint64_t GetSerializedVerifyPolicySize()
{
  result = OUTLINED_FUNCTION_15_0();
  if (v5)
  {
    if (v1)
    {
      v6 = v4;
      if (v4)
      {
        v7 = v3;
        v8 = v2;
        v9 = strnlen(v1, 0x81uLL);
        if (v9 > 0x80)
        {
          return 4294967293;
        }

        else
        {
          v10 = v9;
          result = getLengthOfParameters(v8, v7, &v11);
          if (!result)
          {
            *v6 = v10 + v11 + 26;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DeserializeVerifyPolicy(uint64_t a1)
{
  v25 = 0;
  result = OUTLINED_FUNCTION_15_0();
  v10 = v3 - 16;
  if (v3 >= 0x10)
  {
    if (a1)
    {
      if (v4)
      {
        v11 = v5;
        if (v5)
        {
          v12 = v6;
          if (v6)
          {
            v13 = v7;
            if (v7)
            {
              v14 = v8;
              if (v8)
              {
                v15 = v9;
                if (v9)
                {
                  v16 = v3;
                  *v4 = *a1;
                  v17 = strnlen((a1 + 16), v3 - 16);
                  v18 = v17;
                  if (v17 > 0x80uLL || v10 <= v17)
                  {
                    return 4294967293;
                  }

                  v19 = acm_mem_alloc_data(v17 + 1);
                  acm_mem_alloc_info("<data>", v19, v18 + 1, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 351, "DeserializeVerifyPolicy");
                  if (!v19)
                  {
                    return 4294967292;
                  }

                  memcpy(v19, (a1 + 16), v18 + 1);
                  v26 = v18 + 17;
                  if (v18 + 17 == v16 || (v20 = *(a1 + v18 + 17) != 0, v26 = v18 + 18, v16 - (v18 + 18) < 4))
                  {
                    v22 = 4294967293;
                  }

                  else
                  {
                    v23 = v15;
                    v21 = *(a1 + v18 + 18);
                    v26 = v18 + 22;
                    result = deserializeParameters(a1, v16, &v26, &v25, &v24);
                    if (!result)
                    {
                      *v11 = v19;
                      *v12 = v20;
                      *v13 = v21;
                      *v14 = v25;
                      *v23 = v24;
                      return result;
                    }

                    v22 = result;
                  }

                  acm_mem_free_info("<data>", v19, v18 + 1, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 380, "DeserializeVerifyPolicy");
                  acm_mem_free_data(v19, v18 + 1);
                  if (v25)
                  {
                    Util_SafeDeallocParameters(v25, v24);
                  }

                  return v22;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t GetSerializedVerifyAclConstraintSize(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, void *a11)
{
  result = OUTLINED_FUNCTION_15_0();
  if (v15)
  {
    if (a11)
    {
      if (a10 <= 0xA && (a9 != 0) == (a10 != 0))
      {
        v16 = v14;
        v17 = v13;
        result = getLengthOfParameters(a9, a10, &v21);
        if (!result)
        {
          v18 = 29;
          if (a1 == 32)
          {
            v18 = 33;
          }

          v19 = v18 + v17;
          if (a1 == 32)
          {
            v20 = v16;
          }

          else
          {
            v20 = 0;
          }

          *a11 = v19 + v20 + v21;
        }
      }
    }
  }

  return result;
}

uint64_t SerializeVerifyAclConstraint(int a1, _OWORD *a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, char a7, int a8, uint64_t a9, unsigned int a10, uint64_t a11, void *a12)
{
  if (!a3)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a12)
  {
    if (a11 && a10 <= 0xA && (a9 != 0) == (a10 != 0))
    {
      v30 = 0;
      result = getLengthOfParameters(a9, a10, &v30);
      if (!result)
      {
        v20 = 29;
        if (a1 == 32)
        {
          v20 = 33;
        }

        v21 = v20 + a4;
        if (a1 == 32)
        {
          v22 = a6;
        }

        else
        {
          v22 = 0;
        }

        if (*a12 < v21 + v22 + v30)
        {
          return 4294967293;
        }

        else
        {
          v23 = a8;
          if (a2)
          {
            *a11 = *a2;
          }

          else
          {
            *a11 = 0;
            *(a11 + 8) = 0;
          }

          *(a11 + 16) = a4;
          memcpy((a11 + 20), a3, a4);
          v24 = a4 + 20;
          if (a1 == 32)
          {
            *(a11 + v24) = a6;
            v25 = a4 + 24;
            memcpy((a11 + v25), a5, a6);
            v24 = v25 + a6;
          }

          v26 = a11 + v24;
          *v26 = a7;
          *(v26 + 1) = v23;
          v29 = v24 + 5;
          result = serializeParameters(a9, a10, a11, &v29);
          if (!result)
          {
            *a12 = v29;
          }
        }
      }
    }
  }

  return result;
}

uint64_t GetSerializedProcessAclSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  result = OUTLINED_FUNCTION_15_0();
  if (v14)
  {
    v15 = v10;
    if (v10)
    {
      if (a9 && v13 <= 0xA && (v12 != 0) == (v13 != 0))
      {
        v16 = v11;
        result = getLengthOfParameters(v12, v13, &v17);
        if (!result)
        {
          *a9 = v15 + v16 + v17 + 36;
        }
      }
    }
  }

  return result;
}

uint64_t SerializeProcessAcl(_OWORD *a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  v21 = 0;
  result = 4294967293;
  if (a2)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a8;
      if (a10)
      {
        if (a9)
        {
          if (a8 <= 0xA && (a7 != 0) == (a8 != 0))
          {
            v15 = a6;
            v16 = a5;
            result = GetSerializedProcessAclSize(4294967293, a2, a3, a4, a5, a6, a7, a8, &v21);
            if (!result)
            {
              if (*a10 < v21)
              {
                return 4294967293;
              }

              else
              {
                if (a1)
                {
                  *a9 = *a1;
                }

                else
                {
                  *a9 = 0;
                  *(a9 + 8) = 0;
                }

                *(a9 + 16) = v12;
                memcpy((a9 + 20), a2, v12);
                *(a9 + v12 + 20) = v16;
                v19 = v12 + 24;
                if (v16)
                {
                  memcpy((a9 + v19), a4, v16);
                  v19 += v16;
                }

                *(a9 + v19) = v15;
                v20 = v19 + 4;
                result = serializeParameters(a7, v13, a9, &v20);
                if (!result)
                {
                  *a10 = v20;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void GetSerializedRequirementSize(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = 0;
  if (a2 && a3 && *a2 <= 0x1Cu)
  {
    OUTLINED_FUNCTION_6();
    if (v8)
    {
      if ((v7 & 0x30) != 0)
      {
        *a3 = 20;
        while (*(a2 + 16))
        {
          SerializedRequirementSize = GetSerializedRequirementSize(a1, *(a2 + 20), &v26);
          if (SerializedRequirementSize)
          {
            break;
          }

          OUTLINED_FUNCTION_8(SerializedRequirementSize, v10, v11, v12, v13, v14, v15, v16, v25, v26);
        }
      }

      else if (v6 == 7)
      {
        *a3 = 24;
        while (*(a2 + 20))
        {
          v17 = GetSerializedRequirementSize(a1, *(a2 + 24), &v26);
          if (v17)
          {
            break;
          }

          OUTLINED_FUNCTION_8(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
        }
      }
    }

    else
    {
      *a3 = getRequirementDataSizeForVersion(a1, a2) + 16;
    }
  }
}

void SerializeRequirement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  a21 = v22;
  a22 = v27;
  v28 = v23;
  a12 = 0;
  if (v24)
  {
    v29 = v25;
    if (v25)
    {
      v30 = v26;
      if (v26)
      {
        v31 = v24;
        GetSerializedRequirementSize(v23, v24, &a12);
        if (!v32 && a12 <= *v30)
        {
          v41 = *v31;
          v42 = v31[2];
          RequirementDataSizeForVersion = getRequirementDataSizeForVersion(v28, v31);
          *v29 = v41;
          *(v29 + 8) = v42;
          *(v29 + 12) = RequirementDataSizeForVersion;
          if (*v31 <= 0x1Cu)
          {
            OUTLINED_FUNCTION_6();
            if (!v36)
            {
              v37 = getRequirementDataSizeForVersion(v28, v31);
              memcpy((v29 + 16), v31 + 4, v37);
              v38 = v37 + 16;
LABEL_9:
              *v30 = v38;
              goto LABEL_10;
            }

            if ((v35 & 0x30) != 0)
            {
              *(v29 + 16) = v31[4];
              if (!v31[4])
              {
                v38 = 20;
                goto LABEL_9;
              }

              v39 = 0;
              v38 = 20;
              while (!OUTLINED_FUNCTION_4())
              {
                v38 += a9;
                if (++v39 >= v31[4])
                {
                  goto LABEL_9;
                }
              }
            }

            else
            {
              if (v34 != 7)
              {
                goto LABEL_10;
              }

              *(v29 + 16) = *(v31 + 2);
              if (!v31[5])
              {
                v38 = 24;
                goto LABEL_9;
              }

              v40 = 0;
              v38 = 24;
              while (!OUTLINED_FUNCTION_4())
              {
                v38 += a9;
                if (++v40 >= v31[5])
                {
                  goto LABEL_9;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_19();
}

uint64_t GetSerializedCredentialSize(_DWORD *a1, void *a2)
{
  result = 4294967293;
  if (a1 && a2 && *a1 <= 0x17u && ((1 << *a1) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a2 = a1[7] + 32;
  }

  return result;
}

uint64_t SerializeCredential(unsigned int *__src, void *__dst, size_t *a3)
{
  result = 4294967293;
  if (__src && __dst && a3)
  {
    v6 = *__src;
    if (*__src <= 0x17 && ((1 << *__src) & 0xFFF7FE) != 0)
    {
      v8 = __src[7] + 32;
      if (v8 <= *a3 && v6 <= 0x17 && ((1 << v6) & 0xFFF7FE) != 0)
      {
        memcpy(__dst, __src, v8);
        result = 0;
        *a3 = __src[7] + 32;
      }
    }
  }

  return result;
}

void DeserializeCredential(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *__dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10();
  a19 = v20;
  a20 = v25;
  __dst = 0;
  if (v22 >= 0x20)
  {
    v26 = v21;
    if (v21)
    {
      v27 = v23;
      if (v23)
      {
        v28 = v24;
        if (v24)
        {
          v29 = *v21;
          v30 = v22;
          v31 = v21[7];
          switch(*v21)
          {
            case 1u:
              if (v31 == 28)
              {
                goto LABEL_7;
              }

              break;
            case 2u:
              if (v31 == 136)
              {
                goto LABEL_7;
              }

              break;
            case 3u:
              if (v31 == 305)
              {
                goto LABEL_7;
              }

              break;
            case 4u:
            case 5u:
            case 6u:
            case 8u:
            case 0xEu:
            case 0x10u:
            case 0x13u:
            case 0x16u:
            case 0x17u:
              if (!v31)
              {
                goto LABEL_7;
              }

              break;
            case 7u:
              if (v31 == 56)
              {
                goto LABEL_7;
              }

              break;
            case 9u:
              if (v31 == 24)
              {
                goto LABEL_7;
              }

              break;
            case 0xAu:
              if (v31 == 52)
              {
                goto LABEL_7;
              }

              break;
            case 0xCu:
            case 0xFu:
              if (v31 == 8)
              {
                goto LABEL_7;
              }

              break;
            case 0xDu:
            case 0x15u:
              if (v31 == 132)
              {
                goto LABEL_7;
              }

              break;
            case 0x11u:
              if (v31 == 81)
              {
                goto LABEL_7;
              }

              break;
            case 0x12u:
              if (v31 == 20)
              {
                goto LABEL_7;
              }

              break;
            case 0x14u:
              if (v31 != 32)
              {
                break;
              }

LABEL_7:
              if (!Util_AllocCredential(*v21, &__dst))
              {
                if (!__dst)
                {
                  break;
                }

                if (__dst[1] <= 3u && __dst[2] <= 0x100u && v29 <= 0x17 && ((1 << v29) & 0xFFF7FE) != 0 && v31 + 32 <= v30)
                {
                  memcpy(__dst, v26, v31 + 32);
                  *v27 = __dst;
                  *v28 = v31 + 32;
                  break;
                }

                goto LABEL_15;
              }

              if (__dst)
              {
LABEL_15:
                Util_DeallocCredential(__dst);
                break;
              }

              break;
            default:
              break;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_11();
}

uint64_t CopyCredential(uint64_t a1, void **a2)
{
  __dst = 0;
  v2 = 4294967293;
  if (a1 && a2)
  {
    v2 = Util_AllocCredential(*a1, &__dst);
    if (v2)
    {
      if (__dst)
      {
        Util_DeallocCredential(__dst);
      }
    }

    else if (__dst)
    {
      memcpy(__dst, a1, *(a1 + 28) + 32);
      v2 = 0;
      *a2 = __dst;
    }

    else
    {
      return 4294967292;
    }
  }

  return v2;
}

uint64_t CompareCredentials(char *__s1, _DWORD *__s2, BOOL *a3)
{
  result = 4294967293;
  if (__s1)
  {
    v5 = __s2;
    if (__s2)
    {
      if (a3)
      {
        if (*__s1 == *__s2)
        {
          v7 = *(__s1 + 7);
          if (v7 == __s2[7])
          {
            switch(*__s1)
            {
              case 1:
                if (OUTLINED_FUNCTION_1_0())
                {
                  break;
                }

                v9 = __s1 + 44;
                __s2 = v5 + 11;
                goto LABEL_33;
              case 2:
                if (*(__s1 + 8) != __s2[8])
                {
                  break;
                }

                v8 = *(__s1 + 9);
                if (v8 != __s2[9])
                {
                  break;
                }

                v9 = __s1 + 40;
                __s2 += 10;
                goto LABEL_8;
              case 3:
                if (OUTLINED_FUNCTION_1_0())
                {
                  break;
                }

                v9 = __s1 + 104;
                __s2 = v5 + 26;
                goto LABEL_33;
              case 4:
              case 5:
              case 6:
              case 8:
              case 0xC:
              case 0xE:
              case 0xF:
              case 0x10:
              case 0x11:
              case 0x12:
              case 0x13:
              case 0x16:
              case 0x17:
                v8 = v7 + 32;
                v9 = __s1;
                goto LABEL_8;
              case 7:
                if (OUTLINED_FUNCTION_1_0() || memcmp(__s1 + 32, v5 + 8, 0x20uLL))
                {
                  break;
                }

                v9 = __s1 + 64;
                __s2 = v5 + 16;
                v8 = 24;
                goto LABEL_8;
              case 9:
                if (OUTLINED_FUNCTION_1_0())
                {
                  break;
                }

                v9 = __s1 + 40;
                __s2 = v5 + 10;
                goto LABEL_33;
              case 0xA:
                if (OUTLINED_FUNCTION_1_0() || memcmp(__s1 + 36, v5 + 9, 0x10uLL))
                {
                  break;
                }

                v9 = __s1 + 52;
                __s2 = v5 + 13;
LABEL_33:
                v8 = 16;
                goto LABEL_8;
              case 0xD:
                v8 = *(__s1 + 8);
                if (v8 != __s2[8])
                {
                  break;
                }

                v9 = __s1 + 36;
                __s2 += 9;
                goto LABEL_8;
              case 0x14:
                if (OUTLINED_FUNCTION_1_0())
                {
                  break;
                }

                v9 = __s1 + 32;
                __s2 = v5 + 8;
                v8 = 32;
                goto LABEL_8;
              case 0x15:
                if (OUTLINED_FUNCTION_1_0())
                {
                  break;
                }

                v9 = __s1 + 36;
                __s2 = v5 + 9;
                v8 = 128;
LABEL_8:
                v10 = memcmp(v9, __s2, v8) == 0;
                goto LABEL_30;
              default:
                return result;
            }
          }
        }

        v10 = 0;
LABEL_30:
        result = 0;
        *a3 = v10;
      }
    }
  }

  return result;
}

uint64_t GetSerializedAddCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 2;
  }

  v5 = !v4;
  result = 4294967293;
  if (a4 && a2 && (v5 & 1) == 0 && *a2 <= 0x17u && ((1 << *a2) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a4 = a2[7] + 52;
  }

  return result;
}

uint64_t SerializeAddCredential(_OWORD *a1, unsigned int *__src, int a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3 == 2;
  }

  v7 = !v6;
  result = 4294967293;
  if (a5)
  {
    if (a4)
    {
      if (__src)
      {
        if ((v7 & 1) == 0)
        {
          result = 4294967293;
          if (*__src <= 0x17 && ((1 << *__src) & 0xFFF7FE) != 0 && *a5 >= __src[7] + 52)
          {
            if (a1)
            {
              *a4 = *a1;
            }

            else
            {
              *a4 = 0;
              *(a4 + 8) = 0;
            }

            v13 = *a5 - 16;
            result = SerializeCredential(__src, (a4 + 16), &v13);
            if (!result)
            {
              v12 = v13;
              *(a4 + v13 + 16) = a3;
              *a5 = v12 + 20;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DeserializeAddCredentialType(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  result = 4294967293;
  if (a2 >= 0x34 && a1)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t LibSer_GetSerializedContainsCredential_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 4294967293;
  if (a1)
  {
    if (a4)
    {
      result = 0;
      *a4 = 24;
    }
  }

  return result;
}

double LibSer_GetSerializedContainsCredential_Serialize(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4, void *a5)
{
  if (a4 && a1 && a5 && *a5 >= 0x18uLL)
  {
    *&result = OUTLINED_FUNCTION_17(a2, a3, a4, a5, a1).n128_u64[0];
  }

  return result;
}

uint64_t GetSerializedRemoveCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 2;
  }

  v5 = !v4;
  result = 4294967293;
  if (a4 && a2 && (v5 & 1) == 0 && *a2 <= 0x17u && ((1 << *a2) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a4 = a2[7] + 52;
  }

  return result;
}

uint64_t GetSerializedReplacePassphraseCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 2;
  }

  v5 = !v4;
  result = 4294967293;
  if (a4 && a2 && (v5 & 1) == 0 && *a2 <= 0x17u && ((1 << *a2) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a4 = a2[7] + 52;
  }

  return result;
}

uint64_t SerializeCredentialList(unsigned int **a1, unsigned int a2, unsigned int *a3, void *a4)
{
  if (a2)
  {
    v6 = a1 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || a3 == 0 || a4 == 0)
  {
    return 4294967293;
  }

  v16[7] = v4;
  v16[8] = v5;
  *a3 = a2;
  if (a2)
  {
    v11 = a1;
    v12 = a2;
    v13 = 4;
    while (1)
    {
      v14 = *v11;
      if (!*v11)
      {
        return 4294967293;
      }

      v16[0] = *a4 - v13;
      result = SerializeCredential(v14, a3 + v13, v16);
      if (result)
      {
        return result;
      }

      v13 += v16[0];
      ++v11;
      if (!--v12)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v13 = 4;
LABEL_18:
    result = 0;
    *a4 = v13;
  }

  return result;
}

uint64_t DeserializeCredentialList(unsigned int *a1, int a2, void *a3, _DWORD *a4)
{
  __dst[0] = 0;
  v4 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = a1;
        v8 = *a1;
        if (v8 <= 0x3E8)
        {
          if (v8)
          {
            v10 = acm_mem_alloc_typed(8 * v8, 0x2004093837F09uLL);
            acm_mem_alloc_info("array of ACMCredentialRef", v10, 8 * v8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 1897, "DeserializeCredentialList");
            if (v10)
            {
              v15 = 4;
              v16 = v10;
              v17 = v8;
              while (1)
              {
                DeserializeCredential(v7 + v15, a2 - v15, v16, __dst, v11, v12, v13, v14, v20, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10]);
                if (v18)
                {
                  break;
                }

                v15 += LODWORD(__dst[0]);
                v16 += 8;
                if (!--v17)
                {
                  goto LABEL_12;
                }
              }

              v4 = v18;
              DeallocCredentialList(v10, v8);
            }

            else
            {
              return 4294967292;
            }
          }

          else
          {
            v10 = 0;
LABEL_12:
            v4 = 0;
            *a4 = v8;
            *a3 = v10;
          }
        }
      }
    }
  }

  return v4;
}

void DeallocCredentialList(_DWORD **a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1;
      v5 = a2;
      do
      {
        if (*v4)
        {
          Util_DeallocCredential(*v4);
          *v4 = 0;
        }

        ++v4;
        --v5;
      }

      while (v5);
    }

    v6 = 8 * v3;
    acm_mem_free_info("array of ACMCredentialRef", a1, v6, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 1935, "DeallocCredentialList");

    acm_mem_free(a1, v6);
  }
}

uint64_t GetSerializedGetContextPropertySize(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 4294967293;
  }

  result = 0;
  *a3 = 20;
  return result;
}

__n128 SerializeGetContextProperty(__n128 *a1, unsigned __int32 a2, __n128 *a3, void *a4)
{
  if (a1 && a3 && a4 && *a4 >= 0x14uLL)
  {
    result = *a1;
    *a3 = *a1;
    a3[1].n128_u32[0] = a2;
    *a4 = 20;
  }

  return result;
}

uint64_t DeserializeGetContextProperty(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4)
{
  result = 4294967293;
  if (a2 >= 0x10 && a1 && a3 && a4)
  {
    *a3 = *a1;
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != 0x10)
    {
      result = 0;
      *a4 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t LibSer_GetAclAuthMethod_GetSize(uint64_t a1, void *a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_3(a1, a2);
  }

  else
  {
    return 4294967293;
  }
}

__n128 LibSer_GetAclAuthMethod_Serialize(__n128 *a1, __n128 *a2, void *a3)
{
  if (a1 && a2 && a3 && *a3 >= 0x10uLL)
  {
    result = *a1;
    *a2 = *a1;
    *a3 = 16;
  }

  return result;
}

__n128 LibSer_GetAclAuthMethod_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3)
{
  if (a2 >= 0x10 && a1)
  {
    if (a3)
    {
      result = *a1;
      *a3 = *a1;
    }
  }

  return result;
}

uint64_t LibSer_ContextCredentialGetProperty_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    return OUTLINED_FUNCTION_2_0(a1, a2, a3, a4);
  }

  else
  {
    return 4294967293;
  }
}

double LibSer_ContextCredentialGetProperty_Serialize(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4, void *a5)
{
  if (a1 && a4 && a5 && *a5 >= 0x18uLL)
  {
    *&result = OUTLINED_FUNCTION_17(a2, a3, a4, a5, a1).n128_u64[0];
  }

  return result;
}

__n128 LibSer_ContextCredentialGetProperty_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2 >= 0x18 && a1 && a3 && a4)
  {
    if (a5)
    {
      result = *a1;
      *a3 = *a1;
      *a4 = a1[1].n128_u32[0];
      *a5 = a1[1].n128_u32[1];
    }
  }

  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_GetSize(void *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 0;
  *a1 = 8;
  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_Serialize(int a1, int a2, _DWORD *a3, void *a4)
{
  result = 4294967293;
  if (a3 && a4 && *a4 >= 8uLL)
  {
    result = 0;
    *a3 = a1;
    a3[1] = a2;
    *a4 = 8;
  }

  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_Deserialize(_DWORD *a1, unint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = 4294967293;
  if (a2 >= 8 && a1 && a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *a1;
      *a4 = a1[1];
    }
  }

  return result;
}

uint64_t LibSer_RemoveCredentialByType_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    return OUTLINED_FUNCTION_2_0(a1, a2, a3, a4);
  }

  else
  {
    return 4294967293;
  }
}

double LibSer_RemoveCredentialByType_Serialize(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4, void *a5)
{
  if (a1 && a4 && a5 && *a5 >= 0x18uLL)
  {
    *&result = OUTLINED_FUNCTION_17(a2, a3, a4, a5, a1).n128_u64[0];
  }

  return result;
}

__n128 LibSer_RemoveCredentialByType_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2 >= 0x18 && a1 && a3 && a4)
  {
    if (a5)
    {
      result = *a1;
      *a3 = *a1;
      *a4 = a1[1].n128_u32[0];
      *a5 = a1[1].n128_u32[1];
    }
  }

  return result;
}

uint64_t LibSer_DeleteContext_GetSize(uint64_t a1, void *a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_3(a1, a2);
  }

  else
  {
    return 4294967293;
  }
}

__n128 LibSer_DeleteContext_Serialize(__n128 *a1, __n128 *a2, void *a3)
{
  if (a1 && a2 && a3 && *a3 >= 0x10uLL)
  {
    result = *a1;
    *a2 = *a1;
    *a3 = 16;
  }

  return result;
}

__n128 LibSer_DeleteContext_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3)
{
  if (a2 >= 0x10 && a1)
  {
    if (a3)
    {
      result = *a1;
      *a3 = *a1;
    }
  }

  return result;
}

uint64_t LibSer_StorageAnyCmd_DeserializeCommonFields(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4)
{
  result = 4294967293;
  if (a1 && a2 >= 0x14)
  {
    if (a3)
    {
      *a3 = *a1;
    }

    result = 0;
    if (a4)
    {
      *a4 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t LibSer_StorageSetData_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    return 4294967291;
  }

  result = OUTLINED_FUNCTION_5(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, 0);
  if (!result)
  {
    *v8 = v9 + v13 + 28;
  }

  return result;
}

uint64_t LibSer_StorageSetData_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 4294967293;
  if (a1 && a2 >= 0x18 && a3 && a4 && a5 && a6 && a7 && a8)
  {
    v20[1] = v8;
    v20[2] = v9;
    OUTLINED_FUNCTION_12(a1, a2, a3, a4);
    v16 = *(v11 + 20);
    v20[0] = 24;
    *v17 = v16;
    if (v16)
    {
      v18 = v16 + 24;
      if (v18 > v12)
      {
        return 4294967293;
      }

      *v13 = v11 + 24;
      v20[0] = v18;
    }

    else
    {
      *v13 = 0;
    }

    return deserializeParameters(v11, v12, v20, v14, v15);
  }

  return v10;
}

uint64_t LibSer_StorageGetData_GetSize(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  if (!a3)
  {
    return 4294967291;
  }

  result = getLengthOfParameters(a1, a2, &v5);
  if (!result)
  {
    *a3 = v5 + 25;
  }

  return result;
}

uint64_t LibSer_StorageGetData_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, uint64_t a5)
{
  v7 = 4294967293;
  if (a1 && a2 >= 0x15 && a3 && a4 && a5)
  {
    v14[1] = v5;
    v14[2] = v6;
    OUTLINED_FUNCTION_12(a1, a2, a3, a4);
    *v9 = *(v8 + 20) != 0;
    v14[0] = 21;
    return deserializeParameters(v8, v10, v14, v11, v12);
  }

  return v7;
}

uint64_t LibSer_GetUnlockSecret_GetSize(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  if (!a3)
  {
    return 4294967291;
  }

  result = getLengthOfParameters(a1, a2, &v5);
  if (!result)
  {
    *a3 = v5 + 20;
  }

  return result;
}

void LibSer_GetUnlockSecret_Serialize(_OWORD *a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  if (a1)
  {
    if (a4)
    {
      if (a5)
      {
        OUTLINED_FUNCTION_14();
        if (!getLengthOfParameters(v8, a3, v9))
        {
          OUTLINED_FUNCTION_13();
          if (v10)
          {
            *a4 = *a1;
            v11 = OUTLINED_FUNCTION_0_1(16, v19);
            if (!v11)
            {
              OUTLINED_FUNCTION_16(v11, v12, v13, v14, v15, v16, v17, v18, v20);
            }
          }
        }
      }
    }
  }
}

uint64_t LibSer_GetUnlockSecret_Deserialize(_OWORD *a1, unint64_t a2, _OWORD *a3, void *a4, _DWORD *a5)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a2 >= 0x10 && a3 && a4)
  {
    if (a5)
    {
      v9[1] = v5;
      v9[2] = v6;
      *a3 = *a1;
      v9[0] = 16;
      return deserializeParameters(a1, a2, v9, a4, a5);
    }
  }

  return result;
}

uint64_t LibSer_GetUnlockSecretResponse_GetSize(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294967291;
  }

  result = 0;
  *a2 = a1 + 1;
  return result;
}

uint64_t LibSer_GetUnlockSecretResponse_Serialize(void *__src, size_t __n, char a3, _BYTE *a4, void *a5)
{
  result = 4294967293;
  if (__src && __n && a4 && a5)
  {
    v9 = __n + 1;
    if (*a5 < __n + 1)
    {
      return 4294967293;
    }

    else
    {
      *a4 = a3;
      memcpy(a4 + 1, __src, __n);
      result = 0;
      *a5 = v9;
    }
  }

  return result;
}

uint64_t LibSer_GetUnlockSecretResponse_Deserialize(_BYTE *a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  result = 4294967293;
  if (a2 && a1 && a3 && a4)
  {
    if (a5)
    {
      result = 0;
      *a5 = *a1;
      *a3 = a1 + 1;
      *a4 = a2 - 1;
    }
  }

  return result;
}

uint64_t LibSer_SEPControl_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    return 4294967291;
  }

  result = OUTLINED_FUNCTION_5(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, 0);
  if (!result)
  {
    *v8 = v9 + v13 + 24;
  }

  return result;
}

void LibSer_SEPControl_Serialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10();
  a19 = v20;
  a20 = v27;
  v29 = v28;
  if (v25)
  {
    v30 = v26;
    if (v26)
    {
      v31 = v25;
      v32 = v24;
      v33 = v23;
      v34 = v22;
      v35 = v21;
      OUTLINED_FUNCTION_14();
      if (!getLengthOfParameters(v36, v34, v37))
      {
        OUTLINED_FUNCTION_13();
        if (v38)
        {
          if (v29)
          {
            *v31 = *v29;
          }

          else
          {
            *v31 = 0;
            *(v31 + 8) = 0;
          }

          a9 = 16;
          if (!serializeParameters(v35, v34, v31, &a9))
          {
            v39 = a9;
            *(v31 + a9) = v32;
            v40 = v39 + 4;
            memcpy((v31 + v39 + 4), v33, v32);
            *v30 = v40 + v32;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_11();
}

uint64_t LibSer_SEPControl_Deserialize(_OWORD *a1, unint64_t a2, _OWORD *a3, void *a4, _DWORD *a5, unint64_t *a6, void *a7)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a2 >= 0x18 && a3 && a4 && a5 && a6 && a7)
  {
    *a3 = *a1;
    v12 = 16;
    result = deserializeParameters(a1, a2, &v12, a4, a5);
    if (!result)
    {
      v11 = a1 + v12 + 4;
      *a7 = *(a1 + v12);
      *a6 = v11;
    }
  }

  return result;
}

uint64_t LibSer_SEPControlResponse_GetSize(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294967291;
  }

  result = 0;
  *a2 = a1 + 4;
  return result;
}

uint64_t LibSer_SEPControlResponse_Serialize(void *__src, size_t __n, _DWORD *a3, uint64_t *a4)
{
  result = 4294967293;
  if (a3 && a4)
  {
    v8 = __n + 4;
    if (*a4 < __n + 4)
    {
      return 4294967293;
    }

    else
    {
      *a3 = __n;
      if (__src)
      {
        memcpy(a3 + 1, __src, __n);
      }

      else
      {
        v8 = 4;
      }

      result = 0;
      *a4 = v8;
    }
  }

  return result;
}

uint64_t LibSer_SEPControlResponse_Deserialize(unsigned int *a1, unint64_t a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a2 >= 4 && a3 && a4)
  {
    result = 0;
    v7 = *a1;
    v6 = a1 + 1;
    *a4 = v7;
    if (!v7)
    {
      v6 = 0;
    }

    *a3 = v6;
  }

  return result;
}

uint64_t LibSer_ACMDeserializeSEPControlCode()
{
  OUTLINED_FUNCTION_7();
  if (v4 <= 0xA)
  {
    printf("%s: %s: called.\n", "ACM", "LibSer_ACMDeserializeSEPControlCode");
  }

  v10 = 0;
  v9 = 0;
  v5 = 4294967293;
  if (v1 && v2)
  {
    if (v2 < 0x18)
    {
      v5 = 4294967293;
    }

    else
    {
      v11 = 16;
      v6 = deserializeParameters(v1, v2, &v11, &v10, &v9);
      if (v6)
      {
        v5 = v6;
      }

      else
      {
        v5 = 4294967293;
        if (v1 + v11 != -4 && *(v1 + v11) >= 4u)
        {
          v5 = 0;
          *v0 = *(v1 + v11 + 4);
        }
      }
    }
  }

  Util_SafeDeallocParameters(v10, v9);
  if (v5)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= *(v3 + 1960))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibSer_ACMDeserializeSEPControlCode", v5);
  }

  return v5;
}

uint64_t crypto_generateKeyFromSharedInfo(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, _OWORD *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    OUTLINED_FUNCTION_7_0();
    goto LABEL_31;
  }

  v7 = a4;
  if (a2)
  {
    v9 = a3 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (a1 == 1)
  {
    if (!a7)
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_7_0();
    }

    else
    {
      ccsha256_di();
      v11 = cchkdf();
      v7 = checkCCError(v11, "cchkdf");
      if (v7)
      {
        v12 = 70;
      }

      else
      {
        *a7 = 0u;
        a7[1] = 0u;
        v12 = 10;
      }
    }

    if (v12 < gACMLoggingLevel)
    {
      goto LABEL_28;
    }

    v13 = v7;
    v14 = "crypto_generateKeyFromSharedInfo_version1";
  }

  else
  {
    if (a6)
    {
      v16 = a7 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_7_0();
    }

    else
    {
      ccsha256_di();
      strlen(a6);
      v17 = cchkdf();
      v7 = checkCCError(v17, "cchkdf");
      if (v7)
      {
        v18 = 70;
      }

      else
      {
        *a7 = 0u;
        a7[1] = 0u;
        v18 = 10;
      }
    }

    if (v18 < gACMLoggingLevel)
    {
      goto LABEL_28;
    }

    v13 = v7;
    v14 = "crypto_generateKeyFromSharedInfo_version2";
  }

  printf("%s: %s: returning, err = %ld.\n", "ACM", v14, v13);
LABEL_28:
  if (v7)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

LABEL_31:
  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "crypto_generateKeyFromSharedInfo", v7);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t crypto_generateKey(uint64_t a1)
{
  v2 = 70;
  if (a1)
  {
    generateRandom(a1, 32);
    OUTLINED_FUNCTION_11_0();
    if (v3)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

  else
  {
    v1 = 4294967293;
  }

  if (v2 >= gACMLoggingLevel)
  {
    OUTLINED_FUNCTION_8_0();
    printf("%s: %s: returning, err = %ld.\n", v5, v6, v7);
  }

  return v1;
}

uint64_t crypto_encryptText(uint64_t a1, uint64_t a2)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    if (a1 == 1)
    {
      OUTLINED_FUNCTION_1_1(a1, a2);
      crypto_encryptText_version1();
    }

    else
    {
      OUTLINED_FUNCTION_1_1(a1, a2);
      crypto_encryptText_version2();
    }

    OUTLINED_FUNCTION_11_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_8_0();
    printf("%s: %s: returning, err = %ld.\n", v5, v6, v7);
  }

  return v2;
}

uint64_t crypto_decryptText(uint64_t a1, uint64_t a2)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    if (a1 == 1)
    {
      OUTLINED_FUNCTION_1_1(a1, a2);
      crypto_decryptText_version1();
    }

    else
    {
      OUTLINED_FUNCTION_1_1(a1, a2);
      crypto_decryptText_version2();
    }

    OUTLINED_FUNCTION_11_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_8_0();
    printf("%s: %s: returning, err = %ld.\n", v5, v6, v7);
  }

  return v2;
}

uint64_t crypto_deriveKeyAndEncryptData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_0();
  if (v20)
  {
    v21 = v15 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21 || v16 == 0 || v17 == 0 || v18 == 0 || v19 == 0 || a10 == 0)
  {
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    v27 = v12;
    if (a9)
    {
      v32 = OUTLINED_FUNCTION_4_0(v12, v13, v14, v15, v16, v17, v18, v19, v33, v34, v35, v36, v37[0], v37[1]);
      if (v32)
      {
        v10 = v32;
      }

      else
      {
        v10 = crypto_encryptText(v27, v37);
        if (!v10)
        {
          acm_explicit_bzero(v37, 0x20uLL);
        }
      }
    }

    else
    {
      v28 = 32;
      if (v12 != 1)
      {
        v28 = 33;
      }

      v29 = v28 + v18;
      if (v29)
      {
        v10 = 0;
        *a10 = v29;
      }

      else
      {
        v10 = 4294967280;
      }
    }
  }

  OUTLINED_FUNCTION_5_0();
  if (v20)
  {
    OUTLINED_FUNCTION_8_0();
    printf("%s: %s: returning, err = %ld.\n", v33, v34, v35);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t crypto_deriveKeyAndDecryptData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_0();
  if (v20)
  {
    v21 = v15 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21 || v16 == 0 || v17 == 0 || v18 == 0 || a10 == 0)
  {
    OUTLINED_FUNCTION_7_0();
    goto LABEL_26;
  }

  v26 = v12;
  if (!a9)
  {
    if (v12 == 1)
    {
      if (v18 <= 0x1F)
      {
        goto LABEL_25;
      }

      v27 = v18 - 32;
    }

    else
    {
      v27 = v18 - 33;
      if (v18 < 0x21)
      {
        goto LABEL_25;
      }
    }

    if (v27)
    {
      v10 = 0;
      *a10 = v27;
      goto LABEL_26;
    }

LABEL_25:
    v10 = 4294967280;
    goto LABEL_26;
  }

  v30 = OUTLINED_FUNCTION_4_0(v12, v13, v14, v15, v16, v17, v18, v19, v31, v32, v33, v34, v35[0], v35[1]);
  if (v30)
  {
    v10 = v30;
  }

  else
  {
    v10 = crypto_decryptText(v26, v35);
    if (!v10)
    {
      acm_explicit_bzero(v35, 0x20uLL);
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_5_0();
  if (v20)
  {
    OUTLINED_FUNCTION_8_0();
    printf("%s: %s: returning, err = %ld.\n", v31, v32, v33);
  }

  v28 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t crypto_generateRandomSaltLazily()
{
  OUTLINED_FUNCTION_7_0();
  if (v1)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v1;
      while (Util_isNullOrZeroMemory(v4, v3))
      {
        Random = generateRandom(v4, v3);
        if (Random)
        {
          v0 = Random;
          goto LABEL_8;
        }
      }

      v0 = 0;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_5_0();
  if (v6)
  {
    OUTLINED_FUNCTION_8_0();
    printf("%s: %s: returning, err = %ld.\n", v8, v9, v10);
  }

  return v0;
}

void LibCall_ACMGlobalContextCredentialGetProperty_Block(uint64_t (*a1)(uint64_t, uint64_t, void, uint64_t *, uint64_t, _BYTE *, uint64_t *), uint64_t a2, int a3, int a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextCredentialGetProperty_Block");
  }

  bzero(v19, 0x100uLL);
  v17 = 256;
  if (a1)
  {
    v18 = 0;
    v16 = 8;
    Property_Serialize = LibSer_GlobalContextCredentialGetProperty_Serialize(a3, a4, &v18, &v16);
    if (Property_Serialize)
    {
LABEL_7:
      v11 = Property_Serialize;
      goto LABEL_8;
    }

    if (v16 == 8)
    {
      Property_Serialize = a1(a2, 27, 0, &v18, 8, v19, &v17);
      goto LABEL_7;
    }

    v11 = 4294967291;
  }

  else
  {
    v11 = 4294967293;
  }

LABEL_8:
  if (a5)
  {
    v12 = OUTLINED_FUNCTION_0_3();
    v13(v12, v11);
  }

  if (v11)
  {
    v14 = 70;
  }

  else
  {
    v14 = 10;
  }

  if (v14 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMGlobalContextCredentialGetProperty_Block", v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t LibCall_ACMContextVerifyPolicyWithPreflight_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextVerifyPolicyWithPreflight_Block");
  }

  v17 = 0;
  v16 = 0;
  v12 = 70;
  v13 = 4294967293;
  if (a3 && a4 && a6)
  {
    v13 = LibCall_ACMContextVerifyPolicyEx(a1, a2, a3, a4, a5, 0, 0, 0, &v16, &v17);
    v14 = v17;
    if (!v13)
    {
      (*(a6 + 16))(a6, v16, v17);
      v14 = v17;
    }

    if (v14)
    {
      Util_DeallocRequirement(v14);
    }

    if (v13)
    {
      v12 = 70;
    }

    else
    {
      v12 = 10;
    }
  }

  if (v12 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextVerifyPolicyWithPreflight_Block", v13);
  }

  return v13;
}

int *LibCall_ACMContextVerifyPolicyEx_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextVerifyPolicyEx_Block");
  }

  v17 = 0;
  v18 = 0;
  v22 = 0;
  v21 = 0;
  v19 = 4294967293;
  if (a3 && a4 && a9)
  {
    v19 = LibCall_ACMContextVerifyPolicyEx(a1, a2, a3, a4, a5, a6, a7, a8, &v21, &v22);
    v18 = v22;
    v17 = v21;
  }

  (*(a9 + 16))(a9, v19, v17 & 1, v18);
  result = v22;
  if (v22)
  {
    result = Util_DeallocRequirement(v22);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMContextVerifyPolicyEx_Block");
  }

  return result;
}

uint64_t LibCall_ACMGetEnvironmentVariable_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetEnvironmentVariable_Block");
  }

  memset(v18, 0, sizeof(v18));
  v17 = 128;
  if (!a4)
  {
    v14 = 70;
    v9 = 4294967293;
    goto LABEL_11;
  }

  if (a3 == 36)
  {
    v8 = acm_mem_alloc_data(0x800uLL);
    acm_mem_alloc_info("<data>", v8, 2048, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCallBlock.c", 162, "LibCall_ACMGetEnvironmentVariable_Block");
    if (!v8)
    {
      v14 = 70;
      v9 = 4294967292;
      goto LABEL_11;
    }

    v17 = 2048;
    v9 = LibCall_ACMGetEnvironmentVariable(a1, a2, 36, v8, &v17);
    if (!v9)
    {
      v10 = OUTLINED_FUNCTION_0_3();
      v11(v10);
      acm_mem_free_info("<data>", v8, 0x800uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCallBlock.c", 176, "LibCall_ACMGetEnvironmentVariable_Block");
      acm_mem_free_data(v8, 0x800uLL);
LABEL_10:
      v14 = 10;
      goto LABEL_11;
    }

    acm_mem_free_info("<data>", v8, 0x800uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCallBlock.c", 176, "LibCall_ACMGetEnvironmentVariable_Block");
    acm_mem_free_data(v8, 0x800uLL);
  }

  else
  {
    v9 = LibCall_ACMGetEnvironmentVariable(a1, a2, a3, v18, &v17);
    if (!v9)
    {
      v12 = OUTLINED_FUNCTION_0_3();
      v13(v12);
      goto LABEL_10;
    }
  }

  v14 = 70;
LABEL_11:
  if (v14 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMGetEnvironmentVariable_Block", v9);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t LibCall_ACMTRMLoadState_Block(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v15 = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMTRMLoadState_Block");
  }

  bzero(v14, 0x2000uLL);
  v13 = 0x2000;
  if (v3)
  {
    v7 = LibCall_ACMTRMLoadState(v6, v5, v14, &v13);
    if (v7)
    {
      v10 = 70;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_0_3();
      v9(v8);
      v10 = 10;
    }
  }

  else
  {
    v10 = 70;
    v7 = 4294967293;
  }

  if (v10 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMTRMLoadState_Block", v7);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t LibCall_ACMContextUnloadToImage_Block(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v11 = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextUnloadToImage_Block");
  }

  bzero(v10, 0x1000uLL);
  if (v2)
  {
    LibCall_ACMContextUnloadToImage();
    v4 = v3;
    if (v3)
    {
      v7 = 70;
    }

    else
    {
      v5 = OUTLINED_FUNCTION_0_3();
      v6(v5);
      v7 = 10;
    }
  }

  else
  {
    v7 = 70;
    v4 = 4294967293;
  }

  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextUnloadToImage_Block", v4);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t Util_WriteToBuffer(uint64_t a1, size_t a2, void *a3, void *__src, size_t __n)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_WriteToBuffer");
  }

  if (a3)
  {
    v10 = *a3;
    v11 = *a3 + __n;
    if (!__CFADD__(*a3, __n))
    {
      if (a1 && v11 > a2)
      {
        v12 = 4294967276;
        goto LABEL_19;
      }

      if (!a1 || !__src || !__n)
      {
        goto LABEL_12;
      }

      if (!__CFADD__(a1, v10))
      {
        memcpy((a1 + v10), __src, __n);
LABEL_12:
        v12 = 0;
        *a3 = v11;
        v13 = 10;
        goto LABEL_13;
      }
    }

    v12 = 4294967291;
  }

  else
  {
    v12 = 4294967293;
  }

LABEL_19:
  v13 = 70;
LABEL_13:
  if (v13 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_WriteToBuffer", v12);
  }

  return v12;
}

uint64_t Util_ReadFromBuffer(uint64_t a1, size_t a2, void *a3, void *__dst, size_t __n)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_ReadFromBuffer");
  }

  v10 = 4294967293;
  v11 = 70;
  if (a1 && a3)
  {
    v12 = *a3;
    v13 = *a3 + __n;
    if (!__CFADD__(*a3, __n))
    {
      if (v13 > a2)
      {
        v10 = 4294967276;
        goto LABEL_17;
      }

      if (!__dst || !__n)
      {
        goto LABEL_11;
      }

      if (!__CFADD__(a1, v12))
      {
        memcpy(__dst, (a1 + v12), __n);
LABEL_11:
        v10 = 0;
        *a3 = v13;
        v11 = 10;
        goto LABEL_12;
      }
    }

    v10 = 4294967291;
LABEL_17:
    v11 = 70;
  }

LABEL_12:
  if (v11 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_ReadFromBuffer", v10);
  }

  return v10;
}

rsize_t Util_DeallocCredential(_DWORD *a1)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_DeallocCredential");
  }

  if (a1)
  {
    v2 = 4294967293;
    v3 = 70;
    switch(*a1)
    {
      case 1:
        v4 = "ACMCredential - ACMCredentialDataPasscodeValidated";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 60;
        v5 = a1;
        v6 = 60;
        v9 = 146;
        goto LABEL_6;
      case 2:
        v4 = "ACMCredential - ACMCredentialDataPassphraseEntered";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 168;
        v5 = a1;
        v6 = 168;
        v9 = 138;
        goto LABEL_6;
      case 3:
        v4 = "ACMCredential - ACMCredentialDataBiometryMatched";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 337;
        v5 = a1;
        v6 = 337;
        v9 = 142;
        goto LABEL_6;
      case 4:
      case 5:
      case 6:
      case 8:
      case 0xE:
      case 0x10:
      case 0x13:
      case 0x16:
      case 0x17:
        OUTLINED_FUNCTION_3_1();
        v9 = 191;
        goto LABEL_6;
      case 7:
        v4 = "ACMCredential - ACMCredentialDataUserOutputDisplayed";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 88;
        v5 = a1;
        v6 = 88;
        v9 = 154;
        goto LABEL_6;
      case 9:
        v4 = "ACMCredential - ACMCredentialDataContinuityUnlock";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 56;
        v5 = a1;
        v6 = 56;
        v9 = 158;
        goto LABEL_6;
      case 0xA:
        v4 = "ACMCredential - ACMCredentialDataPasscodeValidated2";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 84;
        v5 = a1;
        v6 = 84;
        v9 = 150;
        goto LABEL_6;
      case 0xC:
      case 0xF:
        v4 = "ACMCredential - ACMCredentialDataKextDenyList";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 40;
        v5 = a1;
        v6 = 40;
        v9 = 163;
        goto LABEL_6;
      case 0xD:
        v4 = "ACMCredential - ACMCredentialDataPassphraseExtractable";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 164;
        v5 = a1;
        v6 = 164;
        v9 = 133;
        goto LABEL_6;
      case 0x11:
        v4 = "ACMCredential - ACMCredentialDataSecureIntent";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 113;
        v5 = a1;
        v6 = 113;
        v9 = 167;
        goto LABEL_6;
      case 0x12:
        v4 = "ACMCredential - ACMCredentialDataBiometryMatchAttempted";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 52;
        v5 = a1;
        v6 = 52;
        v9 = 171;
        goto LABEL_6;
      case 0x14:
        v4 = "ACMCredential - ACMCredentialDataAP";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 64;
        v5 = a1;
        v6 = 64;
        v9 = 175;
        goto LABEL_6;
      case 0x15:
        v4 = "ACMCredential - ACMCredentialDataSignature";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 164;
        v5 = a1;
        v6 = 164;
        v9 = 179;
LABEL_6:
        acm_mem_free_info(v4, v5, v6, v7, v9, v8);
        acm_mem_free(a1, v2);
        v2 = 0;
        v3 = 10;
        break;
      default:
        break;
    }
  }

  else
  {
    v2 = 4294967293;
    v3 = 70;
  }

  if (v3 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_DeallocCredential", v2);
  }

  return v2;
}

uint64_t Util_AllocCredential(int a1, void *a2)
{
  if (!a2)
  {
    return 4294967293;
  }

  result = 4294967293;
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_1_2();
      v6 = acm_mem_alloc_typed(0x3CuLL, v18);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataPasscodeValidated", v6, 60, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 230, "Util_AllocCredential");
      v7 = 28;
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_1_2();
      v6 = acm_mem_alloc_typed(0xA8uLL, v19);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataPassphraseEntered", v6, 168, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 220, "Util_AllocCredential");
      v7 = 136;
      goto LABEL_4;
    case 3:
      OUTLINED_FUNCTION_1_2();
      v6 = acm_mem_alloc_typed(0x151uLL, v15);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataBiometryMatched", v6, 337, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 225, "Util_AllocCredential");
      v7 = 305;
      goto LABEL_4;
    case 4:
    case 5:
    case 6:
    case 8:
    case 14:
    case 16:
    case 19:
    case 22:
    case 23:
      OUTLINED_FUNCTION_1_2();
      v6 = acm_mem_alloc_typed(0x20uLL, v5);
      acm_mem_alloc_info("ACMCredential", v6, 32, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 284, "Util_AllocCredential");
      v7 = 0;
      goto LABEL_4;
    case 7:
      OUTLINED_FUNCTION_1_2();
      v6 = acm_mem_alloc_typed(0x58uLL, v17);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataUserOutputDisplayed", v6, 88, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 240, "Util_AllocCredential");
      v7 = 56;
      goto LABEL_4;
    case 9:
      OUTLINED_FUNCTION_1_2();
      v6 = acm_mem_alloc_typed(0x38uLL, v14);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataContinuityUnlock", v6, 56, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 245, "Util_AllocCredential");
      v7 = 24;
      goto LABEL_4;
    case 10:
      OUTLINED_FUNCTION_1_2();
      v6 = acm_mem_alloc_typed(0x54uLL, v20);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataPasscodeValidated2", v6, 84, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 235, "Util_AllocCredential");
      v7 = 52;
      goto LABEL_4;
    case 12:
    case 15:
      OUTLINED_FUNCTION_1_2();
      v6 = acm_mem_alloc_typed(0x28uLL, v8);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataKextDenyList", v6, 40, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 251, "Util_AllocCredential");
      v7 = 8;
      goto LABEL_4;
    case 13:
      OUTLINED_FUNCTION_1_2();
      v6 = acm_mem_alloc_typed(0xA4uLL, v21);
      v11 = "ACMCredential - ACMCredentialDataPassphraseExtractable";
      v12 = v6;
      v13 = 214;
      goto LABEL_17;
    case 17:
      OUTLINED_FUNCTION_1_2();
      v6 = acm_mem_alloc_typed(0x71uLL, v9);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataSecureIntent", v6, 113, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 256, "Util_AllocCredential");
      v7 = 81;
      goto LABEL_4;
    case 18:
      OUTLINED_FUNCTION_1_2();
      v6 = acm_mem_alloc_typed(0x34uLL, v16);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataBiometryMatchAttempted", v6, 52, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 261, "Util_AllocCredential");
      v7 = 20;
      goto LABEL_4;
    case 20:
      OUTLINED_FUNCTION_1_2();
      v6 = acm_mem_alloc_typed(0x40uLL, v22);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataAP", v6, 64, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 266, "Util_AllocCredential");
      v7 = 32;
      goto LABEL_4;
    case 21:
      OUTLINED_FUNCTION_1_2();
      v6 = acm_mem_alloc_typed(0xA4uLL, v10);
      v11 = "ACMCredential - ACMCredentialDataSignature";
      v12 = v6;
      v13 = 271;
LABEL_17:
      acm_mem_alloc_info(v11, v12, 164, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", v13, "Util_AllocCredential");
      v7 = 132;
LABEL_4:
      if (v6)
      {
        result = 0;
        *v6 = a1;
        v6[1] = 1;
        v6[7] = v7;
        v6[3] = -1;
        *a2 = v6;
      }

      else
      {
        result = 4294967292;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t Util_AllocRequirement(int a1, int a2, void *a3)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_AllocRequirement");
  }

  if (!a3)
  {
LABEL_61:
    v6 = 4294967293;
    goto LABEL_62;
  }

  v6 = 4294967293;
  v7 = 70;
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x14uLL, v35);
      OUTLINED_FUNCTION_4_1();
      v23 = 346;
      goto LABEL_57;
    case 2:
      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x14uLL, v34);
      OUTLINED_FUNCTION_4_1();
      v23 = 351;
      goto LABEL_57;
    case 3:
      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0xACuLL, v32);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataBiometryMatched", v9, 172, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 356, "Util_AllocRequirement");
      v10 = 156;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_5_1();
      if (!v12)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x64uLL, v28);
      v29 = "ACMRequirement - ACMRequirementDataOr";
      v30 = v9;
      v31 = 414;
      goto LABEL_45;
    case 5:
      OUTLINED_FUNCTION_5_1();
      if (!v12)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x64uLL, v33);
      v29 = "ACMRequirement - ACMRequirementDataAnd";
      v30 = v9;
      v31 = 406;
LABEL_45:
      acm_mem_alloc_info(v29, v30, 100, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", v31, "Util_AllocRequirement");
      v10 = 84;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 6:
    case 9:
    case 10:
    case 12:
    case 14:
    case 15:
    case 18:
    case 19:
    case 22:
    case 23:
    case 27:
    case 28:
      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x10uLL, v8);
      acm_mem_alloc_info("ACMRequirement", v9, 16, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 336, "Util_AllocRequirement");
      v10 = 0;
      if (v9)
      {
        goto LABEL_6;
      }

      goto LABEL_58;
    case 7:
      OUTLINED_FUNCTION_5_1();
      if (!v12)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x68uLL, v24);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKofN", v9, 104, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 399, "Util_AllocRequirement");
      v10 = 88;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 8:
      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x410uLL, v26);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataAccessGroups", v9, 1040, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 386, "Util_AllocRequirement");
      v10 = 1024;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 11:
      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x18uLL, v36);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataPushButton", v9, 24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 341, "Util_AllocRequirement");
      v10 = 8;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 13:
      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x30uLL, v27);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataUserOutputDisplayed", v9, 48, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 371, "Util_AllocRequirement");
      v10 = 32;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 16:
    case 17:
      goto LABEL_19;
    case 20:
      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x14uLL, v37);
      OUTLINED_FUNCTION_4_1();
      v23 = 361;
      goto LABEL_57;
    case 21:
      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x14uLL, v17);
      OUTLINED_FUNCTION_4_1();
      v23 = 366;
LABEL_57:
      acm_mem_alloc_info(v18, v19, v20, v21, v23, v22);
      v10 = 4;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 24:
      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x434uLL, v16);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataAP", v9, 1076, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 376, "Util_AllocRequirement");
      v10 = 1060;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 25:
      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x3BuLL, v15);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKeyRef", v9, 59, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 381, "Util_AllocRequirement");
      v10 = 43;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 26:
      OUTLINED_FUNCTION_0_4();
      v9 = acm_mem_alloc_typed(0x2CuLL, v25);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataRatchet", v9, 44, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 392, "Util_AllocRequirement");
      v10 = 28;
      if (v9)
      {
LABEL_6:
        *v9 = a1;
        *(v9 + 1) = 0x100000001;
        v9[3] = v10;
        if ((a1 & 0xFFFFFFFE) == 4)
        {
          v11 = 4;
        }

        else if (a1 == 7)
        {
          v11 = 5;
        }

        else
        {
          if (a1 != 1000)
          {
LABEL_18:
            v6 = 0;
            *a3 = v9;
            v7 = 10;
            goto LABEL_19;
          }

          v11 = 13;
        }

        v9[v11] = a2;
        goto LABEL_18;
      }

LABEL_58:
      v6 = 4294967292;
LABEL_62:
      v7 = 70;
LABEL_19:
      if (v7 >= gACMLoggingLevel)
      {
        printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_AllocRequirement", v6);
      }

      return v6;
    default:
      switch(a1)
      {
        case 1000:
          OUTLINED_FUNCTION_5_1();
          if (!v12)
          {
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_0_4();
          v9 = acm_mem_alloc_typed(0x88uLL, v13);
          acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKofNWithAttributes", v9, 136, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 422, "Util_AllocRequirement");
          v10 = 120;
          if (!v9)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        case 1001:
          OUTLINED_FUNCTION_0_4();
          v9 = acm_mem_alloc_typed(0xB8uLL, v44);
          acm_mem_alloc_info("ACMRequirement - ACMRequirementDataBiometryMatchedWithAttributes", v9, 184, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 427, "Util_AllocRequirement");
          v10 = 168;
          if (!v9)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        case 1002:
          OUTLINED_FUNCTION_0_4();
          v9 = acm_mem_alloc_typed(0x20uLL, v42);
          v39 = "ACMRequirement - ACMRequirementDataPushButtonWithAttributes";
          v40 = v9;
          v41 = 432;
          goto LABEL_54;
        case 1003:
          OUTLINED_FUNCTION_0_4();
          v9 = acm_mem_alloc_typed(0x14uLL, v43);
          OUTLINED_FUNCTION_4_1();
          v23 = 437;
          goto LABEL_57;
        case 1004:
          OUTLINED_FUNCTION_0_4();
          v9 = acm_mem_alloc_typed(0x20uLL, v38);
          v39 = "ACMRequirement - ACMRequirementDataPasscodeValidatedWithAttributes";
          v40 = v9;
          v41 = 442;
LABEL_54:
          acm_mem_alloc_info(v39, v40, 32, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", v41, "Util_AllocRequirement");
          v10 = 16;
          if (!v9)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        default:
          goto LABEL_19;
      }
  }
}