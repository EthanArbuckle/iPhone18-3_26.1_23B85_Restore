@interface CalAccountErrorSeverity
+ (unint64_t)severityForError:(unint64_t)error;
@end

@implementation CalAccountErrorSeverity

+ (unint64_t)severityForError:(unint64_t)error
{
  if (error < 0xA)
  {
    return qword_1B997D930[error];
  }

  v5 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CalAccountErrorSeverity *)error severityForError:v5];
  }

  return 0;
}

+ (void)severityForError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Can't determine severity of unknown error: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end