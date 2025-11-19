@interface LNPackageMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)resolveWithImagePath:(id)a3 executablePath:(id)a4 rpaths:(id)a5 partialResults:(id)a6 error:(id *)a7;
- (LNPackageMetadata)initWithCoder:(id)a3;
- (LNPackageMetadata)initWithIncludes:(id)a3;
- (id)_initWithMetadataFileURL:(id)a3 bundleURL:(id)a4 error:(id *)a5;
- (id)description;
- (id)linkerSymbolNames;
- (id)resolveWithBundle:(id)a3 error:(id *)a4;
- (id)verboseDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNPackageMetadata

- (id)_initWithMetadataFileURL:(id)a3 bundleURL:(id)a4 error:(id *)a5
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18[-v8];
  v10 = sub_18F0932BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  sub_18F09327C();
  if (a4)
  {
    sub_18F09327C();
    (*(v11 + 32))(v9, v15, v10);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v16, 1, v10);
  LNPackageMetadata.init(metadataFileURL:bundleURL:)();
  return result;
}

- (BOOL)resolveWithImagePath:(id)a3 executablePath:(id)a4 rpaths:(id)a5 partialResults:(id)a6 error:(id *)a7
{
  v89 = *MEMORY[0x1E69E9840];
  v58 = a3;
  v57 = a4;
  v53 = a5;
  v56 = a6;
  v54 = [(LNPackageMetadata *)self linkerSymbolNames];
  if ([v54 count])
  {
    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__8615;
    v81 = __Block_byref_object_dispose__8616;
    v82 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy__8615;
    v75 = __Block_byref_object_dispose__8616;
    v76 = 0;
    v11 = getLNLogCategoryMetadata();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v86 = v58;
      v87 = 2112;
      v88 = v54;
      _os_log_impl(&dword_18EF7E000, v11, OS_LOG_TYPE_DEBUG, "resolving %@ looking for symbols %@", buf, 0x16u);
    }

    v12 = v58;
    v13 = a7;
    v14 = [v58 fileSystemRepresentation];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __85__LNPackageMetadata_resolveWithImagePath_executablePath_rpaths_partialResults_error___block_invoke;
    v67[3] = &unk_1E72B14F0;
    v68 = v54;
    v69 = &v77;
    v70 = &v71;
    v15 = macho_good_enough_slice(v14, v67);
    v16 = v15;
    if (v72[5] && v78[5])
    {
      v17 = [v53 arrayByAddingObjectsFromArray:?];
      v18 = [MEMORY[0x1E695DF70] array];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v19 = v72[5];
      v20 = [v19 countByEnumeratingWithState:&v63 objects:v84 count:16];
      if (v20)
      {
        v21 = *v64;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v64 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v63 + 1) + 8 * i);
            if ([v23 length])
            {
              v24 = [v58 stringByDeletingLastPathComponent];
              v25 = _URLFromLibraryName(v23, 0, v24, v57, v17);

              if (!v25)
              {
                v44 = getLNLogCategoryMetadata();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v86 = v23;
                  v87 = 2112;
                  v88 = v17;
                  _os_log_impl(&dword_18EF7E000, v44, OS_LOG_TYPE_ERROR, "could not resolve library name %@ to path: tried %@", buf, 0x16u);
                }

                if (a7)
                {
                  [MEMORY[0x1E696ABC0] errorWithErrno:85 forFilePath:v58];
                  *a7 = LOBYTE(v39) = 0;
                }

                else
                {
LABEL_59:
                  LOBYTE(v39) = 0;
                }

                goto LABEL_60;
              }

              v26 = _CFBundleCopyBundleURLForExecutableURL();
              v27 = [v26 absoluteURL];

              if (([v18 containsObject:v27] & 1) == 0)
              {
                [v18 addObject:v27];
              }
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v63 objects:v84 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v19 = v18;
      v28 = [v19 countByEnumeratingWithState:&v59 objects:v83 count:16];
      if (v28)
      {
        v52 = *v60;
        *&v29 = 138412546;
        v51 = v29;
        while (2)
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v60 != v52)
            {
              objc_enumerationMutation(v19);
            }

            v31 = *(*(&v59 + 1) + 8 * j);
            if (([v56 containsObject:{v31, v51}] & 1) == 0)
            {
              [v56 addObject:v31];
              v32 = [objc_alloc(MEMORY[0x1E696AAE8]) _initUniqueWithURL:v31];
              v33 = [[LNPackageMetadata alloc] initFrom:v32 error:a7];
              if (!v33)
              {
                v34 = getLNLogCategoryMetadata();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v35 = [v31 path];
                  v36 = v35;
                  v37 = a7;
                  if (a7)
                  {
                    v37 = *a7;
                  }

                  *buf = v51;
                  v86 = v35;
                  v87 = 2112;
                  v88 = v37;
                  _os_log_impl(&dword_18EF7E000, v34, OS_LOG_TYPE_ERROR, "could not get package metadata from bundle %@, %@", buf, 0x16u);
                }
              }

              v38 = [v32 executablePathWithError:a7];
              if (!v38)
              {
                v45 = getLNLogCategoryMetadata();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  v46 = [v31 path];
                  v47 = v46;
                  v48 = a7;
                  if (a7)
                  {
                    v48 = *a7;
                  }

                  *buf = v51;
                  v86 = v46;
                  v87 = 2112;
                  v88 = v48;
                  _os_log_impl(&dword_18EF7E000, v45, OS_LOG_TYPE_ERROR, "bundle %@ has no executable, %@", buf, 0x16u);
                }

                v38 = 0;
LABEL_58:

                goto LABEL_59;
              }

              if (!v33)
              {
                goto LABEL_58;
              }

              v39 = [v33 resolveWithImagePath:v38 executablePath:v57 rpaths:v17 partialResults:v56 error:a7];

              if (!v39)
              {
                goto LABEL_60;
              }
            }
          }

          v28 = [v19 countByEnumeratingWithState:&v59 objects:v83 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v19 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v40 = [v56 allObjects];
        v41 = [v40 if_map:&__block_literal_global_38_8624];
        *buf = 138412546;
        v86 = v58;
        v87 = 2112;
        v88 = v41;
        _os_log_impl(&dword_18EF7E000, v19, OS_LOG_TYPE_DEBUG, "success: %@ includes %@", buf, 0x16u);
      }

      LOBYTE(v39) = 1;
LABEL_60:
    }

    else
    {
      if (a7)
      {
        v42 = MEMORY[0x1E696ABC0];
        if (!v15)
        {
          v16 = *__error();
        }

        [v42 errorWithErrno:v16 forFilePath:v58];
        *a7 = v13 = a7;
      }

      v17 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        if (v13)
        {
          v43 = *v13;
        }

        else
        {
          v43 = 0;
        }

        *buf = 138412546;
        v86 = v58;
        v87 = 2112;
        v88 = v43;
        _os_log_impl(&dword_18EF7E000, v17, OS_LOG_TYPE_DEBUG, "could not resolve package includes in %@ - %@", buf, 0x16u);
      }

      LOBYTE(v39) = 0;
    }

    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(&v77, 8);
  }

  else
  {
    LOBYTE(v39) = 1;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v39;
}

void __85__LNPackageMetadata_resolveWithImagePath_executablePath_rpaths_partialResults_error___block_invoke(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = mh_validate(a2, a4);
  *__error() = v6;
  if (v6)
  {
    goto LABEL_27;
  }

  v28 = a1;
  v7 = *(a1 + 32);
  v8 = malloc_type_malloc(8 * [v7 count], 0x10040436913F5uLL);
  if (v8)
  {
    v9 = [v7 count];
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = [v7 objectAtIndex:i];
        v8[i] = [v11 UTF8String];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = malloc_type_malloc(8 * v9, 0x10040436913F5uLL);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __mh_symlibnames_block_invoke;
  v29[3] = &unk_1E72B1560;
  v29[6] = v12;
  v29[7] = v8;
  v29[4] = &v30;
  v29[5] = v9;
  v13 = macho_for_each_imported_symbol();
  if (v13)
  {
    goto LABEL_17;
  }

  if (v31[3] < v9)
  {
    v14 = v12;
    v15 = v8;
    v16 = v9;
    do
    {
      if (!*v14)
      {
        v17 = getLNLogCategoryMetadata();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = *v15;
          *buf = 136315138;
          v35 = v18;
        }
      }

      ++v15;
      ++v14;
      --v16;
    }

    while (v16);
    v13 = 22;
LABEL_17:
    free(v12);
    v12 = 0;
    *__error() = v13;
  }

  _Block_object_dispose(&v30, 8);
  v29[0] = 0;
  v19 = mh_cmdstrs(a2, v29, is_rpath);
  v20 = v19;
  if (v12 && v19)
  {
    v21 = strlist_to_array(v19, v29[0]);
    v22 = *(*(v28 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v24 = strlist_to_array(v12, v9);
    v25 = *(*(v28 + 48) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

LABEL_22:
    free(v12);
    goto LABEL_23;
  }

  if (v12)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v20)
  {
    free(v20);
  }

  if (v8)
  {
    free(v8);
  }

LABEL_27:
  v27 = *MEMORY[0x1E69E9840];
}

- (id)linkerSymbolNames
{
  v2 = [(LNPackageMetadata *)self includes];
  v3 = [v2 if_map:&__block_literal_global_8635];

  return v3;
}

- (id)resolveWithBundle:(id)a3 error:(id *)a4
{
  v6 = [a3 executablePathWithError:a4];
  v7 = [MEMORY[0x1E695DFA8] set];
  if (!v6)
  {
    v16 = 0;
    goto LABEL_9;
  }

  v8 = [v6 stringByDeletingLastPathComponent];
  v25 = 0;
  v9 = MEMORY[0x1E695E0F0];
  v10 = [(LNPackageMetadata *)self resolveWithImagePath:v6 executablePath:v8 rpaths:MEMORY[0x1E695E0F0] partialResults:v7 error:&v25];
  v11 = v25;

  v12 = [v6 stringByAppendingString:@".debug.dylib"];
  v13 = [v6 stringByDeletingLastPathComponent];
  v24 = 0;
  LOBYTE(v9) = [(LNPackageMetadata *)self resolveWithImagePath:v12 executablePath:v13 rpaths:v9 partialResults:v7 error:&v24];
  v14 = v24;

  if (v9)
  {
    v15 = v14;
LABEL_6:
    v16 = [v7 allObjects];
    goto LABEL_7;
  }

  v17 = [v6 stringByAppendingString:@".preview.dylib"];
  v18 = [v6 stringByDeletingLastPathComponent];
  v23 = v14;
  v19 = [(LNPackageMetadata *)self resolveWithImagePath:v17 executablePath:v18 rpaths:MEMORY[0x1E695E0F0] partialResults:v7 error:&v23];
  v15 = v23;

  if (v10 || v19)
  {
    goto LABEL_6;
  }

  if (v11)
  {
    v21 = v11;
    v16 = 0;
    *a4 = v11;
  }

  else
  {
    if (!v15)
    {
      v16 = 0;
      goto LABEL_8;
    }

    v22 = v15;
    v16 = 0;
    *a4 = v15;
  }

LABEL_7:

LABEL_8:
LABEL_9:

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNPackageMetadata *)self includes];
        v8 = [(LNPackageMetadata *)v6 includes];

        if (v7 == v8)
        {
          v18 = 1;
          goto LABEL_12;
        }

        v9 = [(LNPackageMetadata *)self includes];
        if (!v9 || (v10 = v9, [(LNPackageMetadata *)v6 includes], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
        {
          v18 = 0;
          goto LABEL_12;
        }

        v12 = MEMORY[0x1E695DFD8];
        v13 = [(LNPackageMetadata *)self includes];
        v14 = [v12 setWithArray:v13];
        v15 = MEMORY[0x1E695DFD8];
        v16 = [(LNPackageMetadata *)v6 includes];
        v17 = [v15 setWithArray:v16];
        v18 = [v14 isEqualToSet:v17];
      }

      else
      {
        v18 = 0;
        v13 = v6;
        v6 = 0;
      }
    }

    else
    {
      v13 = 0;
      v18 = 0;
    }

LABEL_12:
    goto LABEL_13;
  }

  v18 = 1;
LABEL_13:

  return v18;
}

- (unint64_t)hash
{
  v2 = [(LNPackageMetadata *)self includes];
  v3 = [v2 hash];

  return v3;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNPackageMetadata *)self includes];
  v7 = [v3 stringWithFormat:@"<%@: %p, includes: %@>", v5, self, v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNPackageMetadata *)self includes];
  v7 = [v3 stringWithFormat:@"<%@: %p, includes: %lu>", v5, self, objc_msgSend(v6, "count")];

  return v7;
}

- (LNPackageMetadata)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"includes"];

  if (v8)
  {
    self = [(LNPackageMetadata *)self initWithIncludes:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNPackageMetadata *)self includes];
  [v4 encodeObject:v5 forKey:@"includes"];
}

- (LNPackageMetadata)initWithIncludes:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LNPackageMetadata;
  v5 = [(LNPackageMetadata *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    includes = v5->_includes;
    v5->_includes = v6;

    v8 = v5;
  }

  return v5;
}

@end