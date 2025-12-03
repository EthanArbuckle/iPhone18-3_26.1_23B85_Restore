@interface FPDHybridIterator
- (FPDHybridIterator)initWithItem:(id)item domain:(id)domain enforceFPItem:(BOOL)pItem;
- (id)error;
- (id)nextWithError:(id *)error;
- (unint64_t)numFoldersPopped;
- (void)dealloc;
@end

@implementation FPDHybridIterator

- (FPDHybridIterator)initWithItem:(id)item domain:(id)domain enforceFPItem:(BOOL)pItem
{
  itemCopy = item;
  domainCopy = domain;
  v24.receiver = self;
  v24.super_class = FPDHybridIterator;
  v11 = [(FPDHybridIterator *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_domain, domain);
    objc_storeStrong(&v12->_rootItem, item);
    fileURL = [(FPItem *)v12->_rootItem fileURL];
    rootURL = v12->_rootURL;
    v12->_rootURL = fileURL;

    v12->_insideADatalessFolder = 0;
    v12->_enforceFPItem = pItem;
    if (([(FPItem *)v12->_rootItem isPackage]& 1) != 0 || [(FPItem *)v12->_rootItem isFolder]&& (![(FPItem *)v12->_rootItem isDownloaded]|| ![(FPDDomain *)v12->_domain supportsPickingFolders]))
    {
      v15 = [MEMORY[0x1E69672A8] locatorForItem:v12->_rootItem];
      provider = [(FPDDomain *)v12->_domain provider];
      v17 = [FPDIterator iteratorForLocator:v15 provider:provider];
      datalessFolderIterator = v12->_datalessFolderIterator;
      v12->_datalessFolderIterator = v17;

      [(FPDIterator *)v12->_datalessFolderIterator setShouldDecorateItems:1];
      v12->_insideADatalessFolder = 1;
    }

    else
    {
      v19 = [FPDDiskIterator alloc];
      fileURL2 = [(FPItem *)v12->_rootItem fileURL];
      v21 = [(FPDDiskIterator *)v19 initWithURL:fileURL2 isDirectory:1];
      diskIterator = v12->_diskIterator;
      v12->_diskIterator = v21;
    }
  }

  return v12;
}

- (id)nextWithError:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  v55 = 0;
  v56[0] = &v55;
  v56[1] = 0x3032000000;
  v56[2] = __Block_byref_object_copy_;
  v56[3] = __Block_byref_object_dispose_;
  v57 = 0;
  if (self->_insideADatalessFolder)
  {
    error = [(FPDIterator *)self->_datalessFolderIterator error];

    if (error)
    {
      if (error)
      {
        error2 = [(FPDIterator *)self->_datalessFolderIterator error];
LABEL_9:
        v9 = 0;
        v10 = 0;
        *error = error2;
        goto LABEL_55;
      }

LABEL_12:
      v9 = 0;
LABEL_13:
      v10 = 0;
      goto LABEL_55;
    }

    datalessFolderIterator = self->_datalessFolderIterator;
    v54 = 0;
    v12 = [(FPDIterator *)datalessFolderIterator nextWithError:&v54];
    v9 = v54;
    v13 = *(v56[0] + 40);
    *(v56[0] + 40) = v12;

    if (*(v56[0] + 40))
    {
      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [FPDHybridIterator nextWithError:v56];
      }

LABEL_18:
      v10 = *(v56[0] + 40);
      goto LABEL_55;
    }

    if (v9 || ![(FPDIterator *)self->_datalessFolderIterator done])
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        fp_prettyDescription = [v9 fp_prettyDescription];
        [(FPDHybridIterator *)fp_prettyDescription nextWithError:buf, v26];
      }

      if (!error)
      {
        goto LABEL_13;
      }

      v28 = v9;
LABEL_37:
      v10 = 0;
      *error = v9;
      goto LABEL_55;
    }

    self->_insideADatalessFolder = 0;
    v24 = self->_totalDatalessFoldersPopped + [(FPDIterator *)self->_datalessFolderIterator numFoldersPopped];
    self->_totalDatalessFoldersPopped = v24;
    if (self->_diskIterator)
    {
      self->_totalDatalessFoldersPopped = v24 - 1;
    }

    v25 = self->_datalessFolderIterator;
    self->_datalessFolderIterator = 0;
  }

  diskIterator = self->_diskIterator;
  if (!diskIterator)
  {
    v9 = 0;
    goto LABEL_11;
  }

  error3 = [(FPDDiskIterator *)diskIterator error];

  if (error3)
  {
    if (error)
    {
      error2 = [(FPDDiskIterator *)self->_diskIterator error];
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v15 = self->_diskIterator;
  v53 = 0;
  v16 = [(FPDDiskIterator *)v15 nextWithError:&v53];
  v9 = v53;
  v17 = *(v56[0] + 40);
  *(v56[0] + 40) = v16;

  v18 = *(v56[0] + 40);
  if (!v18)
  {
    if (![(FPDDiskIterator *)self->_diskIterator done])
    {
      if (!error)
      {
        goto LABEL_13;
      }

      v29 = v9;
      goto LABEL_37;
    }

LABEL_11:
    v10 = 0;
    self->_done = 1;
    goto LABEL_55;
  }

  v52 = 0;
  asURL = [v18 asURL];
  path = [asURL path];
  v21 = path;
  [path fileSystemRepresentation];
  is_dataless_fault_at = fpfs_is_dataless_fault_at();

  if (is_dataless_fault_at < 0)
  {
    v30 = fp_current_or_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      asURL2 = [*(v56[0] + 40) asURL];
      v44 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
      *buf = 138412546;
      v59 = asURL2;
      v60 = 2112;
      v61 = v44;
      _os_log_error_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_ERROR, "[ERROR] FPDHybridIterator: encountered error during fpfs_is_dataless_fault_at for url: %@, %@", buf, 0x16u);
    }

    v52 = 1;
  }

  else if (!self->_enforceFPItem)
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [FPDHybridIterator nextWithError:v56];
    }

    goto LABEL_18;
  }

  v31 = fp_current_or_default_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [FPDHybridIterator nextWithError:v56];
  }

  v32 = dispatch_group_create();
  dispatch_group_enter(v32);
  defaultBackend = [(FPDDomain *)self->_domain defaultBackend];
  asURL3 = [*(v56[0] + 40) asURL];
  v35 = +[FPDRequest requestForSelf];
  v45 = MEMORY[0x1E69E9820];
  v46 = 3221225472;
  v47 = __35__FPDHybridIterator_nextWithError___block_invoke;
  v48 = &unk_1E83BE090;
  v51 = &v55;
  selfCopy = self;
  v36 = v32;
  v50 = v36;
  [defaultBackend itemForURL:asURL3 options:0 request:v35 completionHandler:&v45];

  dispatch_group_wait(v36, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_insideADatalessFolder)
  {
    v37 = fp_current_or_default_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [FPDHybridIterator nextWithError:v37];
    }

    [(FPDDiskIterator *)self->_diskIterator skipDescendants:v45];
    error4 = [(FPDIterator *)self->_datalessFolderIterator error];

    if (error4)
    {
      if (error)
      {
        [(FPDIterator *)self->_datalessFolderIterator error];
        *error = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_54;
    }

    v40 = [(FPDIterator *)self->_datalessFolderIterator nextWithError:error];
  }

  else
  {
    v39 = fp_current_or_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [FPDHybridIterator nextWithError:v56];
    }

    v40 = *(v56[0] + 40);
  }

  v10 = v40;
LABEL_54:

LABEL_55:
  _Block_object_dispose(&v55, 8);

  v41 = *MEMORY[0x1E69E9840];

  return v10;
}

void __35__FPDHybridIterator_nextWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x1E69672A8] locatorForItem:v5];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (([v5 isDownloaded] & 1) == 0 && objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isFolder"))
    {
      v10 = *(*(*(a1 + 48) + 8) + 40);
      v11 = [*(*(a1 + 32) + 40) provider];
      v12 = [FPDIterator iteratorForLocator:v10 provider:v11];
      v13 = *(a1 + 32);
      v14 = *(v13 + 72);
      *(v13 + 72) = v12;

      [*(*(a1 + 32) + 72) setShouldDecorateItems:1];
      *(*(a1 + 32) + 65) = 1;
    }
  }

  else
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __35__FPDHybridIterator_nextWithError___block_invoke_cold_1(a1, v6, v15);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)error
{
  insideADatalessFolder = self->_insideADatalessFolder;
  if (self->_diskIterator)
  {
    if (!self->_insideADatalessFolder)
    {
      diskIterator = self->_diskIterator;
LABEL_6:
      error = [(FPDDiskIterator *)diskIterator error];
      goto LABEL_7;
    }

LABEL_5:
    diskIterator = self->_datalessFolderIterator;
    goto LABEL_6;
  }

  if (self->_insideADatalessFolder)
  {
    goto LABEL_5;
  }

  error = 0;
LABEL_7:

  return error;
}

- (unint64_t)numFoldersPopped
{
  diskIterator = self->_diskIterator;
  if (diskIterator)
  {
    numFoldersPopped = [(FPDDiskIterator *)diskIterator numFoldersPopped];
  }

  else
  {
    numFoldersPopped = 0;
  }

  datalessFolderIterator = self->_datalessFolderIterator;
  if (datalessFolderIterator)
  {
    numFoldersPopped += [(FPDIterator *)datalessFolderIterator numFoldersPopped];
  }

  return self->_totalDatalessFoldersPopped + numFoldersPopped;
}

- (void)dealloc
{
  diskIterator = self->_diskIterator;
  self->_diskIterator = 0;

  datalessFolderIterator = self->_datalessFolderIterator;
  self->_datalessFolderIterator = 0;

  v5.receiver = self;
  v5.super_class = FPDHybridIterator;
  [(FPDHybridIterator *)&v5 dealloc];
}

- (void)nextWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v1, v2, "[DEBUG] FPDHybridIterator: enumerating provider item %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)nextWithError:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] FPDHybridIterator: error while enuemrating the provider %@", buf, 0xCu);
}

- (void)nextWithError:(uint64_t)a1 .cold.3(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v1, v2, "[DEBUG] FPDHybridIterator: enumerated item from disk: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)nextWithError:(uint64_t)a1 .cold.4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v1, v2, "[DEBUG] FPDHybridIterator: fetching item enumerator for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)nextWithError:(uint64_t)a1 .cold.5(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v1, v2, "[DEBUG] FPDHybridIterator: fetched FPItem %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __35__FPDHybridIterator_nextWithError___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [*(*(*(a1 + 48) + 8) + 40) asURL];
  v6 = [a2 fp_prettyDescription];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] FPDHybridIterator: failed to fetchItemForURL:%@ - %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end