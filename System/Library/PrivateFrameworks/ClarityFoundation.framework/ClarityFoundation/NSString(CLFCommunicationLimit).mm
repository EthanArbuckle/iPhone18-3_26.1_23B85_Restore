@interface NSString(CLFCommunicationLimit)
- (BOOL)isLessRestrictiveThanCommunicationLimit:()CLFCommunicationLimit;
@end

@implementation NSString(CLFCommunicationLimit)

- (BOOL)isLessRestrictiveThanCommunicationLimit:()CLFCommunicationLimit
{
  v4 = a3;
  v5 = CLFSortedCommunicationLimits();
  v6 = [v5 indexOfObject:self];
  v7 = [v5 indexOfObject:v4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = +[CLFLog commonLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(NSString(CLFCommunicationLimit) *)self isLessRestrictiveThanCommunicationLimit:v4, v9];
    }

    v8 = 0;
  }

  else
  {
    v8 = v6 > v7;
  }

  return v8;
}

- (void)isLessRestrictiveThanCommunicationLimit:()CLFCommunicationLimit .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_1E115B000, log, OS_LOG_TYPE_FAULT, "Invalid communication limit (self: %@, other: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end