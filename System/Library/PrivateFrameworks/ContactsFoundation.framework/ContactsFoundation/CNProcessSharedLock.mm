@interface CNProcessSharedLock
+ (CNProcessSharedLock)sharedLockWithLockFilePath:(id)path;
+ (id)os_log;
+ (id)recursiveSharedLockWithLockFilePath:(id)path;
+ (id)semaphoreSharedLockWithLockFilePath:(id)path;
- (BOOL)ensureFileDescriptorIsInvalid:(id)invalid;
- (BOOL)ensureFileIsLocal:(id)local;
- (BOOL)open:(id *)open;
- (BOOL)openLockFile:(id)file;
- (CNProcessSharedLock)init;
- (CNProcessSharedLock)initWithLockFilePath:(id)path localLock:(id)lock;
- (CNProcessSharedLock)initWithLockFilePath:(id)path localLock:(id)lock fileServices:(id)services;
- (id)description;
- (id)errorUserInfoWithDescription:(id)description;
- (id)exceptionWithName:(id)name reason:(id)reason;
- (void)dealloc;
- (void)invalidate;
- (void)lock;
- (void)lockRetryOnEDEADLK;
- (void)unlock;
@end

@implementation CNProcessSharedLock

+ (id)os_log
{
  if (os_log_cn_once_token_1_14 != -1)
  {
    +[CNProcessSharedLock os_log];
  }

  v3 = os_log_cn_once_object_1_14;

  return v3;
}

uint64_t __29__CNProcessSharedLock_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.locking", "process-shared-lock");
  v1 = os_log_cn_once_object_1_14;
  os_log_cn_once_object_1_14 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (CNProcessSharedLock)sharedLockWithLockFilePath:(id)path
{
  v4 = MEMORY[0x1E696AD10];
  pathCopy = path;
  v6 = objc_alloc_init(v4);
  v7 = [[self alloc] initWithLockFilePath:pathCopy localLock:v6];

  return v7;
}

+ (id)recursiveSharedLockWithLockFilePath:(id)path
{
  v4 = MEMORY[0x1E696AE68];
  pathCopy = path;
  v6 = objc_alloc_init(v4);
  v7 = [[self alloc] initWithLockFilePath:pathCopy localLock:v6];

  return v7;
}

+ (id)semaphoreSharedLockWithLockFilePath:(id)path
{
  pathCopy = path;
  v5 = objc_alloc_init(CNBinarySemaphoreLock);
  v6 = [[self alloc] initWithLockFilePath:pathCopy localLock:v5];

  return v6;
}

- (CNProcessSharedLock)init
{
  v2 = CNInitializerUnavailableException(self, a2, sel_initWithLockFilePath_localLock_);
  objc_exception_throw(v2);
}

- (CNProcessSharedLock)initWithLockFilePath:(id)path localLock:(id)lock
{
  lockCopy = lock;
  pathCopy = path;
  v8 = +[CNFileServices sharedInstance];
  v9 = [(CNProcessSharedLock *)self initWithLockFilePath:pathCopy localLock:lockCopy fileServices:v8];

  return v9;
}

- (CNProcessSharedLock)initWithLockFilePath:(id)path localLock:(id)lock fileServices:(id)services
{
  pathCopy = path;
  lockCopy = lock;
  servicesCopy = services;
  v18.receiver = self;
  v18.super_class = CNProcessSharedLock;
  v11 = [(CNProcessSharedLock *)&v18 init];
  if (v11)
  {
    v12 = [pathCopy copy];
    lockFilePath = v11->_lockFilePath;
    v11->_lockFilePath = v12;

    objc_storeStrong(&v11->_localLock, lock);
    v11->_fileDescriptor = -1;
    objc_storeStrong(&v11->_fileServices, services);
    v14 = [CNInhibitor runningboardInhibitorWithExplanation:@"Contacts shared filesystem lock"];
    runningBoardInhibitor = v11->_runningBoardInhibitor;
    v11->_runningBoardInhibitor = v14;

    v16 = v11;
  }

  return v11;
}

- (void)dealloc
{
  [(CNProcessSharedLock *)self invalidate];
  v3.receiver = self;
  v3.super_class = CNProcessSharedLock;
  [(CNProcessSharedLock *)&v3 dealloc];
}

- (BOOL)open:(id *)open
{
  v4 = CNMakeErrorHelper(open);
  v5 = [(CNProcessSharedLock *)self ensureFileDescriptorIsInvalid:v4]&& [(CNProcessSharedLock *)self openLockFile:v4]&& [(CNProcessSharedLock *)self ensureFileIsLocal:v4];

  return v5;
}

- (BOOL)ensureFileDescriptorIsInvalid:(id)invalid
{
  invalidCopy = invalid;
  isValidFileDescriptor = [(CNProcessSharedLock *)self isValidFileDescriptor];
  if (isValidFileDescriptor)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__CNProcessSharedLock_ensureFileDescriptorIsInvalid___block_invoke;
    v7[3] = &unk_1E6ED8090;
    v7[4] = self;
    invalidCopy[2](invalidCopy, v7);
  }

  return !isValidFileDescriptor;
}

id __53__CNProcessSharedLock_ensureFileDescriptorIsInvalid___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696ABC0];
  v2 = *MEMORY[0x1E696A250];
  v3 = [*(a1 + 32) errorUserInfoWithDescription:@"File lock already opened"];
  v4 = [v1 errorWithDomain:v2 code:255 userInfo:v3];

  return v4;
}

- (BOOL)openLockFile:(id)file
{
  v18 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  self->_fileDescriptor = [(CNFileServices *)self->_fileServices open:[(NSString *)self->_lockFilePath fileSystemRepresentation]];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    lockFilePath = self->_lockFilePath;
    fileDescriptor = self->_fileDescriptor;
    *buf = 134218498;
    selfCopy = self;
    v14 = 2112;
    v15 = lockFilePath;
    v16 = 1024;
    v17 = fileDescriptor;
    _os_log_debug_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_DEBUG, "%p: lockFilePath: %@, file descriptor: %d", buf, 0x1Cu);
  }

  v6 = self->_fileDescriptor;
  if (v6 < 0)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__CNProcessSharedLock_openLockFile___block_invoke;
    v11[3] = &unk_1E6ED8090;
    v11[4] = self;
    fileCopy[2](fileCopy, v11);
    self->_fileDescriptor = -1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6 >= 0;
}

id __36__CNProcessSharedLock_openLockFile___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) errnoValue];
  v3 = [*(a1 + 32) errorUserInfo];
  v4 = [CNFoundationError errorWithErrno:v2 userInfo:v3];

  return v4;
}

- (BOOL)ensureFileIsLocal:(id)local
{
  v41 = *MEMORY[0x1E69E9840];
  localCopy = local;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
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
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  if ([(CNFileServices *)self->_fileServices fstatfs:self->_fileDescriptor]< 0)
  {
    v5 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v6 = __41__CNProcessSharedLock_ensureFileIsLocal___block_invoke;
  }

  else
  {
    if ((BYTE1(v13) & 0x10) != 0)
    {
      v7 = 1;
      goto LABEL_7;
    }

    v5 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v6 = __41__CNProcessSharedLock_ensureFileIsLocal___block_invoke_2;
  }

  v5[2] = v6;
  v5[3] = &unk_1E6ED8090;
  v5[4] = self;
  localCopy[2](localCopy);
  close(self->_fileDescriptor);
  v7 = 0;
  self->_fileDescriptor = -1;
LABEL_7:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

id __41__CNProcessSharedLock_ensureFileIsLocal___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) errnoValue];
  v3 = [*(a1 + 32) errorUserInfo];
  v4 = [CNFoundationError errorWithErrno:v2 userInfo:v3];

  return v4;
}

id __41__CNProcessSharedLock_ensureFileIsLocal___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E696ABC0];
  v2 = *MEMORY[0x1E696A250];
  v3 = [*(a1 + 32) errorUserInfoWithDescription:@"Not a local file"];
  v4 = [v1 errorWithDomain:v2 code:258 userInfo:v3];

  return v4;
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)lock
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_2(&dword_1859F0000, v0, v1, "%p: Locked locks", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)unlock
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)lockRetryOnEDEADLK
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (id)exceptionWithName:(id)name reason:(id)reason
{
  fileServices = self->_fileServices;
  reasonCopy = reason;
  nameCopy = name;
  errnoValue = [(CNFileServices *)fileServices errnoValue];
  errorUserInfo = [(CNProcessSharedLock *)self errorUserInfo];
  v11 = [CNFoundationError errorWithErrno:errnoValue userInfo:errorUserInfo];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", reasonCopy, self];

  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v11, *MEMORY[0x1E696AA08], 0}];
  v14 = [MEMORY[0x1E695DF30] exceptionWithName:nameCopy reason:v12 userInfo:v13];

  return v14;
}

- (id)errorUserInfoWithDescription:(id)description
{
  v4 = MEMORY[0x1E695DF90];
  descriptionCopy = description;
  dictionary = [v4 dictionary];
  [dictionary setObject:self->_name forKeyedSubscript:@"CNLockName"];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_fileDescriptor];
  [dictionary setObject:v7 forKeyedSubscript:@"CNFileDescriptor"];

  [dictionary setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x1E696A578]];
  [dictionary setObject:self->_lockFilePath forKeyedSubscript:*MEMORY[0x1E696A368]];

  return dictionary;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendNamesAndObjects:{@"name", self->_name, @"lockFilePath", self->_lockFilePath, @"localLock", self->_localLock, 0}];
  v5 = [v3 appendName:@"fileDescriptor" intValue:self->_fileDescriptor];
  build = [v3 build];

  return build;
}

@end