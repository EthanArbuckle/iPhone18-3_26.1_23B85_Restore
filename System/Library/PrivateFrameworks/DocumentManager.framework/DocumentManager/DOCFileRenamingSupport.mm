@interface DOCFileRenamingSupport
+ (BOOL)_validateFileName:(id)name error:(id *)error;
+ (id)_filteredNameForName:(id)name error:(id *)error;
+ (id)_urlForProposedName:(id)name originalURL:(id)l error:(id *)error;
+ (id)fallbackRename:(id)rename toProposedName:(id)name error:(id *)error;
@end

@implementation DOCFileRenamingSupport

+ (id)fallbackRename:(id)rename toProposedName:(id)name error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  renameCopy = rename;
  nameCopy = name;
  v24 = 0;
  v9 = [objc_opt_class() _urlForProposedName:nameCopy originalURL:renameCopy error:&v24];

  v10 = v24;
  v11 = v10;
  if (!v9 || v10)
  {
    v18 = MEMORY[0x1E699A450];
    v19 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [DOCFileRenamingSupport fallbackRename:v11 toProposedName:v19 error:?];
    }

    v17 = 0;
    if (error && v11)
    {
      v20 = v11;
      v17 = 0;
      *error = v11;
    }
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v23 = 0;
    v13 = [defaultManager moveItemAtURL:renameCopy toURL:v9 error:&v23];
    v14 = v23;

    v15 = MEMORY[0x1E699A450];
    v16 = *MEMORY[0x1E699A450];
    if (v13)
    {
      if (!v16)
      {
        DOCInitLogging();
        v16 = *v15;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v26 = renameCopy;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_1E57D8000, v16, OS_LOG_TYPE_INFO, "Renamed: %@ to: %@", buf, 0x16u);
      }

      v17 = v9;
    }

    else
    {
      if (!v16)
      {
        DOCInitLogging();
        v16 = *v15;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [DOCFileRenamingSupport fallbackRename:v16 toProposedName:v14 error:?];
      }

      v17 = 0;
      if (error && v14)
      {
        v21 = v14;
        v17 = 0;
        *error = v14;
      }
    }
  }

  return v17;
}

+ (BOOL)_validateFileName:(id)name error:(id *)error
{
  nameCopy = name;
  if ([nameCopy hasPrefix:@"."])
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"You can’t use a name that begins with a dot “.”, because these names are reserved for the system. Please choose another name.";
  }

  else if ([nameCopy containsString:@":"])
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"You can’t use a name that contains “:”. Please choose another name.";
  }

  else
  {
    if ([nameCopy length])
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_11;
    }

    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"You can’t use an empty name. Please choose another name.";
  }

  v11 = [v6 localizedStringForKey:v8 value:v8 table:@"Localizable"];

  v9 = __50__DOCFileRenamingSupport__validateFileName_error___block_invoke(v12, v11, *MEMORY[0x1E696A250], 258);

  v10 = v9 == 0;
  if (error && v9)
  {
    v13 = v9;
    v10 = 0;
    *error = v9;
  }

LABEL_11:

  return v10;
}

id __50__DOCFileRenamingSupport__validateFileName_error___block_invoke(uint64_t a1, __CFString *a2, void *a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = @"UNLOCALIZED";
  }

  v13 = *MEMORY[0x1E696A578];
  v14[0] = v6;
  v7 = MEMORY[0x1E695DF20];
  v8 = a3;
  v9 = a2;
  v10 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:v8 code:a4 userInfo:v10];

  return v11;
}

+ (id)_filteredNameForName:(id)name error:(id *)error
{
  nameCopy = name;
  v14 = 0;
  v6 = [objc_opt_class() _validateFileName:nameCopy error:&v14];
  v7 = v14;
  v8 = v7;
  if (v6)
  {
    v9 = [nameCopy stringByReplacingOccurrencesOfString:@"/" withString:@":"];
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
    lastPathComponent = [v10 lastPathComponent];
  }

  else
  {
    lastPathComponent = 0;
    if (error && v7)
    {
      v12 = v7;
      lastPathComponent = 0;
      *error = v8;
    }
  }

  return lastPathComponent;
}

+ (id)_urlForProposedName:(id)name originalURL:(id)l error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  lCopy = l;
  nameCopy = name;
  pathExtension = [lCopy pathExtension];
  v10 = [pathExtension length];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];

  v26 = 0;
  v12 = [objc_opt_class() _filteredNameForName:nameCopy error:&v26];

  v13 = v26;
  v14 = v13;
  if (v12)
  {
    pathExtension2 = [v12 pathExtension];
    v16 = [pathExtension2 length];
    v17 = MEMORY[0x1E699A450];
    if (v16 && v10)
    {
      if (([pathExtension isEqualToString:pathExtension2] & 1) == 0)
      {
        v18 = *v17;
        if (!*v17)
        {
          DOCInitLogging();
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          +[DOCFileRenamingSupport _urlForProposedName:originalURL:error:];
        }
      }
    }

    else if (!v16 || v10)
    {
      if (!v16 && v10)
      {
        v22 = *MEMORY[0x1E699A450];
        if (!*MEMORY[0x1E699A450])
        {
          DOCInitLogging();
          v22 = *v17;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          +[DOCFileRenamingSupport _urlForProposedName:originalURL:error:];
        }
      }
    }

    else
    {
      v21 = *MEMORY[0x1E699A450];
      if (!*MEMORY[0x1E699A450])
      {
        DOCInitLogging();
        v21 = *v17;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        +[DOCFileRenamingSupport _urlForProposedName:originalURL:error:];
      }
    }

    v23 = [v12 stringByAppendingPathExtension:pathExtension];
    v19 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v23];
    v24 = *v17;
    if (!*v17)
    {
      DOCInitLogging();
      v24 = *v17;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = pathExtension;
      v29 = 2112;
      v30 = pathExtension2;
      _os_log_impl(&dword_1E57D8000, v24, OS_LOG_TYPE_INFO, "Prepared new url from: %@ to: %@", buf, 0x16u);
    }
  }

  else
  {
    v19 = 0;
    if (error && v13)
    {
      v20 = v13;
      v19 = 0;
      *error = v14;
    }
  }

  return v19;
}

+ (void)fallbackRename:(void *)a1 toProposedName:(void *)a2 error:.cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_1E57D8000, v3, OS_LOG_TYPE_DEBUG, "Rename operation failed: %@", &v5, 0xCu);
}

+ (void)fallbackRename:(uint64_t)a1 toProposedName:(NSObject *)a2 error:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1E57D8000, a2, OS_LOG_TYPE_DEBUG, "Rename failed validation with error: %@", &v2, 0xCu);
}

@end