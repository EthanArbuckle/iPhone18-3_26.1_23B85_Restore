@interface FCPersistedContentArchive
- (FCPersistedContentArchive)initWithCoder:(id)coder;
- (id)description;
- (id)manifest;
- (id)unarchiveIntoContentContext:(id)context;
- (int64_t)storageSize;
@end

@implementation FCPersistedContentArchive

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  [(FCDescription *)v3 addField:@"archivePath" value:self->_archivePath];
  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

- (FCPersistedContentArchive)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FCPersistedContentArchive;
  v5 = [(FCPersistedContentArchive *)&v9 init];
  if (v5)
  {
    if (qword_1EDB26E48 != -1)
    {
      dispatch_once(&qword_1EDB26E48, &__block_literal_global_260);
    }

    v6 = [coderCopy decodeObjectOfClasses:qword_1EDB26E40 forKey:@"archivePath"];
    archivePath = v5->_archivePath;
    v5->_archivePath = v6;
  }

  return v5;
}

uint64_t __43__FCPersistedContentArchive_initWithCoder___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v1 = qword_1EDB26E40;
  qword_1EDB26E40 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)unarchiveIntoContentContext:(id)context
{
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:self->_archivePath];
  v13 = 0;
  v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v13];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 unarchiveIntoContentContext:contextCopy];
  }

  else
  {
    v10 = [FCContentUnarchiveResult alloc];
    v9 = [(FCContentUnarchiveResult *)v10 initWithInterestToken:MEMORY[0x1E695E0F0] storageSize:0];
  }

  v11 = v9;

  objc_autoreleasePoolPop(v5);

  return v11;
}

- (id)manifest
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"persisted content archive doesn't currently support providing its manifest"];
    v5 = 136315906;
    v6 = "[FCPersistedContentArchive manifest]";
    v7 = 2080;
    v8 = "FCContentArchive.m";
    v9 = 1024;
    v10 = 879;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)storageSize
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fc_sizeOfItemAtPath:self->_archivePath error:0];

  return v4;
}

@end