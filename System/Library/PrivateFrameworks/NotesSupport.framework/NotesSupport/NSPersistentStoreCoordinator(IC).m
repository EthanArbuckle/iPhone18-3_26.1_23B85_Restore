@interface NSPersistentStoreCoordinator(IC)
- (id)ic_managedObjectIDForURIRepresentation:()IC;
- (id)ic_managedObjectIDForURIString:()IC;
@end

@implementation NSPersistentStoreCoordinator(IC)

- (id)ic_managedObjectIDForURIString:()IC
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [NSPersistentStoreCoordinator(IC) ic_managedObjectIDForURIString:v6];
    }

    goto LABEL_11;
  }

  if (![v4 length])
  {
    v6 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [NSPersistentStoreCoordinator(IC) ic_managedObjectIDForURIString:v6];
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  v7 = [a1 ic_managedObjectIDForURIRepresentation:v6];
  if (!v7)
  {
    v8 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(NSPersistentStoreCoordinator(IC) *)v5 ic_managedObjectIDForURIString:a1, v8];
    }
  }

LABEL_12:

  return v7;
}

- (id)ic_managedObjectIDForURIRepresentation:()IC
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 scheme], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"x-coredata"), v6, v7))
  {
    v8 = [a1 managedObjectIDForURIRepresentation:v5];
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(NSPersistentStoreCoordinator(IC) *)v5 ic_managedObjectIDForURIRepresentation:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (void)ic_managedObjectIDForURIString:()IC .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1D4576000, log, OS_LOG_TYPE_DEBUG, "Could not create object ID from string %@ in coordinator %@", &v3, 0x16u);
}

- (void)ic_managedObjectIDForURIRepresentation:()IC .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_begin_catch(a1);
  v5 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412546;
    v7 = a3;
    v8 = 2112;
    v9 = v4;
    _os_log_debug_impl(&dword_1D4576000, v5, OS_LOG_TYPE_DEBUG, "Failed to get managed object ID from URL %@: %@", &v6, 0x16u);
  }

  objc_end_catch();
}

- (void)ic_managedObjectIDForURIRepresentation:()IC .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 absoluteString];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1D4576000, a2, OS_LOG_TYPE_DEBUG, "Unable to get object ID URL for HTML note uriString: %@", &v4, 0xCu);
}

@end