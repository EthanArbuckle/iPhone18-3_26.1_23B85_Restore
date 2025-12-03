@interface FPDDiskIterator
- (FPDDiskIterator)initWithURL:(id)l isDirectory:(BOOL)directory;
- (id)nextWithError:(id *)error;
- (void)dealloc;
@end

@implementation FPDDiskIterator

- (FPDDiskIterator)initWithURL:(id)l isDirectory:(BOOL)directory
{
  directoryCopy = directory;
  v19[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    [FPDDiskIterator initWithURL:a2 isDirectory:self];
  }

  v18.receiver = self;
  v18.super_class = FPDDiskIterator;
  v9 = [(FPDDiskIterator *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rootURL, l);
    v10->_stopAccessingRoot = [(NSURL *)v10->_rootURL startAccessingSecurityScopedResource];
    if (directoryCopy)
    {
      path = [lCopy path];
      v19[0] = [path fileSystemRepresentation];
      v19[1] = 0;

      v12 = fts_open(v19, 16, 0);
      v10->_fts = v12;
      if (!v12)
      {
        v13 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
        error = v10->_error;
        v10->_error = v13;
      }

      v10->_isFile = 0;
      v10->_state = 1;
    }

    else
    {
      v10->_isFile = 1;
      v10->_state = 0;
    }
  }

  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [FPDDiskIterator initWithURL:v10 isDirectory:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)nextWithError:(id *)error
{
  self->_numFoldersPopped = 0;
  if (self->_isFile)
  {
    state = self->_state;
    switch(state)
    {
      case 2:
LABEL_11:
        v6 = 0;
        goto LABEL_55;
      case 1:
        v6 = 0;
        self->_state = 2;
        goto LABEL_55;
      case 0:
        self->_state = 1;
        v6 = [MEMORY[0x1E69672A8] locatorForURL:self->_rootURL];
        goto LABEL_55;
    }
  }

  if (self->_error)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(FPDDiskIterator *)&self->_error nextWithError:v7];
    }

    if (error)
    {
      v6 = 0;
      *error = self->_error;
      goto LABEL_55;
    }

    goto LABEL_11;
  }

  v8 = 0;
  v9 = 0x1EC4BB000uLL;
  do
  {

    v10 = fts_read(self->_fts);
    v11 = *(v9 + 3012);
    *(&self->super.super.isa + v11) = v10;
    if (v10)
    {
      fts_info = v10->fts_info;
      if (fts_info <= 0xD)
      {
        if (((1 << fts_info) & 0x3908) != 0)
        {
          goto LABEL_16;
        }

        if (((1 << fts_info) & 0x490) != 0)
        {
          fts_errno = v10->fts_errno;
          v18 = MEMORY[0x1E696ABC0];
          goto LABEL_31;
        }

        if (fts_info == 6)
        {
          v8 = 0;
          if (!self->_lastItemWasPackage)
          {
            ++self->_numFoldersPopped;
          }

          goto LABEL_33;
        }
      }

      if (fts_info != 2)
      {
        if (fts_info != 1)
        {
          v8 = 0;
          continue;
        }

LABEL_16:
        self->_lastItemWasPackage = 0;
        if (!v10->fts_level)
        {
          v6 = [MEMORY[0x1E69672A8] locatorForURL:self->_rootURL];
          v8 = 0;
          goto LABEL_54;
        }

        v13 = MEMORY[0x1E695DFF8];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10->fts_path];
        v8 = [v13 fileURLWithPath:v14 isDirectory:(*(&self->super.super.isa + v11))[44] == 1];

        if ([v8 fp_isPackage])
        {
          path = [v8 path];
          [path fileSystemRepresentation];
          fpfs_pkg_is_demoted_at();

          self->_lastItemWasPackage = 1;
          fts_set(self->_fts, *(&self->super.super.isa + v11), 4);
          v9 = 0x1EC4BB000;
        }

        goto LABEL_33;
      }

      v18 = MEMORY[0x1E696ABC0];
      fts_errno = 62;
      goto LABEL_31;
    }

    if (*__error())
    {
      v16 = MEMORY[0x1E696ABC0];
      fts_errno = *__error();
      v18 = v16;
LABEL_31:
      v19 = [v18 fp_errorWithPOSIXCode:fts_errno];
      error = self->_error;
      self->_error = v19;
    }

    fts_close(self->_fts);
    v8 = 0;
    self->_fts = 0;
    self->_state = 2;
LABEL_33:
    v21 = *(&self->super.super.isa + v11);
    if (!v21)
    {
      break;
    }

    fts_info = *(v21 + 88);
  }

  while (fts_info == 6);
  if (self->_error)
  {
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [(FPDDiskIterator *)&self->_error nextWithError:v22];
    }

    if (error)
    {
      v6 = 0;
      *error = self->_error;
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (self->_state == 2 && v8 == 0)
  {
    v8 = 0;
LABEL_52:
    v6 = 0;
    goto LABEL_54;
  }

  if (!v8)
  {
    [(FPDDiskIterator *)a2 nextWithError:?];
  }

  [v8 fp_attachSecurityScopeFromURL:self->_rootURL];
  v6 = [MEMORY[0x1E69672A8] locatorForURL:v8];
LABEL_54:

LABEL_55:

  return v6;
}

- (void)dealloc
{
  if (self->_stopAccessingRoot)
  {
    [(NSURL *)self->_rootURL stopAccessingSecurityScopedResource];
  }

  fts = self->_fts;
  if (fts)
  {
    fts_close(fts);
    self->_fts = 0;
  }

  v4.receiver = self;
  v4.super_class = FPDDiskIterator;
  [(FPDDiskIterator *)&v4 dealloc];
}

- (void)initWithURL:(uint64_t)a1 isDirectory:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPDDiskIterator.m" lineNumber:44 description:@"FPDDiskIterator: trying to create iterator with nil url"];
}

- (void)initWithURL:(uint64_t)a1 isDirectory:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = @"no";
  v4 = *(a1 + 40);
  if (*(a1 + 34))
  {
    v3 = @"yes";
  }

  v6 = 138412802;
  v7 = v2;
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = v4;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] FPDDiskIterator: creating iterator for url %@ isFile %@ error %@", &v6, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)nextWithError:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] FPDDiskIterator: pre-read error %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)nextWithError:(uint64_t *)a1 .cold.2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] FPDDiskIterator: post-read error %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)nextWithError:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPDDiskIterator.m" lineNumber:155 description:@"FPDDiskIterator succeeds without providing an URL"];
}

@end