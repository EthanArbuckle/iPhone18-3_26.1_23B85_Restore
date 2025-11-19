@interface CalMigrationFailure
+ (id)_labelForStage:(unint64_t)a3;
- (CalMigrationFailure)initWithDatabaseIntegrityErrors:(id)a3;
- (CalMigrationFailure)initWithDescription:(id)a3 stage:(unint64_t)a4 underlyingError:(id)a5 relatedPath:(id)a6 isFatal:(BOOL)a7;
- (id)description;
@end

@implementation CalMigrationFailure

- (CalMigrationFailure)initWithDescription:(id)a3 stage:(unint64_t)a4 underlyingError:(id)a5 relatedPath:(id)a6 isFatal:(BOOL)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = CalMigrationFailure;
  v15 = [(CalMigrationFailure *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    failureDescription = v15->_failureDescription;
    v15->_failureDescription = v16;

    v15->_stage = a4;
    v18 = [v13 copy];
    underlyingError = v15->_underlyingError;
    v15->_underlyingError = v18;

    v20 = [v14 copy];
    relatedPath = v15->_relatedPath;
    v15->_relatedPath = v20;

    v15->_isFatal = a7;
  }

  return v15;
}

- (CalMigrationFailure)initWithDatabaseIntegrityErrors:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CalMigrationFailure;
  v5 = [(CalMigrationFailure *)&v11 init];
  v6 = v5;
  if (v5)
  {
    failureDescription = v5->_failureDescription;
    v5->_failureDescription = @"Database integrity error";

    v6->_stage = 5;
    v8 = [v4 copy];
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
  v5 = [(CalMigrationFailure *)self failureDescription];
  v6 = [objc_opt_class() _labelForStage:{-[CalMigrationFailure stage](self, "stage")}];
  v7 = [(CalMigrationFailure *)self underlyingError];
  v8 = [(CalMigrationFailure *)self relatedPath];
  v9 = [(CalMigrationFailure *)self databaseIntegrityErrors];
  v10 = [v3 stringWithFormat:@"<%@: %p>\n{\n  description = %@\n  stage = %@\n  underlyingError = %@\n  relatedPath = %@\n  databaseIntegrityErrors = %@\n}", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

+ (id)_labelForStage:(unint64_t)a3
{
  if (a3 - 1 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_278D6D450[a3 - 1];
  }
}

@end