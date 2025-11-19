@interface _DKHistogram(CoreData)
@end

@implementation _DKHistogram(CoreData)

- (void)initWithManagedObject:()CoreData .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Encountered HistogramMO without count: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithManagedObject:()CoreData .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Encountered HistogramMO without a value: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end