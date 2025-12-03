@interface MIDataProtectionChangeOperation
+ (id)dataProtectionChangeOperationForURL:(id)l settingClass:(int)class changeType:(unint64_t)type;
+ (id)dataProtectionChangeOperationForURLs:(id)ls settingClass:(int)class changeType:(unint64_t)type;
- (BOOL)_runChangeOperationWasLocked:(BOOL *)locked withError:(id *)error;
- (MIDataProtectionChangeOperation)initWithURLs:(id)ls newClass:(int)class changeType:(unint64_t)type;
- (void)performChangeOperation;
@end

@implementation MIDataProtectionChangeOperation

- (MIDataProtectionChangeOperation)initWithURLs:(id)ls newClass:(int)class changeType:(unint64_t)type
{
  lsCopy = ls;
  v13.receiver = self;
  v13.super_class = MIDataProtectionChangeOperation;
  v10 = [(MIDataProtectionChangeOperation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_urls, ls);
    v11->_newClass = class;
    v11->_operationType = type;
  }

  return v11;
}

+ (id)dataProtectionChangeOperationForURLs:(id)ls settingClass:(int)class changeType:(unint64_t)type
{
  v6 = *&class;
  lsCopy = ls;
  v8 = [objc_alloc(objc_opt_class()) initWithURLs:lsCopy newClass:v6 changeType:type];

  return v8;
}

+ (id)dataProtectionChangeOperationForURL:(id)l settingClass:(int)class changeType:(unint64_t)type
{
  v6 = *&class;
  v12[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v8 = objc_alloc(objc_opt_class());
  v12[0] = lCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  v10 = [v8 initWithURLs:v9 newClass:v6 changeType:type];

  return v10;
}

- (BOOL)_runChangeOperationWasLocked:(BOOL *)locked withError:(id *)error
{
  urls = [(MIDataProtectionChangeOperation *)self urls];
  v6 = [urls count];

  v7 = malloc_type_malloc(8 * v6 + 8, 0x10040436913F5uLL);
  if (!v6)
  {
    goto LABEL_56;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = +[MIFileManager defaultManager];
    urls2 = [(MIDataProtectionChangeOperation *)self urls];
    v12 = [urls2 objectAtIndexedSubscript:v8];
    v13 = [v10 itemExistsAtURL:v12];

    if (v13)
    {
      urls3 = [(MIDataProtectionChangeOperation *)self urls];
      v15 = [urls3 objectAtIndexedSubscript:v8];
      v7[v9] = [v15 fileSystemRepresentation];

      ++v9;
    }

    ++v8;
  }

  while (v6 != v8);
  if (!v9)
  {
LABEL_56:
    v29 = 0;
    *locked = 0;
    v19 = 1;
    goto LABEL_69;
  }

  v7[v9] = 0;
  v16 = fts_open(v7, 84, 0);
  v17 = v16;
  if (!v16)
  {
    v45 = *MEMORY[0x1E696A798];
    v46 = *__error();
    urls4 = [(MIDataProtectionChangeOperation *)self urls];
    v48 = __error();
    v56 = strerror(*v48);
    v29 = _CreateError("[MIDataProtectionChangeOperation _runChangeOperationWasLocked:withError:]", 78, v45, v46, 0, 0, @"fts_open failed for %@ : %s", v49, urls4);

    goto LABEL_58;
  }

  v18 = fts_read(v16);
  v19 = 1;
  if (!v18)
  {
    v21 = 0;
LABEL_68:
    fts_close(v17);
    v29 = v21;
LABEL_69:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_71;
  }

  v20 = v18;
  v21 = 0;
  v60 = *MEMORY[0x1E696A798];
  v67 = v17;
  while (1)
  {
    fts_info = v20->fts_info;
    if (fts_info > 0xD)
    {
LABEL_20:
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        fts_path = v20->fts_path;
        v56 = strerror(v20->fts_errno);
        MOLogWrite();
      }

      goto LABEL_54;
    }

    if (((1 << fts_info) & 0x300A) == 0)
    {
      break;
    }

LABEL_54:
    v20 = fts_read(v17);
    if (!v20)
    {
      v19 = 1;
      goto LABEL_67;
    }
  }

  if (fts_info != 6)
  {
    if (fts_info != 8)
    {
      goto LABEL_20;
    }

    v23 = objc_autoreleasePoolPush();
    if (([(MIDataProtectionChangeOperation *)self operationType]& 2) != 0)
    {
      context = v23;
      newClass = [(MIDataProtectionChangeOperation *)self newClass];
      if (newClass)
      {
        v25 = newClass;
      }

      else
      {
        v25 = 3;
      }

      v26 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v20->fts_path isDirectory:0 relativeToURL:{0, fts_path, v56, st_mode, v58}];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __74__MIDataProtectionChangeOperation__runChangeOperationWasLocked_withError___block_invoke_2;
      v71[3] = &unk_1E7AE1D68;
      v72 = v25;
      v71[4] = self;
      v71[5] = v20;
      v27 = MEMORY[0x1B2733890](v71);
      v28 = +[MIFileManager defaultManager];
      v70 = v21;
      v61 = v26;
      v63 = v27;
      v59 = v25;
      LOBYTE(v26) = [v28 setDataProtectionClassOfItemAtURL:v26 toClass:v25 ifPredicate:v27 error:&v70];
      v29 = v70;

      if (v26)
      {
        v30 = 0;
        v31 = 1;
        v33 = v61;
        v32 = v63;
      }

      else
      {
        domain = [v29 domain];
        v31 = [domain isEqualToString:v60];
        if (v31)
        {
          code = [v29 code];

          v33 = v61;
          if (code != 9)
          {
            v31 = 0;
            v30 = 5;
            v32 = v63;
            goto LABEL_43;
          }

          v32 = v63;
          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            v30 = 0;
            v31 = 1;
            goto LABEL_43;
          }

          domain = [v61 path];
          st_mode = v20->fts_statp->st_mode;
          v58 = v29;
          fts_path = v59;
          v56 = domain;
          MOLogWrite();
          v30 = 0;
        }

        else
        {
          v30 = 5;
          v33 = v61;
          v32 = v63;
        }
      }

LABEL_43:

      v17 = v67;
      if (!v31)
      {
        objc_autoreleasePoolPop(context);
        if (v30)
        {
          v54 = v30 == 5;
          goto LABEL_73;
        }

        goto LABEL_53;
      }

      v21 = v29;
      v23 = context;
    }

LABEL_51:
    objc_autoreleasePoolPop(v23);
    goto LABEL_54;
  }

  v23 = objc_autoreleasePoolPush();
  if (([(MIDataProtectionChangeOperation *)self operationType]& 1) == 0)
  {
    goto LABEL_51;
  }

  v34 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v20->fts_path isDirectory:1 relativeToURL:0];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __74__MIDataProtectionChangeOperation__runChangeOperationWasLocked_withError___block_invoke;
  v74[3] = &unk_1E7AE1D40;
  v74[4] = self;
  v74[5] = v20;
  v35 = MEMORY[0x1B2733890](v74);
  v36 = +[MIFileManager defaultManager];
  newClass2 = [(MIDataProtectionChangeOperation *)self newClass];
  v73 = v21;
  v64 = v35;
  contexta = v34;
  LOBYTE(v34) = [v36 setDataProtectionClassOfItemAtURL:v34 toClass:newClass2 ifPredicate:v35 error:&v73];
  v29 = v73;

  if (v34)
  {
    v38 = 0;
    v17 = v67;
    v39 = 1;
    goto LABEL_49;
  }

  domain2 = [v29 domain];
  v62 = [domain2 isEqualToString:v60];
  if (!v62)
  {
    v38 = 5;
    goto LABEL_39;
  }

  code2 = [v29 code];

  if (code2 == 9)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v44 = [(MIDataProtectionChangeOperation *)self newClass:fts_path];
      domain2 = [contexta path];
      st_mode = v20->fts_statp->st_mode;
      v58 = v29;
      fts_path = v44;
      v56 = domain2;
      MOLogWrite();
      v38 = 0;
LABEL_39:
      v17 = v67;

      v39 = v62;
      goto LABEL_49;
    }

    v38 = 0;
    v39 = 1;
  }

  else
  {
    v39 = 0;
    v38 = 5;
  }

  v17 = v67;
LABEL_49:

  if (v39)
  {
    v21 = v29;
    goto LABEL_51;
  }

  objc_autoreleasePoolPop(v23);
  if (!v38)
  {
LABEL_53:
    v21 = v29;
    goto LABEL_54;
  }

  v54 = v38 == 5;
LABEL_73:
  v45 = v60;
  if (v54)
  {
LABEL_58:
    domain3 = [v29 domain];
    if ([domain3 isEqualToString:v45])
    {
      code3 = [v29 code];

      if (code3 == 1)
      {
        v19 = 1;
        *locked = 1;

        v21 = 0;
        goto LABEL_67;
      }
    }

    else
    {
    }

    if (error)
    {
      v52 = v29;
      v19 = 0;
      *error = v29;
    }

    else
    {
      v19 = 0;
    }

    v21 = v29;
LABEL_67:
    v29 = v21;
    if (!v17)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_71:

  return v19 & 1;
}

BOOL __74__MIDataProtectionChangeOperation__runChangeOperationWasLocked_withError___block_invoke(uint64_t a1, int a2)
{
  if (a2 != 2 && gLogHandle && *(gLogHandle + 44) >= 7)
  {
    [*(a1 + 32) newClass];
    MOLogWrite();
  }

  return a2 != 2;
}

uint64_t __74__MIDataProtectionChangeOperation__runChangeOperationWasLocked_withError___block_invoke_2(uint64_t a1, int a2)
{
  result = 0;
  if (a2 != 2 && *(a1 + 48) != a2)
  {
    if (([*(a1 + 32) operationType] & 4) != 0 && *(a1 + 48) > a2)
    {
      return 0;
    }

    else
    {
      if (gLogHandle)
      {
        if (*(gLogHandle + 44) >= 7)
        {
          MOLogWrite();
        }
      }

      return 1;
    }
  }

  return result;
}

- (void)performChangeOperation
{
  v12 = 0;
  v11 = 0;
  v3 = [(MIDataProtectionChangeOperation *)self _runChangeOperationWasLocked:&v12 withError:&v11];
  v4 = v11;
  if (!v3 && (!gLogHandle || *(gLogHandle + 44) >= 5))
  {
    urls = [(MIDataProtectionChangeOperation *)self urls];
    newClass = [(MIDataProtectionChangeOperation *)self newClass];
    v10 = v4;
    v8 = urls;
    MOLogWrite();
  }

  v6 = [(MIDataProtectionChangeOperation *)self completionBlock:v8];

  if (v6)
  {
    completionBlock = [(MIDataProtectionChangeOperation *)self completionBlock];
    (completionBlock)[2](completionBlock, v12, v4);
  }
}

@end