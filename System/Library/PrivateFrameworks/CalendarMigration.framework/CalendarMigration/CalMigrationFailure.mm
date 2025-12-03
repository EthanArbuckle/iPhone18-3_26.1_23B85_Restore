@interface CalMigrationFailure
+ (id)_labelForStage:(unint64_t)stage;
- (CalMigrationFailure)initWithDatabaseIntegrityErrors:(id)errors;
- (CalMigrationFailure)initWithDescription:(id)description stage:(unint64_t)stage underlyingError:(id)error relatedPath:(id)path isFatal:(BOOL)fatal;
- (id)description;
@end

@implementation CalMigrationFailure

- (CalMigrationFailure)initWithDescription:(id)description stage:(unint64_t)stage underlyingError:(id)error relatedPath:(id)path isFatal:(BOOL)fatal
{
  descriptionCopy = description;
  errorCopy = error;
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = CalMigrationFailure;
  v15 = [(CalMigrationFailure *)&v23 init];
  if (v15)
  {
    v16 = [descriptionCopy copy];
    failureDescription = v15->_failureDescription;
    v15->_failureDescription = v16;

    v15->_stage = stage;
    v18 = [errorCopy copy];
    underlyingError = v15->_underlyingError;
    v15->_underlyingError = v18;

    v20 = [pathCopy copy];
    relatedPath = v15->_relatedPath;
    v15->_relatedPath = v20;

    v15->_isFatal = fatal;
  }

  return v15;
}

- (CalMigrationFailure)initWithDatabaseIntegrityErrors:(id)errors
{
  errorsCopy = errors;
  v11.receiver = self;
  v11.super_class = CalMigrationFailure;
  v5 = [(CalMigrationFailure *)&v11 init];
  v6 = v5;
  if (v5)
  {
    failureDescription = v5->_failureDescription;
    v5->_failureDescription = @"Database integrity error";

    v6->_stage = 5;
    v8 = [errorsCopy copy];
    databaseIntegrityErrors = v6->_databaseIntegrityErrors;
    v6->_databaseIntegrityErrors = v8;

    v6->_isFatal = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  failureDescription = [(CalMigrationFailure *)self failureDescription];
  v6 = [objc_opt_class() _labelForStage:{-[CalMigrationFailure stage](self, "stage")}];
  underlyingError = [(CalMigrationFailure *)self underlyingError];
  relatedPath = [(CalMigrationFailure *)self relatedPath];
  databaseIntegrityErrors = [(CalMigrationFailure *)self databaseIntegrityErrors];
  v10 = [v3 stringWithFormat:@"<%@: %p>\n{\n  description = %@\n  stage = %@\n  underlyingError = %@\n  relatedPath = %@\n  databaseIntegrityErrors = %@\n}", v4, self, failureDescription, v6, underlyingError, relatedPath, databaseIntegrityErrors];

  return v10;
}

+ (id)_labelForStage:(unint64_t)stage
{
  if (stage - 1 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_278D6D450[stage - 1];
  }
}

@end