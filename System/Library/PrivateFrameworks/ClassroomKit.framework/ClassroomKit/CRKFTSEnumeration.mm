@interface CRKFTSEnumeration
- ($44CB7BE6C0083754BDAD9427CD5EF788)makeFTSWithError:(id *)error;
- (CRKFTSEnumeration)initWithDirectoryPath:(id)path;
- (CRKFTSEnumeration)initWithDirectoryPath:(id)path options:(int)options;
- (id)entriesWithError:(id *)error;
- (id)readAllEntriesFromFTS:(id *)s error:(id *)error;
- (id)readNextEntryFromFTS:(id *)s error:(id *)error;
- (void)closeFTS:(id *)s;
@end

@implementation CRKFTSEnumeration

- (CRKFTSEnumeration)initWithDirectoryPath:(id)path
{
  pathCopy = path;
  v5 = -[CRKFTSEnumeration initWithDirectoryPath:options:](self, "initWithDirectoryPath:options:", pathCopy, [objc_opt_class() defaultOptions]);

  return v5;
}

- (CRKFTSEnumeration)initWithDirectoryPath:(id)path options:(int)options
{
  pathCopy = path;
  if (!pathCopy)
  {
    [CRKFTSEnumeration initWithDirectoryPath:a2 options:self];
  }

  v12.receiver = self;
  v12.super_class = CRKFTSEnumeration;
  v8 = [(CRKFTSEnumeration *)&v12 init];
  if (v8)
  {
    v9 = [pathCopy copy];
    mDirectoryPath = v8->mDirectoryPath;
    v8->mDirectoryPath = v9;

    v8->mOptions = options;
  }

  return v8;
}

- (id)entriesWithError:(id *)error
{
  v5 = [(CRKFTSEnumeration *)self makeFTSWithError:?];
  if (v5)
  {
    v6 = v5;
    v7 = [(CRKFTSEnumeration *)self readAllEntriesFromFTS:v5 error:error];
    [(CRKFTSEnumeration *)self closeFTS:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- ($44CB7BE6C0083754BDAD9427CD5EF788)makeFTSWithError:(id *)error
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = [(NSString *)self->mDirectoryPath fileSystemRepresentation];
  v8[1] = 0;
  v5 = fts_open(v8, self->mOptions, 0);
  v6 = v5;
  if (error && !v5)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
  }

  return v6;
}

- (void)closeFTS:(id *)s
{
  if (fts_close(s))
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    if (_CRKLogGeneral_onceToken_2 != -1)
    {
      [CRKFTSEnumeration closeFTS:];
    }

    v4 = _CRKLogGeneral_logObj_2;
    if (os_log_type_enabled(_CRKLogGeneral_logObj_2, OS_LOG_TYPE_ERROR))
    {
      [(CRKFTSEnumeration *)v4 closeFTS:v3];
    }
  }
}

- (id)readAllEntriesFromFTS:(id *)s error:(id *)error
{
  v7 = objc_opt_new();
  v16 = 0;
  v8 = [(CRKFTSEnumeration *)self readNextEntryFromFTS:s error:&v16];
  v9 = v16;
  v10 = v9;
  if (v8)
  {
    do
    {
      [v7 addObject:v8];
      v16 = v10;
      v11 = [(CRKFTSEnumeration *)self readNextEntryFromFTS:s error:&v16];
      v12 = v16;

      v10 = v12;
      v8 = v11;
    }

    while (v11);
    if (error)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = v9;
    if (error)
    {
LABEL_4:
      v13 = v12;
      *error = v12;
    }
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v7 copy];
  }

  return v14;
}

- (id)readNextEntryFromFTS:(id *)s error:(id *)error
{
  while (1)
  {
    v7 = fts_read(s);
    if (!v7)
    {
      break;
    }

    v8 = v7;
    if (![(CRKFTSEnumeration *)self shouldSkipEntry:v7])
    {
      v9 = [[CRKFTSEntry alloc] initWithFTSEntry:v8 error:error];
      goto LABEL_7;
    }
  }

  v10 = __error();
  v9 = 0;
  if (error && *v10)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    v12 = v11;
    v9 = 0;
    *error = v11;
  }

LABEL_7:

  return v9;
}

- (void)initWithDirectoryPath:(uint64_t)a1 options:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKFTSEnumeration.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"directoryPath"}];
}

- (void)closeFTS:(void *)a1 .cold.2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 verboseDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_243550000, v3, OS_LOG_TYPE_ERROR, "Failed to close FTS: %{public}@", &v5, 0xCu);
}

@end