@interface NSFileManager(IC)
- (id)ic_temporaryDirectoryAppropriateForDestination:()IC;
- (id)ic_temporaryDirectoryPathAppropriateForDestinationPath:()IC;
@end

@implementation NSFileManager(IC)

- (id)ic_temporaryDirectoryPathAppropriateForDestinationPath:()IC
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  if (v2)
  {
    v3 = [a1 ic_temporaryDirectoryAppropriateForDestination:v2];
    v4 = [v3 path];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ic_temporaryDirectoryAppropriateForDestination:()IC
{
  v4 = a3;
  v9 = 0;
  v5 = [a1 URLForDirectory:99 inDomain:1 appropriateForURL:v4 create:1 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(NSFileManager(IC) *)v4 ic_temporaryDirectoryAppropriateForDestination:v7];
    }
  }

  return v5;
}

- (void)ic_temporaryDirectoryAppropriateForDestination:()IC .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4576000, a2, OS_LOG_TYPE_ERROR, "Error creating temporary directory for destination: %@", &v2, 0xCu);
}

@end