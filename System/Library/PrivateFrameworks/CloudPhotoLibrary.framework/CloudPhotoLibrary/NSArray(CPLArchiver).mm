@interface NSArray(CPLArchiver)
- (id)initWithCPLArchiver:()CPLArchiver;
- (id)plistArchiveWithCPLArchiver:()CPLArchiver;
@end

@implementation NSArray(CPLArchiver)

- (id)initWithCPLArchiver:()CPLArchiver
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self init];
  v6 = v4[2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        archiverContext = [v4 archiverContext];
        v12 = objc_opt_class();
        v13 = v4[2];
        v14 = v12;
        v15 = objc_opt_class();
        v16 = v4[2];
        *buf = 138413058;
        v28 = archiverContext;
        v29 = 2112;
        v30 = v12;
        v31 = 2112;
        v32 = v15;
        v33 = 2112;
        v34 = v16;
        v17 = v15;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "%@: Invalid %@. Found %@ in archive: '%@'", buf, 0x2Au);
      }
    }

    v18 = objc_opt_class();
    v19 = v4[2];
    objc_opt_class();
    v26 = v4[2];
    _CPLArchiverFailure(v4, @"Invalid %@. Found %@ in archive: '%@'", v20, v21, v22, v23, v24, v25, v18);
  }

  v7 = v4[2];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)plistArchiveWithCPLArchiver:()CPLArchiver
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([self count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
    v6 = v4[2];
    v7 = v4[2];
    v4[2] = 0;

    v8 = v4[5];
    v9 = v4[4];
    v10 = objc_opt_class();
    v8(v9, sel_addObject_, v10);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    selfCopy = self;
    v12 = [selfCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(selfCopy);
          }

          v16 = [*(*(&v20 + 1) + 8 * i) plistArchiveWithCPLArchiver:{v4, v20}];
          [v5 addObject:v16];
        }

        v13 = [selfCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    (v4[6])(v4[4], sel_removeLastObject);
    v17 = v4[2];
    v4[2] = v6;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

@end