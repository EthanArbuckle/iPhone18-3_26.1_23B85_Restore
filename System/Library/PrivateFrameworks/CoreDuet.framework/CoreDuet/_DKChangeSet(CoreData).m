@interface _DKChangeSet(CoreData)
@end

@implementation _DKChangeSet(CoreData)

- (void)initWithManagedObject:()CoreData .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 version];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Dropping change set, unknown version number: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)dataFromCompressedChangeSet:()CoreData .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a1];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:-[_DKPRCompressedChangeSet uncompressedLength](a2)];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_191750000, a3, OS_LOG_TYPE_ERROR, "Change set uncompressed size %@ does not match uncompressed length %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end