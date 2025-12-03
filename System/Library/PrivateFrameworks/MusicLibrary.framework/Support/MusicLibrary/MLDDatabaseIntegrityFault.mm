@interface MLDDatabaseIntegrityFault
- (BOOL)attemptRecoveryUsingHandle:(sqlite3 *)handle withError:(id *)error;
@end

@implementation MLDDatabaseIntegrityFault

- (BOOL)attemptRecoveryUsingHandle:(sqlite3 *)handle withError:(id *)error
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [NSException raise:NSInternalInconsistencyException format:@"%@ is abstract", v5];

  return 0;
}

@end