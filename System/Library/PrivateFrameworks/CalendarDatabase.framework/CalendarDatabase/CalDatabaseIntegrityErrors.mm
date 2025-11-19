@interface CalDatabaseIntegrityErrors
- (CalDatabaseIntegrityErrors)init;
@end

@implementation CalDatabaseIntegrityErrors

- (CalDatabaseIntegrityErrors)init
{
  v6.receiver = self;
  v6.super_class = CalDatabaseIntegrityErrors;
  v2 = [(CalDatabaseIntegrityErrors *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    errors = v2->_errors;
    v2->_errors = v3;
  }

  return v2;
}

@end